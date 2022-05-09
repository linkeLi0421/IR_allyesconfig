; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb-v2/mxl111sf.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb-v2/mxl111sf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.dvb_usb_device_properties = type { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_usb_adapter_properties = type { i8, i8, ptr, ptr, %struct.usb_data_stream_properties }
%struct.usb_data_stream_properties = type { i8, i8, i8, %union.anon.124 }
%union.anon.124 = type { %struct.anon.126 }
%struct.anon.126 = type { i32, i32, i32 }
%struct.dvb_usb_driver_info = type { ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lgdt3305_config = type { i8, i16, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32 }
%struct.mxl111sf_demod_config = type { ptr, ptr, ptr }
%struct.lg2160_config = type { i8, i16, i8, i32, i32, i32 }
%struct.mxl111sf_tuner_config = type { i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.mxl111sf_state = type { ptr, i32, i8, i8, i8, i8, i32, i32, i32, %struct.tveeprom, %struct.mutex, i8, [3 x %struct.mxl111sf_adap_state], [64 x i8], [64 x i8], %struct.mutex, %struct.media_entity, [2 x %struct.media_pad] }
%struct.tveeprom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [6 x i8] }
%struct.mxl111sf_adap_state = type { i32, i32, i32, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.130 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.mxl111sf_reg_ctrl_info = type { i8, i8, i8 }
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
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.140], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.140 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.141 }>
%union.anon.141 = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [23 x i8] c"dvb_usb_mxl111sf.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usb_mxl111sf_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_mxl111sf_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype388 = internal constant [36 x i8] c"dvb_usb_mxl111sf.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug389 = internal constant [98 x i8] c"dvb_usb_mxl111sf.parm=debug:set debugging level (1=info, 2=xfer, 4=i2c, 8=reg, 16=adv (or-able)).\00", section ".modinfo", align 1
@__param_str_isoc = internal constant [22 x i8] c"dvb_usb_mxl111sf.isoc\00", align 1
@dvb_usb_mxl111sf_isoc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_isoc = internal constant %struct.kernel_param { ptr @__param_str_isoc, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_mxl111sf_isoc } }, section "__param", align 4
@__UNIQUE_ID_isoctype390 = internal constant [35 x i8] c"dvb_usb_mxl111sf.parmtype=isoc:int\00", section ".modinfo", align 1
@__UNIQUE_ID_isoc391 = internal constant [66 x i8] c"dvb_usb_mxl111sf.parm=isoc:enable usb isoc xfer (0=bulk, 1=isoc).\00", section ".modinfo", align 1
@__param_str_spi = internal constant [21 x i8] c"dvb_usb_mxl111sf.spi\00", align 1
@dvb_usb_mxl111sf_spi = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_spi = internal constant %struct.kernel_param { ptr @__param_str_spi, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_mxl111sf_spi } }, section "__param", align 4
@__UNIQUE_ID_spitype392 = internal constant [34 x i8] c"dvb_usb_mxl111sf.parmtype=spi:int\00", section ".modinfo", align 1
@__UNIQUE_ID_spi393 = internal constant [78 x i8] c"dvb_usb_mxl111sf.parm=spi:use spi rather than tp for data xfer (0=tp, 1=spi).\00", section ".modinfo", align 1
@__param_str_rfswitch = internal constant [26 x i8] c"dvb_usb_mxl111sf.rfswitch\00", align 1
@dvb_usb_mxl111sf_rfswitch = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rfswitch = internal constant %struct.kernel_param { ptr @__param_str_rfswitch, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_mxl111sf_rfswitch } }, section "__param", align 4
@__UNIQUE_ID_rfswitchtype394 = internal constant [39 x i8] c"dvb_usb_mxl111sf.parmtype=rfswitch:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rfswitch395 = internal constant [80 x i8] c"dvb_usb_mxl111sf.parm=rfswitch:force rf switch position (0=auto, 1=ext, 2=int).\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [28 x i8] c"dvb_usb_mxl111sf.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype396 = internal constant [52 x i8] c"dvb_usb_mxl111sf.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr397 = internal constant [53 x i8] c"dvb_usb_mxl111sf.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@mxl111sf_ctrl_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014%s: len=%d is too big!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxl111sf_ctrl_msg\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/dvb-usb-v2/mxl111sf.c\00", [56 x i8] zeroinitializer }, align 32
@mxl111sf_ctrl_msg._entry_ptr = internal global ptr @mxl111sf_ctrl_msg._entry, section ".printk_index", align 4
@mxl111sf_ctrl_msg.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dvb_usb_mxl111sf\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(wlen = %d, rlen = %d)\0A\00", [38 x i8] zeroinitializer }, align 32
@mxl111sf_ctrl_msg._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: error %d on line %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mxl111sf_ctrl_msg._entry_ptr.7 = internal global ptr @mxl111sf_ctrl_msg._entry.5, section ".printk_index", align 4
@mxl111sf_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.8, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxl111sf_read_reg\00", [46 x i8] zeroinitializer }, align 32
@mxl111sf_read_reg._entry_ptr = internal global ptr @mxl111sf_read_reg._entry, section ".printk_index", align 4
@mxl111sf_read_reg._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: error reading reg: 0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@mxl111sf_read_reg._entry_ptr.11 = internal global ptr @mxl111sf_read_reg._entry.9, section ".printk_index", align 4
@mxl111sf_read_reg._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013invalid response reading reg: 0x%02x != 0x%02x, 0x%02x\00", [39 x i8] zeroinitializer }, align 32
@mxl111sf_read_reg._entry_ptr.14 = internal global ptr @mxl111sf_read_reg._entry.12, section ".printk_index", align 4
@mxl111sf_read_reg.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.2, ptr @.str.15, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"R: (0x%02x, 0x%02x)\0A\00", [43 x i8] zeroinitializer }, align 32
@mxl111sf_write_reg.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxl111sf_write_reg\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"W: (0x%02x, 0x%02x)\0A\00", [43 x i8] zeroinitializer }, align 32
@mxl111sf_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.16, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_write_reg._entry_ptr = internal global ptr @mxl111sf_write_reg._entry, section ".printk_index", align 4
@mxl111sf_write_reg._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013error writing reg: 0x%02x, val: 0x%02x\00", [55 x i8] zeroinitializer }, align 32
@mxl111sf_write_reg._entry_ptr.20 = internal global ptr @mxl111sf_write_reg._entry.18, section ".printk_index", align 4
@mxl111sf_write_reg_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.21, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxl111sf_write_reg_mask\00", [40 x i8] zeroinitializer }, align 32
@mxl111sf_write_reg_mask._entry_ptr = internal global ptr @mxl111sf_write_reg_mask._entry, section ".printk_index", align 4
@mxl111sf_write_reg_mask._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013error writing addr: 0x%02x, mask: 0x%02x, data: 0x%02x, retrying...\00", [58 x i8] zeroinitializer }, align 32
@mxl111sf_write_reg_mask._entry_ptr.24 = internal global ptr @mxl111sf_write_reg_mask._entry.22, section ".printk_index", align 4
@mxl111sf_write_reg_mask._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.21, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_write_reg_mask._entry_ptr.26 = internal global ptr @mxl111sf_write_reg_mask._entry.25, section ".printk_index", align 4
@mxl111sf_write_reg_mask._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.21, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_write_reg_mask._entry_ptr.28 = internal global ptr @mxl111sf_write_reg_mask._entry.27, section ".printk_index", align 4
@mxl111sf_ctrl_program_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.29, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxl111sf_ctrl_program_regs\00", [37 x i8] zeroinitializer }, align 32
@mxl111sf_ctrl_program_regs._entry_ptr = internal global ptr @mxl111sf_ctrl_program_regs._entry, section ".printk_index", align 4
@mxl111sf_ctrl_program_regs._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013failed on reg #%d (0x%02x)\00", [35 x i8] zeroinitializer }, align 32
@mxl111sf_ctrl_program_regs._entry_ptr.32 = internal global ptr @mxl111sf_ctrl_program_regs._entry.30, section ".printk_index", align 4
@__initcall__kmod_dvb_usb_mxl111sf__426_1461_mxl111sf_usb_driver_init6 = internal global ptr @mxl111sf_usb_driver_init, section ".initcall6.init", align 4
@mxl111sf_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.3, ptr @dvb_usbv2_probe, ptr @dvb_usbv2_disconnect, ptr null, ptr @dvb_usbv2_suspend, ptr @dvb_usbv2_resume, ptr null, ptr null, ptr null, ptr @mxl111sf_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_mxl111sf_usb_driver_exit = internal global ptr @mxl111sf_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author427 = internal constant [61 x i8] c"dvb_usb_mxl111sf.author=Michael Krufky <mkrufky@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description428 = internal constant [59 x i8] c"dvb_usb_mxl111sf.description=Driver for MaxLinear MxL111SF\00", section ".modinfo", align 1
@__UNIQUE_ID_version429 = internal constant [29 x i8] c"dvb_usb_mxl111sf.version=1.0\00", section ".modinfo", align 1
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.3, ptr @.str.34 }, section "__modver", align 4
@__UNIQUE_ID_file430 = internal constant [68 x i8] c"dvb_usb_mxl111sf.file=drivers/media/usb/dvb-usb-v2/dvb-usb-mxl111sf\00", section ".modinfo", align 1
@__UNIQUE_ID_license431 = internal constant [29 x i8] c"dvb_usb_mxl111sf.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@mxl111sf_id_table = internal constant { [35 x %struct.usb_device_id], [216 x i8] } { [35 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 8256, i16 -14848, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -14847, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -14846, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -14845, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -14844, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -14839, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -14838, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -14837, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -14836, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -14765, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -14757, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -18688, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -18687, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -18686, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -18685, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -18684, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -18605, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -18589, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -18588, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -10157, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -10156, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -10141, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -10140, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -10029, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -10028, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -10013, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -10012, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -9985, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -14830, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -14829, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -14822, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -14821, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -18601, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.77 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 -18585, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.usb_device_id zeroinitializer], [216 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Hauppauge 126xxx ATSC+\00", [41 x i8] zeroinitializer }, align 32
@mxl111sf_props_atsc_mh = internal global { %struct.dvb_usb_device_properties, [56 x i8] } { %struct.dvb_usb_device_properties { ptr @.str.3, ptr null, ptr @adapter_nr, i8 0, i32 624, i8 2, i8 -127, i32 0, ptr @mxl111sf_probe, ptr null, ptr null, ptr null, ptr null, ptr @mxl111sf_i2c_algo, i32 1, ptr null, [2 x %struct.dvb_usb_adapter_properties] [%struct.dvb_usb_adapter_properties { i8 0, i8 0, ptr null, ptr null, %struct.usb_data_stream_properties { i8 2, i8 5, i8 6, %union.anon.124 { %struct.anon.126 { i32 24, i32 3072, i32 1 } } } }, %struct.dvb_usb_adapter_properties zeroinitializer], ptr null, ptr null, ptr null, ptr @mxl111sf_frontend_attach_atsc_mh, ptr null, ptr @mxl111sf_attach_tuner, ptr null, ptr null, ptr @mxl111sf_streaming_ctrl_atsc_mh, ptr @mxl111sf_init, ptr null, ptr null, ptr @mxl111sf_get_stream_config_atsc_mh }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.35, ptr null, ptr @mxl111sf_props_atsc_mh }, [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Hauppauge 126xxx ATSC\00", [42 x i8] zeroinitializer }, align 32
@mxl111sf_props_atsc = internal global { %struct.dvb_usb_device_properties, [56 x i8] } { %struct.dvb_usb_device_properties { ptr @.str.3, ptr null, ptr @adapter_nr, i8 0, i32 624, i8 2, i8 -127, i32 0, ptr @mxl111sf_probe, ptr null, ptr null, ptr null, ptr null, ptr @mxl111sf_i2c_algo, i32 1, ptr null, [2 x %struct.dvb_usb_adapter_properties] [%struct.dvb_usb_adapter_properties { i8 0, i8 0, ptr null, ptr null, %struct.usb_data_stream_properties { i8 2, i8 5, i8 6, %union.anon.124 { %struct.anon.126 { i32 24, i32 3072, i32 1 } } } }, %struct.dvb_usb_adapter_properties zeroinitializer], ptr null, ptr null, ptr null, ptr @mxl111sf_frontend_attach_atsc, ptr null, ptr @mxl111sf_attach_tuner, ptr null, ptr null, ptr @mxl111sf_ep6_streaming_ctrl, ptr @mxl111sf_init, ptr null, ptr null, ptr @mxl111sf_get_stream_config_atsc }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.36, ptr null, ptr @mxl111sf_props_atsc }, [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HCW 126xxx\00", [21 x i8] zeroinitializer }, align 32
@mxl111sf_props_mh = internal global { %struct.dvb_usb_device_properties, [56 x i8] } { %struct.dvb_usb_device_properties { ptr @.str.3, ptr null, ptr @adapter_nr, i8 0, i32 624, i8 2, i8 -127, i32 0, ptr @mxl111sf_probe, ptr null, ptr null, ptr null, ptr null, ptr @mxl111sf_i2c_algo, i32 1, ptr null, [2 x %struct.dvb_usb_adapter_properties] [%struct.dvb_usb_adapter_properties { i8 0, i8 0, ptr null, ptr null, %struct.usb_data_stream_properties { i8 2, i8 5, i8 6, %union.anon.124 { %struct.anon.126 { i32 24, i32 3072, i32 1 } } } }, %struct.dvb_usb_adapter_properties zeroinitializer], ptr null, ptr null, ptr null, ptr @mxl111sf_frontend_attach_mh, ptr null, ptr @mxl111sf_attach_tuner, ptr null, ptr null, ptr @mxl111sf_ep5_streaming_ctrl, ptr @mxl111sf_init, ptr null, ptr null, ptr @mxl111sf_get_stream_config_mh }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.38, ptr null, ptr @mxl111sf_props_mh }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.35, ptr null, ptr @mxl111sf_props_atsc_mh }, [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Hauppauge 126xxx DVBT\00", [42 x i8] zeroinitializer }, align 32
@mxl111sf_props_dvbt = internal global { %struct.dvb_usb_device_properties, [56 x i8] } { %struct.dvb_usb_device_properties { ptr @.str.3, ptr null, ptr @adapter_nr, i8 0, i32 624, i8 2, i8 -127, i32 0, ptr @mxl111sf_probe, ptr null, ptr null, ptr null, ptr null, ptr @mxl111sf_i2c_algo, i32 1, ptr null, [2 x %struct.dvb_usb_adapter_properties] [%struct.dvb_usb_adapter_properties { i8 0, i8 0, ptr null, ptr null, %struct.usb_data_stream_properties { i8 2, i8 5, i8 6, %union.anon.124 { %struct.anon.126 { i32 24, i32 3072, i32 1 } } } }, %struct.dvb_usb_adapter_properties zeroinitializer], ptr null, ptr null, ptr null, ptr @mxl111sf_frontend_attach_dvbt, ptr null, ptr @mxl111sf_attach_tuner, ptr null, ptr null, ptr @mxl111sf_ep4_streaming_ctrl, ptr @mxl111sf_init, ptr null, ptr null, ptr @mxl111sf_get_stream_config_dvbt }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.41, ptr null, ptr @mxl111sf_props_dvbt }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.36, ptr null, ptr @mxl111sf_props_atsc }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.38, ptr null, ptr @mxl111sf_props_mh }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.35, ptr null, ptr @mxl111sf_props_atsc_mh }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.41, ptr null, ptr @mxl111sf_props_dvbt }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.35, ptr null, ptr @mxl111sf_props_atsc_mh }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.35, ptr null, ptr @mxl111sf_props_atsc_mh }, [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Hauppauge 117xxx ATSC+\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.49, ptr null, ptr @mxl111sf_props_atsc_mh }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.36, ptr null, ptr @mxl111sf_props_atsc }, [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HCW 117xxx\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.52, ptr null, ptr @mxl111sf_props_mh }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.49, ptr null, ptr @mxl111sf_props_atsc_mh }, [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Hauppauge 117xxx DVBT\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.55, ptr null, ptr @mxl111sf_props_dvbt }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.49, ptr null, ptr @mxl111sf_props_atsc_mh }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.49, ptr null, ptr @mxl111sf_props_atsc_mh }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.55, ptr null, ptr @mxl111sf_props_dvbt }, [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Hauppauge Mercury\00", [46 x i8] zeroinitializer }, align 32
@mxl111sf_props_mercury = internal global { %struct.dvb_usb_device_properties, [56 x i8] } { %struct.dvb_usb_device_properties { ptr @.str.3, ptr null, ptr @adapter_nr, i8 0, i32 624, i8 2, i8 -127, i32 0, ptr @mxl111sf_probe, ptr null, ptr null, ptr null, ptr null, ptr @mxl111sf_i2c_algo, i32 1, ptr null, [2 x %struct.dvb_usb_adapter_properties] [%struct.dvb_usb_adapter_properties { i8 0, i8 0, ptr null, ptr null, %struct.usb_data_stream_properties { i8 2, i8 5, i8 6, %union.anon.124 { %struct.anon.126 { i32 24, i32 3072, i32 1 } } } }, %struct.dvb_usb_adapter_properties zeroinitializer], ptr null, ptr null, ptr null, ptr @mxl111sf_frontend_attach_mercury, ptr null, ptr @mxl111sf_attach_tuner, ptr null, ptr null, ptr @mxl111sf_streaming_ctrl_mercury, ptr @mxl111sf_init, ptr null, ptr null, ptr @mxl111sf_get_stream_config_mercury }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.60, ptr null, ptr @mxl111sf_props_mercury }, [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Hauppauge 138xxx DVBT\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.62, ptr null, ptr @mxl111sf_props_dvbt }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.60, ptr null, ptr @mxl111sf_props_mercury }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.62, ptr null, ptr @mxl111sf_props_dvbt }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.60, ptr null, ptr @mxl111sf_props_mercury }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.62, ptr null, ptr @mxl111sf_props_dvbt }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.60, ptr null, ptr @mxl111sf_props_mercury }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.62, ptr null, ptr @mxl111sf_props_dvbt }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.60, ptr null, ptr @mxl111sf_props_mercury }, [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Hauppauge 126xxx\00", [47 x i8] zeroinitializer }, align 32
@mxl111sf_props_mercury_mh = internal global { %struct.dvb_usb_device_properties, [56 x i8] } { %struct.dvb_usb_device_properties { ptr @.str.3, ptr null, ptr @adapter_nr, i8 0, i32 624, i8 2, i8 -127, i32 0, ptr @mxl111sf_probe, ptr null, ptr null, ptr null, ptr null, ptr @mxl111sf_i2c_algo, i32 1, ptr null, [2 x %struct.dvb_usb_adapter_properties] [%struct.dvb_usb_adapter_properties { i8 0, i8 0, ptr null, ptr null, %struct.usb_data_stream_properties { i8 2, i8 5, i8 6, %union.anon.124 { %struct.anon.126 { i32 24, i32 3072, i32 1 } } } }, %struct.dvb_usb_adapter_properties zeroinitializer], ptr null, ptr null, ptr null, ptr @mxl111sf_frontend_attach_mercury_mh, ptr null, ptr @mxl111sf_attach_tuner, ptr null, ptr null, ptr @mxl111sf_streaming_ctrl_mercury_mh, ptr @mxl111sf_init, ptr null, ptr null, ptr @mxl111sf_get_stream_config_mercury_mh }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.71, ptr null, ptr @mxl111sf_props_mercury_mh }, [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Hauppauge WinTV-Aero-M\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.73, ptr null, ptr @mxl111sf_props_mercury }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.71, ptr null, ptr @mxl111sf_props_mercury_mh }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.73, ptr null, ptr @mxl111sf_props_mercury }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.49, ptr null, ptr @mxl111sf_props_atsc_mh }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.49, ptr null, ptr @mxl111sf_props_atsc_mh }, [20 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @mxl111sf_i2c_xfer, ptr null, ptr null, ptr null, ptr @mxl111sf_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mxl111sf_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&state->msg_lock\00", [47 x i8] zeroinitializer }, align 32
@mxl111sf_frontend_attach_atsc_mh.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.80, ptr @.str.2, ptr @.str.81, i8 0, i8 -11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mxl111sf_frontend_attach_atsc_mh\00", [63 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@mxl111sf_lgdt3305_frontend_attach.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.82, ptr @.str.2, ptr @.str.83, i8 0, i8 108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mxl111sf_lgdt3305_frontend_attach\00", [62 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@mxl111sf_lgdt3305_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013set interface failed\00", [41 x i8] zeroinitializer }, align 32
@mxl111sf_lgdt3305_frontend_attach._entry_ptr = internal global ptr @mxl111sf_lgdt3305_frontend_attach._entry, section ".printk_index", align 4
@mxl111sf_lgdt3305_frontend_attach._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.82, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lgdt3305_frontend_attach._entry_ptr.86 = internal global ptr @mxl111sf_lgdt3305_frontend_attach._entry.85, section ".printk_index", align 4
@mxl111sf_lgdt3305_frontend_attach._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.82, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lgdt3305_frontend_attach._entry_ptr.88 = internal global ptr @mxl111sf_lgdt3305_frontend_attach._entry.87, section ".printk_index", align 4
@mxl111sf_lgdt3305_frontend_attach._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.82, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lgdt3305_frontend_attach._entry_ptr.90 = internal global ptr @mxl111sf_lgdt3305_frontend_attach._entry.89, section ".printk_index", align 4
@mxl111sf_lgdt3305_frontend_attach._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.82, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lgdt3305_frontend_attach._entry_ptr.92 = internal global ptr @mxl111sf_lgdt3305_frontend_attach._entry.91, section ".printk_index", align 4
@mxl111sf_lgdt3305_frontend_attach._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.82, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lgdt3305_frontend_attach._entry_ptr.94 = internal global ptr @mxl111sf_lgdt3305_frontend_attach._entry.93, section ".printk_index", align 4
@mxl111sf_lgdt3305_frontend_attach._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.82, ptr @.str.2, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lgdt3305_frontend_attach._entry_ptr.96 = internal global ptr @mxl111sf_lgdt3305_frontend_attach._entry.95, section ".printk_index", align 4
@mxl111sf_lgdt3305_frontend_attach._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.82, ptr @.str.2, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lgdt3305_frontend_attach._entry_ptr.98 = internal global ptr @mxl111sf_lgdt3305_frontend_attach._entry.97, section ".printk_index", align 4
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lgdt3305_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:lgdt3305_attach\00", [41 x i8] zeroinitializer }, align 32
@hauppauge_lgdt3305_config = internal global { %struct.lgdt3305_config, [60 x i8] } { %struct.lgdt3305_config { i8 89, i16 6000, i16 6000, i16 0, i16 0, i16 0, i8 -128, i32 1, i32 0, i32 0, i32 1, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mxl111sf_lgdt3305_frontend_attach._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.82, ptr @.str.2, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol lgdt3305_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@mxl111sf_lgdt3305_frontend_attach._entry_ptr.103 = internal global ptr @mxl111sf_lgdt3305_frontend_attach._entry.101, section ".printk_index", align 4
@mxl111sf_adap_fe_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: driver not yet initialized, exit.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mxl111sf_adap_fe_init\00", [42 x i8] zeroinitializer }, align 32
@mxl111sf_adap_fe_init._entry_ptr = internal global ptr @mxl111sf_adap_fe_init._entry, section ".printk_index", align 4
@mxl111sf_adap_fe_init.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.105, ptr @.str.2, ptr @.str.83, i8 0, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mxl111sf_adap_fe_init._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.105, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_adap_fe_init._entry_ptr.107 = internal global ptr @mxl111sf_adap_fe_init._entry.106, section ".printk_index", align 4
@mxl111sf_adap_fe_init._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.105, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_adap_fe_init._entry_ptr.109 = internal global ptr @mxl111sf_adap_fe_init._entry.108, section ".printk_index", align 4
@mxl111sf_adap_fe_init._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.105, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_adap_fe_init._entry_ptr.111 = internal global ptr @mxl111sf_adap_fe_init._entry.110, section ".printk_index", align 4
@mxl111sf_adap_fe_init._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.105, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_adap_fe_init._entry_ptr.113 = internal global ptr @mxl111sf_adap_fe_init._entry.112, section ".printk_index", align 4
@mxl111sf_adap_fe_init._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.105, ptr @.str.2, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_adap_fe_init._entry_ptr.115 = internal global ptr @mxl111sf_adap_fe_init._entry.114, section ".printk_index", align 4
@mxl111sf_adap_fe_init._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.105, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_adap_fe_init._entry_ptr.117 = internal global ptr @mxl111sf_adap_fe_init._entry.116, section ".printk_index", align 4
@mxl111sf_adap_fe_init._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.105, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_adap_fe_init._entry_ptr.119 = internal global ptr @mxl111sf_adap_fe_init._entry.118, section ".printk_index", align 4
@mxl111sf_adap_fe_init._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.105, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_adap_fe_init._entry_ptr.121 = internal global ptr @mxl111sf_adap_fe_init._entry.120, section ".printk_index", align 4
@mxl111sf_adap_fe_init._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.105, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_adap_fe_init._entry_ptr.123 = internal global ptr @mxl111sf_adap_fe_init._entry.122, section ".printk_index", align 4
@mxl111sf_adap_fe_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.124, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxl111sf_adap_fe_sleep\00", [41 x i8] zeroinitializer }, align 32
@mxl111sf_adap_fe_sleep._entry_ptr = internal global ptr @mxl111sf_adap_fe_sleep._entry, section ".printk_index", align 4
@mxl111sf_adap_fe_sleep.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.124, ptr @.str.2, ptr @.str.83, i8 0, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mxl111sf_attach_demod.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.125, ptr @.str.2, ptr @.str.83, i8 0, i8 -69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mxl111sf_attach_demod\00", [42 x i8] zeroinitializer }, align 32
@mxl111sf_attach_demod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.125, ptr @.str.2, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_attach_demod._entry_ptr = internal global ptr @mxl111sf_attach_demod._entry, section ".printk_index", align 4
@mxl111sf_attach_demod._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.125, ptr @.str.2, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_attach_demod._entry_ptr.127 = internal global ptr @mxl111sf_attach_demod._entry.126, section ".printk_index", align 4
@mxl111sf_attach_demod._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.125, ptr @.str.2, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_attach_demod._entry_ptr.129 = internal global ptr @mxl111sf_attach_demod._entry.128, section ".printk_index", align 4
@mxl111sf_attach_demod._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.125, ptr @.str.2, i32 773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_attach_demod._entry_ptr.131 = internal global ptr @mxl111sf_attach_demod._entry.130, section ".printk_index", align 4
@mxl111sf_attach_demod._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.125, ptr @.str.2, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_attach_demod._entry_ptr.133 = internal global ptr @mxl111sf_attach_demod._entry.132, section ".printk_index", align 4
@mxl111sf_attach_demod._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.125, ptr @.str.2, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_attach_demod._entry_ptr.135 = internal global ptr @mxl111sf_attach_demod._entry.134, section ".printk_index", align 4
@.str.136 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mxl111sf_demod_attach\00", [42 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"symbol:mxl111sf_demod_attach\00", [35 x i8] zeroinitializer }, align 32
@mxl_demod_config = internal constant { %struct.mxl111sf_demod_config, [20 x i8] } { %struct.mxl111sf_demod_config { ptr @mxl111sf_read_reg, ptr @mxl111sf_write_reg, ptr @mxl111sf_ctrl_program_regs }, [20 x i8] zeroinitializer }, align 32
@mxl111sf_attach_demod._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.125, ptr @.str.2, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013DVB: Unable to find symbol mxl111sf_demod_attach()\0A\00", [42 x i8] zeroinitializer }, align 32
@mxl111sf_attach_demod._entry_ptr.140 = internal global ptr @mxl111sf_attach_demod._entry.138, section ".printk_index", align 4
@mxl111sf_lg2160_frontend_attach.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.141, ptr @.str.2, ptr @.str.83, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mxl111sf_lg2160_frontend_attach\00", [32 x i8] zeroinitializer }, align 32
@mxl111sf_lg2160_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.141, ptr @.str.2, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2160_frontend_attach._entry_ptr = internal global ptr @mxl111sf_lg2160_frontend_attach._entry, section ".printk_index", align 4
@mxl111sf_lg2160_frontend_attach._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.141, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2160_frontend_attach._entry_ptr.143 = internal global ptr @mxl111sf_lg2160_frontend_attach._entry.142, section ".printk_index", align 4
@mxl111sf_lg2160_frontend_attach._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.141, ptr @.str.2, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2160_frontend_attach._entry_ptr.145 = internal global ptr @mxl111sf_lg2160_frontend_attach._entry.144, section ".printk_index", align 4
@mxl111sf_lg2160_frontend_attach._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.141, ptr @.str.2, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2160_frontend_attach._entry_ptr.147 = internal global ptr @mxl111sf_lg2160_frontend_attach._entry.146, section ".printk_index", align 4
@mxl111sf_lg2160_frontend_attach._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.141, ptr @.str.2, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2160_frontend_attach._entry_ptr.149 = internal global ptr @mxl111sf_lg2160_frontend_attach._entry.148, section ".printk_index", align 4
@mxl111sf_lg2160_frontend_attach._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.141, ptr @.str.2, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2160_frontend_attach._entry_ptr.151 = internal global ptr @mxl111sf_lg2160_frontend_attach._entry.150, section ".printk_index", align 4
@mxl111sf_lg2160_frontend_attach._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.141, ptr @.str.2, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2160_frontend_attach._entry_ptr.153 = internal global ptr @mxl111sf_lg2160_frontend_attach._entry.152, section ".printk_index", align 4
@mxl111sf_lg2160_frontend_attach._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.141, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2160_frontend_attach._entry_ptr.155 = internal global ptr @mxl111sf_lg2160_frontend_attach._entry.154, section ".printk_index", align 4
@mxl111sf_lg2160_frontend_attach._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.141, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2160_frontend_attach._entry_ptr.157 = internal global ptr @mxl111sf_lg2160_frontend_attach._entry.156, section ".printk_index", align 4
@mxl111sf_lg2160_frontend_attach._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.141, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: failed to get chip info on first probe attempt\0A\00", [42 x i8] zeroinitializer }, align 32
@mxl111sf_lg2160_frontend_attach._entry_ptr.160 = internal global ptr @mxl111sf_lg2160_frontend_attach._entry.158, section ".printk_index", align 4
@mxl111sf_lg2160_frontend_attach._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.141, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2160_frontend_attach._entry_ptr.162 = internal global ptr @mxl111sf_lg2160_frontend_attach._entry.161, section ".printk_index", align 4
@mxl111sf_lg2160_frontend_attach._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.141, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013failed to get chip info during probe\00", [57 x i8] zeroinitializer }, align 32
@mxl111sf_lg2160_frontend_attach._entry_ptr.165 = internal global ptr @mxl111sf_lg2160_frontend_attach._entry.163, section ".printk_index", align 4
@mxl111sf_lg2160_frontend_attach._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.141, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: probe needed a retry in order to succeed.\0A\00", [47 x i8] zeroinitializer }, align 32
@mxl111sf_lg2160_frontend_attach._entry_ptr.168 = internal global ptr @mxl111sf_lg2160_frontend_attach._entry.166, section ".printk_index", align 4
@mxl111sf_lg2160_frontend_attach._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.141, ptr @.str.2, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2160_frontend_attach._entry_ptr.170 = internal global ptr @mxl111sf_lg2160_frontend_attach._entry.169, section ".printk_index", align 4
@.str.171 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lg2160_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:lg2160_attach\00", [43 x i8] zeroinitializer }, align 32
@hauppauge_lg2160_config = internal global { %struct.lg2160_config, [44 x i8] } { %struct.lg2160_config { i8 14, i16 6000, i8 -128, i32 0, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@mxl111sf_lg2160_frontend_attach._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.141, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol lg2160_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@mxl111sf_lg2160_frontend_attach._entry_ptr.175 = internal global ptr @mxl111sf_lg2160_frontend_attach._entry.173, section ".printk_index", align 4
@mxl1x1sf_get_chip_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.176, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxl1x1sf_get_chip_info\00", [41 x i8] zeroinitializer }, align 32
@mxl1x1sf_get_chip_info._entry_ptr = internal global ptr @mxl1x1sf_get_chip_info._entry, section ".printk_index", align 4
@mxl1x1sf_get_chip_info._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.176, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl1x1sf_get_chip_info._entry_ptr.178 = internal global ptr @mxl1x1sf_get_chip_info._entry.177, section ".printk_index", align 4
@.str.179 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MxL101SF\00", [23 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MxL111SF\00", [23 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"UNKNOWN MxL1X1\00", [17 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v6\00", [29 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"v8_100\00", [25 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"v8_200\00", [25 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"UNKNOWN REVISION\00", [47 x i8] zeroinitializer }, align 32
@mxl1x1sf_get_chip_info._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.176, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s detected, %s (0x%x)\00", [39 x i8] zeroinitializer }, align 32
@mxl1x1sf_get_chip_info._entry_ptr.188 = internal global ptr @mxl1x1sf_get_chip_info._entry.186, section ".printk_index", align 4
@mxl111sf_attach_tuner.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.189, ptr @.str.2, ptr @.str.83, i8 0, i8 -36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.189 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mxl111sf_attach_tuner\00", [42 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mxl111sf_tuner_attach\00", [42 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"symbol:mxl111sf_tuner_attach\00", [35 x i8] zeroinitializer }, align 32
@mxl_tuner_config = internal constant { %struct.mxl111sf_tuner_config, [36 x i8] } { %struct.mxl111sf_tuner_config { i32 6, i8 0, ptr @mxl111sf_read_reg, ptr @mxl111sf_write_reg, ptr @mxl111sf_ctrl_program_regs, ptr @mxl1x1sf_top_master_ctrl, ptr @mxl111sf_ant_hunt }, [36 x i8] zeroinitializer }, align 32
@mxl111sf_attach_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.189, ptr @.str.2, i32 884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013DVB: Unable to find symbol mxl111sf_tuner_attach()\0A\00", [42 x i8] zeroinitializer }, align 32
@mxl111sf_attach_tuner._entry_ptr = internal global ptr @mxl111sf_attach_tuner._entry, section ".printk_index", align 4
@.str.193 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxl111sf tuner\00", [17 x i8] zeroinitializer }, align 32
@mxl111sf_ant_hunt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.195, ptr @.str.2, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s(%d) FINAL input set to %s rxPwr:%d|%d|%d|%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxl111sf_ant_hunt\00", [46 x i8] zeroinitializer }, align 32
@mxl111sf_ant_hunt._entry_ptr = internal global ptr @mxl111sf_ant_hunt._entry, section ".printk_index", align 4
@.str.196 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EXTERNAL\00", [23 x i8] zeroinitializer }, align 32
@mxl111sf_ant_hunt._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.195, ptr @.str.2, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_ant_hunt._entry_ptr.198 = internal global ptr @mxl111sf_ant_hunt._entry.197, section ".printk_index", align 4
@.str.199 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INTERNAL\00", [23 x i8] zeroinitializer }, align 32
@mxl111sf_streaming_ctrl_atsc_mh.__UNIQUE_ID_ddebug421 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.200, ptr @.str.2, ptr @.str.201, i8 1, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.200 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mxl111sf_streaming_ctrl_atsc_mh\00", [32 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: fe=%d onoff=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@mxl111sf_ep6_streaming_ctrl.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.202, ptr @.str.2, ptr @.str.203, i8 0, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.202 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxl111sf_ep6_streaming_ctrl\00", [36 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(%d)\0A\00", [24 x i8] zeroinitializer }, align 32
@mxl111sf_ep6_streaming_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.202, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_ep6_streaming_ctrl._entry_ptr = internal global ptr @mxl111sf_ep6_streaming_ctrl._entry, section ".printk_index", align 4
@mxl111sf_ep6_streaming_ctrl._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.202, ptr @.str.2, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_ep6_streaming_ctrl._entry_ptr.205 = internal global ptr @mxl111sf_ep6_streaming_ctrl._entry.204, section ".printk_index", align 4
@mxl111sf_ep4_streaming_ctrl.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.206, ptr @.str.2, ptr @.str.203, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.206 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxl111sf_ep4_streaming_ctrl\00", [36 x i8] zeroinitializer }, align 32
@mxl111sf_ep4_streaming_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.206, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_ep4_streaming_ctrl._entry_ptr = internal global ptr @mxl111sf_ep4_streaming_ctrl._entry, section ".printk_index", align 4
@mxl111sf_ep5_streaming_ctrl.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.207, ptr @.str.2, ptr @.str.203, i8 0, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.207 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxl111sf_ep5_streaming_ctrl\00", [36 x i8] zeroinitializer }, align 32
@mxl111sf_ep5_streaming_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.207, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_ep5_streaming_ctrl._entry_ptr = internal global ptr @mxl111sf_ep5_streaming_ctrl._entry, section ".printk_index", align 4
@mxl111sf_ep5_streaming_ctrl._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.207, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_ep5_streaming_ctrl._entry_ptr.209 = internal global ptr @mxl111sf_ep5_streaming_ctrl._entry.208, section ".printk_index", align 4
@mxl111sf_ep5_streaming_ctrl._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.207, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_ep5_streaming_ctrl._entry_ptr.211 = internal global ptr @mxl111sf_ep5_streaming_ctrl._entry.210, section ".printk_index", align 4
@mxl111sf_ep5_streaming_ctrl._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.207, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_ep5_streaming_ctrl._entry_ptr.213 = internal global ptr @mxl111sf_ep5_streaming_ctrl._entry.212, section ".printk_index", align 4
@mxl111sf_ep5_streaming_ctrl._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.207, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_ep5_streaming_ctrl._entry_ptr.215 = internal global ptr @mxl111sf_ep5_streaming_ctrl._entry.214, section ".printk_index", align 4
@mxl111sf_init.eeprom = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@mxl111sf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.216, ptr @.str.2, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxl111sf_init\00", [18 x i8] zeroinitializer }, align 32
@mxl111sf_init._entry_ptr = internal global ptr @mxl111sf_init._entry, section ".printk_index", align 4
@mxl111sf_init._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.216, ptr @.str.2, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_init._entry_ptr.218 = internal global ptr @mxl111sf_init._entry.217, section ".printk_index", align 4
@mxl111sf_init._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.216, ptr @.str.2, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_init._entry_ptr.220 = internal global ptr @mxl111sf_init._entry.219, section ".printk_index", align 4
@mxl111sf_init._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.216, ptr @.str.2, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_init._entry_ptr.222 = internal global ptr @mxl111sf_init._entry.221, section ".printk_index", align 4
@mxl111sf_init._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.216, ptr @.str.2, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_init._entry_ptr.224 = internal global ptr @mxl111sf_init._entry.223, section ".printk_index", align 4
@mxl111sf_init._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.216, ptr @.str.2, i32 935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_init._entry_ptr.226 = internal global ptr @mxl111sf_init._entry.225, section ".printk_index", align 4
@mxl111sf_init._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.216, ptr @.str.2, i32 936, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_init._entry_ptr.228 = internal global ptr @mxl111sf_init._entry.227, section ".printk_index", align 4
@mxl111sf_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.229 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&state->fe_lock\00", [16 x i8] zeroinitializer }, align 32
@mxl111sf_init._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.216, ptr @.str.2, i32 944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_init._entry_ptr.231 = internal global ptr @mxl111sf_init._entry.230, section ".printk_index", align 4
@mxl111sf_get_stream_config_atsc_mh.__UNIQUE_ID_ddebug420 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.232, ptr @.str.2, ptr @.str.233, i8 1, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.232 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mxl111sf_get_stream_config_atsc_mh\00", [61 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: fe=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.234, ptr @.str.2, ptr @.str.235, i8 1, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.234 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxl111sf_stream_config_isoc\00", [36 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: endpoint=%d size=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.236, ptr @.str.2, ptr @.str.237, i8 1, i8 3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.236 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxl111sf_stream_config_bulk\00", [36 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: endpoint=%d size=8192\0A\00", [37 x i8] zeroinitializer }, align 32
@mxl111sf_get_stream_config_atsc.__UNIQUE_ID_ddebug418 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.238, ptr @.str.2, ptr @.str.233, i8 1, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.238 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mxl111sf_get_stream_config_atsc\00", [32 x i8] zeroinitializer }, align 32
@mxl111sf_get_stream_config_mh.__UNIQUE_ID_ddebug419 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.239, ptr @.str.2, ptr @.str.233, i8 1, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.239 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mxl111sf_get_stream_config_mh\00", [34 x i8] zeroinitializer }, align 32
@mxl111sf_get_stream_config_dvbt.__UNIQUE_ID_ddebug417 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.240, ptr @.str.2, ptr @.str.233, i8 1, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.240 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mxl111sf_get_stream_config_dvbt\00", [32 x i8] zeroinitializer }, align 32
@mxl111sf_frontend_attach_mercury.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.241, ptr @.str.2, ptr @.str.81, i8 0, i8 -6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.241 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mxl111sf_frontend_attach_mercury\00", [63 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_ep6_frontend_attach.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.242, ptr @.str.2, ptr @.str.83, i8 0, i8 -88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.242 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mxl111sf_lg2161_ep6_frontend_attach\00", [60 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_ep6_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.242, ptr @.str.2, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_ep6_frontend_attach._entry_ptr = internal global ptr @mxl111sf_lg2161_ep6_frontend_attach._entry, section ".printk_index", align 4
@mxl111sf_lg2161_ep6_frontend_attach._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.242, ptr @.str.2, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.244 = internal global ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.243, section ".printk_index", align 4
@mxl111sf_lg2161_ep6_frontend_attach._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.242, ptr @.str.2, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.246 = internal global ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.245, section ".printk_index", align 4
@mxl111sf_lg2161_ep6_frontend_attach._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.242, ptr @.str.2, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.248 = internal global ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.247, section ".printk_index", align 4
@mxl111sf_lg2161_ep6_frontend_attach._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.242, ptr @.str.2, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.250 = internal global ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.249, section ".printk_index", align 4
@mxl111sf_lg2161_ep6_frontend_attach._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.242, ptr @.str.2, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.252 = internal global ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.251, section ".printk_index", align 4
@mxl111sf_lg2161_ep6_frontend_attach._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.242, ptr @.str.2, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.254 = internal global ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.253, section ".printk_index", align 4
@mxl111sf_lg2161_ep6_frontend_attach._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.242, ptr @.str.2, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.256 = internal global ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.255, section ".printk_index", align 4
@mxl111sf_lg2161_ep6_frontend_attach._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.242, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.258 = internal global ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.257, section ".printk_index", align 4
@mxl111sf_lg2161_ep6_frontend_attach._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.242, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.260 = internal global ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.259, section ".printk_index", align 4
@mxl111sf_lg2161_ep6_frontend_attach._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.242, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.262 = internal global ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.261, section ".printk_index", align 4
@mxl111sf_lg2161_ep6_frontend_attach._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.242, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.264 = internal global ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.263, section ".printk_index", align 4
@mxl111sf_lg2161_ep6_frontend_attach._entry.265 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.242, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.266 = internal global ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.265, section ".printk_index", align 4
@mxl111sf_lg2161_ep6_frontend_attach._entry.267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.242, ptr @.str.2, i32 716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.268 = internal global ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.267, section ".printk_index", align 4
@hauppauge_lg2161_1040_ep6_config = internal global { %struct.lg2160_config, [44 x i8] } { %struct.lg2160_config { i8 14, i16 6000, i8 -128, i32 7, i32 0, i32 1 }, [44 x i8] zeroinitializer }, align 32
@hauppauge_lg2161_1019_ep6_config = internal global { %struct.lg2160_config, [44 x i8] } { %struct.lg2160_config { i8 14, i16 6000, i8 -128, i32 1, i32 0, i32 1 }, [44 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_ep6_frontend_attach._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.242, ptr @.str.2, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.270 = internal global ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.269, section ".printk_index", align 4
@mxl111sf_streaming_ctrl_mercury.__UNIQUE_ID_ddebug423 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.271, ptr @.str.2, ptr @.str.201, i8 1, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.271 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mxl111sf_streaming_ctrl_mercury\00", [32 x i8] zeroinitializer }, align 32
@mxl111sf_get_stream_config_mercury.__UNIQUE_ID_ddebug422 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.272, ptr @.str.2, ptr @.str.233, i8 1, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.272 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mxl111sf_get_stream_config_mercury\00", [61 x i8] zeroinitializer }, align 32
@mxl111sf_frontend_attach_mercury_mh.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.273, ptr @.str.2, ptr @.str.81, i8 0, i8 -1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.273 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mxl111sf_frontend_attach_mercury_mh\00", [60 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_frontend_attach.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.274, ptr @.str.2, ptr @.str.83, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.274 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mxl111sf_lg2161_frontend_attach\00", [32 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.274, ptr @.str.2, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_frontend_attach._entry_ptr = internal global ptr @mxl111sf_lg2161_frontend_attach._entry, section ".printk_index", align 4
@mxl111sf_lg2161_frontend_attach._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.274, ptr @.str.2, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_frontend_attach._entry_ptr.276 = internal global ptr @mxl111sf_lg2161_frontend_attach._entry.275, section ".printk_index", align 4
@mxl111sf_lg2161_frontend_attach._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.274, ptr @.str.2, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_frontend_attach._entry_ptr.278 = internal global ptr @mxl111sf_lg2161_frontend_attach._entry.277, section ".printk_index", align 4
@mxl111sf_lg2161_frontend_attach._entry.279 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.274, ptr @.str.2, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_frontend_attach._entry_ptr.280 = internal global ptr @mxl111sf_lg2161_frontend_attach._entry.279, section ".printk_index", align 4
@mxl111sf_lg2161_frontend_attach._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.274, ptr @.str.2, i32 615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_frontend_attach._entry_ptr.282 = internal global ptr @mxl111sf_lg2161_frontend_attach._entry.281, section ".printk_index", align 4
@mxl111sf_lg2161_frontend_attach._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.274, ptr @.str.2, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_frontend_attach._entry_ptr.284 = internal global ptr @mxl111sf_lg2161_frontend_attach._entry.283, section ".printk_index", align 4
@mxl111sf_lg2161_frontend_attach._entry.285 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.274, ptr @.str.2, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_frontend_attach._entry_ptr.286 = internal global ptr @mxl111sf_lg2161_frontend_attach._entry.285, section ".printk_index", align 4
@mxl111sf_lg2161_frontend_attach._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.274, ptr @.str.2, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_frontend_attach._entry_ptr.288 = internal global ptr @mxl111sf_lg2161_frontend_attach._entry.287, section ".printk_index", align 4
@mxl111sf_lg2161_frontend_attach._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.274, ptr @.str.2, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_frontend_attach._entry_ptr.290 = internal global ptr @mxl111sf_lg2161_frontend_attach._entry.289, section ".printk_index", align 4
@mxl111sf_lg2161_frontend_attach._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.274, ptr @.str.2, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_frontend_attach._entry_ptr.292 = internal global ptr @mxl111sf_lg2161_frontend_attach._entry.291, section ".printk_index", align 4
@mxl111sf_lg2161_frontend_attach._entry.293 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.274, ptr @.str.2, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_frontend_attach._entry_ptr.294 = internal global ptr @mxl111sf_lg2161_frontend_attach._entry.293, section ".printk_index", align 4
@mxl111sf_lg2161_frontend_attach._entry.295 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.274, ptr @.str.2, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_frontend_attach._entry_ptr.296 = internal global ptr @mxl111sf_lg2161_frontend_attach._entry.295, section ".printk_index", align 4
@mxl111sf_lg2161_frontend_attach._entry.297 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.274, ptr @.str.2, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_frontend_attach._entry_ptr.298 = internal global ptr @mxl111sf_lg2161_frontend_attach._entry.297, section ".printk_index", align 4
@mxl111sf_lg2161_frontend_attach._entry.299 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.274, ptr @.str.2, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_frontend_attach._entry_ptr.300 = internal global ptr @mxl111sf_lg2161_frontend_attach._entry.299, section ".printk_index", align 4
@hauppauge_lg2161_1040_config = internal global { %struct.lg2160_config, [44 x i8] } { %struct.lg2160_config { i8 14, i16 6000, i8 -128, i32 4, i32 0, i32 1 }, [44 x i8] zeroinitializer }, align 32
@hauppauge_lg2161_1019_config = internal global { %struct.lg2160_config, [44 x i8] } { %struct.lg2160_config { i8 14, i16 6000, i8 -128, i32 2, i32 0, i32 1 }, [44 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_frontend_attach._entry.301 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.274, ptr @.str.2, i32 636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_lg2161_frontend_attach._entry_ptr.302 = internal global ptr @mxl111sf_lg2161_frontend_attach._entry.301, section ".printk_index", align 4
@mxl111sf_streaming_ctrl_mercury_mh.__UNIQUE_ID_ddebug425 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.303, ptr @.str.2, ptr @.str.201, i8 1, i8 87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.303 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mxl111sf_streaming_ctrl_mercury_mh\00", [61 x i8] zeroinitializer }, align 32
@mxl111sf_get_stream_config_mercury_mh.__UNIQUE_ID_ddebug424 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.304, ptr @.str.2, ptr @.str.233, i8 1, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.304 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mxl111sf_get_stream_config_mercury_mh\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.305 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.306 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 24, i64 54]
@__sancov_gen_cov_switch_values.307 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.308 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.309 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.310 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.311 = private unnamed_addr constant [23 x i8] c"dvb_usb_mxl111sf_debug\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 24, i32 5 }
@___asan_gen_.314 = private unnamed_addr constant [22 x i8] c"dvb_usb_mxl111sf_isoc\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 28, i32 12 }
@___asan_gen_.317 = private unnamed_addr constant [21 x i8] c"dvb_usb_mxl111sf_spi\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 32, i32 12 }
@___asan_gen_.320 = private unnamed_addr constant [26 x i8] c"dvb_usb_mxl111sf_rfswitch\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 40, i32 12 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 60, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 64, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 82, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 98, i32 6 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 99, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 106, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 111, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 121, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 124, i32 6 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 125, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 141, i32 7 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 142, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 147, i32 7 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 154, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 174, i32 7 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 175, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant [20 x i8] c"mxl111sf_usb_driver\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1450, i32 26 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1465, i32 1 }
@___asan_gen_.422 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 50, i32 1 }
@___asan_gen_.425 = private unnamed_addr constant [18 x i8] c"mxl111sf_id_table\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1411, i32 35 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1412, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant [23 x i8] c"mxl111sf_props_atsc_mh\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1236, i32 41 }
@___asan_gen_.434 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1413, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant [20 x i8] c"mxl111sf_props_atsc\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1125, i32 41 }
@___asan_gen_.441 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1414, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant [18 x i8] c"mxl111sf_props_mh\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1167, i32 41 }
@___asan_gen_.448 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.449 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1416, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant [20 x i8] c"mxl111sf_props_dvbt\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1083, i32 41 }
@___asan_gen_.456 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.457 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.458 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.459 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.460 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.461 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1423, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.467 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1425, i32 4 }
@___asan_gen_.471 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.472 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1427, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.477 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.478 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1431, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant [23 x i8] c"mxl111sf_props_mercury\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1315, i32 41 }
@___asan_gen_.486 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1432, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.492 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.493 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.494 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.495 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.496 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.497 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1440, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant [26 x i8] c"mxl111sf_props_mercury_mh\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1386, i32 41 }
@___asan_gen_.504 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1441, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.509 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.510 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.511 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.512 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.513 = private unnamed_addr constant [18 x i8] c"mxl111sf_i2c_algo\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 914, i32 29 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1079, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 980, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 432, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 440, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 448, i32 6 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 451, i32 6 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 455, i32 6 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 459, i32 6 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 462, i32 6 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 466, i32 6 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 469, i32 6 }
@___asan_gen_.567 = private unnamed_addr constant [26 x i8] c"hauppauge_lgdt3305_config\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 414, i32 31 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 472, i32 20 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 274, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 285, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 288, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 290, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 293, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 295, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 297, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 303, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 306, i32 7 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 309, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 330, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 750, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 758, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 766, i32 6 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 769, i32 6 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 773, i32 6 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 777, i32 6 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 780, i32 6 }
@___asan_gen_.645 = private unnamed_addr constant [17 x i8] c"mxl_demod_config\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 737, i32 43 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 786, i32 20 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 503, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 511, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 519, i32 6 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 522, i32 6 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 526, i32 6 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 530, i32 6 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 533, i32 6 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 537, i32 6 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 540, i32 6 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 543, i32 8 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 544, i32 6 }
@___asan_gen_.714 = private unnamed_addr constant [24 x i8] c"hauppauge_lg2160_config\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 488, i32 29 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 547, i32 20 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 195, i32 6 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 200, i32 6 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 206, i32 14 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 209, i32 14 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 212, i32 14 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 218, i32 13 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 222, i32 13 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 226, i32 13 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 230, i32 13 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 233, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 880, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant [17 x i8] c"mxl_tuner_config\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 861, i32 43 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 883, i32 7 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 891, i32 22 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 850, i32 4 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 854, i32 4 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1225, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 352, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 356, i32 3 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 360, i32 3 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 402, i32 2 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 406, i32 3 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 376, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 380, i32 3 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 383, i32 3 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 385, i32 3 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 388, i32 3 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 392, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant [7 x i8] c"eeprom\00", align 1
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 926, i32 12 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 934, i32 8 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 935, i32 6 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 936, i32 3 }
@___asan_gen_.867 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 938, i32 2 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 944, i32 6 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1199, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1046, i32 2 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1036, i32 2 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1115, i32 2 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1157, i32 2 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1065, i32 2 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1000, i32 2 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 675, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 683, i32 3 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 691, i32 6 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 694, i32 6 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 698, i32 6 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 702, i32 6 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 705, i32 6 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 709, i32 6 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 712, i32 6 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 715, i32 8 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 716, i32 6 }
@___asan_gen_.951 = private unnamed_addr constant [33 x i8] c"hauppauge_lg2161_1040_ep6_config\00", align 1
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 659, i32 29 }
@___asan_gen_.954 = private unnamed_addr constant [33 x i8] c"hauppauge_lg2161_1019_ep6_config\00", align 1
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 650, i32 29 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 719, i32 20 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1302, i32 2 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1270, i32 2 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1020, i32 2 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 588, i32 2 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 596, i32 3 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 604, i32 6 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 607, i32 6 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 611, i32 6 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 615, i32 6 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 618, i32 6 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 622, i32 6 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 625, i32 6 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 628, i32 8 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 629, i32 6 }
@___asan_gen_.1014 = private unnamed_addr constant [29 x i8] c"hauppauge_lg2161_1040_config\00", align 1
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 572, i32 29 }
@___asan_gen_.1017 = private unnamed_addr constant [29 x i8] c"hauppauge_lg2161_1019_config\00", align 1
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 563, i32 29 }
@___asan_gen_.1020 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 632, i32 20 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1375, i32 2 }
@___asan_gen_.1026 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1027 = private constant [43 x i8] c"../drivers/media/usb/dvb-usb-v2/mxl111sf.c\00", align 1
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1349, i32 2 }
@llvm.compiler.used = appending global [393 x ptr] [ptr @__UNIQUE_ID_adapter_nr397, ptr @__UNIQUE_ID_adapter_nrtype396, ptr @__UNIQUE_ID_author427, ptr @__UNIQUE_ID_debug389, ptr @__UNIQUE_ID_debugtype388, ptr @__UNIQUE_ID_description428, ptr @__UNIQUE_ID_file430, ptr @__UNIQUE_ID_isoc391, ptr @__UNIQUE_ID_isoctype390, ptr @__UNIQUE_ID_license431, ptr @__UNIQUE_ID_rfswitch395, ptr @__UNIQUE_ID_rfswitchtype394, ptr @__UNIQUE_ID_spi393, ptr @__UNIQUE_ID_spitype392, ptr @__UNIQUE_ID_version429, ptr @__exitcall_mxl111sf_usb_driver_exit, ptr @__initcall__kmod_dvb_usb_mxl111sf__426_1461_mxl111sf_usb_driver_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @__param_debug, ptr @__param_isoc, ptr @__param_rfswitch, ptr @__param_spi, ptr @mxl111sf_adap_fe_init._entry, ptr @mxl111sf_adap_fe_init._entry.106, ptr @mxl111sf_adap_fe_init._entry.108, ptr @mxl111sf_adap_fe_init._entry.110, ptr @mxl111sf_adap_fe_init._entry.112, ptr @mxl111sf_adap_fe_init._entry.114, ptr @mxl111sf_adap_fe_init._entry.116, ptr @mxl111sf_adap_fe_init._entry.118, ptr @mxl111sf_adap_fe_init._entry.120, ptr @mxl111sf_adap_fe_init._entry.122, ptr @mxl111sf_adap_fe_init._entry_ptr, ptr @mxl111sf_adap_fe_init._entry_ptr.107, ptr @mxl111sf_adap_fe_init._entry_ptr.109, ptr @mxl111sf_adap_fe_init._entry_ptr.111, ptr @mxl111sf_adap_fe_init._entry_ptr.113, ptr @mxl111sf_adap_fe_init._entry_ptr.115, ptr @mxl111sf_adap_fe_init._entry_ptr.117, ptr @mxl111sf_adap_fe_init._entry_ptr.119, ptr @mxl111sf_adap_fe_init._entry_ptr.121, ptr @mxl111sf_adap_fe_init._entry_ptr.123, ptr @mxl111sf_adap_fe_sleep._entry, ptr @mxl111sf_adap_fe_sleep._entry_ptr, ptr @mxl111sf_ant_hunt._entry, ptr @mxl111sf_ant_hunt._entry.197, ptr @mxl111sf_ant_hunt._entry_ptr, ptr @mxl111sf_ant_hunt._entry_ptr.198, ptr @mxl111sf_attach_demod._entry, ptr @mxl111sf_attach_demod._entry.126, ptr @mxl111sf_attach_demod._entry.128, ptr @mxl111sf_attach_demod._entry.130, ptr @mxl111sf_attach_demod._entry.132, ptr @mxl111sf_attach_demod._entry.134, ptr @mxl111sf_attach_demod._entry.138, ptr @mxl111sf_attach_demod._entry_ptr, ptr @mxl111sf_attach_demod._entry_ptr.127, ptr @mxl111sf_attach_demod._entry_ptr.129, ptr @mxl111sf_attach_demod._entry_ptr.131, ptr @mxl111sf_attach_demod._entry_ptr.133, ptr @mxl111sf_attach_demod._entry_ptr.135, ptr @mxl111sf_attach_demod._entry_ptr.140, ptr @mxl111sf_attach_tuner._entry, ptr @mxl111sf_attach_tuner._entry_ptr, ptr @mxl111sf_ctrl_msg._entry, ptr @mxl111sf_ctrl_msg._entry.5, ptr @mxl111sf_ctrl_msg._entry_ptr, ptr @mxl111sf_ctrl_msg._entry_ptr.7, ptr @mxl111sf_ctrl_program_regs._entry, ptr @mxl111sf_ctrl_program_regs._entry.30, ptr @mxl111sf_ctrl_program_regs._entry_ptr, ptr @mxl111sf_ctrl_program_regs._entry_ptr.32, ptr @mxl111sf_ep4_streaming_ctrl._entry, ptr @mxl111sf_ep4_streaming_ctrl._entry_ptr, ptr @mxl111sf_ep5_streaming_ctrl._entry, ptr @mxl111sf_ep5_streaming_ctrl._entry.208, ptr @mxl111sf_ep5_streaming_ctrl._entry.210, ptr @mxl111sf_ep5_streaming_ctrl._entry.212, ptr @mxl111sf_ep5_streaming_ctrl._entry.214, ptr @mxl111sf_ep5_streaming_ctrl._entry_ptr, ptr @mxl111sf_ep5_streaming_ctrl._entry_ptr.209, ptr @mxl111sf_ep5_streaming_ctrl._entry_ptr.211, ptr @mxl111sf_ep5_streaming_ctrl._entry_ptr.213, ptr @mxl111sf_ep5_streaming_ctrl._entry_ptr.215, ptr @mxl111sf_ep6_streaming_ctrl._entry, ptr @mxl111sf_ep6_streaming_ctrl._entry.204, ptr @mxl111sf_ep6_streaming_ctrl._entry_ptr, ptr @mxl111sf_ep6_streaming_ctrl._entry_ptr.205, ptr @mxl111sf_init._entry, ptr @mxl111sf_init._entry.217, ptr @mxl111sf_init._entry.219, ptr @mxl111sf_init._entry.221, ptr @mxl111sf_init._entry.223, ptr @mxl111sf_init._entry.225, ptr @mxl111sf_init._entry.227, ptr @mxl111sf_init._entry.230, ptr @mxl111sf_init._entry_ptr, ptr @mxl111sf_init._entry_ptr.218, ptr @mxl111sf_init._entry_ptr.220, ptr @mxl111sf_init._entry_ptr.222, ptr @mxl111sf_init._entry_ptr.224, ptr @mxl111sf_init._entry_ptr.226, ptr @mxl111sf_init._entry_ptr.228, ptr @mxl111sf_init._entry_ptr.231, ptr @mxl111sf_lg2160_frontend_attach._entry, ptr @mxl111sf_lg2160_frontend_attach._entry.142, ptr @mxl111sf_lg2160_frontend_attach._entry.144, ptr @mxl111sf_lg2160_frontend_attach._entry.146, ptr @mxl111sf_lg2160_frontend_attach._entry.148, ptr @mxl111sf_lg2160_frontend_attach._entry.150, ptr @mxl111sf_lg2160_frontend_attach._entry.152, ptr @mxl111sf_lg2160_frontend_attach._entry.154, ptr @mxl111sf_lg2160_frontend_attach._entry.156, ptr @mxl111sf_lg2160_frontend_attach._entry.158, ptr @mxl111sf_lg2160_frontend_attach._entry.161, ptr @mxl111sf_lg2160_frontend_attach._entry.163, ptr @mxl111sf_lg2160_frontend_attach._entry.166, ptr @mxl111sf_lg2160_frontend_attach._entry.169, ptr @mxl111sf_lg2160_frontend_attach._entry.173, ptr @mxl111sf_lg2160_frontend_attach._entry_ptr, ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.143, ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.145, ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.147, ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.149, ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.151, ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.153, ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.155, ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.157, ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.160, ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.162, ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.165, ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.168, ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.170, ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.175, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.243, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.245, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.247, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.249, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.251, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.253, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.255, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.257, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.259, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.261, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.263, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.265, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.267, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.269, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.244, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.246, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.248, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.250, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.252, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.254, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.256, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.258, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.260, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.262, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.264, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.266, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.268, ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.270, ptr @mxl111sf_lg2161_frontend_attach._entry, ptr @mxl111sf_lg2161_frontend_attach._entry.275, ptr @mxl111sf_lg2161_frontend_attach._entry.277, ptr @mxl111sf_lg2161_frontend_attach._entry.279, ptr @mxl111sf_lg2161_frontend_attach._entry.281, ptr @mxl111sf_lg2161_frontend_attach._entry.283, ptr @mxl111sf_lg2161_frontend_attach._entry.285, ptr @mxl111sf_lg2161_frontend_attach._entry.287, ptr @mxl111sf_lg2161_frontend_attach._entry.289, ptr @mxl111sf_lg2161_frontend_attach._entry.291, ptr @mxl111sf_lg2161_frontend_attach._entry.293, ptr @mxl111sf_lg2161_frontend_attach._entry.295, ptr @mxl111sf_lg2161_frontend_attach._entry.297, ptr @mxl111sf_lg2161_frontend_attach._entry.299, ptr @mxl111sf_lg2161_frontend_attach._entry.301, ptr @mxl111sf_lg2161_frontend_attach._entry_ptr, ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.276, ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.278, ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.280, ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.282, ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.284, ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.286, ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.288, ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.290, ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.292, ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.294, ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.296, ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.298, ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.300, ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.302, ptr @mxl111sf_lgdt3305_frontend_attach._entry, ptr @mxl111sf_lgdt3305_frontend_attach._entry.101, ptr @mxl111sf_lgdt3305_frontend_attach._entry.85, ptr @mxl111sf_lgdt3305_frontend_attach._entry.87, ptr @mxl111sf_lgdt3305_frontend_attach._entry.89, ptr @mxl111sf_lgdt3305_frontend_attach._entry.91, ptr @mxl111sf_lgdt3305_frontend_attach._entry.93, ptr @mxl111sf_lgdt3305_frontend_attach._entry.95, ptr @mxl111sf_lgdt3305_frontend_attach._entry.97, ptr @mxl111sf_lgdt3305_frontend_attach._entry_ptr, ptr @mxl111sf_lgdt3305_frontend_attach._entry_ptr.103, ptr @mxl111sf_lgdt3305_frontend_attach._entry_ptr.86, ptr @mxl111sf_lgdt3305_frontend_attach._entry_ptr.88, ptr @mxl111sf_lgdt3305_frontend_attach._entry_ptr.90, ptr @mxl111sf_lgdt3305_frontend_attach._entry_ptr.92, ptr @mxl111sf_lgdt3305_frontend_attach._entry_ptr.94, ptr @mxl111sf_lgdt3305_frontend_attach._entry_ptr.96, ptr @mxl111sf_lgdt3305_frontend_attach._entry_ptr.98, ptr @mxl111sf_read_reg._entry, ptr @mxl111sf_read_reg._entry.12, ptr @mxl111sf_read_reg._entry.9, ptr @mxl111sf_read_reg._entry_ptr, ptr @mxl111sf_read_reg._entry_ptr.11, ptr @mxl111sf_read_reg._entry_ptr.14, ptr @mxl111sf_usb_driver_exit, ptr @mxl111sf_write_reg._entry, ptr @mxl111sf_write_reg._entry.18, ptr @mxl111sf_write_reg._entry_ptr, ptr @mxl111sf_write_reg._entry_ptr.20, ptr @mxl111sf_write_reg_mask._entry, ptr @mxl111sf_write_reg_mask._entry.22, ptr @mxl111sf_write_reg_mask._entry.25, ptr @mxl111sf_write_reg_mask._entry.27, ptr @mxl111sf_write_reg_mask._entry_ptr, ptr @mxl111sf_write_reg_mask._entry_ptr.24, ptr @mxl111sf_write_reg_mask._entry_ptr.26, ptr @mxl111sf_write_reg_mask._entry_ptr.28, ptr @mxl1x1sf_get_chip_info._entry, ptr @mxl1x1sf_get_chip_info._entry.177, ptr @mxl1x1sf_get_chip_info._entry.186, ptr @mxl1x1sf_get_chip_info._entry_ptr, ptr @mxl1x1sf_get_chip_info._entry_ptr.178, ptr @mxl1x1sf_get_chip_info._entry_ptr.188, ptr @dvb_usb_mxl111sf_debug, ptr @dvb_usb_mxl111sf_isoc, ptr @dvb_usb_mxl111sf_spi, ptr @dvb_usb_mxl111sf_rfswitch, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.29, ptr @.str.31, ptr @mxl111sf_usb_driver, ptr @.str.33, ptr @.str.34, ptr @adapter_nr, ptr @mxl111sf_id_table, ptr @.str.35, ptr @mxl111sf_props_atsc_mh, ptr @.compoundliteral, ptr @.str.36, ptr @mxl111sf_props_atsc, ptr @.compoundliteral.37, ptr @.str.38, ptr @mxl111sf_props_mh, ptr @.compoundliteral.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @mxl111sf_props_dvbt, ptr @.compoundliteral.42, ptr @.compoundliteral.43, ptr @.compoundliteral.44, ptr @.compoundliteral.45, ptr @.compoundliteral.46, ptr @.compoundliteral.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.compoundliteral.57, ptr @.compoundliteral.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @mxl111sf_props_mercury, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.compoundliteral.64, ptr @.compoundliteral.65, ptr @.compoundliteral.66, ptr @.compoundliteral.67, ptr @.compoundliteral.68, ptr @.compoundliteral.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @mxl111sf_props_mercury_mh, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.compoundliteral.75, ptr @.compoundliteral.76, ptr @.compoundliteral.77, ptr @.compoundliteral.78, ptr @mxl111sf_i2c_algo, ptr @mxl111sf_probe.__key, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.99, ptr @.str.100, ptr @hauppauge_lgdt3305_config, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.124, ptr @.str.125, ptr @.str.136, ptr @.str.137, ptr @mxl_demod_config, ptr @.str.139, ptr @.str.141, ptr @.str.159, ptr @.str.164, ptr @.str.167, ptr @.str.171, ptr @.str.172, ptr @hauppauge_lg2160_config, ptr @.str.174, ptr @.str.176, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.187, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @mxl_tuner_config, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.206, ptr @.str.207, ptr @mxl111sf_init.eeprom, ptr @.str.216, ptr @mxl111sf_init.__key, ptr @.str.229, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @hauppauge_lg2161_1040_ep6_config, ptr @hauppauge_lg2161_1019_ep6_config, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @hauppauge_lg2161_1040_config, ptr @hauppauge_lg2161_1019_config, ptr @.str.303, ptr @.str.304], section "llvm.metadata"
@0 = internal global [262 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_mxl111sf_isoc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_mxl111sf_spi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_mxl111sf_rfswitch to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_ctrl_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_ctrl_msg._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_read_reg._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_read_reg._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_write_reg._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_write_reg_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_write_reg_mask._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_write_reg_mask._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_write_reg_mask._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_ctrl_program_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_ctrl_program_regs._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_id_table to i32), i32 840, i32 1056, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_props_atsc_mh to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_props_atsc to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_props_mh to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_props_dvbt to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_props_mercury to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_props_mercury_mh to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lgdt3305_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lgdt3305_frontend_attach._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lgdt3305_frontend_attach._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lgdt3305_frontend_attach._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lgdt3305_frontend_attach._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lgdt3305_frontend_attach._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lgdt3305_frontend_attach._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lgdt3305_frontend_attach._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_lgdt3305_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lgdt3305_frontend_attach._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_adap_fe_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_adap_fe_init._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_adap_fe_init._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_adap_fe_init._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_adap_fe_init._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_adap_fe_init._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_adap_fe_init._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_adap_fe_init._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_adap_fe_init._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_adap_fe_init._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_adap_fe_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_attach_demod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_attach_demod._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_attach_demod._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_attach_demod._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_attach_demod._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_attach_demod._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl_demod_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_attach_demod._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2160_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2160_frontend_attach._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2160_frontend_attach._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2160_frontend_attach._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2160_frontend_attach._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2160_frontend_attach._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2160_frontend_attach._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2160_frontend_attach._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2160_frontend_attach._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2160_frontend_attach._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2160_frontend_attach._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2160_frontend_attach._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2160_frontend_attach._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2160_frontend_attach._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_lg2160_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2160_frontend_attach._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_get_chip_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_get_chip_info._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_get_chip_info._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl_tuner_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_attach_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_ant_hunt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_ant_hunt._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_ep6_streaming_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_ep6_streaming_ctrl._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_ep4_streaming_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_ep5_streaming_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_ep5_streaming_ctrl._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_ep5_streaming_ctrl._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_ep5_streaming_ctrl._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_ep5_streaming_ctrl._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_init.eeprom to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_init._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_init._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_init._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_init._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_init._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_init._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_init._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_ep6_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_lg2161_1040_ep6_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_lg2161_1019_ep6_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_frontend_attach._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_frontend_attach._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_frontend_attach._entry.279 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_frontend_attach._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_frontend_attach._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_frontend_attach._entry.285 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_frontend_attach._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_frontend_attach._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_frontend_attach._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_frontend_attach._entry.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_frontend_attach._entry.295 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_frontend_attach._entry.297 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_frontend_attach._entry.299 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_lg2161_1040_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_lg2161_1019_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_lg2161_frontend_attach._entry.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl111sf_ctrl_msg(ptr noundef %state, i8 noundef zeroext %cmd, ptr nocapture noundef readonly %wbuf, i32 noundef %wlen, ptr noundef writeonly %rbuf, i32 noundef %rlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %cmp = icmp eq ptr %rbuf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rlen)
  %cmp2 = icmp eq i32 %rlen, 0
  %spec.select = or i1 %cmp, %cmp2
  %add = add i32 %wlen, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %cmp3 = icmp sgt i32 %add, 64
  br i1 %cmp3, label %do.end, label %do.body4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %wlen) #9
  br label %cleanup

do.body4:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_ctrl_msg.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_ctrl_msg, %if.then9)) #6
          to label %do.end12 [label %if.then9], !srcloc !577

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_ctrl_msg.__UNIQUE_ID_ddebug398, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %wlen, i32 noundef %rlen) #6
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %do.body4
  %msg_lock = getelementptr inbounds %struct.mxl111sf_state, ptr %state, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %msg_lock, i32 noundef 0) #6
  %sndbuf = getelementptr inbounds %struct.mxl111sf_state, ptr %state, i32 0, i32 13
  %2 = call ptr @memset(ptr %sndbuf, i32 0, i32 %add)
  %rcvbuf = getelementptr inbounds %struct.mxl111sf_state, ptr %state, i32 0, i32 14
  %3 = call ptr @memset(ptr %rcvbuf, i32 0, i32 %rlen)
  %4 = ptrtoint ptr %sndbuf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %cmd, ptr %sndbuf, align 4
  %arrayidx17 = getelementptr %struct.mxl111sf_state, ptr %state, i32 0, i32 13, i32 1
  %5 = call ptr @memcpy(ptr %arrayidx17, ptr %wbuf, i32 %wlen)
  %conv = trunc i32 %add to i16
  br i1 %spec.select, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 @dvb_usbv2_generic_write(ptr noundef %1, ptr noundef %sndbuf, i16 noundef zeroext %conv) #6
  br label %cond.end

cond.false:                                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  %conv29 = trunc i32 %rlen to i16
  %call30 = tail call i32 @dvb_usbv2_generic_rw(ptr noundef %1, ptr noundef %sndbuf, i16 noundef zeroext %conv, ptr noundef %rcvbuf, i16 noundef zeroext %conv29) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call22, %cond.true ], [ %call30, %cond.false ]
  br i1 %cmp, label %cond.end.if.end35_crit_edge, label %if.then32

cond.end.if.end35_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then32:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = call ptr @memcpy(ptr %rbuf, ptr %rcvbuf, i32 %rlen)
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %cond.end.if.end35_crit_edge
  tail call void @mutex_unlock(ptr noundef %msg_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp37 = icmp slt i32 %cond, 0
  br i1 %cmp37, label %land.lhs.true, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end35
  %7 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %land.lhs.true.cleanup_crit_edge, label %do.end44

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end44:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef %cond, i32 noundef 82) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %land.lhs.true.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ %cond, %do.end44 ], [ %cond, %land.lhs.true.cleanup_crit_edge ], [ %cond, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_generic_write(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_generic_rw(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext %addr, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %addr.addr = alloca i8, align 1
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %addr, ptr %addr.addr, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %buf, align 1, !annotation !578
  %2 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !578
  %call = call i32 @mxl111sf_ctrl_msg(ptr noundef %state, i8 noundef zeroext -86, ptr noundef nonnull %addr.addr, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.then5_crit_edge, label %do.end

land.lhs.true.if.then5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, i32 noundef %call, i32 noundef 98) #9
  %.pr = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  br label %if.then5

if.then5:                                         ; preds = %do.end, %land.lhs.true.if.then5_crit_edge
  %5 = phi i32 [ %4, %land.lhs.true.if.then5_crit_edge ], [ %.pr, %do.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %if.then5.fail_crit_edge, label %do.end10

if.then5.fail_crit_edge:                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

do.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %conv12 = zext i8 %addr to i32
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef %conv12) #9
  br label %fail

if.end15:                                         ; preds = %entry
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %addr)
  %cmp18 = icmp eq i8 %7, %addr
  br i1 %cmp18, label %if.then20, label %do.end24

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %2, align 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %data, align 1
  br label %do.body33

do.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %conv17 = zext i8 %addr to i32
  %conv16 = zext i8 %7 to i32
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %2, align 1
  %conv30 = zext i8 %12 to i32
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv17, i32 noundef %conv16, i32 noundef %conv30) #9
  br label %do.body33

do.body33:                                        ; preds = %do.end24, %if.then20
  %ret.0 = phi i32 [ %call, %if.then20 ], [ -22, %do.end24 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_read_reg.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_read_reg, %if.then39)) #6
          to label %fail [label %if.then39], !srcloc !577

if.then39:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  %conv40 = zext i8 %addr to i32
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %2, align 1
  %conv42 = zext i8 %14 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_read_reg.__UNIQUE_ID_ddebug399, ptr noundef nonnull @.str.15, i32 noundef %conv40, i32 noundef %conv42) #6
  br label %fail

fail:                                             ; preds = %if.then39, %do.body33, %do.end10, %if.then5.fail_crit_edge
  %ret.1 = phi i32 [ %call, %do.end10 ], [ %call, %if.then5.fail_crit_edge ], [ %ret.0, %if.then39 ], [ %ret.0, %do.body33 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext %addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %addr, ptr %buf, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %data, ptr %0, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_write_reg.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_write_reg, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %addr to i32
  %conv3 = zext i8 %data to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_write_reg.__UNIQUE_ID_ddebug400, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %conv3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = call i32 @mxl111sf_ctrl_msg(ptr noundef %state, i8 noundef zeroext 85, ptr noundef nonnull %buf, i32 noundef 2, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end25_crit_edge

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

land.lhs.true:                                    ; preds = %do.end
  %3 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end20_crit_edge, label %do.end11

land.lhs.true.do.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

do.end11:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.16, i32 noundef %call4, i32 noundef 124) #9
  br label %do.end20

do.end20:                                         ; preds = %do.end11, %land.lhs.true.do.end20_crit_edge
  %conv22 = zext i8 %addr to i32
  %conv23 = zext i8 %data to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv22, i32 noundef %conv23) #9
  br label %if.end25

if.end25:                                         ; preds = %do.end20, %do.end.if.end25_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl111sf_write_reg_mask(ptr noundef %state, i8 noundef zeroext %addr, i8 noundef zeroext %mask, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %val, align 1
  %conv = zext i8 %mask to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %mask)
  %cmp.not = icmp eq i8 %mask, -1
  br i1 %cmp.not, label %entry.if.end38_crit_edge, label %if.then

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then:                                          ; preds = %entry
  %call = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext %addr, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %land.lhs.true, label %if.then.if.end18_crit_edge

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true:                                    ; preds = %if.then
  %1 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end12_crit_edge, label %do.end

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.21, i32 noundef %call, i32 noundef 141) #9
  br label %do.end12

do.end12:                                         ; preds = %do.end, %land.lhs.true.do.end12_crit_edge
  %conv14 = zext i8 %addr to i32
  %conv16 = zext i8 %data to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %conv14, i32 noundef %conv, i32 noundef %conv16) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end12, %if.then.if.end18_crit_edge
  %call19 = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext %addr, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp21 = icmp slt i32 %call19, 0
  br i1 %cmp21, label %land.lhs.true24, label %if.end18.if.end38_crit_edge

if.end18.if.end38_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.lhs.true24:                                  ; preds = %if.end18
  %2 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and25 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %land.lhs.true24.fail_crit_edge, label %do.end30

land.lhs.true24.fail_crit_edge:                   ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

do.end30:                                         ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.21, i32 noundef %call19, i32 noundef 147) #9
  br label %fail

if.end38:                                         ; preds = %if.end18.if.end38_crit_edge, %entry.if.end38_crit_edge
  %neg = xor i8 %mask, -1
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %and41 = and i8 %4, %neg
  %or79 = or i8 %and41, %data
  %call46 = tail call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext %addr, i8 noundef zeroext %or79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp48 = icmp slt i32 %call46, 0
  br i1 %cmp48, label %land.lhs.true51, label %if.end38.fail_crit_edge

if.end38.fail_crit_edge:                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

land.lhs.true51:                                  ; preds = %if.end38
  %5 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and52 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %land.lhs.true51.fail_crit_edge, label %do.end57

land.lhs.true51.fail_crit_edge:                   ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

do.end57:                                         ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #8
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.21, i32 noundef %call46, i32 noundef 154) #9
  br label %fail

fail:                                             ; preds = %do.end57, %land.lhs.true51.fail_crit_edge, %if.end38.fail_crit_edge, %do.end30, %land.lhs.true24.fail_crit_edge
  %ret.0 = phi i32 [ %call19, %do.end30 ], [ %call46, %do.end57 ], [ %call46, %land.lhs.true51.fail_crit_edge ], [ %call46, %if.end38.fail_crit_edge ], [ %call19, %land.lhs.true24.fail_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl111sf_ctrl_program_regs(ptr noundef %state, ptr nocapture noundef readonly %ctrl_reg_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl_reg_info to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctrl_reg_info, align 1
  %mask51 = getelementptr %struct.mxl111sf_reg_ctrl_info, ptr %ctrl_reg_info, i32 0, i32 1
  %2 = ptrtoint ptr %mask51 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mask51, align 1
  %or4552 = or i8 %3, %1
  %data53 = getelementptr %struct.mxl111sf_reg_ctrl_info, ptr %ctrl_reg_info, i32 0, i32 2
  %4 = ptrtoint ptr %data53 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data53, align 1
  %or54654 = or i8 %or4552, %5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or54654)
  %tobool.not55 = icmp eq i8 %or54654, 0
  br i1 %tobool.not55, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %call68 = tail call i32 @mxl111sf_write_reg_mask(ptr noundef %state, i8 noundef zeroext %1, i8 noundef zeroext %3, i8 noundef zeroext %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %for.body.preheader.land.lhs.true_crit_edge, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  br label %for.inc

for.body.preheader.land.lhs.true_crit_edge:       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

for.body:                                         ; preds = %for.inc
  %call = tail call i32 @mxl111sf_write_reg_mask(ptr noundef %state, i8 noundef zeroext %10, i8 noundef zeroext %12, i8 noundef zeroext %14)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %for.body.land.lhs.true_crit_edge, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.land.lhs.true_crit_edge, %for.body.preheader.land.lhs.true_crit_edge
  %arrayidx57.lcssa = phi ptr [ %ctrl_reg_info, %for.body.preheader.land.lhs.true_crit_edge ], [ %arrayidx, %for.body.land.lhs.true_crit_edge ]
  %i.056.lcssa = phi i32 [ 0, %for.body.preheader.land.lhs.true_crit_edge ], [ %inc, %for.body.land.lhs.true_crit_edge ]
  %call.lcssa = phi i32 [ %call68, %for.body.preheader.land.lhs.true_crit_edge ], [ %call, %for.body.land.lhs.true_crit_edge ]
  %6 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %land.lhs.true.do.end21_crit_edge, label %do.end

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.29, i32 noundef %call.lcssa, i32 noundef 174) #9
  br label %do.end21

do.end21:                                         ; preds = %do.end, %land.lhs.true.do.end21_crit_edge
  %7 = ptrtoint ptr %arrayidx57.lcssa to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx57.lcssa, align 1
  %conv25 = zext i8 %8 to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %i.056.lcssa, i32 noundef %conv25) #9
  br label %for.end

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %call71 = phi i32 [ %call, %for.body.for.inc_crit_edge ], [ %call68, %for.body.preheader.for.inc_crit_edge ]
  %i.05670 = phi i32 [ %inc, %for.body.for.inc_crit_edge ], [ 0, %for.body.preheader.for.inc_crit_edge ]
  %inc = add i32 %i.05670, 1
  %arrayidx = getelementptr %struct.mxl111sf_reg_ctrl_info, ptr %ctrl_reg_info, i32 %inc
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %mask = getelementptr %struct.mxl111sf_reg_ctrl_info, ptr %ctrl_reg_info, i32 %inc, i32 1
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mask, align 1
  %or45 = or i8 %12, %10
  %data = getelementptr %struct.mxl111sf_reg_ctrl_info, ptr %ctrl_reg_info, i32 %inc, i32 2
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data, align 1
  %or546 = or i8 %or45, %14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or546)
  %tobool.not = icmp eq i8 %or546, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end21, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ %call.lcssa, %do.end21 ], [ 0, %entry.for.end_crit_edge ], [ %call71, %for.inc.for.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_usb_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @mxl111sf_usb_driver, ptr noundef null, ptr noundef nonnull @.str.3) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxl111sf_usb_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @mxl111sf_usb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_probe(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usbv2_disconnect(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_suspend(ptr noundef, [1 x i32]) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_resume(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_probe(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %msg_lock = getelementptr inbounds %struct.mxl111sf_state, ptr %1, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %msg_lock, ptr noundef nonnull @.str.79, ptr noundef nonnull @mxl111sf_probe.__key) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_frontend_attach_atsc_mh(ptr noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_frontend_attach_atsc_mh.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_frontend_attach_atsc_mh, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_frontend_attach_atsc_mh.__UNIQUE_ID_ddebug412, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @mxl111sf_lgdt3305_frontend_attach(ptr noundef %adap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %call6 = tail call fastcc i32 @mxl111sf_attach_demod(ptr noundef %adap, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call fastcc i32 @mxl111sf_lg2160_frontend_attach(ptr noundef %adap, i8 noundef zeroext 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call10, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_attach_tuner(ptr nocapture noundef readonly %adap) #0 align 64 {
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
  %mdev.i = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 10, i32 12
  %4 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_attach_tuner.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_attach_tuner, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_attach_tuner.__UNIQUE_ID_ddebug411, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.189) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %num_frontends = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_frontends, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp89.not = icmp eq i8 %7, 0
  br i1 %cmp89.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.090 = phi i32 [ %inc, %if.end28.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %call7 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.190) #6
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %cond.end, label %for.body.if.then12_crit_edge

for.body.if.then12_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

cond.end:                                         ; preds = %for.body
  %call9 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.191) #6
  %call10 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.190) #6
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end20, label %cond.end.if.then12_crit_edge

cond.end.if.then12_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.then12:                                        ; preds = %cond.end.if.then12_crit_edge, %for.body.if.then12_crit_edge
  %cond85 = phi ptr [ %call10, %cond.end.if.then12_crit_edge ], [ %call7, %for.body.if.then12_crit_edge ]
  %arrayidx = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 %i.090
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call13 = tail call ptr %cond85(ptr noundef %9, ptr noundef %3, ptr noundef nonnull @mxl_tuner_config) #6
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %if.then16, label %if.end28

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.190) #6
  br label %cleanup

do.end20:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192) #9
  br label %cleanup

if.end28:                                         ; preds = %if.then12
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %get_rf_strength = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 1, i32 32, i32 13
  %12 = ptrtoint ptr %get_rf_strength to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_rf_strength, align 4
  %read_signal_strength = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 1, i32 17
  %14 = ptrtoint ptr %read_signal_strength to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %read_signal_strength, align 4
  %inc = add nuw nsw i32 %i.090, 1
  %15 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_frontends, align 4
  %conv5 = zext i8 %16 to i32
  %cmp = icmp ult i32 %inc, %conv5
  br i1 %cmp, label %if.end28.for.body_crit_edge, label %if.end28.for.end_crit_edge

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end28.for.end_crit_edge, %do.end.for.end_crit_edge
  %tuner = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 16
  %function = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 16, i32 3
  %17 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 131077, ptr %function, align 4
  %name = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 16, i32 1
  %18 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.193, ptr %name, align 4
  %tuner_pads = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 17
  %flags = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 17, i32 0, i32 4
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %flags, align 4
  %sig_type = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 17, i32 0, i32 3
  %20 = ptrtoint ptr %sig_type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %sig_type, align 4
  %flags40 = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 17, i32 1, i32 4
  %21 = ptrtoint ptr %flags40 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %flags40, align 4
  %sig_type43 = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 17, i32 1, i32 3
  %22 = ptrtoint ptr %sig_type43 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %sig_type43, align 4
  %call46 = tail call i32 @media_entity_pads_init(ptr noundef %tuner, i16 noundef zeroext 2, ptr noundef %tuner_pads) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call51 = tail call i32 @media_device_register_entity(ptr noundef %5, ptr noundef %tuner) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %for.end.cleanup_crit_edge, %do.end20, %if.then16
  %retval.0 = phi i32 [ %call46, %for.end.cleanup_crit_edge ], [ %call51, %if.end49 ], [ -5, %if.then16 ], [ -5, %do.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_streaming_ctrl_atsc_mh(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_streaming_ctrl_atsc_mh.__UNIQUE_ID_ddebug421, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_streaming_ctrl_atsc_mh, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_streaming_ctrl_atsc_mh.__UNIQUE_ID_ddebug421, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.200, i32 noundef %1, i32 noundef %onoff) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %id3 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %2 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id3, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end.return_crit_edge [
    i32 0, label %if.then4
    i32 1, label %if.then8
    i32 2, label %if.then13
  ]

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @mxl111sf_ep6_streaming_ctrl(ptr noundef %fe, i32 noundef %onoff)
  br label %return

if.then8:                                         ; preds = %do.end
  %dvb.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %5 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dvb.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_adapter, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 4
  %id.i = getelementptr inbounds %struct.dvb_usb_adapter, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %id.i, align 4
  %conv.i = zext i8 %10 to i32
  %.neg.i = mul nsw i32 %conv.i, -2280
  %idx.neg.i = add nsw i32 %.neg.i, -1616
  %add.ptr.i = getelementptr i8, ptr %8, i32 %idx.neg.i
  %priv3.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr.i, i32 0, i32 15
  %11 = ptrtoint ptr %priv3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv3.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_ep4_streaming_ctrl.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_streaming_ctrl_atsc_mh, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !577

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_ep4_streaming_ctrl.__UNIQUE_ID_ddebug405, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.206, i32 noundef %onoff) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool7.not.i = icmp eq i32 %onoff, 0
  br i1 %tobool7.not.i, label %do.end.i.return_crit_edge, label %if.then8.i

do.end.i.return_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then8.i:                                       ; preds = %do.end.i
  %call9.i = tail call i32 @mxl111sf_enable_usb_output(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i = icmp slt i32 %call9.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then8.i.return_crit_edge

if.then8.i.return_crit_edge:                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true.i:                                  ; preds = %if.then8.i
  %13 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i.return_crit_edge, label %do.end16.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end16.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.206, i32 noundef %call9.i, i32 noundef 406) #9
  br label %return

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 @mxl111sf_ep5_streaming_ctrl(ptr noundef %fe, i32 noundef %onoff)
  br label %return

return:                                           ; preds = %if.then13, %do.end16.i, %land.lhs.true.i.return_crit_edge, %if.then8.i.return_crit_edge, %do.end.i.return_crit_edge, %if.then4, %do.end.return_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ %call14, %if.then13 ], [ 0, %do.end.return_crit_edge ], [ 0, %do.end.i.return_crit_edge ], [ %call9.i, %do.end16.i ], [ %call9.i, %land.lhs.true.i.return_crit_edge ], [ %call9.i, %if.then8.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_init(ptr noundef %d) #0 align 64 {
entry:
  %reg = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #6
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %reg, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #6
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 80, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %reg, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %9 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 80, ptr %arrayinit.element, align 4
  %flags2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %10 = ptrtoint ptr %flags2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags2, align 2
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %11 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 256, ptr %len3, align 4
  %buf4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %12 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mxl111sf_init.eeprom, ptr %buf4, align 4
  %call = call fastcc i32 @mxl1x1sf_get_chip_info(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %entry.do.body75_crit_edge

entry.do.body75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body75

land.lhs.true:                                    ; preds = %entry
  %13 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %land.lhs.true.if.then9_crit_edge, label %do.end

land.lhs.true.if.then9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.216, i32 noundef %call, i32 noundef 934) #9
  %.pr = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  br label %if.then9

if.then9:                                         ; preds = %do.end, %land.lhs.true.if.then9_crit_edge
  %14 = phi i32 [ %13, %land.lhs.true.if.then9_crit_edge ], [ %.pr, %do.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10.not = icmp eq i32 %14, 0
  br i1 %tobool10.not, label %if.then9.if.end17_crit_edge, label %do.end14

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.end14:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.216) #9
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %if.then9.if.end17_crit_edge
  %call18 = call fastcc i32 @mxl1x1sf_get_chip_info(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp20 = icmp slt i32 %call18, 0
  %15 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  br i1 %cmp20, label %land.lhs.true23, label %if.else

land.lhs.true23:                                  ; preds = %if.end17
  %and24 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %land.lhs.true23.land.lhs.true56_crit_edge, label %do.end29

land.lhs.true23.land.lhs.true56_crit_edge:        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true56

do.end29:                                         ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.216, i32 noundef %call18, i32 noundef 934) #9
  br label %land.lhs.true56

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool41.not = icmp eq i32 %15, 0
  br i1 %tobool41.not, label %if.else.do.body75_crit_edge, label %do.end45

if.else.do.body75_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body75

do.end45:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.216) #9
  br label %do.body75

land.lhs.true56:                                  ; preds = %do.end29, %land.lhs.true23.land.lhs.true56_crit_edge
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164) #9
  %16 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and57 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %land.lhs.true56.do.end71_crit_edge, label %do.end62

land.lhs.true56.do.end71_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end71

do.end62:                                         ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #8
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.216, i32 noundef %call18, i32 noundef 935) #9
  br label %do.end71

do.end71:                                         ; preds = %do.end62, %land.lhs.true56.do.end71_crit_edge
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164) #9
  br label %do.body75

do.body75:                                        ; preds = %do.end71, %do.end45, %if.else.do.body75_crit_edge, %entry.do.body75_crit_edge
  %fe_lock = getelementptr inbounds %struct.mxl111sf_state, ptr %1, i32 0, i32 10
  call void @__mutex_init(ptr noundef %fe_lock, ptr noundef nonnull @.str.229, ptr noundef nonnull @mxl111sf_init.__key) #6
  %chip_rev = getelementptr inbounds %struct.mxl111sf_state, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %chip_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp79 = icmp ugt i8 %18, 1
  br i1 %cmp79, label %if.then81, label %do.body75.if.end83_crit_edge

do.body75.if.end83_crit_edge:                     ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.then81:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #8
  %call82 = call i32 @mxl111sf_config_pin_mux_modes(ptr noundef %1, i32 noundef 7) #6
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %do.body75.if.end83_crit_edge
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 10
  %call84 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp86 = icmp slt i32 %call84, 0
  br i1 %cmp86, label %land.lhs.true89, label %if.end102

land.lhs.true89:                                  ; preds = %if.end83
  %19 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and90 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %land.lhs.true89.cleanup_crit_edge, label %do.end95

land.lhs.true89.cleanup_crit_edge:                ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end95:                                         ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #8
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.216, i32 noundef %call84, i32 noundef 944) #9
  br label %cleanup

if.end102:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  %tv = getelementptr inbounds %struct.mxl111sf_state, ptr %1, i32 0, i32 9
  %20 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @mxl111sf_init.eeprom, i32 0, i32 160), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %20)
  %cmp104 = icmp eq i8 %20, -124
  %cond = select i1 %cmp104, ptr getelementptr inbounds ([256 x i8], ptr @mxl111sf_init.eeprom, i32 0, i32 160), ptr getelementptr inbounds ([256 x i8], ptr @mxl111sf_init.eeprom, i32 0, i32 128)
  call void @tveeprom_hauppauge_analog(ptr noundef %tv, ptr noundef %cond) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %do.end95, %land.lhs.true89.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_get_stream_config_atsc_mh(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ts_type, ptr noundef writeonly %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_get_stream_config_atsc_mh.__UNIQUE_ID_ddebug420, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_atsc_mh, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_get_stream_config_atsc_mh.__UNIQUE_ID_ddebug420, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.232, i32 noundef %1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %id3 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %2 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id3, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.305)
  switch i32 %3, label %do.end.if.end26_crit_edge [
    i32 0, label %if.then4
    i32 1, label %if.then11
    i32 2, label %if.then19
  ]

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then4:                                         ; preds = %do.end
  %5 = ptrtoint ptr %ts_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ts_type, align 1
  %6 = load i32, ptr @dvb_usb_mxl111sf_isoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_atsc_mh, %if.then.i)) #6
          to label %mxl111sf_stream_config_isoc.exit [label %if.then.i], !srcloc !577

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.234, i32 noundef 6, i32 noundef 73728) #6
  br label %mxl111sf_stream_config_isoc.exit

mxl111sf_stream_config_isoc.exit:                 ; preds = %if.then.i, %if.then6
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %stream, align 4
  %count.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %count.i, align 1
  %endpoint3.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %9 = ptrtoint ptr %endpoint3.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 6, ptr %endpoint3.i, align 2
  %u.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %10 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 24, ptr %u.i, align 4
  %framesize6.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 1
  %11 = ptrtoint ptr %framesize6.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3072, ptr %framesize6.i, align 4
  %interval.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 2
  %12 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %interval.i, align 4
  br label %if.end26

if.else:                                          ; preds = %if.then4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_atsc_mh, %if.then.i37)) #6
          to label %mxl111sf_stream_config_bulk.exit [label %if.then.i37], !srcloc !577

if.then.i37:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.236, i32 noundef 6) #6
  br label %mxl111sf_stream_config_bulk.exit

mxl111sf_stream_config_bulk.exit:                 ; preds = %if.then.i37, %if.else
  %13 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %stream, align 4
  %count.i38 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %14 = ptrtoint ptr %count.i38 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 5, ptr %count.i38, align 1
  %endpoint3.i39 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %15 = ptrtoint ptr %endpoint3.i39 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 6, ptr %endpoint3.i39, align 2
  %u.i40 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %16 = ptrtoint ptr %u.i40 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8192, ptr %u.i40, align 4
  br label %if.end26

if.then11:                                        ; preds = %do.end
  %17 = ptrtoint ptr %ts_type to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %ts_type, align 1
  %18 = load i32, ptr @dvb_usb_mxl111sf_isoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.not = icmp eq i32 %18, 0
  br i1 %tobool12.not, label %if.else14, label %if.then13

if.then13:                                        ; preds = %if.then11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_atsc_mh, %if.then.i41)) #6
          to label %mxl111sf_stream_config_isoc.exit47 [label %if.then.i41], !srcloc !577

if.then.i41:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.234, i32 noundef 4, i32 noundef 54144) #6
  br label %mxl111sf_stream_config_isoc.exit47

mxl111sf_stream_config_isoc.exit47:               ; preds = %if.then.i41, %if.then13
  %19 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %stream, align 4
  %count.i42 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %20 = ptrtoint ptr %count.i42 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 5, ptr %count.i42, align 1
  %endpoint3.i43 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %21 = ptrtoint ptr %endpoint3.i43 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %endpoint3.i43, align 2
  %u.i44 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %22 = ptrtoint ptr %u.i44 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 96, ptr %u.i44, align 4
  %framesize6.i45 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 1
  %23 = ptrtoint ptr %framesize6.i45 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 564, ptr %framesize6.i45, align 4
  %interval.i46 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 2
  %24 = ptrtoint ptr %interval.i46 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %interval.i46, align 4
  br label %if.end26

if.else14:                                        ; preds = %if.then11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_atsc_mh, %if.then.i48)) #6
          to label %mxl111sf_stream_config_bulk.exit52 [label %if.then.i48], !srcloc !577

if.then.i48:                                      ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.236, i32 noundef 4) #6
  br label %mxl111sf_stream_config_bulk.exit52

mxl111sf_stream_config_bulk.exit52:               ; preds = %if.then.i48, %if.else14
  %25 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %stream, align 4
  %count.i49 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %26 = ptrtoint ptr %count.i49 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 5, ptr %count.i49, align 1
  %endpoint3.i50 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %27 = ptrtoint ptr %endpoint3.i50 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 4, ptr %endpoint3.i50, align 2
  %u.i51 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %28 = ptrtoint ptr %u.i51 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8192, ptr %u.i51, align 4
  br label %if.end26

if.then19:                                        ; preds = %do.end
  %29 = ptrtoint ptr %ts_type to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %ts_type, align 1
  %30 = load i32, ptr @dvb_usb_mxl111sf_isoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool20.not = icmp eq i32 %30, 0
  br i1 %tobool20.not, label %if.else22, label %if.then21

if.then21:                                        ; preds = %if.then19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_atsc_mh, %if.then.i53)) #6
          to label %mxl111sf_stream_config_isoc.exit59 [label %if.then.i53], !srcloc !577

if.then.i53:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.234, i32 noundef 5, i32 noundef 19200) #6
  br label %mxl111sf_stream_config_isoc.exit59

mxl111sf_stream_config_isoc.exit59:               ; preds = %if.then.i53, %if.then21
  %31 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %stream, align 4
  %count.i54 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %32 = ptrtoint ptr %count.i54 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 5, ptr %count.i54, align 1
  %endpoint3.i55 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %33 = ptrtoint ptr %endpoint3.i55 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 5, ptr %endpoint3.i55, align 2
  %u.i56 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %34 = ptrtoint ptr %u.i56 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 96, ptr %u.i56, align 4
  %framesize6.i57 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 1
  %35 = ptrtoint ptr %framesize6.i57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 200, ptr %framesize6.i57, align 4
  %interval.i58 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 2
  %36 = ptrtoint ptr %interval.i58 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %interval.i58, align 4
  br label %if.end26

if.else22:                                        ; preds = %if.then19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_atsc_mh, %if.then.i60)) #6
          to label %mxl111sf_stream_config_bulk.exit64 [label %if.then.i60], !srcloc !577

if.then.i60:                                      ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.236, i32 noundef 5) #6
  br label %mxl111sf_stream_config_bulk.exit64

mxl111sf_stream_config_bulk.exit64:               ; preds = %if.then.i60, %if.else22
  %37 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %stream, align 4
  %count.i61 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %38 = ptrtoint ptr %count.i61 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 5, ptr %count.i61, align 1
  %endpoint3.i62 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %39 = ptrtoint ptr %endpoint3.i62 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 5, ptr %endpoint3.i62, align 2
  %u.i63 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %40 = ptrtoint ptr %u.i63 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 8192, ptr %u.i63, align 4
  br label %if.end26

if.end26:                                         ; preds = %mxl111sf_stream_config_bulk.exit64, %mxl111sf_stream_config_isoc.exit59, %mxl111sf_stream_config_bulk.exit52, %mxl111sf_stream_config_isoc.exit47, %mxl111sf_stream_config_bulk.exit, %mxl111sf_stream_config_isoc.exit, %do.end.if.end26_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl111sf_i2c_xfer(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxl111sf_i2c_func(ptr nocapture noundef readnone %adapter) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxl111sf_lgdt3305_frontend_attach(ptr noundef %adap) unnamed_addr #0 align 64 {
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
  %adap_state1 = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_lgdt3305_frontend_attach.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_lgdt3305_frontend_attach, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_lgdt3305_frontend_attach.__UNIQUE_ID_ddebug406, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.82) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %3, align 4
  %5 = load i32, ptr @dvb_usb_mxl111sf_isoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool6.not, i32 1, i32 2
  %6 = ptrtoint ptr %adap_state1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %adap_state1, align 4
  %alt_mode8 = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %alt_mode8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %alt_mode8, align 4
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 4
  %call10 = tail call i32 @usb_set_interface(ptr noundef %9, i32 noundef 0, i32 noundef %cond) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end15, label %do.end.if.end18_crit_edge

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %do.end.if.end18_crit_edge
  %gpio_mode = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %gpio_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %gpio_mode, align 4
  %gpio_mode20 = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 0, i32 1
  %11 = ptrtoint ptr %gpio_mode20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %gpio_mode20, align 4
  %device_mode = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 0, i32 2
  %12 = ptrtoint ptr %device_mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %device_mode, align 4
  %ep6_clockphase = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 0, i32 3
  %13 = ptrtoint ptr %ep6_clockphase to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %ep6_clockphase, align 4
  %call21 = tail call i32 @mxl1x1sf_soft_reset(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %land.lhs.true, label %if.end36.critedge

land.lhs.true:                                    ; preds = %if.end18
  %14 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %land.lhs.true.cleanup_crit_edge, label %do.end29

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end29:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.82, i32 noundef %call21, i32 noundef 448) #9
  br label %cleanup

if.end36.critedge:                                ; preds = %if.end18
  %call37 = tail call i32 @mxl111sf_init_tuner_demod(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp39 = icmp slt i32 %call37, 0
  br i1 %cmp39, label %land.lhs.true42, label %if.end55.critedge

land.lhs.true42:                                  ; preds = %if.end36.critedge
  %15 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and43 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %land.lhs.true42.cleanup_crit_edge, label %do.end48

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end48:                                         ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.82, i32 noundef %call37, i32 noundef 451) #9
  br label %cleanup

if.end55.critedge:                                ; preds = %if.end36.critedge
  %16 = ptrtoint ptr %device_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %device_mode, align 4
  %call57 = tail call i32 @mxl1x1sf_set_device_mode(ptr noundef %3, i32 noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp59 = icmp slt i32 %call57, 0
  br i1 %cmp59, label %land.lhs.true62, label %if.end75.critedge

land.lhs.true62:                                  ; preds = %if.end55.critedge
  %18 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and63 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %land.lhs.true62.cleanup_crit_edge, label %do.end68

land.lhs.true62.cleanup_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end68:                                         ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.82, i32 noundef %call57, i32 noundef 455) #9
  br label %cleanup

if.end75.critedge:                                ; preds = %if.end55.critedge
  %call76 = tail call i32 @mxl111sf_enable_usb_output(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp78 = icmp slt i32 %call76, 0
  br i1 %cmp78, label %land.lhs.true81, label %if.end94.critedge

land.lhs.true81:                                  ; preds = %if.end75.critedge
  %19 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and82 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %land.lhs.true81.cleanup_crit_edge, label %do.end87

land.lhs.true81.cleanup_crit_edge:                ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end87:                                         ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #8
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.82, i32 noundef %call76, i32 noundef 459) #9
  br label %cleanup

if.end94.critedge:                                ; preds = %if.end75.critedge
  %call95 = tail call i32 @mxl1x1sf_top_master_ctrl(ptr noundef %3, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp97 = icmp slt i32 %call95, 0
  br i1 %cmp97, label %land.lhs.true100, label %if.end113.critedge

land.lhs.true100:                                 ; preds = %if.end94.critedge
  %20 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and101 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %land.lhs.true100.cleanup_crit_edge, label %do.end106

land.lhs.true100.cleanup_crit_edge:               ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end106:                                        ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #8
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.82, i32 noundef %call95, i32 noundef 462) #9
  br label %cleanup

if.end113.critedge:                               ; preds = %if.end94.critedge
  %call114 = tail call i32 @mxl111sf_init_port_expander(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp116 = icmp slt i32 %call114, 0
  br i1 %cmp116, label %land.lhs.true119, label %if.end132.critedge

land.lhs.true119:                                 ; preds = %if.end113.critedge
  %21 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and120 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %land.lhs.true119.cleanup_crit_edge, label %do.end125

land.lhs.true119.cleanup_crit_edge:               ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end125:                                        ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #8
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.82, i32 noundef %call114, i32 noundef 466) #9
  br label %cleanup

if.end132.critedge:                               ; preds = %if.end113.critedge
  %22 = ptrtoint ptr %gpio_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gpio_mode, align 4
  %call134 = tail call i32 @mxl111sf_gpio_mode_switch(ptr noundef %3, i32 noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %cmp136 = icmp slt i32 %call134, 0
  br i1 %cmp136, label %land.lhs.true139, label %if.end152.critedge

land.lhs.true139:                                 ; preds = %if.end132.critedge
  %24 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and140 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %land.lhs.true139.cleanup_crit_edge, label %do.end145

land.lhs.true139.cleanup_crit_edge:               ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end145:                                        ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #8
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.82, i32 noundef %call134, i32 noundef 469) #9
  br label %cleanup

if.end152.critedge:                               ; preds = %if.end132.critedge
  %call153 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.99) #6
  %tobool154.not = icmp eq ptr %call153, null
  br i1 %tobool154.not, label %cond.end, label %if.end152.critedge.if.then159_crit_edge

if.end152.critedge.if.then159_crit_edge:          ; preds = %if.end152.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then159

cond.end:                                         ; preds = %if.end152.critedge
  %call155 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.100) #6
  %call156 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.99) #6
  %tobool158.not = icmp eq ptr %call156, null
  br i1 %tobool158.not, label %do.end167, label %cond.end.if.then159_crit_edge

cond.end.if.then159_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then159

if.then159:                                       ; preds = %cond.end.if.then159_crit_edge, %if.end152.critedge.if.then159_crit_edge
  %cond15717 = phi ptr [ %call156, %cond.end.if.then159_crit_edge ], [ %call153, %if.end152.critedge.if.then159_crit_edge ]
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call160 = tail call ptr %cond15717(ptr noundef nonnull @hauppauge_lgdt3305_config, ptr noundef %i2c_adap) #6
  %cmp161 = icmp eq ptr %call160, null
  br i1 %cmp161, label %if.then163, label %if.then178

if.then163:                                       ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.99) #6
  br label %if.end170.thread

do.end167:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #9
  br label %if.end170.thread

if.end170.thread:                                 ; preds = %do.end167, %if.then163
  %fe19 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %25 = ptrtoint ptr %fe19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %fe19, align 4
  br label %cleanup

if.then178:                                       ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #8
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %26 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call160, ptr %fe, align 4
  %num_frontends = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 11
  %27 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num_frontends, align 4
  %inc = add i8 %28, 1
  store i8 %inc, ptr %num_frontends, align 4
  %29 = load ptr, ptr %fe, align 4
  %init = getelementptr inbounds %struct.dvb_frontend, ptr %29, i32 0, i32 1, i32 5
  %30 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init, align 4
  %fe_init = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 0, i32 4
  %32 = ptrtoint ptr %fe_init to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %fe_init, align 4
  %33 = load ptr, ptr %fe, align 4
  %init186 = getelementptr inbounds %struct.dvb_frontend, ptr %33, i32 0, i32 1, i32 5
  %34 = ptrtoint ptr %init186 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @mxl111sf_adap_fe_init, ptr %init186, align 4
  %35 = load ptr, ptr %fe, align 4
  %sleep = getelementptr inbounds %struct.dvb_frontend, ptr %35, i32 0, i32 1, i32 6
  %36 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sleep, align 4
  %fe_sleep = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 0, i32 5
  %38 = ptrtoint ptr %fe_sleep to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %fe_sleep, align 4
  %39 = load ptr, ptr %fe, align 4
  %sleep195 = getelementptr inbounds %struct.dvb_frontend, ptr %39, i32 0, i32 1, i32 6
  %40 = ptrtoint ptr %sleep195 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @mxl111sf_adap_fe_sleep, ptr %sleep195, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then178, %if.end170.thread, %do.end145, %land.lhs.true139.cleanup_crit_edge, %do.end125, %land.lhs.true119.cleanup_crit_edge, %do.end106, %land.lhs.true100.cleanup_crit_edge, %do.end87, %land.lhs.true81.cleanup_crit_edge, %do.end68, %land.lhs.true62.cleanup_crit_edge, %do.end48, %land.lhs.true42.cleanup_crit_edge, %do.end29, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then178 ], [ %call21, %do.end29 ], [ %call37, %do.end48 ], [ %call57, %do.end68 ], [ %call76, %do.end87 ], [ %call95, %do.end106 ], [ %call114, %do.end125 ], [ %call134, %do.end145 ], [ %call21, %land.lhs.true.cleanup_crit_edge ], [ %call37, %land.lhs.true42.cleanup_crit_edge ], [ %call57, %land.lhs.true62.cleanup_crit_edge ], [ %call76, %land.lhs.true81.cleanup_crit_edge ], [ %call95, %land.lhs.true100.cleanup_crit_edge ], [ %call114, %land.lhs.true119.cleanup_crit_edge ], [ %call134, %land.lhs.true139.cleanup_crit_edge ], [ -5, %if.end170.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxl111sf_attach_demod(ptr noundef %adap, i8 noundef zeroext %fe_id) unnamed_addr #0 align 64 {
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
  %idxprom = zext i8 %fe_id to i32
  %arrayidx = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 %idxprom
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_attach_demod.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_attach_demod, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_attach_demod.__UNIQUE_ID_ddebug410, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.125) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %3, align 4
  %5 = load i32, ptr @dvb_usb_mxl111sf_isoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool6.not, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %arrayidx, align 4
  %alt_mode8 = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %alt_mode8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %alt_mode8, align 4
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 4
  %call10 = tail call i32 @usb_set_interface(ptr noundef %9, i32 noundef 0, i32 noundef %cond) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end15, label %do.end.if.end18_crit_edge

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %do.end.if.end18_crit_edge
  %gpio_mode = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %gpio_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %gpio_mode, align 4
  %gpio_mode20 = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 %idxprom, i32 1
  %11 = ptrtoint ptr %gpio_mode20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %gpio_mode20, align 4
  %device_mode = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 %idxprom, i32 2
  %12 = ptrtoint ptr %device_mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %device_mode, align 4
  %ep6_clockphase = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 %idxprom, i32 3
  %13 = ptrtoint ptr %ep6_clockphase to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %ep6_clockphase, align 4
  %call21 = tail call i32 @mxl1x1sf_soft_reset(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %land.lhs.true, label %if.end36.critedge

land.lhs.true:                                    ; preds = %if.end18
  %14 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %land.lhs.true.cleanup_crit_edge, label %do.end29

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end29:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.125, i32 noundef %call21, i32 noundef 766) #9
  br label %cleanup

if.end36.critedge:                                ; preds = %if.end18
  %call37 = tail call i32 @mxl111sf_init_tuner_demod(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp39 = icmp slt i32 %call37, 0
  br i1 %cmp39, label %land.lhs.true42, label %if.end55.critedge

land.lhs.true42:                                  ; preds = %if.end36.critedge
  %15 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and43 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %land.lhs.true42.cleanup_crit_edge, label %do.end48

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end48:                                         ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.125, i32 noundef %call37, i32 noundef 769) #9
  br label %cleanup

if.end55.critedge:                                ; preds = %if.end36.critedge
  %16 = ptrtoint ptr %device_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %device_mode, align 4
  %call57 = tail call i32 @mxl1x1sf_set_device_mode(ptr noundef %3, i32 noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp59 = icmp slt i32 %call57, 0
  br i1 %cmp59, label %land.lhs.true62, label %if.end75.critedge

land.lhs.true62:                                  ; preds = %if.end55.critedge
  %18 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and63 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %land.lhs.true62.cleanup_crit_edge, label %do.end68

land.lhs.true62.cleanup_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end68:                                         ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.125, i32 noundef %call57, i32 noundef 773) #9
  br label %cleanup

if.end75.critedge:                                ; preds = %if.end55.critedge
  %call76 = tail call i32 @mxl111sf_enable_usb_output(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp78 = icmp slt i32 %call76, 0
  br i1 %cmp78, label %land.lhs.true81, label %if.end94.critedge

land.lhs.true81:                                  ; preds = %if.end75.critedge
  %19 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and82 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %land.lhs.true81.cleanup_crit_edge, label %do.end87

land.lhs.true81.cleanup_crit_edge:                ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end87:                                         ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #8
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.125, i32 noundef %call76, i32 noundef 777) #9
  br label %cleanup

if.end94.critedge:                                ; preds = %if.end75.critedge
  %call95 = tail call i32 @mxl1x1sf_top_master_ctrl(ptr noundef %3, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp97 = icmp slt i32 %call95, 0
  br i1 %cmp97, label %land.lhs.true100, label %if.end113.critedge

land.lhs.true100:                                 ; preds = %if.end94.critedge
  %20 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and101 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %land.lhs.true100.cleanup_crit_edge, label %do.end106

land.lhs.true100.cleanup_crit_edge:               ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end106:                                        ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #8
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.125, i32 noundef %call95, i32 noundef 780) #9
  br label %cleanup

if.end113.critedge:                               ; preds = %if.end94.critedge
  %call114 = tail call i32 @mxl111sf_init_port_expander(ptr noundef %3) #6
  %call115 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.136) #6
  %tobool116.not = icmp eq ptr %call115, null
  br i1 %tobool116.not, label %cond.end, label %if.end113.critedge.if.then121_crit_edge

if.end113.critedge.if.then121_crit_edge:          ; preds = %if.end113.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then121

cond.end:                                         ; preds = %if.end113.critedge
  %call117 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.137) #6
  %call118 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.136) #6
  %tobool120.not = icmp eq ptr %call118, null
  br i1 %tobool120.not, label %do.end129, label %cond.end.if.then121_crit_edge

cond.end.if.then121_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then121

if.then121:                                       ; preds = %cond.end.if.then121_crit_edge, %if.end113.critedge.if.then121_crit_edge
  %cond119226 = phi ptr [ %call118, %cond.end.if.then121_crit_edge ], [ %call115, %if.end113.critedge.if.then121_crit_edge ]
  %call122 = tail call ptr %cond119226(ptr noundef %3, ptr noundef nonnull @mxl_demod_config) #6
  %cmp123 = icmp eq ptr %call122, null
  br i1 %cmp123, label %if.then125, label %if.then140

if.then125:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.136) #6
  br label %if.end132.thread

do.end129:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139) #9
  br label %if.end132.thread

if.end132.thread:                                 ; preds = %do.end129, %if.then125
  %arrayidx135228 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 %idxprom
  %21 = ptrtoint ptr %arrayidx135228 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx135228, align 4
  br label %cleanup

if.then140:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx135 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 %idxprom
  %22 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call122, ptr %arrayidx135, align 4
  %num_frontends = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 11
  %23 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_frontends, align 4
  %inc = add i8 %24, 1
  store i8 %inc, ptr %num_frontends, align 4
  %25 = load ptr, ptr %arrayidx135, align 4
  %init = getelementptr inbounds %struct.dvb_frontend, ptr %25, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init, align 4
  %fe_init = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 %idxprom, i32 4
  %28 = ptrtoint ptr %fe_init to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %fe_init, align 4
  %29 = load ptr, ptr %arrayidx135, align 4
  %init148 = getelementptr inbounds %struct.dvb_frontend, ptr %29, i32 0, i32 1, i32 5
  %30 = ptrtoint ptr %init148 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @mxl111sf_adap_fe_init, ptr %init148, align 4
  %31 = load ptr, ptr %arrayidx135, align 4
  %sleep = getelementptr inbounds %struct.dvb_frontend, ptr %31, i32 0, i32 1, i32 6
  %32 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sleep, align 4
  %fe_sleep = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 %idxprom, i32 5
  %34 = ptrtoint ptr %fe_sleep to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %fe_sleep, align 4
  %35 = load ptr, ptr %arrayidx135, align 4
  %sleep157 = getelementptr inbounds %struct.dvb_frontend, ptr %35, i32 0, i32 1, i32 6
  %36 = ptrtoint ptr %sleep157 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @mxl111sf_adap_fe_sleep, ptr %sleep157, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then140, %if.end132.thread, %do.end106, %land.lhs.true100.cleanup_crit_edge, %do.end87, %land.lhs.true81.cleanup_crit_edge, %do.end68, %land.lhs.true62.cleanup_crit_edge, %do.end48, %land.lhs.true42.cleanup_crit_edge, %do.end29, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then140 ], [ %call21, %do.end29 ], [ %call37, %do.end48 ], [ %call57, %do.end68 ], [ %call76, %do.end87 ], [ %call95, %do.end106 ], [ %call21, %land.lhs.true.cleanup_crit_edge ], [ %call37, %land.lhs.true42.cleanup_crit_edge ], [ %call57, %land.lhs.true62.cleanup_crit_edge ], [ %call76, %land.lhs.true81.cleanup_crit_edge ], [ %call95, %land.lhs.true100.cleanup_crit_edge ], [ -5, %if.end132.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxl111sf_lg2160_frontend_attach(ptr noundef %adap, i8 noundef zeroext %fe_id) unnamed_addr #0 align 64 {
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
  %idxprom = zext i8 %fe_id to i32
  %arrayidx = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 %idxprom
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_lg2160_frontend_attach.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_lg2160_frontend_attach, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_lg2160_frontend_attach.__UNIQUE_ID_ddebug407, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.141) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %3, align 4
  %5 = load i32, ptr @dvb_usb_mxl111sf_isoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool6.not, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %arrayidx, align 4
  %alt_mode8 = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %alt_mode8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %alt_mode8, align 4
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 4
  %call10 = tail call i32 @usb_set_interface(ptr noundef %9, i32 noundef 0, i32 noundef %cond) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end15, label %do.end.if.end18_crit_edge

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %do.end.if.end18_crit_edge
  %gpio_mode = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %gpio_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %gpio_mode, align 4
  %gpio_mode20 = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 %idxprom, i32 1
  %11 = ptrtoint ptr %gpio_mode20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %gpio_mode20, align 4
  %device_mode = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 %idxprom, i32 2
  %12 = ptrtoint ptr %device_mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %device_mode, align 4
  %ep6_clockphase = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 %idxprom, i32 3
  %13 = ptrtoint ptr %ep6_clockphase to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %ep6_clockphase, align 4
  %call21 = tail call i32 @mxl1x1sf_soft_reset(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %land.lhs.true, label %if.end36.critedge

land.lhs.true:                                    ; preds = %if.end18
  %14 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %land.lhs.true.cleanup_crit_edge, label %do.end29

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end29:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.141, i32 noundef %call21, i32 noundef 519) #9
  br label %cleanup

if.end36.critedge:                                ; preds = %if.end18
  %call37 = tail call i32 @mxl111sf_init_tuner_demod(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp39 = icmp slt i32 %call37, 0
  br i1 %cmp39, label %land.lhs.true42, label %if.end55.critedge

land.lhs.true42:                                  ; preds = %if.end36.critedge
  %15 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and43 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %land.lhs.true42.cleanup_crit_edge, label %do.end48

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end48:                                         ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.141, i32 noundef %call37, i32 noundef 522) #9
  br label %cleanup

if.end55.critedge:                                ; preds = %if.end36.critedge
  %16 = ptrtoint ptr %device_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %device_mode, align 4
  %call57 = tail call i32 @mxl1x1sf_set_device_mode(ptr noundef %3, i32 noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp59 = icmp slt i32 %call57, 0
  br i1 %cmp59, label %land.lhs.true62, label %if.end75.critedge

land.lhs.true62:                                  ; preds = %if.end55.critedge
  %18 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and63 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %land.lhs.true62.cleanup_crit_edge, label %do.end68

land.lhs.true62.cleanup_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end68:                                         ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.141, i32 noundef %call57, i32 noundef 526) #9
  br label %cleanup

if.end75.critedge:                                ; preds = %if.end55.critedge
  %call76 = tail call i32 @mxl111sf_enable_usb_output(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp78 = icmp slt i32 %call76, 0
  br i1 %cmp78, label %land.lhs.true81, label %if.end94.critedge

land.lhs.true81:                                  ; preds = %if.end75.critedge
  %19 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and82 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %land.lhs.true81.cleanup_crit_edge, label %do.end87

land.lhs.true81.cleanup_crit_edge:                ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end87:                                         ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #8
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.141, i32 noundef %call76, i32 noundef 530) #9
  br label %cleanup

if.end94.critedge:                                ; preds = %if.end75.critedge
  %call95 = tail call i32 @mxl1x1sf_top_master_ctrl(ptr noundef %3, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp97 = icmp slt i32 %call95, 0
  br i1 %cmp97, label %land.lhs.true100, label %if.end113.critedge

land.lhs.true100:                                 ; preds = %if.end94.critedge
  %20 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and101 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %land.lhs.true100.cleanup_crit_edge, label %do.end106

land.lhs.true100.cleanup_crit_edge:               ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end106:                                        ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #8
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.141, i32 noundef %call95, i32 noundef 533) #9
  br label %cleanup

if.end113.critedge:                               ; preds = %if.end94.critedge
  %call114 = tail call i32 @mxl111sf_init_port_expander(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp116 = icmp slt i32 %call114, 0
  br i1 %cmp116, label %land.lhs.true119, label %if.end132.critedge

land.lhs.true119:                                 ; preds = %if.end113.critedge
  %21 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and120 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %land.lhs.true119.cleanup_crit_edge, label %do.end125

land.lhs.true119.cleanup_crit_edge:               ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end125:                                        ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #8
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.141, i32 noundef %call114, i32 noundef 537) #9
  br label %cleanup

if.end132.critedge:                               ; preds = %if.end113.critedge
  %22 = ptrtoint ptr %gpio_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gpio_mode, align 4
  %call134 = tail call i32 @mxl111sf_gpio_mode_switch(ptr noundef %3, i32 noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %cmp136 = icmp slt i32 %call134, 0
  br i1 %cmp136, label %land.lhs.true139, label %if.end152.critedge

land.lhs.true139:                                 ; preds = %if.end132.critedge
  %24 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and140 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %land.lhs.true139.cleanup_crit_edge, label %do.end145

land.lhs.true139.cleanup_crit_edge:               ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end145:                                        ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #8
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.141, i32 noundef %call134, i32 noundef 540) #9
  br label %cleanup

if.end152.critedge:                               ; preds = %if.end132.critedge
  %call153 = tail call fastcc i32 @mxl1x1sf_get_chip_info(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %cmp155 = icmp slt i32 %call153, 0
  br i1 %cmp155, label %land.lhs.true158, label %if.end152.critedge.if.end230.critedge_crit_edge

if.end152.critedge.if.end230.critedge_crit_edge:  ; preds = %if.end152.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end230.critedge

land.lhs.true158:                                 ; preds = %if.end152.critedge
  %25 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and159 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %land.lhs.true158.if.then170_crit_edge, label %do.end164

land.lhs.true158.if.then170_crit_edge:            ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then170

do.end164:                                        ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #8
  %call166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.141, i32 noundef %call153, i32 noundef 543) #9
  %.pr = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  br label %if.then170

if.then170:                                       ; preds = %do.end164, %land.lhs.true158.if.then170_crit_edge
  %26 = phi i32 [ %25, %land.lhs.true158.if.then170_crit_edge ], [ %.pr, %do.end164 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool171.not = icmp eq i32 %26, 0
  br i1 %tobool171.not, label %if.then170.if.end178_crit_edge, label %do.end175

if.then170.if.end178_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end178

do.end175:                                        ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #8
  %call177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.141) #9
  br label %if.end178

if.end178:                                        ; preds = %do.end175, %if.then170.if.end178_crit_edge
  %call179 = tail call fastcc i32 @mxl1x1sf_get_chip_info(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %cmp181 = icmp slt i32 %call179, 0
  %27 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  br i1 %cmp181, label %land.lhs.true184, label %if.else

land.lhs.true184:                                 ; preds = %if.end178
  %and185 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %land.lhs.true184.land.lhs.true217_crit_edge, label %do.end190

land.lhs.true184.land.lhs.true217_crit_edge:      ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true217

do.end190:                                        ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #8
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.141, i32 noundef %call179, i32 noundef 543) #9
  br label %land.lhs.true217

if.else:                                          ; preds = %if.end178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool202.not = icmp eq i32 %27, 0
  br i1 %tobool202.not, label %if.else.if.end230.critedge_crit_edge, label %do.end206

if.else.if.end230.critedge_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end230.critedge

do.end206:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.141) #9
  br label %if.end230.critedge

land.lhs.true217:                                 ; preds = %do.end190, %land.lhs.true184.land.lhs.true217_crit_edge
  %call201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164) #9
  %28 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and218 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218)
  %tobool219.not = icmp eq i32 %and218, 0
  br i1 %tobool219.not, label %land.lhs.true217.cleanup_crit_edge, label %do.end223

land.lhs.true217.cleanup_crit_edge:               ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end223:                                        ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #8
  %call225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.141, i32 noundef %call179, i32 noundef 544) #9
  br label %cleanup

if.end230.critedge:                               ; preds = %do.end206, %if.else.if.end230.critedge_crit_edge, %if.end152.critedge.if.end230.critedge_crit_edge
  %call231 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.171) #6
  %tobool232.not = icmp eq ptr %call231, null
  br i1 %tobool232.not, label %cond.end, label %if.end230.critedge.if.then237_crit_edge

if.end230.critedge.if.then237_crit_edge:          ; preds = %if.end230.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then237

cond.end:                                         ; preds = %if.end230.critedge
  %call233 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.172) #6
  %call234 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.171) #6
  %tobool236.not = icmp eq ptr %call234, null
  br i1 %tobool236.not, label %do.end246, label %cond.end.if.then237_crit_edge

cond.end.if.then237_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then237

if.then237:                                       ; preds = %cond.end.if.then237_crit_edge, %if.end230.critedge.if.then237_crit_edge
  %cond235372 = phi ptr [ %call234, %cond.end.if.then237_crit_edge ], [ %call231, %if.end230.critedge.if.then237_crit_edge ]
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call238 = tail call ptr %cond235372(ptr noundef nonnull @hauppauge_lg2160_config, ptr noundef %i2c_adap) #6
  %cmp239 = icmp eq ptr %call238, null
  br i1 %cmp239, label %if.then241, label %if.then257

if.then241:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.171) #6
  br label %if.end249.thread

do.end246:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call248 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174) #9
  br label %if.end249.thread

if.end249.thread:                                 ; preds = %do.end246, %if.then241
  %arrayidx252374 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 %idxprom
  %29 = ptrtoint ptr %arrayidx252374 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx252374, align 4
  br label %cleanup

if.then257:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx252 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 %idxprom
  %30 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call238, ptr %arrayidx252, align 4
  %num_frontends = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 11
  %31 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_frontends, align 4
  %inc = add i8 %32, 1
  store i8 %inc, ptr %num_frontends, align 4
  %33 = load ptr, ptr %arrayidx252, align 4
  %init = getelementptr inbounds %struct.dvb_frontend, ptr %33, i32 0, i32 1, i32 5
  %34 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init, align 4
  %fe_init = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 %idxprom, i32 4
  %36 = ptrtoint ptr %fe_init to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %fe_init, align 4
  %37 = load ptr, ptr %arrayidx252, align 4
  %init265 = getelementptr inbounds %struct.dvb_frontend, ptr %37, i32 0, i32 1, i32 5
  %38 = ptrtoint ptr %init265 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @mxl111sf_adap_fe_init, ptr %init265, align 4
  %39 = load ptr, ptr %arrayidx252, align 4
  %sleep = getelementptr inbounds %struct.dvb_frontend, ptr %39, i32 0, i32 1, i32 6
  %40 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sleep, align 4
  %fe_sleep = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 %idxprom, i32 5
  %42 = ptrtoint ptr %fe_sleep to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %fe_sleep, align 4
  %43 = load ptr, ptr %arrayidx252, align 4
  %sleep274 = getelementptr inbounds %struct.dvb_frontend, ptr %43, i32 0, i32 1, i32 6
  %44 = ptrtoint ptr %sleep274 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @mxl111sf_adap_fe_sleep, ptr %sleep274, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then257, %if.end249.thread, %do.end223, %land.lhs.true217.cleanup_crit_edge, %do.end145, %land.lhs.true139.cleanup_crit_edge, %do.end125, %land.lhs.true119.cleanup_crit_edge, %do.end106, %land.lhs.true100.cleanup_crit_edge, %do.end87, %land.lhs.true81.cleanup_crit_edge, %do.end68, %land.lhs.true62.cleanup_crit_edge, %do.end48, %land.lhs.true42.cleanup_crit_edge, %do.end29, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then257 ], [ %call21, %do.end29 ], [ %call37, %do.end48 ], [ %call57, %do.end68 ], [ %call76, %do.end87 ], [ %call95, %do.end106 ], [ %call114, %do.end125 ], [ %call134, %do.end145 ], [ %call179, %do.end223 ], [ %call21, %land.lhs.true.cleanup_crit_edge ], [ %call37, %land.lhs.true42.cleanup_crit_edge ], [ %call57, %land.lhs.true62.cleanup_crit_edge ], [ %call76, %land.lhs.true81.cleanup_crit_edge ], [ %call95, %land.lhs.true100.cleanup_crit_edge ], [ %call114, %land.lhs.true119.cleanup_crit_edge ], [ %call134, %land.lhs.true139.cleanup_crit_edge ], [ %call179, %land.lhs.true217.cleanup_crit_edge ], [ -5, %if.end249.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl1x1sf_soft_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl111sf_init_tuner_demod(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl1x1sf_set_device_mode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl111sf_enable_usb_output(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl1x1sf_top_master_ctrl(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl111sf_init_port_expander(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl111sf_gpio_mode_switch(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_adap_fe_init(ptr noundef %fe) #0 align 64 {
entry:
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
  %id15 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %8 = ptrtoint ptr %id15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id15, align 4
  %arrayidx = getelementptr %struct.mxl111sf_state, ptr %7, i32 0, i32 12, i32 %9
  %chip_id = getelementptr inbounds %struct.mxl111sf_state, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %chip_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then, label %do.body20

if.then:                                          ; preds = %entry
  %12 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not = icmp eq i32 %12, 0
  br i1 %tobool16.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105) #9
  br label %cleanup

do.body20:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_adap_fe_init.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_adap_fe_init, %if.then26)) #6
          to label %do.end29 [label %if.then26], !srcloc !577

if.then26:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_adap_fe_init.__UNIQUE_ID_ddebug401, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.105) #6
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %do.body20
  %fe_lock = getelementptr inbounds %struct.mxl111sf_state, ptr %7, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %fe_lock, i32 noundef 0) #6
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %alt_mode30 = getelementptr inbounds %struct.mxl111sf_state, ptr %7, i32 0, i32 7
  %15 = ptrtoint ptr %alt_mode30 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %alt_mode30, align 4
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %16 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev, align 4
  %call32 = tail call i32 @usb_set_interface(ptr noundef %17, i32 noundef 0, i32 noundef %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %do.end37, label %do.end29.if.end40_crit_edge

do.end29.if.end40_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

do.end37:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #8
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #9
  br label %if.end40

if.end40:                                         ; preds = %do.end37, %do.end29.if.end40_crit_edge
  %call41 = tail call i32 @mxl1x1sf_soft_reset(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %land.lhs.true, label %if.end40.if.end52_crit_edge

if.end40.if.end52_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

land.lhs.true:                                    ; preds = %if.end40
  %18 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %land.lhs.true.if.end52_crit_edge, label %do.end49

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

do.end49:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.105, i32 noundef %call41, i32 noundef 288) #9
  br label %if.end52

if.end52:                                         ; preds = %do.end49, %land.lhs.true.if.end52_crit_edge, %if.end40.if.end52_crit_edge
  %call54 = tail call i32 @mxl111sf_init_tuner_demod(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp56 = icmp slt i32 %call54, 0
  br i1 %cmp56, label %land.lhs.true59, label %if.end52.if.end68_crit_edge

if.end52.if.end68_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

land.lhs.true59:                                  ; preds = %if.end52
  %19 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and60 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %land.lhs.true59.if.end68_crit_edge, label %do.end65

land.lhs.true59.if.end68_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

do.end65:                                         ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #8
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.105, i32 noundef %call54, i32 noundef 290) #9
  br label %if.end68

if.end68:                                         ; preds = %do.end65, %land.lhs.true59.if.end68_crit_edge, %if.end52.if.end68_crit_edge
  %device_mode = getelementptr %struct.mxl111sf_state, ptr %7, i32 0, i32 12, i32 %9, i32 2
  %20 = ptrtoint ptr %device_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %device_mode, align 4
  %call70 = tail call i32 @mxl1x1sf_set_device_mode(ptr noundef %7, i32 noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp72 = icmp slt i32 %call70, 0
  br i1 %cmp72, label %land.lhs.true75, label %if.end68.if.end84_crit_edge

if.end68.if.end84_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

land.lhs.true75:                                  ; preds = %if.end68
  %22 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and76 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %land.lhs.true75.if.end84_crit_edge, label %do.end81

land.lhs.true75.if.end84_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

do.end81:                                         ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #8
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.105, i32 noundef %call70, i32 noundef 293) #9
  br label %if.end84

if.end84:                                         ; preds = %do.end81, %land.lhs.true75.if.end84_crit_edge, %if.end68.if.end84_crit_edge
  %call86 = tail call i32 @mxl111sf_enable_usb_output(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp88 = icmp slt i32 %call86, 0
  br i1 %cmp88, label %land.lhs.true91, label %if.end84.if.end100_crit_edge

if.end84.if.end100_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

land.lhs.true91:                                  ; preds = %if.end84
  %23 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and92 = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %land.lhs.true91.if.end100_crit_edge, label %do.end97

land.lhs.true91.if.end100_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

do.end97:                                         ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #8
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.105, i32 noundef %call86, i32 noundef 295) #9
  br label %if.end100

if.end100:                                        ; preds = %do.end97, %land.lhs.true91.if.end100_crit_edge, %if.end84.if.end100_crit_edge
  %call102 = tail call i32 @mxl1x1sf_top_master_ctrl(ptr noundef %7, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp104 = icmp slt i32 %call102, 0
  br i1 %cmp104, label %land.lhs.true107, label %if.end100.if.end116_crit_edge

if.end100.if.end116_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

land.lhs.true107:                                 ; preds = %if.end100
  %24 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and108 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %land.lhs.true107.if.end116_crit_edge, label %do.end113

land.lhs.true107.if.end116_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

do.end113:                                        ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #8
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.105, i32 noundef %call102, i32 noundef 297) #9
  br label %if.end116

if.end116:                                        ; preds = %do.end113, %land.lhs.true107.if.end116_crit_edge, %if.end100.if.end116_crit_edge
  %gpio_mode = getelementptr %struct.mxl111sf_state, ptr %7, i32 0, i32 12, i32 %9, i32 1
  %25 = ptrtoint ptr %gpio_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gpio_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp118.not = icmp eq i32 %26, 0
  br i1 %cmp118.not, label %if.end116.if.end141_crit_edge, label %land.lhs.true120

if.end116.if.end141_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141

land.lhs.true120:                                 ; preds = %if.end116
  %chip_rev = getelementptr inbounds %struct.mxl111sf_state, ptr %7, i32 0, i32 5
  %27 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %chip_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp122 = icmp ugt i8 %28, 1
  br i1 %cmp122, label %if.then124, label %land.lhs.true120.if.end141_crit_edge

land.lhs.true120.if.end141_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141

if.then124:                                       ; preds = %land.lhs.true120
  %call125 = tail call i32 @mxl111sf_config_pin_mux_modes(ptr noundef %7, i32 noundef 7) #6
  br i1 %cmp104, label %land.lhs.true130, label %if.then124.if.end141_crit_edge

if.then124.if.end141_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141

land.lhs.true130:                                 ; preds = %if.then124
  %29 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and131 = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %land.lhs.true130.if.end141_crit_edge, label %do.end136

land.lhs.true130.if.end141_crit_edge:             ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141

do.end136:                                        ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #8
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.105, i32 noundef %call102, i32 noundef 303) #9
  br label %if.end141

if.end141:                                        ; preds = %do.end136, %land.lhs.true130.if.end141_crit_edge, %if.then124.if.end141_crit_edge, %land.lhs.true120.if.end141_crit_edge, %if.end116.if.end141_crit_edge
  %call142 = tail call i32 @mxl111sf_init_port_expander(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %cmp144 = icmp slt i32 %call142, 0
  br i1 %cmp144, label %land.lhs.true147, label %if.then159.critedge

land.lhs.true147:                                 ; preds = %if.end141
  %30 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and148 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %land.lhs.true147.if.end179_crit_edge, label %do.end153

land.lhs.true147.if.end179_crit_edge:             ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end179

do.end153:                                        ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #8
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.105, i32 noundef %call142, i32 noundef 306) #9
  br label %if.end179

if.then159.critedge:                              ; preds = %if.end141
  %31 = ptrtoint ptr %gpio_mode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %gpio_mode, align 4
  %gpio_mode161 = getelementptr inbounds %struct.mxl111sf_state, ptr %7, i32 0, i32 8
  %33 = ptrtoint ptr %gpio_mode161 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %gpio_mode161, align 4
  %call163 = tail call i32 @mxl111sf_gpio_mode_switch(ptr noundef %7, i32 noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %cmp165 = icmp slt i32 %call163, 0
  br i1 %cmp165, label %land.lhs.true168, label %if.then159.critedge.if.end177_crit_edge

if.then159.critedge.if.end177_crit_edge:          ; preds = %if.then159.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end177

land.lhs.true168:                                 ; preds = %if.then159.critedge
  %34 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and169 = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %land.lhs.true168.if.end177_crit_edge, label %do.end174

land.lhs.true168.if.end177_crit_edge:             ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end177

do.end174:                                        ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #8
  %call176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.105, i32 noundef %call163, i32 noundef 309) #9
  br label %if.end177

if.end177:                                        ; preds = %do.end174, %land.lhs.true168.if.end177_crit_edge, %if.then159.critedge.if.end177_crit_edge
  tail call void @msleep(i32 noundef 100) #6
  br label %if.end179

if.end179:                                        ; preds = %if.end177, %do.end153, %land.lhs.true147.if.end179_crit_edge
  %fe_init = getelementptr %struct.mxl111sf_state, ptr %7, i32 0, i32 12, i32 %9, i32 4
  %35 = ptrtoint ptr %fe_init to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fe_init, align 4
  %tobool180.not = icmp eq ptr %36, null
  br i1 %tobool180.not, label %if.end179.cleanup_crit_edge, label %cond.true

if.end179.cleanup_crit_edge:                      ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.true:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  %call182 = tail call i32 %36(ptr noundef %fe) #6
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %if.end179.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call182, %cond.true ], [ 0, %if.end179.cleanup_crit_edge ], [ -19, %if.then.cleanup_crit_edge ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_adap_fe_sleep(ptr noundef %fe) #0 align 64 {
entry:
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
  %priv3 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %6 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv3, align 8
  %id5 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %8 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id5, align 4
  %chip_id = getelementptr inbounds %struct.mxl111sf_state, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %chip_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then, label %do.body10

if.then:                                          ; preds = %entry
  %12 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not = icmp eq i32 %12, 0
  br i1 %tobool6.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.124) #9
  br label %cleanup

do.body10:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_adap_fe_sleep.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_adap_fe_sleep, %if.then16)) #6
          to label %do.end19 [label %if.then16], !srcloc !577

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_adap_fe_sleep.__UNIQUE_ID_ddebug402, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.124) #6
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body10
  %fe_sleep = getelementptr %struct.mxl111sf_state, ptr %7, i32 0, i32 12, i32 %9, i32 5
  %13 = ptrtoint ptr %fe_sleep to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fe_sleep, align 4
  %tobool20.not = icmp eq ptr %14, null
  br i1 %tobool20.not, label %do.end19.cond.end_crit_edge, label %cond.true

do.end19.cond.end_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 %14(ptr noundef %fe) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end19.cond.end_crit_edge
  %cond = phi i32 [ %call22, %cond.true ], [ 0, %do.end19.cond.end_crit_edge ]
  %fe_lock = getelementptr inbounds %struct.mxl111sf_state, ptr %7, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %fe_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %cond.end ], [ -19, %if.then.cleanup_crit_edge ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl111sf_config_pin_mux_modes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxl1x1sf_get_chip_info(ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  %id = alloca i8, align 1
  %ver = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id) #6
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %id, align 1, !annotation !578
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #6
  %1 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %ver, align 1, !annotation !578
  %chip_id = getelementptr inbounds %struct.mxl111sf_state, ptr %state, i32 0, i32 3
  %2 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %chip_ver = getelementptr inbounds %struct.mxl111sf_state, ptr %state, i32 0, i32 4
  %4 = ptrtoint ptr %chip_ver to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext -4, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %land.lhs.true5, label %if.end13.critedge

land.lhs.true5:                                   ; preds = %if.end
  %6 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.lhs.true5.cleanup_crit_edge, label %do.end

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.176, i32 noundef %call, i32 noundef 195) #9
  br label %cleanup

if.end13.critedge:                                ; preds = %if.end
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %id, align 1
  %9 = ptrtoint ptr %chip_id to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %chip_id, align 1
  %call15 = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext -6, ptr noundef nonnull %ver)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp17 = icmp slt i32 %call15, 0
  br i1 %cmp17, label %land.lhs.true20, label %if.end33.critedge

land.lhs.true20:                                  ; preds = %if.end13.critedge
  %10 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and21 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %land.lhs.true20.cleanup_crit_edge, label %do.end26

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end26:                                         ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.176, i32 noundef %call15, i32 noundef 200) #9
  br label %cleanup

if.end33.critedge:                                ; preds = %if.end13.critedge
  %11 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ver, align 1
  %chip_ver34 = getelementptr inbounds %struct.mxl111sf_state, ptr %state, i32 0, i32 4
  %13 = ptrtoint ptr %chip_ver34 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %chip_ver34, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %8)
  %switch.selectcmp = icmp eq i8 %8, 99
  %switch.select = select i1 %switch.selectcmp, ptr @.str.180, ptr @.str.181
  call void @__sanitizer_cov_trace_const_cmp1(i8 97, i8 %8)
  %switch.selectcmp74 = icmp eq i8 %8, 97
  %switch.select75 = select i1 %switch.selectcmp74, ptr @.str.179, ptr %switch.select
  %14 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.306)
  switch i8 %12, label %sw.default43 [
    i8 54, label %if.end33.critedge.do.end48_crit_edge
    i8 8, label %sw.bb39
    i8 24, label %sw.bb41
  ]

if.end33.critedge.do.end48_crit_edge:             ; preds = %if.end33.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

sw.bb39:                                          ; preds = %if.end33.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

sw.bb41:                                          ; preds = %if.end33.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

sw.default43:                                     ; preds = %if.end33.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

do.end48:                                         ; preds = %sw.default43, %sw.bb41, %sw.bb39, %if.end33.critedge.do.end48_crit_edge
  %.sink = phi i8 [ 2, %sw.bb39 ], [ 3, %sw.bb41 ], [ 0, %sw.default43 ], [ 1, %if.end33.critedge.do.end48_crit_edge ]
  %mxl_rev.0 = phi ptr [ @.str.183, %sw.bb39 ], [ @.str.184, %sw.bb41 ], [ @.str.185, %sw.default43 ], [ @.str.182, %if.end33.critedge.do.end48_crit_edge ]
  %chip_rev = getelementptr inbounds %struct.mxl111sf_state, ptr %state, i32 0, i32 5
  %15 = ptrtoint ptr %chip_rev to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink, ptr %chip_rev, align 1
  %conv50 = zext i8 %12 to i32
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, ptr noundef nonnull %switch.select75, ptr noundef nonnull %mxl_rev.0, i32 noundef %conv50) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %do.end26, %land.lhs.true20.cleanup_crit_edge, %do.end, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call15, %do.end48 ], [ %call, %do.end ], [ %call15, %do.end26 ], [ %call, %land.lhs.true5.cleanup_crit_edge ], [ %call15, %land.lhs.true20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_device_register_entity(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_ant_hunt(ptr noundef %fe) #0 align 64 {
entry:
  %rxPwrA = alloca i16, align 2
  %rxPwr0 = alloca i16, align 2
  %rxPwr1 = alloca i16, align 2
  %rxPwr2 = alloca i16, align 2
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
  %priv3 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %6 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv3, align 8
  %8 = load i32, ptr @dvb_usb_mxl111sf_rfswitch, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rxPwrA) #6
  %9 = ptrtoint ptr %rxPwrA to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %rxPwrA, align 2, !annotation !578
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rxPwr0) #6
  %10 = ptrtoint ptr %rxPwr0 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %rxPwr0, align 2, !annotation !578
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rxPwr1) #6
  %11 = ptrtoint ptr %rxPwr1 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %rxPwr1, align 2, !annotation !578
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rxPwr2) #6
  %12 = ptrtoint ptr %rxPwr2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %rxPwr2, align 2, !annotation !578
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.i64 = icmp eq i32 %8, 2
  %conv.i = select i1 %cmp.i64, i8 63, i8 0
  %call.i = tail call i32 @mxl111sf_idac_config(ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext %conv.i, i8 noundef zeroext 0) #6
  br i1 %cmp, label %if.then, label %entry.if.end44_crit_edge

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then:                                          ; preds = %entry
  %get_rf_strength = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 13
  %13 = ptrtoint ptr %get_rf_strength to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_rf_strength, align 4
  %call7 = call i32 %14(ptr noundef %fe, ptr noundef nonnull %rxPwrA) #6
  %call.i60 = call i32 @mxl111sf_idac_config(ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @msleep(i32 noundef 90) #6
  %15 = ptrtoint ptr %get_rf_strength to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_rf_strength, align 4
  %call12 = call i32 %16(ptr noundef %fe, ptr noundef nonnull %rxPwr0) #6
  %call.i61 = call i32 @mxl111sf_idac_config(ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @msleep(i32 noundef 90) #6
  %17 = ptrtoint ptr %get_rf_strength to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_rf_strength, align 4
  %call17 = call i32 %18(ptr noundef %fe, ptr noundef nonnull %rxPwr1) #6
  %call.i62 = call i32 @mxl111sf_idac_config(ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 63, i8 noundef zeroext 0) #6
  call void @msleep(i32 noundef 90) #6
  %19 = ptrtoint ptr %get_rf_strength to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_rf_strength, align 4
  %call22 = call i32 %20(ptr noundef %fe, ptr noundef nonnull %rxPwr2) #6
  %21 = ptrtoint ptr %rxPwr1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rxPwr1, align 2
  %23 = ptrtoint ptr %rxPwr2 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %rxPwr2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %24)
  %cmp25.not = icmp ult i16 %22, %24
  br i1 %cmp25.not, label %do.end37, label %if.then27

if.then27:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i63 = call i32 @mxl111sf_idac_config(ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %25 = ptrtoint ptr %rxPwrA to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rxPwrA, align 2
  %conv30 = zext i16 %26 to i32
  %27 = ptrtoint ptr %rxPwr0 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %rxPwr0, align 2
  %conv31 = zext i16 %28 to i32
  %29 = ptrtoint ptr %rxPwr1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %rxPwr1, align 2
  %conv32 = zext i16 %30 to i32
  %31 = ptrtoint ptr %rxPwr2 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rxPwr2, align 2
  %conv33 = zext i16 %32 to i32
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.195, i32 noundef 851, ptr noundef nonnull @.str.196, i32 noundef %conv30, i32 noundef %conv31, i32 noundef %conv32, i32 noundef %conv33) #9
  br label %if.end44

do.end37:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv24 = zext i16 %24 to i32
  %conv23 = zext i16 %22 to i32
  %33 = ptrtoint ptr %rxPwrA to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %rxPwrA, align 2
  %conv39 = zext i16 %34 to i32
  %35 = ptrtoint ptr %rxPwr0 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %rxPwr0, align 2
  %conv40 = zext i16 %36 to i32
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.195, i32 noundef 855, ptr noundef nonnull @.str.199, i32 noundef %conv39, i32 noundef %conv40, i32 noundef %conv23, i32 noundef %conv24) #9
  br label %if.end44

if.end44:                                         ; preds = %do.end37, %if.then27, %entry.if.end44_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rxPwr2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rxPwr1) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rxPwr0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rxPwrA) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl111sf_idac_config(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_ep6_streaming_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #0 align 64 {
entry:
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
  %priv3 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %6 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv3, align 8
  %id5 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %8 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_ep6_streaming_ctrl.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_ep6_streaming_ctrl, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_ep6_streaming_ctrl.__UNIQUE_ID_ddebug403, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.202, i32 noundef %onoff) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool9.not = icmp eq i32 %onoff, 0
  br i1 %tobool9.not, label %do.end.if.end39_crit_edge, label %if.then10

do.end.if.end39_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then10:                                        ; preds = %do.end
  %call11 = tail call i32 @mxl111sf_enable_usb_output(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %land.lhs.true, label %if.then10.if.end21_crit_edge

if.then10.if.end21_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

land.lhs.true:                                    ; preds = %if.then10
  %10 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end21_crit_edge, label %do.end18

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.end18:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.202, i32 noundef %call11, i32 noundef 356) #9
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %land.lhs.true.if.end21_crit_edge, %if.then10.if.end21_crit_edge
  %ep6_clockphase = getelementptr %struct.mxl111sf_state, ptr %7, i32 0, i32 12, i32 %9, i32 3
  %11 = ptrtoint ptr %ep6_clockphase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ep6_clockphase, align 4
  %call23 = tail call i32 @mxl111sf_config_mpeg_in(ptr noundef %7, i32 noundef 1, i32 noundef 1, i32 noundef %12, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp25 = icmp slt i32 %call23, 0
  br i1 %cmp25, label %land.lhs.true28, label %if.end21.if.end39_crit_edge

if.end21.if.end39_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true28:                                  ; preds = %if.end21
  %13 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and29 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %land.lhs.true28.if.end39_crit_edge, label %do.end34

land.lhs.true28.if.end39_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

do.end34:                                         ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.202, i32 noundef %call23, i32 noundef 360) #9
  br label %if.end39

if.end39:                                         ; preds = %do.end34, %land.lhs.true28.if.end39_crit_edge, %if.end21.if.end39_crit_edge, %do.end.if.end39_crit_edge
  %ret.0 = phi i32 [ 0, %do.end.if.end39_crit_edge ], [ %call23, %do.end34 ], [ %call23, %land.lhs.true28.if.end39_crit_edge ], [ %call23, %if.end21.if.end39_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_ep4_streaming_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #0 align 64 {
entry:
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
  %priv3 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %6 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv3, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_ep4_streaming_ctrl.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_ep4_streaming_ctrl, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_ep4_streaming_ctrl.__UNIQUE_ID_ddebug405, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.206, i32 noundef %onoff) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool7.not = icmp eq i32 %onoff, 0
  br i1 %tobool7.not, label %do.end.if.end21_crit_edge, label %if.then8

do.end.if.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then8:                                         ; preds = %do.end
  %call9 = tail call i32 @mxl111sf_enable_usb_output(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %land.lhs.true, label %if.then8.if.end21_crit_edge

if.then8.if.end21_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

land.lhs.true:                                    ; preds = %if.then8
  %8 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end21_crit_edge, label %do.end16

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.end16:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.206, i32 noundef %call9, i32 noundef 406) #9
  br label %if.end21

if.end21:                                         ; preds = %do.end16, %land.lhs.true.if.end21_crit_edge, %if.then8.if.end21_crit_edge, %do.end.if.end21_crit_edge
  %ret.0 = phi i32 [ 0, %do.end.if.end21_crit_edge ], [ %call9, %do.end16 ], [ %call9, %land.lhs.true.if.end21_crit_edge ], [ %call9, %if.then8.if.end21_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_ep5_streaming_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #0 align 64 {
entry:
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
  %priv3 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %6 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv3, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_ep5_streaming_ctrl.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_ep5_streaming_ctrl, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_ep5_streaming_ctrl.__UNIQUE_ID_ddebug404, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.207, i32 noundef %onoff) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool7.not = icmp eq i32 %onoff, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %do.end
  %call9 = tail call i32 @mxl111sf_enable_usb_output(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %land.lhs.true, label %if.then8.if.end19_crit_edge

if.then8.if.end19_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true:                                    ; preds = %if.then8
  %8 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end19_crit_edge, label %do.end16

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

do.end16:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.207, i32 noundef %call9, i32 noundef 380) #9
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %land.lhs.true.if.end19_crit_edge, %if.then8.if.end19_crit_edge
  %call21 = tail call i32 @mxl111sf_init_i2s_port(ptr noundef %7, i8 noundef zeroext -56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp23 = icmp slt i32 %call21, 0
  br i1 %cmp23, label %land.lhs.true26, label %if.end19.if.end35_crit_edge

if.end19.if.end35_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

land.lhs.true26:                                  ; preds = %if.end19
  %9 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and27 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %land.lhs.true26.if.end35_crit_edge, label %do.end32

land.lhs.true26.if.end35_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.end32:                                         ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.207, i32 noundef %call21, i32 noundef 383) #9
  br label %if.end35

if.end35:                                         ; preds = %do.end32, %land.lhs.true26.if.end35_crit_edge, %if.end19.if.end35_crit_edge
  %call37 = tail call i32 @mxl111sf_config_i2s(ptr noundef %7, i8 noundef zeroext 0, i8 noundef zeroext 15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp39 = icmp slt i32 %call37, 0
  br i1 %cmp39, label %land.lhs.true42, label %if.end35.if.end69_crit_edge

if.end35.if.end69_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

land.lhs.true42:                                  ; preds = %if.end35
  %10 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and43 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %land.lhs.true42.if.end69_crit_edge, label %do.end48

land.lhs.true42.if.end69_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

do.end48:                                         ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.207, i32 noundef %call37, i32 noundef 385) #9
  br label %if.end69

if.else:                                          ; preds = %do.end
  %call53 = tail call i32 @mxl111sf_disable_i2s_port(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp55 = icmp slt i32 %call53, 0
  br i1 %cmp55, label %land.lhs.true58, label %if.else.if.end69_crit_edge

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

land.lhs.true58:                                  ; preds = %if.else
  %11 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and59 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %land.lhs.true58.if.end69_crit_edge, label %do.end64

land.lhs.true58.if.end69_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

do.end64:                                         ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #8
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.207, i32 noundef %call53, i32 noundef 388) #9
  br label %if.end69

if.end69:                                         ; preds = %do.end64, %land.lhs.true58.if.end69_crit_edge, %if.else.if.end69_crit_edge, %do.end48, %land.lhs.true42.if.end69_crit_edge, %if.end35.if.end69_crit_edge
  %ret.0 = phi i32 [ %call37, %do.end48 ], [ %call37, %land.lhs.true42.if.end69_crit_edge ], [ %call37, %if.end35.if.end69_crit_edge ], [ %call53, %do.end64 ], [ %call53, %land.lhs.true58.if.end69_crit_edge ], [ %call53, %if.else.if.end69_crit_edge ]
  %chip_rev = getelementptr inbounds %struct.mxl111sf_state, ptr %7, i32 0, i32 5
  %12 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %chip_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp71 = icmp ugt i8 %13, 1
  br i1 %cmp71, label %if.then73, label %if.end69.if.end75_crit_edge

if.end69.if.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %call74 = tail call i32 @mxl111sf_config_spi(ptr noundef %7, i32 noundef %onoff) #6
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end69.if.end75_crit_edge
  %ret.1 = phi i32 [ %call74, %if.then73 ], [ %ret.0, %if.end69.if.end75_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp77 = icmp slt i32 %ret.1, 0
  br i1 %cmp77, label %land.lhs.true80, label %if.end75.if.end89_crit_edge

if.end75.if.end89_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

land.lhs.true80:                                  ; preds = %if.end75
  %14 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and81 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %land.lhs.true80.if.end89_crit_edge, label %do.end86

land.lhs.true80.if.end89_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

do.end86:                                         ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #8
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.207, i32 noundef %ret.1, i32 noundef 392) #9
  br label %if.end89

if.end89:                                         ; preds = %do.end86, %land.lhs.true80.if.end89_crit_edge, %if.end75.if.end89_crit_edge
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl111sf_config_mpeg_in(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl111sf_init_i2s_port(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl111sf_config_i2s(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl111sf_disable_i2s_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl111sf_config_spi(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tveeprom_hauppauge_analog(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_frontend_attach_atsc(ptr noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mxl111sf_lgdt3305_frontend_attach(ptr noundef %adap)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_get_stream_config_atsc(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ts_type, ptr nocapture noundef writeonly %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_get_stream_config_atsc.__UNIQUE_ID_ddebug418, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_atsc, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_get_stream_config_atsc.__UNIQUE_ID_ddebug418, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.238, i32 noundef %1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %ts_type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ts_type, align 1
  %3 = load i32, ptr @dvb_usb_mxl111sf_isoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_atsc, %if.then.i)) #6
          to label %mxl111sf_stream_config_isoc.exit [label %if.then.i], !srcloc !577

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.234, i32 noundef 6, i32 noundef 73728) #6
  br label %mxl111sf_stream_config_isoc.exit

mxl111sf_stream_config_isoc.exit:                 ; preds = %if.then.i, %if.then4
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %stream, align 4
  %count.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 5, ptr %count.i, align 1
  %endpoint3.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %6 = ptrtoint ptr %endpoint3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 6, ptr %endpoint3.i, align 2
  %u.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %7 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 24, ptr %u.i, align 4
  %framesize6.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %framesize6.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3072, ptr %framesize6.i, align 4
  %interval.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 2
  %9 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %interval.i, align 4
  br label %if.end5

if.else:                                          ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_atsc, %if.then.i7)) #6
          to label %mxl111sf_stream_config_bulk.exit [label %if.then.i7], !srcloc !577

if.then.i7:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.236, i32 noundef 6) #6
  br label %mxl111sf_stream_config_bulk.exit

mxl111sf_stream_config_bulk.exit:                 ; preds = %if.then.i7, %if.else
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %stream, align 4
  %count.i8 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %11 = ptrtoint ptr %count.i8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 5, ptr %count.i8, align 1
  %endpoint3.i9 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %12 = ptrtoint ptr %endpoint3.i9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 6, ptr %endpoint3.i9, align 2
  %u.i10 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %13 = ptrtoint ptr %u.i10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8192, ptr %u.i10, align 4
  br label %if.end5

if.end5:                                          ; preds = %mxl111sf_stream_config_bulk.exit, %mxl111sf_stream_config_isoc.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_frontend_attach_mh(ptr noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mxl111sf_lg2160_frontend_attach(ptr noundef %adap, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_get_stream_config_mh(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ts_type, ptr nocapture noundef writeonly %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_get_stream_config_mh.__UNIQUE_ID_ddebug419, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_mh, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_get_stream_config_mh.__UNIQUE_ID_ddebug419, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.239, i32 noundef %1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %ts_type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %ts_type, align 1
  %3 = load i32, ptr @dvb_usb_mxl111sf_isoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_mh, %if.then.i)) #6
          to label %mxl111sf_stream_config_isoc.exit [label %if.then.i], !srcloc !577

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.234, i32 noundef 5, i32 noundef 19200) #6
  br label %mxl111sf_stream_config_isoc.exit

mxl111sf_stream_config_isoc.exit:                 ; preds = %if.then.i, %if.then4
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %stream, align 4
  %count.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 5, ptr %count.i, align 1
  %endpoint3.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %6 = ptrtoint ptr %endpoint3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 5, ptr %endpoint3.i, align 2
  %u.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %7 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 96, ptr %u.i, align 4
  %framesize6.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %framesize6.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 200, ptr %framesize6.i, align 4
  %interval.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 2
  %9 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %interval.i, align 4
  br label %if.end5

if.else:                                          ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_mh, %if.then.i7)) #6
          to label %mxl111sf_stream_config_bulk.exit [label %if.then.i7], !srcloc !577

if.then.i7:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.236, i32 noundef 5) #6
  br label %mxl111sf_stream_config_bulk.exit

mxl111sf_stream_config_bulk.exit:                 ; preds = %if.then.i7, %if.else
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %stream, align 4
  %count.i8 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %11 = ptrtoint ptr %count.i8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 5, ptr %count.i8, align 1
  %endpoint3.i9 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %12 = ptrtoint ptr %endpoint3.i9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 5, ptr %endpoint3.i9, align 2
  %u.i10 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %13 = ptrtoint ptr %u.i10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8192, ptr %u.i10, align 4
  br label %if.end5

if.end5:                                          ; preds = %mxl111sf_stream_config_bulk.exit, %mxl111sf_stream_config_isoc.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_frontend_attach_dvbt(ptr noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mxl111sf_attach_demod(ptr noundef %adap, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_get_stream_config_dvbt(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ts_type, ptr nocapture noundef writeonly %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_get_stream_config_dvbt.__UNIQUE_ID_ddebug417, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_dvbt, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_get_stream_config_dvbt.__UNIQUE_ID_ddebug417, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.240, i32 noundef %1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %ts_type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ts_type, align 1
  %3 = load i32, ptr @dvb_usb_mxl111sf_isoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_dvbt, %if.then.i)) #6
          to label %mxl111sf_stream_config_isoc.exit [label %if.then.i], !srcloc !577

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.234, i32 noundef 4, i32 noundef 54144) #6
  br label %mxl111sf_stream_config_isoc.exit

mxl111sf_stream_config_isoc.exit:                 ; preds = %if.then.i, %if.then4
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %stream, align 4
  %count.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 5, ptr %count.i, align 1
  %endpoint3.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %6 = ptrtoint ptr %endpoint3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %endpoint3.i, align 2
  %u.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %7 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 96, ptr %u.i, align 4
  %framesize6.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %framesize6.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 564, ptr %framesize6.i, align 4
  %interval.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 2
  %9 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %interval.i, align 4
  br label %if.end5

if.else:                                          ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_dvbt, %if.then.i7)) #6
          to label %mxl111sf_stream_config_bulk.exit [label %if.then.i7], !srcloc !577

if.then.i7:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.236, i32 noundef 4) #6
  br label %mxl111sf_stream_config_bulk.exit

mxl111sf_stream_config_bulk.exit:                 ; preds = %if.then.i7, %if.else
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %stream, align 4
  %count.i8 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %11 = ptrtoint ptr %count.i8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 5, ptr %count.i8, align 1
  %endpoint3.i9 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %12 = ptrtoint ptr %endpoint3.i9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 4, ptr %endpoint3.i9, align 2
  %u.i10 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %13 = ptrtoint ptr %u.i10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8192, ptr %u.i10, align 4
  br label %if.end5

if.end5:                                          ; preds = %mxl111sf_stream_config_bulk.exit, %mxl111sf_stream_config_isoc.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_frontend_attach_mercury(ptr noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_frontend_attach_mercury.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_frontend_attach_mercury, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_frontend_attach_mercury.__UNIQUE_ID_ddebug413, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.241) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @mxl111sf_lgdt3305_frontend_attach(ptr noundef %adap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %call6 = tail call fastcc i32 @mxl111sf_attach_demod(ptr noundef %adap, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call fastcc i32 @mxl111sf_lg2161_ep6_frontend_attach(ptr noundef %adap, i8 noundef zeroext 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call10, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_streaming_ctrl_mercury(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_streaming_ctrl_mercury.__UNIQUE_ID_ddebug423, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_streaming_ctrl_mercury, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_streaming_ctrl_mercury.__UNIQUE_ID_ddebug423, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.271, i32 noundef %1, i32 noundef %onoff) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %id3 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %2 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id3, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.307)
  switch i32 %3, label %do.end.return_crit_edge [
    i32 0, label %if.then4
    i32 1, label %if.then8
    i32 2, label %land.lhs.true
  ]

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @mxl111sf_ep6_streaming_ctrl(ptr noundef %fe, i32 noundef %onoff)
  br label %return

if.then8:                                         ; preds = %do.end
  %dvb.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %5 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dvb.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_adapter, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 4
  %id.i = getelementptr inbounds %struct.dvb_usb_adapter, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %id.i, align 4
  %conv.i = zext i8 %10 to i32
  %.neg.i = mul nsw i32 %conv.i, -2280
  %idx.neg.i = add nsw i32 %.neg.i, -1616
  %add.ptr.i = getelementptr i8, ptr %8, i32 %idx.neg.i
  %priv3.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr.i, i32 0, i32 15
  %11 = ptrtoint ptr %priv3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv3.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_ep4_streaming_ctrl.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_streaming_ctrl_mercury, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !577

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_ep4_streaming_ctrl.__UNIQUE_ID_ddebug405, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.206, i32 noundef %onoff) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool7.not.i = icmp eq i32 %onoff, 0
  br i1 %tobool7.not.i, label %do.end.i.return_crit_edge, label %if.then8.i

do.end.i.return_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then8.i:                                       ; preds = %do.end.i
  %call9.i = tail call i32 @mxl111sf_enable_usb_output(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i = icmp slt i32 %call9.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then8.i.return_crit_edge

if.then8.i.return_crit_edge:                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true.i:                                  ; preds = %if.then8.i
  %13 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i.return_crit_edge, label %do.end16.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end16.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.206, i32 noundef %call9.i, i32 noundef 406) #9
  br label %return

land.lhs.true:                                    ; preds = %do.end
  %14 = load i32, ptr @dvb_usb_mxl111sf_spi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %land.lhs.true19, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 @mxl111sf_ep5_streaming_ctrl(ptr noundef %fe, i32 noundef %onoff)
  br label %return

land.lhs.true19:                                  ; preds = %land.lhs.true
  %15 = load i32, ptr @dvb_usb_mxl111sf_spi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool20.not = icmp eq i32 %15, 0
  br i1 %tobool20.not, label %if.then21, label %land.lhs.true19.return_crit_edge

land.lhs.true19.return_crit_edge:                 ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 @mxl111sf_ep6_streaming_ctrl(ptr noundef %fe, i32 noundef %onoff)
  br label %return

return:                                           ; preds = %if.then21, %land.lhs.true19.return_crit_edge, %if.then14, %do.end16.i, %land.lhs.true.i.return_crit_edge, %if.then8.i.return_crit_edge, %do.end.i.return_crit_edge, %if.then4, %do.end.return_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ %call15, %if.then14 ], [ %call22, %if.then21 ], [ 0, %land.lhs.true19.return_crit_edge ], [ 0, %do.end.i.return_crit_edge ], [ %call9.i, %do.end16.i ], [ %call9.i, %land.lhs.true.i.return_crit_edge ], [ %call9.i, %if.then8.i.return_crit_edge ], [ 0, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_get_stream_config_mercury(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ts_type, ptr noundef writeonly %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_get_stream_config_mercury.__UNIQUE_ID_ddebug422, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_mercury, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_get_stream_config_mercury.__UNIQUE_ID_ddebug422, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.272, i32 noundef %1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %id3 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %2 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id3, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.308)
  switch i32 %3, label %do.end.if.end38_crit_edge [
    i32 0, label %if.then4
    i32 1, label %if.then11
    i32 2, label %land.lhs.true
  ]

do.end.if.end38_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then4:                                         ; preds = %do.end
  %5 = ptrtoint ptr %ts_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ts_type, align 1
  %6 = load i32, ptr @dvb_usb_mxl111sf_isoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_mercury, %if.then.i)) #6
          to label %mxl111sf_stream_config_isoc.exit [label %if.then.i], !srcloc !577

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.234, i32 noundef 6, i32 noundef 73728) #6
  br label %mxl111sf_stream_config_isoc.exit

mxl111sf_stream_config_isoc.exit:                 ; preds = %if.then.i, %if.then6
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %stream, align 4
  %count.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %count.i, align 1
  %endpoint3.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %9 = ptrtoint ptr %endpoint3.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 6, ptr %endpoint3.i, align 2
  %u.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %10 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 24, ptr %u.i, align 4
  %framesize6.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 1
  %11 = ptrtoint ptr %framesize6.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3072, ptr %framesize6.i, align 4
  %interval.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 2
  %12 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %interval.i, align 4
  br label %if.end38

if.else:                                          ; preds = %if.then4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_mercury, %if.then.i53)) #6
          to label %mxl111sf_stream_config_bulk.exit [label %if.then.i53], !srcloc !577

if.then.i53:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.236, i32 noundef 6) #6
  br label %mxl111sf_stream_config_bulk.exit

mxl111sf_stream_config_bulk.exit:                 ; preds = %if.then.i53, %if.else
  %13 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %stream, align 4
  %count.i54 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %14 = ptrtoint ptr %count.i54 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 5, ptr %count.i54, align 1
  %endpoint3.i55 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %15 = ptrtoint ptr %endpoint3.i55 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 6, ptr %endpoint3.i55, align 2
  %u.i56 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %16 = ptrtoint ptr %u.i56 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8192, ptr %u.i56, align 4
  br label %if.end38

if.then11:                                        ; preds = %do.end
  %17 = ptrtoint ptr %ts_type to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %ts_type, align 1
  %18 = load i32, ptr @dvb_usb_mxl111sf_isoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.not = icmp eq i32 %18, 0
  br i1 %tobool12.not, label %if.else14, label %if.then13

if.then13:                                        ; preds = %if.then11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_mercury, %if.then.i57)) #6
          to label %mxl111sf_stream_config_isoc.exit63 [label %if.then.i57], !srcloc !577

if.then.i57:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.234, i32 noundef 4, i32 noundef 54144) #6
  br label %mxl111sf_stream_config_isoc.exit63

mxl111sf_stream_config_isoc.exit63:               ; preds = %if.then.i57, %if.then13
  %19 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %stream, align 4
  %count.i58 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %20 = ptrtoint ptr %count.i58 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 5, ptr %count.i58, align 1
  %endpoint3.i59 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %21 = ptrtoint ptr %endpoint3.i59 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %endpoint3.i59, align 2
  %u.i60 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %22 = ptrtoint ptr %u.i60 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 96, ptr %u.i60, align 4
  %framesize6.i61 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 1
  %23 = ptrtoint ptr %framesize6.i61 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 564, ptr %framesize6.i61, align 4
  %interval.i62 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 2
  %24 = ptrtoint ptr %interval.i62 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %interval.i62, align 4
  br label %if.end38

if.else14:                                        ; preds = %if.then11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_mercury, %if.then.i64)) #6
          to label %mxl111sf_stream_config_bulk.exit68 [label %if.then.i64], !srcloc !577

if.then.i64:                                      ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.236, i32 noundef 4) #6
  br label %mxl111sf_stream_config_bulk.exit68

mxl111sf_stream_config_bulk.exit68:               ; preds = %if.then.i64, %if.else14
  %25 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %stream, align 4
  %count.i65 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %26 = ptrtoint ptr %count.i65 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 5, ptr %count.i65, align 1
  %endpoint3.i66 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %27 = ptrtoint ptr %endpoint3.i66 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 4, ptr %endpoint3.i66, align 2
  %u.i67 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %28 = ptrtoint ptr %u.i67 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8192, ptr %u.i67, align 4
  br label %if.end38

land.lhs.true:                                    ; preds = %do.end
  %29 = load i32, ptr @dvb_usb_mxl111sf_spi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool19.not = icmp eq i32 %29, 0
  br i1 %tobool19.not, label %land.lhs.true28, label %if.then20

if.then20:                                        ; preds = %land.lhs.true
  %30 = ptrtoint ptr %ts_type to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %ts_type, align 1
  %31 = load i32, ptr @dvb_usb_mxl111sf_isoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool21.not = icmp eq i32 %31, 0
  br i1 %tobool21.not, label %if.else23, label %if.then22

if.then22:                                        ; preds = %if.then20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_mercury, %if.then.i69)) #6
          to label %mxl111sf_stream_config_isoc.exit75 [label %if.then.i69], !srcloc !577

if.then.i69:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.234, i32 noundef 5, i32 noundef 19200) #6
  br label %mxl111sf_stream_config_isoc.exit75

mxl111sf_stream_config_isoc.exit75:               ; preds = %if.then.i69, %if.then22
  %32 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %stream, align 4
  %count.i70 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %33 = ptrtoint ptr %count.i70 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 5, ptr %count.i70, align 1
  %endpoint3.i71 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %34 = ptrtoint ptr %endpoint3.i71 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 5, ptr %endpoint3.i71, align 2
  %u.i72 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %35 = ptrtoint ptr %u.i72 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 96, ptr %u.i72, align 4
  %framesize6.i73 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 1
  %36 = ptrtoint ptr %framesize6.i73 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 200, ptr %framesize6.i73, align 4
  %interval.i74 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 2
  %37 = ptrtoint ptr %interval.i74 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %interval.i74, align 4
  br label %if.end38

if.else23:                                        ; preds = %if.then20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_mercury, %if.then.i76)) #6
          to label %mxl111sf_stream_config_bulk.exit80 [label %if.then.i76], !srcloc !577

if.then.i76:                                      ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.236, i32 noundef 5) #6
  br label %mxl111sf_stream_config_bulk.exit80

mxl111sf_stream_config_bulk.exit80:               ; preds = %if.then.i76, %if.else23
  %38 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %stream, align 4
  %count.i77 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %39 = ptrtoint ptr %count.i77 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 5, ptr %count.i77, align 1
  %endpoint3.i78 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %40 = ptrtoint ptr %endpoint3.i78 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 5, ptr %endpoint3.i78, align 2
  %u.i79 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %41 = ptrtoint ptr %u.i79 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 8192, ptr %u.i79, align 4
  br label %if.end38

land.lhs.true28:                                  ; preds = %land.lhs.true
  %42 = load i32, ptr @dvb_usb_mxl111sf_spi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool29.not = icmp eq i32 %42, 0
  br i1 %tobool29.not, label %if.then30, label %land.lhs.true28.if.end38_crit_edge

land.lhs.true28.if.end38_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then30:                                        ; preds = %land.lhs.true28
  %43 = ptrtoint ptr %ts_type to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %ts_type, align 1
  %44 = load i32, ptr @dvb_usb_mxl111sf_isoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool31.not = icmp eq i32 %44, 0
  br i1 %tobool31.not, label %if.else33, label %if.then32

if.then32:                                        ; preds = %if.then30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_mercury, %if.then.i81)) #6
          to label %mxl111sf_stream_config_isoc.exit87 [label %if.then.i81], !srcloc !577

if.then.i81:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.234, i32 noundef 6, i32 noundef 73728) #6
  br label %mxl111sf_stream_config_isoc.exit87

mxl111sf_stream_config_isoc.exit87:               ; preds = %if.then.i81, %if.then32
  %45 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 2, ptr %stream, align 4
  %count.i82 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %46 = ptrtoint ptr %count.i82 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 5, ptr %count.i82, align 1
  %endpoint3.i83 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %47 = ptrtoint ptr %endpoint3.i83 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 6, ptr %endpoint3.i83, align 2
  %u.i84 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %48 = ptrtoint ptr %u.i84 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 24, ptr %u.i84, align 4
  %framesize6.i85 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 1
  %49 = ptrtoint ptr %framesize6.i85 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3072, ptr %framesize6.i85, align 4
  %interval.i86 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 2
  %50 = ptrtoint ptr %interval.i86 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %interval.i86, align 4
  br label %if.end38

if.else33:                                        ; preds = %if.then30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_mercury, %if.then.i88)) #6
          to label %mxl111sf_stream_config_bulk.exit92 [label %if.then.i88], !srcloc !577

if.then.i88:                                      ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.236, i32 noundef 6) #6
  br label %mxl111sf_stream_config_bulk.exit92

mxl111sf_stream_config_bulk.exit92:               ; preds = %if.then.i88, %if.else33
  %51 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %stream, align 4
  %count.i89 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %52 = ptrtoint ptr %count.i89 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 5, ptr %count.i89, align 1
  %endpoint3.i90 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %53 = ptrtoint ptr %endpoint3.i90 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 6, ptr %endpoint3.i90, align 2
  %u.i91 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %54 = ptrtoint ptr %u.i91 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 8192, ptr %u.i91, align 4
  br label %if.end38

if.end38:                                         ; preds = %mxl111sf_stream_config_bulk.exit92, %mxl111sf_stream_config_isoc.exit87, %land.lhs.true28.if.end38_crit_edge, %mxl111sf_stream_config_bulk.exit80, %mxl111sf_stream_config_isoc.exit75, %mxl111sf_stream_config_bulk.exit68, %mxl111sf_stream_config_isoc.exit63, %mxl111sf_stream_config_bulk.exit, %mxl111sf_stream_config_isoc.exit, %do.end.if.end38_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxl111sf_lg2161_ep6_frontend_attach(ptr noundef %adap, i8 noundef zeroext %fe_id) unnamed_addr #0 align 64 {
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
  %idxprom = zext i8 %fe_id to i32
  %arrayidx = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 %idxprom
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_lg2161_ep6_frontend_attach.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_lg2161_ep6_frontend_attach, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_lg2161_ep6_frontend_attach.__UNIQUE_ID_ddebug409, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.242) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %3, align 4
  %5 = load i32, ptr @dvb_usb_mxl111sf_isoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool6.not, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %arrayidx, align 4
  %alt_mode8 = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %alt_mode8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %alt_mode8, align 4
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 4
  %call10 = tail call i32 @usb_set_interface(ptr noundef %9, i32 noundef 0, i32 noundef %cond) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end15, label %do.end.if.end18_crit_edge

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %do.end.if.end18_crit_edge
  %gpio_mode = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %gpio_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %gpio_mode, align 4
  %gpio_mode20 = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 %idxprom, i32 1
  %11 = ptrtoint ptr %gpio_mode20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %gpio_mode20, align 4
  %device_mode = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 %idxprom, i32 2
  %12 = ptrtoint ptr %device_mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %device_mode, align 4
  %ep6_clockphase = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 %idxprom, i32 3
  %13 = ptrtoint ptr %ep6_clockphase to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ep6_clockphase, align 4
  %call21 = tail call i32 @mxl1x1sf_soft_reset(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %land.lhs.true, label %if.end36.critedge

land.lhs.true:                                    ; preds = %if.end18
  %14 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %land.lhs.true.cleanup_crit_edge, label %do.end29

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end29:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.242, i32 noundef %call21, i32 noundef 691) #9
  br label %cleanup

if.end36.critedge:                                ; preds = %if.end18
  %call37 = tail call i32 @mxl111sf_init_tuner_demod(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp39 = icmp slt i32 %call37, 0
  br i1 %cmp39, label %land.lhs.true42, label %if.end55.critedge

land.lhs.true42:                                  ; preds = %if.end36.critedge
  %15 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and43 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %land.lhs.true42.cleanup_crit_edge, label %do.end48

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end48:                                         ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.242, i32 noundef %call37, i32 noundef 694) #9
  br label %cleanup

if.end55.critedge:                                ; preds = %if.end36.critedge
  %16 = ptrtoint ptr %device_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %device_mode, align 4
  %call57 = tail call i32 @mxl1x1sf_set_device_mode(ptr noundef %3, i32 noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp59 = icmp slt i32 %call57, 0
  br i1 %cmp59, label %land.lhs.true62, label %if.end75.critedge

land.lhs.true62:                                  ; preds = %if.end55.critedge
  %18 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and63 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %land.lhs.true62.cleanup_crit_edge, label %do.end68

land.lhs.true62.cleanup_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end68:                                         ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.242, i32 noundef %call57, i32 noundef 698) #9
  br label %cleanup

if.end75.critedge:                                ; preds = %if.end55.critedge
  %call76 = tail call i32 @mxl111sf_enable_usb_output(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp78 = icmp slt i32 %call76, 0
  br i1 %cmp78, label %land.lhs.true81, label %if.end94.critedge

land.lhs.true81:                                  ; preds = %if.end75.critedge
  %19 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and82 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %land.lhs.true81.cleanup_crit_edge, label %do.end87

land.lhs.true81.cleanup_crit_edge:                ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end87:                                         ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #8
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.242, i32 noundef %call76, i32 noundef 702) #9
  br label %cleanup

if.end94.critedge:                                ; preds = %if.end75.critedge
  %call95 = tail call i32 @mxl1x1sf_top_master_ctrl(ptr noundef %3, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp97 = icmp slt i32 %call95, 0
  br i1 %cmp97, label %land.lhs.true100, label %if.end113.critedge

land.lhs.true100:                                 ; preds = %if.end94.critedge
  %20 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and101 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %land.lhs.true100.cleanup_crit_edge, label %do.end106

land.lhs.true100.cleanup_crit_edge:               ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end106:                                        ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #8
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.242, i32 noundef %call95, i32 noundef 705) #9
  br label %cleanup

if.end113.critedge:                               ; preds = %if.end94.critedge
  %call114 = tail call i32 @mxl111sf_init_port_expander(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp116 = icmp slt i32 %call114, 0
  br i1 %cmp116, label %land.lhs.true119, label %if.end132.critedge

land.lhs.true119:                                 ; preds = %if.end113.critedge
  %21 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and120 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %land.lhs.true119.cleanup_crit_edge, label %do.end125

land.lhs.true119.cleanup_crit_edge:               ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end125:                                        ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #8
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.242, i32 noundef %call114, i32 noundef 709) #9
  br label %cleanup

if.end132.critedge:                               ; preds = %if.end113.critedge
  %22 = ptrtoint ptr %gpio_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gpio_mode, align 4
  %call134 = tail call i32 @mxl111sf_gpio_mode_switch(ptr noundef %3, i32 noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %cmp136 = icmp slt i32 %call134, 0
  br i1 %cmp136, label %land.lhs.true139, label %if.end152.critedge

land.lhs.true139:                                 ; preds = %if.end132.critedge
  %24 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and140 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %land.lhs.true139.cleanup_crit_edge, label %do.end145

land.lhs.true139.cleanup_crit_edge:               ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end145:                                        ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #8
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.242, i32 noundef %call134, i32 noundef 712) #9
  br label %cleanup

if.end152.critedge:                               ; preds = %if.end132.critedge
  %call153 = tail call fastcc i32 @mxl1x1sf_get_chip_info(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %cmp155 = icmp slt i32 %call153, 0
  br i1 %cmp155, label %land.lhs.true158, label %if.end152.critedge.if.end230.critedge_crit_edge

if.end152.critedge.if.end230.critedge_crit_edge:  ; preds = %if.end152.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end230.critedge

land.lhs.true158:                                 ; preds = %if.end152.critedge
  %25 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and159 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %land.lhs.true158.if.then170_crit_edge, label %do.end164

land.lhs.true158.if.then170_crit_edge:            ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then170

do.end164:                                        ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #8
  %call166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.242, i32 noundef %call153, i32 noundef 715) #9
  %.pr = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  br label %if.then170

if.then170:                                       ; preds = %do.end164, %land.lhs.true158.if.then170_crit_edge
  %26 = phi i32 [ %25, %land.lhs.true158.if.then170_crit_edge ], [ %.pr, %do.end164 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool171.not = icmp eq i32 %26, 0
  br i1 %tobool171.not, label %if.then170.if.end178_crit_edge, label %do.end175

if.then170.if.end178_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end178

do.end175:                                        ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #8
  %call177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.242) #9
  br label %if.end178

if.end178:                                        ; preds = %do.end175, %if.then170.if.end178_crit_edge
  %call179 = tail call fastcc i32 @mxl1x1sf_get_chip_info(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %cmp181 = icmp slt i32 %call179, 0
  %27 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  br i1 %cmp181, label %land.lhs.true184, label %if.else

land.lhs.true184:                                 ; preds = %if.end178
  %and185 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %land.lhs.true184.land.lhs.true217_crit_edge, label %do.end190

land.lhs.true184.land.lhs.true217_crit_edge:      ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true217

do.end190:                                        ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #8
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.242, i32 noundef %call179, i32 noundef 715) #9
  br label %land.lhs.true217

if.else:                                          ; preds = %if.end178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool202.not = icmp eq i32 %27, 0
  br i1 %tobool202.not, label %if.else.if.end230.critedge_crit_edge, label %do.end206

if.else.if.end230.critedge_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end230.critedge

do.end206:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.242) #9
  br label %if.end230.critedge

land.lhs.true217:                                 ; preds = %do.end190, %land.lhs.true184.land.lhs.true217_crit_edge
  %call201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164) #9
  %28 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and218 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218)
  %tobool219.not = icmp eq i32 %and218, 0
  br i1 %tobool219.not, label %land.lhs.true217.cleanup_crit_edge, label %do.end223

land.lhs.true217.cleanup_crit_edge:               ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end223:                                        ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #8
  %call225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.242, i32 noundef %call179, i32 noundef 716) #9
  br label %cleanup

if.end230.critedge:                               ; preds = %do.end206, %if.else.if.end230.critedge_crit_edge, %if.end152.critedge.if.end230.critedge_crit_edge
  %call231 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.171) #6
  %tobool232.not = icmp eq ptr %call231, null
  br i1 %tobool232.not, label %cond.end, label %if.end230.critedge.if.then237_crit_edge

if.end230.critedge.if.then237_crit_edge:          ; preds = %if.end230.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then237

cond.end:                                         ; preds = %if.end230.critedge
  %call233 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.172) #6
  %call234 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.171) #6
  %tobool236.not = icmp eq ptr %call234, null
  br i1 %tobool236.not, label %do.end250, label %cond.end.if.then237_crit_edge

cond.end.if.then237_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then237

if.then237:                                       ; preds = %cond.end.if.then237_crit_edge, %if.end230.critedge.if.then237_crit_edge
  %cond235377 = phi ptr [ %call234, %cond.end.if.then237_crit_edge ], [ %call231, %if.end230.critedge.if.then237_crit_edge ]
  %chip_rev = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 5
  %29 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %chip_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %30)
  %cmp239 = icmp eq i8 %30, 3
  %cond241 = select i1 %cmp239, ptr @hauppauge_lg2161_1040_ep6_config, ptr @hauppauge_lg2161_1019_ep6_config
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call242 = tail call ptr %cond235377(ptr noundef nonnull %cond241, ptr noundef %i2c_adap) #6
  %cmp243 = icmp eq ptr %call242, null
  br i1 %cmp243, label %if.then245, label %if.then261

if.then245:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.171) #6
  br label %if.end253.thread

do.end250:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174) #9
  br label %if.end253.thread

if.end253.thread:                                 ; preds = %do.end250, %if.then245
  %arrayidx256379 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 %idxprom
  %31 = ptrtoint ptr %arrayidx256379 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx256379, align 4
  br label %cleanup

if.then261:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx256 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 %idxprom
  %32 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call242, ptr %arrayidx256, align 4
  %num_frontends = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 11
  %33 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_frontends, align 4
  %inc = add i8 %34, 1
  store i8 %inc, ptr %num_frontends, align 4
  %35 = load ptr, ptr %arrayidx256, align 4
  %init = getelementptr inbounds %struct.dvb_frontend, ptr %35, i32 0, i32 1, i32 5
  %36 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init, align 4
  %fe_init = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 %idxprom, i32 4
  %38 = ptrtoint ptr %fe_init to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %fe_init, align 4
  %39 = load ptr, ptr %arrayidx256, align 4
  %init269 = getelementptr inbounds %struct.dvb_frontend, ptr %39, i32 0, i32 1, i32 5
  %40 = ptrtoint ptr %init269 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @mxl111sf_adap_fe_init, ptr %init269, align 4
  %41 = load ptr, ptr %arrayidx256, align 4
  %sleep = getelementptr inbounds %struct.dvb_frontend, ptr %41, i32 0, i32 1, i32 6
  %42 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sleep, align 4
  %fe_sleep = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 %idxprom, i32 5
  %44 = ptrtoint ptr %fe_sleep to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %fe_sleep, align 4
  %45 = load ptr, ptr %arrayidx256, align 4
  %sleep278 = getelementptr inbounds %struct.dvb_frontend, ptr %45, i32 0, i32 1, i32 6
  %46 = ptrtoint ptr %sleep278 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @mxl111sf_adap_fe_sleep, ptr %sleep278, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then261, %if.end253.thread, %do.end223, %land.lhs.true217.cleanup_crit_edge, %do.end145, %land.lhs.true139.cleanup_crit_edge, %do.end125, %land.lhs.true119.cleanup_crit_edge, %do.end106, %land.lhs.true100.cleanup_crit_edge, %do.end87, %land.lhs.true81.cleanup_crit_edge, %do.end68, %land.lhs.true62.cleanup_crit_edge, %do.end48, %land.lhs.true42.cleanup_crit_edge, %do.end29, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then261 ], [ %call21, %do.end29 ], [ %call37, %do.end48 ], [ %call57, %do.end68 ], [ %call76, %do.end87 ], [ %call95, %do.end106 ], [ %call114, %do.end125 ], [ %call134, %do.end145 ], [ %call179, %do.end223 ], [ %call21, %land.lhs.true.cleanup_crit_edge ], [ %call37, %land.lhs.true42.cleanup_crit_edge ], [ %call57, %land.lhs.true62.cleanup_crit_edge ], [ %call76, %land.lhs.true81.cleanup_crit_edge ], [ %call95, %land.lhs.true100.cleanup_crit_edge ], [ %call114, %land.lhs.true119.cleanup_crit_edge ], [ %call134, %land.lhs.true139.cleanup_crit_edge ], [ %call179, %land.lhs.true217.cleanup_crit_edge ], [ -5, %if.end253.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_frontend_attach_mercury_mh(ptr noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_frontend_attach_mercury_mh.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_frontend_attach_mercury_mh, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_frontend_attach_mercury_mh.__UNIQUE_ID_ddebug414, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.273) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @mxl111sf_attach_demod(ptr noundef %adap, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %0 = load i32, ptr @dvb_usb_mxl111sf_spi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool6.not = icmp eq i32 %0, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call fastcc i32 @mxl111sf_lg2161_frontend_attach(ptr noundef %adap)
  br label %cleanup

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call fastcc i32 @mxl111sf_lg2161_ep6_frontend_attach(ptr noundef %adap, i8 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then7, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end.cleanup_crit_edge ], [ %call8, %if.then7 ], [ %call9, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_streaming_ctrl_mercury_mh(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_streaming_ctrl_mercury_mh.__UNIQUE_ID_ddebug425, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_streaming_ctrl_mercury_mh, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_streaming_ctrl_mercury_mh.__UNIQUE_ID_ddebug425, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.303, i32 noundef %1, i32 noundef %onoff) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %id3 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %2 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id3, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.309)
  switch i32 %3, label %do.end.return_crit_edge [
    i32 0, label %if.then4
    i32 1, label %land.lhs.true
  ]

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then4:                                         ; preds = %do.end
  %dvb.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %5 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dvb.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_adapter, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 4
  %id.i = getelementptr inbounds %struct.dvb_usb_adapter, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %id.i, align 4
  %conv.i = zext i8 %10 to i32
  %.neg.i = mul nsw i32 %conv.i, -2280
  %idx.neg.i = add nsw i32 %.neg.i, -1616
  %add.ptr.i = getelementptr i8, ptr %8, i32 %idx.neg.i
  %priv3.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr.i, i32 0, i32 15
  %11 = ptrtoint ptr %priv3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv3.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_ep4_streaming_ctrl.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_streaming_ctrl_mercury_mh, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !577

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_ep4_streaming_ctrl.__UNIQUE_ID_ddebug405, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.206, i32 noundef %onoff) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool7.not.i = icmp eq i32 %onoff, 0
  br i1 %tobool7.not.i, label %do.end.i.return_crit_edge, label %if.then8.i

do.end.i.return_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then8.i:                                       ; preds = %do.end.i
  %call9.i = tail call i32 @mxl111sf_enable_usb_output(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i = icmp slt i32 %call9.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then8.i.return_crit_edge

if.then8.i.return_crit_edge:                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true.i:                                  ; preds = %if.then8.i
  %13 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i.return_crit_edge, label %do.end16.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end16.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.206, i32 noundef %call9.i, i32 noundef 406) #9
  br label %return

land.lhs.true:                                    ; preds = %do.end
  %14 = load i32, ptr @dvb_usb_mxl111sf_spi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %land.lhs.true14, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 @mxl111sf_ep5_streaming_ctrl(ptr noundef %fe, i32 noundef %onoff)
  br label %return

land.lhs.true14:                                  ; preds = %land.lhs.true
  %15 = load i32, ptr @dvb_usb_mxl111sf_spi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool15.not = icmp eq i32 %15, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true14.return_crit_edge

land.lhs.true14.return_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 @mxl111sf_ep6_streaming_ctrl(ptr noundef %fe, i32 noundef %onoff)
  br label %return

return:                                           ; preds = %if.then16, %land.lhs.true14.return_crit_edge, %if.then9, %do.end16.i, %land.lhs.true.i.return_crit_edge, %if.then8.i.return_crit_edge, %do.end.i.return_crit_edge, %do.end.return_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then9 ], [ %call17, %if.then16 ], [ 0, %land.lhs.true14.return_crit_edge ], [ 0, %do.end.i.return_crit_edge ], [ %call9.i, %do.end16.i ], [ %call9.i, %land.lhs.true.i.return_crit_edge ], [ %call9.i, %if.then8.i.return_crit_edge ], [ 0, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl111sf_get_stream_config_mercury_mh(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ts_type, ptr noundef writeonly %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_get_stream_config_mercury_mh.__UNIQUE_ID_ddebug424, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_mercury_mh, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_get_stream_config_mercury_mh.__UNIQUE_ID_ddebug424, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.304, i32 noundef %1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %id3 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %2 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id3, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.310)
  switch i32 %3, label %do.end.if.end29_crit_edge [
    i32 0, label %if.then4
    i32 1, label %land.lhs.true
  ]

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then4:                                         ; preds = %do.end
  %5 = ptrtoint ptr %ts_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ts_type, align 1
  %6 = load i32, ptr @dvb_usb_mxl111sf_isoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_mercury_mh, %if.then.i)) #6
          to label %mxl111sf_stream_config_isoc.exit [label %if.then.i], !srcloc !577

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.234, i32 noundef 4, i32 noundef 54144) #6
  br label %mxl111sf_stream_config_isoc.exit

mxl111sf_stream_config_isoc.exit:                 ; preds = %if.then.i, %if.then6
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %stream, align 4
  %count.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %count.i, align 1
  %endpoint3.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %9 = ptrtoint ptr %endpoint3.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %endpoint3.i, align 2
  %u.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %10 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 96, ptr %u.i, align 4
  %framesize6.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 1
  %11 = ptrtoint ptr %framesize6.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 564, ptr %framesize6.i, align 4
  %interval.i = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 2
  %12 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %interval.i, align 4
  br label %if.end29

if.else:                                          ; preds = %if.then4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_mercury_mh, %if.then.i40)) #6
          to label %mxl111sf_stream_config_bulk.exit [label %if.then.i40], !srcloc !577

if.then.i40:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.236, i32 noundef 4) #6
  br label %mxl111sf_stream_config_bulk.exit

mxl111sf_stream_config_bulk.exit:                 ; preds = %if.then.i40, %if.else
  %13 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %stream, align 4
  %count.i41 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %14 = ptrtoint ptr %count.i41 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 5, ptr %count.i41, align 1
  %endpoint3.i42 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %15 = ptrtoint ptr %endpoint3.i42 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %endpoint3.i42, align 2
  %u.i43 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %16 = ptrtoint ptr %u.i43 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8192, ptr %u.i43, align 4
  br label %if.end29

land.lhs.true:                                    ; preds = %do.end
  %17 = load i32, ptr @dvb_usb_mxl111sf_spi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not = icmp eq i32 %17, 0
  br i1 %tobool11.not, label %land.lhs.true20, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  %18 = ptrtoint ptr %ts_type to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %ts_type, align 1
  %19 = load i32, ptr @dvb_usb_mxl111sf_isoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool13.not = icmp eq i32 %19, 0
  br i1 %tobool13.not, label %if.else15, label %if.then14

if.then14:                                        ; preds = %if.then12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_mercury_mh, %if.then.i44)) #6
          to label %mxl111sf_stream_config_isoc.exit50 [label %if.then.i44], !srcloc !577

if.then.i44:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.234, i32 noundef 5, i32 noundef 19200) #6
  br label %mxl111sf_stream_config_isoc.exit50

mxl111sf_stream_config_isoc.exit50:               ; preds = %if.then.i44, %if.then14
  %20 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %stream, align 4
  %count.i45 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %21 = ptrtoint ptr %count.i45 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 5, ptr %count.i45, align 1
  %endpoint3.i46 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %22 = ptrtoint ptr %endpoint3.i46 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 5, ptr %endpoint3.i46, align 2
  %u.i47 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %23 = ptrtoint ptr %u.i47 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 96, ptr %u.i47, align 4
  %framesize6.i48 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 1
  %24 = ptrtoint ptr %framesize6.i48 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 200, ptr %framesize6.i48, align 4
  %interval.i49 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 2
  %25 = ptrtoint ptr %interval.i49 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %interval.i49, align 4
  br label %if.end29

if.else15:                                        ; preds = %if.then12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_mercury_mh, %if.then.i51)) #6
          to label %mxl111sf_stream_config_bulk.exit55 [label %if.then.i51], !srcloc !577

if.then.i51:                                      ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.236, i32 noundef 5) #6
  br label %mxl111sf_stream_config_bulk.exit55

mxl111sf_stream_config_bulk.exit55:               ; preds = %if.then.i51, %if.else15
  %26 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %stream, align 4
  %count.i52 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %27 = ptrtoint ptr %count.i52 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 5, ptr %count.i52, align 1
  %endpoint3.i53 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %28 = ptrtoint ptr %endpoint3.i53 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 5, ptr %endpoint3.i53, align 2
  %u.i54 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %29 = ptrtoint ptr %u.i54 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8192, ptr %u.i54, align 4
  br label %if.end29

land.lhs.true20:                                  ; preds = %land.lhs.true
  %30 = load i32, ptr @dvb_usb_mxl111sf_spi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool21.not = icmp eq i32 %30, 0
  br i1 %tobool21.not, label %if.then22, label %land.lhs.true20.if.end29_crit_edge

land.lhs.true20.if.end29_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then22:                                        ; preds = %land.lhs.true20
  %31 = ptrtoint ptr %ts_type to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %ts_type, align 1
  %32 = load i32, ptr @dvb_usb_mxl111sf_isoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool23.not = icmp eq i32 %32, 0
  br i1 %tobool23.not, label %if.else25, label %if.then24

if.then24:                                        ; preds = %if.then22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_mercury_mh, %if.then.i56)) #6
          to label %mxl111sf_stream_config_isoc.exit62 [label %if.then.i56], !srcloc !577

if.then.i56:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.234, i32 noundef 6, i32 noundef 73728) #6
  br label %mxl111sf_stream_config_isoc.exit62

mxl111sf_stream_config_isoc.exit62:               ; preds = %if.then.i56, %if.then24
  %33 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %stream, align 4
  %count.i57 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %34 = ptrtoint ptr %count.i57 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 5, ptr %count.i57, align 1
  %endpoint3.i58 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %35 = ptrtoint ptr %endpoint3.i58 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 6, ptr %endpoint3.i58, align 2
  %u.i59 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %36 = ptrtoint ptr %u.i59 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 24, ptr %u.i59, align 4
  %framesize6.i60 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 1
  %37 = ptrtoint ptr %framesize6.i60 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3072, ptr %framesize6.i60, align 4
  %interval.i61 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3, i32 0, i32 2
  %38 = ptrtoint ptr %interval.i61 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %interval.i61, align 4
  br label %if.end29

if.else25:                                        ; preds = %if.then22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_get_stream_config_mercury_mh, %if.then.i63)) #6
          to label %mxl111sf_stream_config_bulk.exit67 [label %if.then.i63], !srcloc !577

if.then.i63:                                      ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.236, i32 noundef 6) #6
  br label %mxl111sf_stream_config_bulk.exit67

mxl111sf_stream_config_bulk.exit67:               ; preds = %if.then.i63, %if.else25
  %39 = ptrtoint ptr %stream to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %stream, align 4
  %count.i64 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 1
  %40 = ptrtoint ptr %count.i64 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 5, ptr %count.i64, align 1
  %endpoint3.i65 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %41 = ptrtoint ptr %endpoint3.i65 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 6, ptr %endpoint3.i65, align 2
  %u.i66 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 3
  %42 = ptrtoint ptr %u.i66 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8192, ptr %u.i66, align 4
  br label %if.end29

if.end29:                                         ; preds = %mxl111sf_stream_config_bulk.exit67, %mxl111sf_stream_config_isoc.exit62, %land.lhs.true20.if.end29_crit_edge, %mxl111sf_stream_config_bulk.exit55, %mxl111sf_stream_config_isoc.exit50, %mxl111sf_stream_config_bulk.exit, %mxl111sf_stream_config_isoc.exit, %do.end.if.end29_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxl111sf_lg2161_frontend_attach(ptr noundef %adap) unnamed_addr #0 align 64 {
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
  %arrayidx = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl111sf_lg2161_frontend_attach.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl111sf_lg2161_frontend_attach, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !577

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxl111sf_lg2161_frontend_attach.__UNIQUE_ID_ddebug408, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.274) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %3, align 4
  %5 = load i32, ptr @dvb_usb_mxl111sf_isoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool6.not, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %arrayidx, align 4
  %alt_mode8 = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %alt_mode8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %alt_mode8, align 4
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 4
  %call10 = tail call i32 @usb_set_interface(ptr noundef %9, i32 noundef 0, i32 noundef %cond) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end15, label %do.end.if.end18_crit_edge

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %do.end.if.end18_crit_edge
  %gpio_mode = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %gpio_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %gpio_mode, align 4
  %gpio_mode20 = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 1, i32 1
  %11 = ptrtoint ptr %gpio_mode20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %gpio_mode20, align 4
  %device_mode = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 1, i32 2
  %12 = ptrtoint ptr %device_mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %device_mode, align 4
  %ep6_clockphase = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 1, i32 3
  %13 = ptrtoint ptr %ep6_clockphase to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %ep6_clockphase, align 4
  %call21 = tail call i32 @mxl1x1sf_soft_reset(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %land.lhs.true, label %if.end36.critedge

land.lhs.true:                                    ; preds = %if.end18
  %14 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %land.lhs.true.cleanup_crit_edge, label %do.end29

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end29:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.274, i32 noundef %call21, i32 noundef 604) #9
  br label %cleanup

if.end36.critedge:                                ; preds = %if.end18
  %call37 = tail call i32 @mxl111sf_init_tuner_demod(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp39 = icmp slt i32 %call37, 0
  br i1 %cmp39, label %land.lhs.true42, label %if.end55.critedge

land.lhs.true42:                                  ; preds = %if.end36.critedge
  %15 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and43 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %land.lhs.true42.cleanup_crit_edge, label %do.end48

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end48:                                         ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.274, i32 noundef %call37, i32 noundef 607) #9
  br label %cleanup

if.end55.critedge:                                ; preds = %if.end36.critedge
  %16 = ptrtoint ptr %device_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %device_mode, align 4
  %call57 = tail call i32 @mxl1x1sf_set_device_mode(ptr noundef %3, i32 noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp59 = icmp slt i32 %call57, 0
  br i1 %cmp59, label %land.lhs.true62, label %if.end75.critedge

land.lhs.true62:                                  ; preds = %if.end55.critedge
  %18 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and63 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %land.lhs.true62.cleanup_crit_edge, label %do.end68

land.lhs.true62.cleanup_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end68:                                         ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.274, i32 noundef %call57, i32 noundef 611) #9
  br label %cleanup

if.end75.critedge:                                ; preds = %if.end55.critedge
  %call76 = tail call i32 @mxl111sf_enable_usb_output(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp78 = icmp slt i32 %call76, 0
  br i1 %cmp78, label %land.lhs.true81, label %if.end94.critedge

land.lhs.true81:                                  ; preds = %if.end75.critedge
  %19 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and82 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %land.lhs.true81.cleanup_crit_edge, label %do.end87

land.lhs.true81.cleanup_crit_edge:                ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end87:                                         ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #8
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.274, i32 noundef %call76, i32 noundef 615) #9
  br label %cleanup

if.end94.critedge:                                ; preds = %if.end75.critedge
  %call95 = tail call i32 @mxl1x1sf_top_master_ctrl(ptr noundef %3, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp97 = icmp slt i32 %call95, 0
  br i1 %cmp97, label %land.lhs.true100, label %if.end113.critedge

land.lhs.true100:                                 ; preds = %if.end94.critedge
  %20 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and101 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %land.lhs.true100.cleanup_crit_edge, label %do.end106

land.lhs.true100.cleanup_crit_edge:               ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end106:                                        ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #8
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.274, i32 noundef %call95, i32 noundef 618) #9
  br label %cleanup

if.end113.critedge:                               ; preds = %if.end94.critedge
  %call114 = tail call i32 @mxl111sf_init_port_expander(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp116 = icmp slt i32 %call114, 0
  br i1 %cmp116, label %land.lhs.true119, label %if.end132.critedge

land.lhs.true119:                                 ; preds = %if.end113.critedge
  %21 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and120 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %land.lhs.true119.cleanup_crit_edge, label %do.end125

land.lhs.true119.cleanup_crit_edge:               ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end125:                                        ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #8
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.274, i32 noundef %call114, i32 noundef 622) #9
  br label %cleanup

if.end132.critedge:                               ; preds = %if.end113.critedge
  %22 = ptrtoint ptr %gpio_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gpio_mode, align 4
  %call134 = tail call i32 @mxl111sf_gpio_mode_switch(ptr noundef %3, i32 noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %cmp136 = icmp slt i32 %call134, 0
  br i1 %cmp136, label %land.lhs.true139, label %if.end152.critedge

land.lhs.true139:                                 ; preds = %if.end132.critedge
  %24 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and140 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %land.lhs.true139.cleanup_crit_edge, label %do.end145

land.lhs.true139.cleanup_crit_edge:               ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end145:                                        ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #8
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.274, i32 noundef %call134, i32 noundef 625) #9
  br label %cleanup

if.end152.critedge:                               ; preds = %if.end132.critedge
  %call153 = tail call fastcc i32 @mxl1x1sf_get_chip_info(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %cmp155 = icmp slt i32 %call153, 0
  br i1 %cmp155, label %land.lhs.true158, label %if.end152.critedge.if.end230.critedge_crit_edge

if.end152.critedge.if.end230.critedge_crit_edge:  ; preds = %if.end152.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end230.critedge

land.lhs.true158:                                 ; preds = %if.end152.critedge
  %25 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and159 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %land.lhs.true158.if.then170_crit_edge, label %do.end164

land.lhs.true158.if.then170_crit_edge:            ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then170

do.end164:                                        ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #8
  %call166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.274, i32 noundef %call153, i32 noundef 628) #9
  %.pr = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  br label %if.then170

if.then170:                                       ; preds = %do.end164, %land.lhs.true158.if.then170_crit_edge
  %26 = phi i32 [ %25, %land.lhs.true158.if.then170_crit_edge ], [ %.pr, %do.end164 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool171.not = icmp eq i32 %26, 0
  br i1 %tobool171.not, label %if.then170.if.end178_crit_edge, label %do.end175

if.then170.if.end178_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end178

do.end175:                                        ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #8
  %call177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.274) #9
  br label %if.end178

if.end178:                                        ; preds = %do.end175, %if.then170.if.end178_crit_edge
  %call179 = tail call fastcc i32 @mxl1x1sf_get_chip_info(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %cmp181 = icmp slt i32 %call179, 0
  %27 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  br i1 %cmp181, label %land.lhs.true184, label %if.else

land.lhs.true184:                                 ; preds = %if.end178
  %and185 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %land.lhs.true184.land.lhs.true217_crit_edge, label %do.end190

land.lhs.true184.land.lhs.true217_crit_edge:      ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true217

do.end190:                                        ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #8
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.274, i32 noundef %call179, i32 noundef 628) #9
  br label %land.lhs.true217

if.else:                                          ; preds = %if.end178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool202.not = icmp eq i32 %27, 0
  br i1 %tobool202.not, label %if.else.if.end230.critedge_crit_edge, label %do.end206

if.else.if.end230.critedge_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end230.critedge

do.end206:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.274) #9
  br label %if.end230.critedge

land.lhs.true217:                                 ; preds = %do.end190, %land.lhs.true184.land.lhs.true217_crit_edge
  %call201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164) #9
  %28 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and218 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218)
  %tobool219.not = icmp eq i32 %and218, 0
  br i1 %tobool219.not, label %land.lhs.true217.cleanup_crit_edge, label %do.end223

land.lhs.true217.cleanup_crit_edge:               ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end223:                                        ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #8
  %call225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.274, i32 noundef %call179, i32 noundef 629) #9
  br label %cleanup

if.end230.critedge:                               ; preds = %do.end206, %if.else.if.end230.critedge_crit_edge, %if.end152.critedge.if.end230.critedge_crit_edge
  %call231 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.171) #6
  %tobool232.not = icmp eq ptr %call231, null
  br i1 %tobool232.not, label %cond.end, label %if.end230.critedge.if.then237_crit_edge

if.end230.critedge.if.then237_crit_edge:          ; preds = %if.end230.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then237

cond.end:                                         ; preds = %if.end230.critedge
  %call233 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.172) #6
  %call234 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.171) #6
  %tobool236.not = icmp eq ptr %call234, null
  br i1 %tobool236.not, label %do.end250, label %cond.end.if.then237_crit_edge

cond.end.if.then237_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then237

if.then237:                                       ; preds = %cond.end.if.then237_crit_edge, %if.end230.critedge.if.then237_crit_edge
  %cond23523 = phi ptr [ %call234, %cond.end.if.then237_crit_edge ], [ %call231, %if.end230.critedge.if.then237_crit_edge ]
  %chip_rev = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 5
  %29 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %chip_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %30)
  %cmp239 = icmp eq i8 %30, 3
  %cond241 = select i1 %cmp239, ptr @hauppauge_lg2161_1040_config, ptr @hauppauge_lg2161_1019_config
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call242 = tail call ptr %cond23523(ptr noundef nonnull %cond241, ptr noundef %i2c_adap) #6
  %cmp243 = icmp eq ptr %call242, null
  br i1 %cmp243, label %if.then245, label %if.then261

if.then245:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.171) #6
  br label %if.end253.thread

do.end250:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174) #9
  br label %if.end253.thread

if.end253.thread:                                 ; preds = %do.end250, %if.then245
  %arrayidx25625 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 1
  %31 = ptrtoint ptr %arrayidx25625 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx25625, align 4
  br label %cleanup

if.then261:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx256 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 1
  %32 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call242, ptr %arrayidx256, align 4
  %num_frontends = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 11
  %33 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_frontends, align 4
  %inc = add i8 %34, 1
  store i8 %inc, ptr %num_frontends, align 4
  %35 = load ptr, ptr %arrayidx256, align 4
  %init = getelementptr inbounds %struct.dvb_frontend, ptr %35, i32 0, i32 1, i32 5
  %36 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init, align 4
  %fe_init = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 1, i32 4
  %38 = ptrtoint ptr %fe_init to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %fe_init, align 4
  %39 = load ptr, ptr %arrayidx256, align 4
  %init269 = getelementptr inbounds %struct.dvb_frontend, ptr %39, i32 0, i32 1, i32 5
  %40 = ptrtoint ptr %init269 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @mxl111sf_adap_fe_init, ptr %init269, align 4
  %41 = load ptr, ptr %arrayidx256, align 4
  %sleep = getelementptr inbounds %struct.dvb_frontend, ptr %41, i32 0, i32 1, i32 6
  %42 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sleep, align 4
  %fe_sleep = getelementptr %struct.mxl111sf_state, ptr %3, i32 0, i32 12, i32 1, i32 5
  %44 = ptrtoint ptr %fe_sleep to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %fe_sleep, align 4
  %45 = load ptr, ptr %arrayidx256, align 4
  %sleep278 = getelementptr inbounds %struct.dvb_frontend, ptr %45, i32 0, i32 1, i32 6
  %46 = ptrtoint ptr %sleep278 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @mxl111sf_adap_fe_sleep, ptr %sleep278, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then261, %if.end253.thread, %do.end223, %land.lhs.true217.cleanup_crit_edge, %do.end145, %land.lhs.true139.cleanup_crit_edge, %do.end125, %land.lhs.true119.cleanup_crit_edge, %do.end106, %land.lhs.true100.cleanup_crit_edge, %do.end87, %land.lhs.true81.cleanup_crit_edge, %do.end68, %land.lhs.true62.cleanup_crit_edge, %do.end48, %land.lhs.true42.cleanup_crit_edge, %do.end29, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then261 ], [ %call21, %do.end29 ], [ %call37, %do.end48 ], [ %call57, %do.end68 ], [ %call76, %do.end87 ], [ %call95, %do.end106 ], [ %call114, %do.end125 ], [ %call134, %do.end145 ], [ %call179, %do.end223 ], [ %call21, %land.lhs.true.cleanup_crit_edge ], [ %call37, %land.lhs.true42.cleanup_crit_edge ], [ %call57, %land.lhs.true62.cleanup_crit_edge ], [ %call76, %land.lhs.true81.cleanup_crit_edge ], [ %call95, %land.lhs.true100.cleanup_crit_edge ], [ %call114, %land.lhs.true119.cleanup_crit_edge ], [ %call134, %land.lhs.true139.cleanup_crit_edge ], [ %call179, %land.lhs.true217.cleanup_crit_edge ], [ -5, %if.end253.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 262)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 262)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !91, !93, !95, !96, !97, !98, !100, !101, !103, !105, !107, !108, !109, !110, !111, !113, !114, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !147, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !186, !187, !188, !190, !192, !193, !194, !195, !197, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !217, !218, !220, !221, !223, !224, !226, !227, !228, !230, !232, !233, !235, !236, !238, !239, !241, !242, !244, !245, !247, !248, !250, !251, !253, !254, !255, !256, !257, !259, !261, !262, !264, !265, !267, !268, !270, !271, !273, !274, !276, !277, !279, !280, !282, !283, !285, !286, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !302, !303, !305, !306, !307, !308, !309, !311, !312, !313, !315, !316, !318, !320, !322, !324, !326, !328, !330, !332, !333, !334, !336, !338, !339, !341, !342, !343, !344, !345, !347, !349, !351, !352, !353, !354, !355, !357, !358, !359, !361, !362, !363, !365, !366, !367, !369, !370, !372, !373, !375, !376, !378, !379, !381, !382, !384, !385, !387, !388, !390, !391, !393, !394, !396, !397, !399, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !413, !414, !416, !417, !419, !420, !422, !423, !425, !426, !427, !429, !430, !431, !433, !434, !435, !437, !439, !440, !442, !444, !445, !447, !449, !450, !452, !454, !455, !457, !458, !460, !461, !463, !464, !466, !467, !469, !470, !472, !473, !475, !476, !478, !479, !481, !482, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !495, !496, !498, !499, !501, !503, !505, !506, !508, !509, !511, !513, !514, !516, !517, !519, !520, !522, !523, !525, !526, !528, !529, !531, !532, !534, !535, !537, !538, !540, !541, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !554, !555, !557, !558, !560, !562, !564, !565, !567}
!llvm.module.flags = !{!568, !569, !570, !571, !572, !573, !574, !575}
!llvm.ident = !{!576}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype388, !1, !"__UNIQUE_ID_debugtype388", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug389, !4, !"__UNIQUE_ID_debug389", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 26, i32 1}
!5 = !{ptr @__param_isoc, !6, !"__param_isoc", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 29, i32 1}
!7 = !{ptr @__UNIQUE_ID_isoctype390, !6, !"__UNIQUE_ID_isoctype390", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_isoc391, !9, !"__UNIQUE_ID_isoc391", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 30, i32 1}
!10 = !{ptr @__param_spi, !11, !"__param_spi", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 33, i32 1}
!12 = !{ptr @__UNIQUE_ID_spitype392, !11, !"__UNIQUE_ID_spitype392", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_spi393, !14, !"__UNIQUE_ID_spi393", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 34, i32 1}
!15 = !{ptr @__param_rfswitch, !16, !"__param_rfswitch", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 47, i32 1}
!17 = !{ptr @__UNIQUE_ID_rfswitchtype394, !16, !"__UNIQUE_ID_rfswitchtype394", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_rfswitch395, !19, !"__UNIQUE_ID_rfswitch395", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 48, i32 1}
!20 = !{ptr @__param_adapter_nr, !21, !"__param_adapter_nr", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 50, i32 1}
!22 = !{ptr @__UNIQUE_ID_adapter_nrtype396, !21, !"__UNIQUE_ID_adapter_nrtype396", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_adapter_nr397, !21, !"__UNIQUE_ID_adapter_nr397", i1 false, i1 false}
!24 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 60, i32 3}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mxl111sf_ctrl_msg._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @mxl111sf_ctrl_msg._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 64, i32 2}
!32 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mxl111sf_ctrl_msg.__UNIQUE_ID_ddebug398, !31, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 82, i32 2}
!36 = !{ptr @mxl111sf_ctrl_msg._entry.5, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mxl111sf_ctrl_msg._entry_ptr.7, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 98, i32 6}
!40 = !{ptr @mxl111sf_read_reg._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mxl111sf_read_reg._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 99, i32 3}
!44 = !{ptr @mxl111sf_read_reg._entry.9, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mxl111sf_read_reg._entry_ptr.11, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 106, i32 3}
!48 = !{ptr @mxl111sf_read_reg._entry.12, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @mxl111sf_read_reg._entry_ptr.14, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 111, i32 2}
!52 = !{ptr @mxl111sf_read_reg.__UNIQUE_ID_ddebug399, !51, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 121, i32 2}
!55 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mxl111sf_write_reg.__UNIQUE_ID_ddebug400, !54, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!57 = !{ptr @mxl111sf_write_reg._entry, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 124, i32 6}
!59 = !{ptr @mxl111sf_write_reg._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 125, i32 3}
!62 = !{ptr @mxl111sf_write_reg._entry.18, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mxl111sf_write_reg._entry_ptr.20, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 141, i32 7}
!66 = !{ptr @mxl111sf_write_reg_mask._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mxl111sf_write_reg_mask._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 142, i32 4}
!70 = !{ptr @mxl111sf_write_reg_mask._entry.22, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mxl111sf_write_reg_mask._entry_ptr.24, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @mxl111sf_write_reg_mask._entry.25, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 147, i32 7}
!74 = !{ptr @mxl111sf_write_reg_mask._entry_ptr.26, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @mxl111sf_write_reg_mask._entry.27, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 154, i32 2}
!77 = !{ptr @mxl111sf_write_reg_mask._entry_ptr.28, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 174, i32 7}
!80 = !{ptr @mxl111sf_ctrl_program_regs._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @mxl111sf_ctrl_program_regs._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 175, i32 4}
!84 = !{ptr @mxl111sf_ctrl_program_regs._entry.30, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @mxl111sf_ctrl_program_regs._entry_ptr.32, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @__initcall__kmod_dvb_usb_mxl111sf__426_1461_mxl111sf_usb_driver_init6, !87, !"__initcall__kmod_dvb_usb_mxl111sf__426_1461_mxl111sf_usb_driver_init6", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1461, i32 1}
!88 = !{ptr @__exitcall_mxl111sf_usb_driver_exit, !87, !"__exitcall_mxl111sf_usb_driver_exit", i1 false, i1 false}
!89 = !{ptr @__UNIQUE_ID_author427, !90, !"__UNIQUE_ID_author427", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1463, i32 1}
!91 = !{ptr @__UNIQUE_ID_description428, !92, !"__UNIQUE_ID_description428", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1464, i32 1}
!93 = !{ptr @__UNIQUE_ID_version429, !94, !"__UNIQUE_ID_version429", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1465, i32 1}
!95 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @__modver_attr, !94, !"__modver_attr", i1 false, i1 false}
!98 = !{ptr @__UNIQUE_ID_file430, !99, !"__UNIQUE_ID_file430", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1466, i32 1}
!100 = !{ptr @__UNIQUE_ID_license431, !99, !"__UNIQUE_ID_license431", i1 false, i1 false}
!101 = !{ptr @dvb_usb_mxl111sf_debug, !102, !"dvb_usb_mxl111sf_debug", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 24, i32 5}
!103 = !{ptr @dvb_usb_mxl111sf_isoc, !104, !"dvb_usb_mxl111sf_isoc", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 28, i32 12}
!105 = !{ptr @dvb_usb_mxl111sf_spi, !106, !"dvb_usb_mxl111sf_spi", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 32, i32 12}
!107 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!108 = !{ptr @__param_str_isoc, !6, !"__param_str_isoc", i1 false, i1 false}
!109 = !{ptr @__param_str_spi, !11, !"__param_str_spi", i1 false, i1 false}
!110 = !{ptr @__param_str_rfswitch, !16, !"__param_str_rfswitch", i1 false, i1 false}
!111 = !{ptr @dvb_usb_mxl111sf_rfswitch, !112, !"dvb_usb_mxl111sf_rfswitch", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 40, i32 12}
!113 = !{ptr @__param_str_adapter_nr, !21, !"__param_str_adapter_nr", i1 false, i1 false}
!114 = !{ptr @__param_arr_adapter_nr, !21, !"__param_arr_adapter_nr", i1 false, i1 false}
!115 = !{ptr @adapter_nr, !21, !"adapter_nr", i1 false, i1 false}
!116 = !{ptr @mxl111sf_usb_driver, !117, !"mxl111sf_usb_driver", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1450, i32 26}
!118 = !{ptr @.str.35, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1412, i32 4}
!120 = !{ptr @.str.36, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1413, i32 4}
!122 = !{ptr @.str.38, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1414, i32 4}
!124 = !{ptr @.str.41, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1416, i32 4}
!126 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1423, i32 4}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1425, i32 4}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1427, i32 4}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1431, i32 4}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1432, i32 4}
!136 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1440, i32 4}
!138 = !{ptr @.str.73, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1441, i32 4}
!140 = !{ptr @mxl111sf_id_table, !141, !"mxl111sf_id_table", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1411, i32 35}
!142 = !{ptr @mxl111sf_props_atsc_mh, !143, !"mxl111sf_props_atsc_mh", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1236, i32 41}
!144 = !{ptr @mxl111sf_probe.__key, !145, !"__key", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1079, i32 2}
!146 = !{ptr @.str.79, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @mxl111sf_i2c_algo, !148, !"mxl111sf_i2c_algo", i1 false, i1 false}
!148 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 914, i32 29}
!149 = !{ptr @.str.80, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 980, i32 2}
!151 = !{ptr @.str.81, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @mxl111sf_frontend_attach_atsc_mh.__UNIQUE_ID_ddebug412, !150, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!153 = !{ptr @.str.82, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 432, i32 2}
!155 = !{ptr @.str.83, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @mxl111sf_lgdt3305_frontend_attach.__UNIQUE_ID_ddebug406, !154, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!157 = !{ptr @.str.84, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 440, i32 3}
!159 = !{ptr @mxl111sf_lgdt3305_frontend_attach._entry, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @mxl111sf_lgdt3305_frontend_attach._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @mxl111sf_lgdt3305_frontend_attach._entry.85, !162, !"_entry", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 448, i32 6}
!163 = !{ptr @mxl111sf_lgdt3305_frontend_attach._entry_ptr.86, !162, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @mxl111sf_lgdt3305_frontend_attach._entry.87, !165, !"_entry", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 451, i32 6}
!166 = !{ptr @mxl111sf_lgdt3305_frontend_attach._entry_ptr.88, !165, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @mxl111sf_lgdt3305_frontend_attach._entry.89, !168, !"_entry", i1 false, i1 false}
!168 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 455, i32 6}
!169 = !{ptr @mxl111sf_lgdt3305_frontend_attach._entry_ptr.90, !168, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @mxl111sf_lgdt3305_frontend_attach._entry.91, !171, !"_entry", i1 false, i1 false}
!171 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 459, i32 6}
!172 = !{ptr @mxl111sf_lgdt3305_frontend_attach._entry_ptr.92, !171, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @mxl111sf_lgdt3305_frontend_attach._entry.93, !174, !"_entry", i1 false, i1 false}
!174 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 462, i32 6}
!175 = !{ptr @mxl111sf_lgdt3305_frontend_attach._entry_ptr.94, !174, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @mxl111sf_lgdt3305_frontend_attach._entry.95, !177, !"_entry", i1 false, i1 false}
!177 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 466, i32 6}
!178 = !{ptr @mxl111sf_lgdt3305_frontend_attach._entry_ptr.96, !177, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @mxl111sf_lgdt3305_frontend_attach._entry.97, !180, !"_entry", i1 false, i1 false}
!180 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 469, i32 6}
!181 = !{ptr @mxl111sf_lgdt3305_frontend_attach._entry_ptr.98, !180, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.99, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 472, i32 20}
!184 = !{ptr @.str.100, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.102, !183, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @mxl111sf_lgdt3305_frontend_attach._entry.101, !183, !"_entry", i1 false, i1 false}
!187 = !{ptr @mxl111sf_lgdt3305_frontend_attach._entry_ptr.103, !183, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @hauppauge_lgdt3305_config, !189, !"hauppauge_lgdt3305_config", i1 false, i1 false}
!189 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 414, i32 31}
!190 = !{ptr @.str.104, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 274, i32 3}
!192 = !{ptr @.str.105, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @mxl111sf_adap_fe_init._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @mxl111sf_adap_fe_init._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @mxl111sf_adap_fe_init.__UNIQUE_ID_ddebug401, !196, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!196 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 278, i32 2}
!197 = !{ptr @mxl111sf_adap_fe_init._entry.106, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 285, i32 3}
!199 = !{ptr @mxl111sf_adap_fe_init._entry_ptr.107, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @mxl111sf_adap_fe_init._entry.108, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 288, i32 2}
!202 = !{ptr @mxl111sf_adap_fe_init._entry_ptr.109, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @mxl111sf_adap_fe_init._entry.110, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 290, i32 2}
!205 = !{ptr @mxl111sf_adap_fe_init._entry_ptr.111, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @mxl111sf_adap_fe_init._entry.112, !207, !"_entry", i1 false, i1 false}
!207 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 293, i32 2}
!208 = !{ptr @mxl111sf_adap_fe_init._entry_ptr.113, !207, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @mxl111sf_adap_fe_init._entry.114, !210, !"_entry", i1 false, i1 false}
!210 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 295, i32 2}
!211 = !{ptr @mxl111sf_adap_fe_init._entry_ptr.115, !210, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @mxl111sf_adap_fe_init._entry.116, !213, !"_entry", i1 false, i1 false}
!213 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 297, i32 2}
!214 = !{ptr @mxl111sf_adap_fe_init._entry_ptr.117, !213, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @mxl111sf_adap_fe_init._entry.118, !216, !"_entry", i1 false, i1 false}
!216 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 303, i32 3}
!217 = !{ptr @mxl111sf_adap_fe_init._entry_ptr.119, !216, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @mxl111sf_adap_fe_init._entry.120, !219, !"_entry", i1 false, i1 false}
!219 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 306, i32 7}
!220 = !{ptr @mxl111sf_adap_fe_init._entry_ptr.121, !219, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @mxl111sf_adap_fe_init._entry.122, !222, !"_entry", i1 false, i1 false}
!222 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 309, i32 3}
!223 = !{ptr @mxl111sf_adap_fe_init._entry_ptr.123, !222, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.124, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 330, i32 3}
!226 = !{ptr @mxl111sf_adap_fe_sleep._entry, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @mxl111sf_adap_fe_sleep._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @mxl111sf_adap_fe_sleep.__UNIQUE_ID_ddebug402, !229, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!229 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 334, i32 2}
!230 = !{ptr @.str.125, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 750, i32 2}
!232 = !{ptr @mxl111sf_attach_demod.__UNIQUE_ID_ddebug410, !231, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!233 = !{ptr @mxl111sf_attach_demod._entry, !234, !"_entry", i1 false, i1 false}
!234 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 758, i32 3}
!235 = !{ptr @mxl111sf_attach_demod._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @mxl111sf_attach_demod._entry.126, !237, !"_entry", i1 false, i1 false}
!237 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 766, i32 6}
!238 = !{ptr @mxl111sf_attach_demod._entry_ptr.127, !237, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @mxl111sf_attach_demod._entry.128, !240, !"_entry", i1 false, i1 false}
!240 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 769, i32 6}
!241 = !{ptr @mxl111sf_attach_demod._entry_ptr.129, !240, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @mxl111sf_attach_demod._entry.130, !243, !"_entry", i1 false, i1 false}
!243 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 773, i32 6}
!244 = !{ptr @mxl111sf_attach_demod._entry_ptr.131, !243, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @mxl111sf_attach_demod._entry.132, !246, !"_entry", i1 false, i1 false}
!246 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 777, i32 6}
!247 = !{ptr @mxl111sf_attach_demod._entry_ptr.133, !246, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @mxl111sf_attach_demod._entry.134, !249, !"_entry", i1 false, i1 false}
!249 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 780, i32 6}
!250 = !{ptr @mxl111sf_attach_demod._entry_ptr.135, !249, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.136, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 786, i32 20}
!253 = !{ptr @.str.137, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.139, !252, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @mxl111sf_attach_demod._entry.138, !252, !"_entry", i1 false, i1 false}
!256 = !{ptr @mxl111sf_attach_demod._entry_ptr.140, !252, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @mxl_demod_config, !258, !"mxl_demod_config", i1 false, i1 false}
!258 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 737, i32 43}
!259 = !{ptr @.str.141, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 503, i32 2}
!261 = !{ptr @mxl111sf_lg2160_frontend_attach.__UNIQUE_ID_ddebug407, !260, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!262 = !{ptr @mxl111sf_lg2160_frontend_attach._entry, !263, !"_entry", i1 false, i1 false}
!263 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 511, i32 3}
!264 = !{ptr @mxl111sf_lg2160_frontend_attach._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @mxl111sf_lg2160_frontend_attach._entry.142, !266, !"_entry", i1 false, i1 false}
!266 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 519, i32 6}
!267 = !{ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.143, !266, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @mxl111sf_lg2160_frontend_attach._entry.144, !269, !"_entry", i1 false, i1 false}
!269 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 522, i32 6}
!270 = !{ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.145, !269, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @mxl111sf_lg2160_frontend_attach._entry.146, !272, !"_entry", i1 false, i1 false}
!272 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 526, i32 6}
!273 = !{ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.147, !272, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @mxl111sf_lg2160_frontend_attach._entry.148, !275, !"_entry", i1 false, i1 false}
!275 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 530, i32 6}
!276 = !{ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.149, !275, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @mxl111sf_lg2160_frontend_attach._entry.150, !278, !"_entry", i1 false, i1 false}
!278 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 533, i32 6}
!279 = !{ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.151, !278, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @mxl111sf_lg2160_frontend_attach._entry.152, !281, !"_entry", i1 false, i1 false}
!281 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 537, i32 6}
!282 = !{ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.153, !281, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @mxl111sf_lg2160_frontend_attach._entry.154, !284, !"_entry", i1 false, i1 false}
!284 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 540, i32 6}
!285 = !{ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.155, !284, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @mxl111sf_lg2160_frontend_attach._entry.156, !287, !"_entry", i1 false, i1 false}
!287 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 543, i32 8}
!288 = !{ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.157, !287, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.159, !287, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @mxl111sf_lg2160_frontend_attach._entry.158, !287, !"_entry", i1 false, i1 false}
!291 = !{ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.160, !287, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @mxl111sf_lg2160_frontend_attach._entry.161, !287, !"_entry", i1 false, i1 false}
!293 = !{ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.162, !287, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.164, !287, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @mxl111sf_lg2160_frontend_attach._entry.163, !287, !"_entry", i1 false, i1 false}
!296 = !{ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.165, !287, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.167, !287, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @mxl111sf_lg2160_frontend_attach._entry.166, !287, !"_entry", i1 false, i1 false}
!299 = !{ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.168, !287, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @mxl111sf_lg2160_frontend_attach._entry.169, !301, !"_entry", i1 false, i1 false}
!301 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 544, i32 6}
!302 = !{ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.170, !301, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.171, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 547, i32 20}
!305 = !{ptr @.str.172, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.174, !304, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @mxl111sf_lg2160_frontend_attach._entry.173, !304, !"_entry", i1 false, i1 false}
!308 = !{ptr @mxl111sf_lg2160_frontend_attach._entry_ptr.175, !304, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.176, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 195, i32 6}
!311 = !{ptr @mxl1x1sf_get_chip_info._entry, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @mxl1x1sf_get_chip_info._entry_ptr, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @mxl1x1sf_get_chip_info._entry.177, !314, !"_entry", i1 false, i1 false}
!314 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 200, i32 6}
!315 = !{ptr @mxl1x1sf_get_chip_info._entry_ptr.178, !314, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.179, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 206, i32 14}
!318 = !{ptr @.str.180, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 209, i32 14}
!320 = !{ptr @.str.181, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 212, i32 14}
!322 = !{ptr @.str.182, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 218, i32 13}
!324 = !{ptr @.str.183, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 222, i32 13}
!326 = !{ptr @.str.184, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 226, i32 13}
!328 = !{ptr @.str.185, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 230, i32 13}
!330 = !{ptr @.str.187, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 233, i32 2}
!332 = !{ptr @mxl1x1sf_get_chip_info._entry.186, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @mxl1x1sf_get_chip_info._entry_ptr.188, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @hauppauge_lg2160_config, !335, !"hauppauge_lg2160_config", i1 false, i1 false}
!335 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 488, i32 29}
!336 = !{ptr @.str.189, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 880, i32 2}
!338 = !{ptr @mxl111sf_attach_tuner.__UNIQUE_ID_ddebug411, !337, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!339 = !{ptr @.str.190, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 883, i32 7}
!341 = !{ptr @.str.191, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @.str.192, !340, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @mxl111sf_attach_tuner._entry, !340, !"_entry", i1 false, i1 false}
!344 = !{ptr @mxl111sf_attach_tuner._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.193, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 891, i32 22}
!347 = !{ptr @mxl_tuner_config, !348, !"mxl_tuner_config", i1 false, i1 false}
!348 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 861, i32 43}
!349 = !{ptr @.str.194, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 850, i32 4}
!351 = !{ptr @.str.195, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @mxl111sf_ant_hunt._entry, !350, !"_entry", i1 false, i1 false}
!353 = !{ptr @mxl111sf_ant_hunt._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.196, !350, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @mxl111sf_ant_hunt._entry.197, !356, !"_entry", i1 false, i1 false}
!356 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 854, i32 4}
!357 = !{ptr @mxl111sf_ant_hunt._entry_ptr.198, !356, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.199, !356, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @.str.200, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1225, i32 2}
!361 = !{ptr @.str.201, !360, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @mxl111sf_streaming_ctrl_atsc_mh.__UNIQUE_ID_ddebug421, !360, !"__UNIQUE_ID_ddebug421", i1 false, i1 false}
!363 = !{ptr @.str.202, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 352, i32 2}
!365 = !{ptr @.str.203, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @mxl111sf_ep6_streaming_ctrl.__UNIQUE_ID_ddebug403, !364, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!367 = !{ptr @mxl111sf_ep6_streaming_ctrl._entry, !368, !"_entry", i1 false, i1 false}
!368 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 356, i32 3}
!369 = !{ptr @mxl111sf_ep6_streaming_ctrl._entry_ptr, !368, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @mxl111sf_ep6_streaming_ctrl._entry.204, !371, !"_entry", i1 false, i1 false}
!371 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 360, i32 3}
!372 = !{ptr @mxl111sf_ep6_streaming_ctrl._entry_ptr.205, !371, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.206, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 402, i32 2}
!375 = !{ptr @mxl111sf_ep4_streaming_ctrl.__UNIQUE_ID_ddebug405, !374, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!376 = !{ptr @mxl111sf_ep4_streaming_ctrl._entry, !377, !"_entry", i1 false, i1 false}
!377 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 406, i32 3}
!378 = !{ptr @mxl111sf_ep4_streaming_ctrl._entry_ptr, !377, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.207, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 376, i32 2}
!381 = !{ptr @mxl111sf_ep5_streaming_ctrl.__UNIQUE_ID_ddebug404, !380, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!382 = !{ptr @mxl111sf_ep5_streaming_ctrl._entry, !383, !"_entry", i1 false, i1 false}
!383 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 380, i32 3}
!384 = !{ptr @mxl111sf_ep5_streaming_ctrl._entry_ptr, !383, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @mxl111sf_ep5_streaming_ctrl._entry.208, !386, !"_entry", i1 false, i1 false}
!386 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 383, i32 3}
!387 = !{ptr @mxl111sf_ep5_streaming_ctrl._entry_ptr.209, !386, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @mxl111sf_ep5_streaming_ctrl._entry.210, !389, !"_entry", i1 false, i1 false}
!389 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 385, i32 3}
!390 = !{ptr @mxl111sf_ep5_streaming_ctrl._entry_ptr.211, !389, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @mxl111sf_ep5_streaming_ctrl._entry.212, !392, !"_entry", i1 false, i1 false}
!392 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 388, i32 3}
!393 = !{ptr @mxl111sf_ep5_streaming_ctrl._entry_ptr.213, !392, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @mxl111sf_ep5_streaming_ctrl._entry.214, !395, !"_entry", i1 false, i1 false}
!395 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 392, i32 2}
!396 = !{ptr @mxl111sf_ep5_streaming_ctrl._entry_ptr.215, !395, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @mxl111sf_init.eeprom, !398, !"eeprom", i1 false, i1 false}
!398 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 926, i32 12}
!399 = !{ptr @.str.216, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 934, i32 8}
!401 = !{ptr @mxl111sf_init._entry, !400, !"_entry", i1 false, i1 false}
!402 = !{ptr @mxl111sf_init._entry_ptr, !400, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @mxl111sf_init._entry.217, !400, !"_entry", i1 false, i1 false}
!404 = !{ptr @mxl111sf_init._entry_ptr.218, !400, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @mxl111sf_init._entry.219, !400, !"_entry", i1 false, i1 false}
!406 = !{ptr @mxl111sf_init._entry_ptr.220, !400, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @mxl111sf_init._entry.221, !400, !"_entry", i1 false, i1 false}
!408 = !{ptr @mxl111sf_init._entry_ptr.222, !400, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @mxl111sf_init._entry.223, !400, !"_entry", i1 false, i1 false}
!410 = !{ptr @mxl111sf_init._entry_ptr.224, !400, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @mxl111sf_init._entry.225, !412, !"_entry", i1 false, i1 false}
!412 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 935, i32 6}
!413 = !{ptr @mxl111sf_init._entry_ptr.226, !412, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @mxl111sf_init._entry.227, !415, !"_entry", i1 false, i1 false}
!415 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 936, i32 3}
!416 = !{ptr @mxl111sf_init._entry_ptr.228, !415, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @mxl111sf_init.__key, !418, !"__key", i1 false, i1 false}
!418 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 938, i32 2}
!419 = !{ptr @.str.229, !418, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @mxl111sf_init._entry.230, !421, !"_entry", i1 false, i1 false}
!421 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 944, i32 6}
!422 = !{ptr @mxl111sf_init._entry_ptr.231, !421, !"_entry_ptr", i1 false, i1 false}
!423 = !{ptr @.str.232, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1199, i32 2}
!425 = !{ptr @.str.233, !424, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @mxl111sf_get_stream_config_atsc_mh.__UNIQUE_ID_ddebug420, !424, !"__UNIQUE_ID_ddebug420", i1 false, i1 false}
!427 = !{ptr @.str.234, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1046, i32 2}
!429 = !{ptr @.str.235, !428, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @mxl111sf_stream_config_isoc.__UNIQUE_ID_ddebug416, !428, !"__UNIQUE_ID_ddebug416", i1 false, i1 false}
!431 = !{ptr @.str.236, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1036, i32 2}
!433 = !{ptr @.str.237, !432, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @mxl111sf_stream_config_bulk.__UNIQUE_ID_ddebug415, !432, !"__UNIQUE_ID_ddebug415", i1 false, i1 false}
!435 = !{ptr @mxl111sf_props_atsc, !436, !"mxl111sf_props_atsc", i1 false, i1 false}
!436 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1125, i32 41}
!437 = !{ptr @.str.238, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1115, i32 2}
!439 = !{ptr @mxl111sf_get_stream_config_atsc.__UNIQUE_ID_ddebug418, !438, !"__UNIQUE_ID_ddebug418", i1 false, i1 false}
!440 = !{ptr @mxl111sf_props_mh, !441, !"mxl111sf_props_mh", i1 false, i1 false}
!441 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1167, i32 41}
!442 = !{ptr @.str.239, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1157, i32 2}
!444 = !{ptr @mxl111sf_get_stream_config_mh.__UNIQUE_ID_ddebug419, !443, !"__UNIQUE_ID_ddebug419", i1 false, i1 false}
!445 = !{ptr @mxl111sf_props_dvbt, !446, !"mxl111sf_props_dvbt", i1 false, i1 false}
!446 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1083, i32 41}
!447 = !{ptr @.str.240, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1065, i32 2}
!449 = !{ptr @mxl111sf_get_stream_config_dvbt.__UNIQUE_ID_ddebug417, !448, !"__UNIQUE_ID_ddebug417", i1 false, i1 false}
!450 = !{ptr @mxl111sf_props_mercury, !451, !"mxl111sf_props_mercury", i1 false, i1 false}
!451 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1315, i32 41}
!452 = !{ptr @.str.241, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1000, i32 2}
!454 = !{ptr @mxl111sf_frontend_attach_mercury.__UNIQUE_ID_ddebug413, !453, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!455 = !{ptr @.str.242, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 675, i32 2}
!457 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach.__UNIQUE_ID_ddebug409, !456, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!458 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry, !459, !"_entry", i1 false, i1 false}
!459 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 683, i32 3}
!460 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr, !459, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.243, !462, !"_entry", i1 false, i1 false}
!462 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 691, i32 6}
!463 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.244, !462, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.245, !465, !"_entry", i1 false, i1 false}
!465 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 694, i32 6}
!466 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.246, !465, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.247, !468, !"_entry", i1 false, i1 false}
!468 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 698, i32 6}
!469 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.248, !468, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.249, !471, !"_entry", i1 false, i1 false}
!471 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 702, i32 6}
!472 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.250, !471, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.251, !474, !"_entry", i1 false, i1 false}
!474 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 705, i32 6}
!475 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.252, !474, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.253, !477, !"_entry", i1 false, i1 false}
!477 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 709, i32 6}
!478 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.254, !477, !"_entry_ptr", i1 false, i1 false}
!479 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.255, !480, !"_entry", i1 false, i1 false}
!480 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 712, i32 6}
!481 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.256, !480, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.257, !483, !"_entry", i1 false, i1 false}
!483 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 715, i32 8}
!484 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.258, !483, !"_entry_ptr", i1 false, i1 false}
!485 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.259, !483, !"_entry", i1 false, i1 false}
!486 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.260, !483, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.261, !483, !"_entry", i1 false, i1 false}
!488 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.262, !483, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.263, !483, !"_entry", i1 false, i1 false}
!490 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.264, !483, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.265, !483, !"_entry", i1 false, i1 false}
!492 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.266, !483, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.267, !494, !"_entry", i1 false, i1 false}
!494 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 716, i32 6}
!495 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.268, !494, !"_entry_ptr", i1 false, i1 false}
!496 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry.269, !497, !"_entry", i1 false, i1 false}
!497 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 719, i32 20}
!498 = !{ptr @mxl111sf_lg2161_ep6_frontend_attach._entry_ptr.270, !497, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @hauppauge_lg2161_1040_ep6_config, !500, !"hauppauge_lg2161_1040_ep6_config", i1 false, i1 false}
!500 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 659, i32 29}
!501 = !{ptr @hauppauge_lg2161_1019_ep6_config, !502, !"hauppauge_lg2161_1019_ep6_config", i1 false, i1 false}
!502 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 650, i32 29}
!503 = !{ptr @.str.271, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1302, i32 2}
!505 = !{ptr @mxl111sf_streaming_ctrl_mercury.__UNIQUE_ID_ddebug423, !504, !"__UNIQUE_ID_ddebug423", i1 false, i1 false}
!506 = !{ptr @.str.272, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1270, i32 2}
!508 = !{ptr @mxl111sf_get_stream_config_mercury.__UNIQUE_ID_ddebug422, !507, !"__UNIQUE_ID_ddebug422", i1 false, i1 false}
!509 = !{ptr @mxl111sf_props_mercury_mh, !510, !"mxl111sf_props_mercury_mh", i1 false, i1 false}
!510 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1386, i32 41}
!511 = !{ptr @.str.273, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1020, i32 2}
!513 = !{ptr @mxl111sf_frontend_attach_mercury_mh.__UNIQUE_ID_ddebug414, !512, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!514 = !{ptr @.str.274, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 588, i32 2}
!516 = !{ptr @mxl111sf_lg2161_frontend_attach.__UNIQUE_ID_ddebug408, !515, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!517 = !{ptr @mxl111sf_lg2161_frontend_attach._entry, !518, !"_entry", i1 false, i1 false}
!518 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 596, i32 3}
!519 = !{ptr @mxl111sf_lg2161_frontend_attach._entry_ptr, !518, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @mxl111sf_lg2161_frontend_attach._entry.275, !521, !"_entry", i1 false, i1 false}
!521 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 604, i32 6}
!522 = !{ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.276, !521, !"_entry_ptr", i1 false, i1 false}
!523 = !{ptr @mxl111sf_lg2161_frontend_attach._entry.277, !524, !"_entry", i1 false, i1 false}
!524 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 607, i32 6}
!525 = !{ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.278, !524, !"_entry_ptr", i1 false, i1 false}
!526 = !{ptr @mxl111sf_lg2161_frontend_attach._entry.279, !527, !"_entry", i1 false, i1 false}
!527 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 611, i32 6}
!528 = !{ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.280, !527, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @mxl111sf_lg2161_frontend_attach._entry.281, !530, !"_entry", i1 false, i1 false}
!530 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 615, i32 6}
!531 = !{ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.282, !530, !"_entry_ptr", i1 false, i1 false}
!532 = !{ptr @mxl111sf_lg2161_frontend_attach._entry.283, !533, !"_entry", i1 false, i1 false}
!533 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 618, i32 6}
!534 = !{ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.284, !533, !"_entry_ptr", i1 false, i1 false}
!535 = !{ptr @mxl111sf_lg2161_frontend_attach._entry.285, !536, !"_entry", i1 false, i1 false}
!536 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 622, i32 6}
!537 = !{ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.286, !536, !"_entry_ptr", i1 false, i1 false}
!538 = !{ptr @mxl111sf_lg2161_frontend_attach._entry.287, !539, !"_entry", i1 false, i1 false}
!539 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 625, i32 6}
!540 = !{ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.288, !539, !"_entry_ptr", i1 false, i1 false}
!541 = !{ptr @mxl111sf_lg2161_frontend_attach._entry.289, !542, !"_entry", i1 false, i1 false}
!542 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 628, i32 8}
!543 = !{ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.290, !542, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @mxl111sf_lg2161_frontend_attach._entry.291, !542, !"_entry", i1 false, i1 false}
!545 = !{ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.292, !542, !"_entry_ptr", i1 false, i1 false}
!546 = !{ptr @mxl111sf_lg2161_frontend_attach._entry.293, !542, !"_entry", i1 false, i1 false}
!547 = !{ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.294, !542, !"_entry_ptr", i1 false, i1 false}
!548 = !{ptr @mxl111sf_lg2161_frontend_attach._entry.295, !542, !"_entry", i1 false, i1 false}
!549 = !{ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.296, !542, !"_entry_ptr", i1 false, i1 false}
!550 = !{ptr @mxl111sf_lg2161_frontend_attach._entry.297, !542, !"_entry", i1 false, i1 false}
!551 = !{ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.298, !542, !"_entry_ptr", i1 false, i1 false}
!552 = !{ptr @mxl111sf_lg2161_frontend_attach._entry.299, !553, !"_entry", i1 false, i1 false}
!553 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 629, i32 6}
!554 = !{ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.300, !553, !"_entry_ptr", i1 false, i1 false}
!555 = !{ptr @mxl111sf_lg2161_frontend_attach._entry.301, !556, !"_entry", i1 false, i1 false}
!556 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 632, i32 20}
!557 = !{ptr @mxl111sf_lg2161_frontend_attach._entry_ptr.302, !556, !"_entry_ptr", i1 false, i1 false}
!558 = !{ptr @hauppauge_lg2161_1040_config, !559, !"hauppauge_lg2161_1040_config", i1 false, i1 false}
!559 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 572, i32 29}
!560 = !{ptr @hauppauge_lg2161_1019_config, !561, !"hauppauge_lg2161_1019_config", i1 false, i1 false}
!561 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 563, i32 29}
!562 = !{ptr @.str.303, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1375, i32 2}
!564 = !{ptr @mxl111sf_streaming_ctrl_mercury_mh.__UNIQUE_ID_ddebug425, !563, !"__UNIQUE_ID_ddebug425", i1 false, i1 false}
!565 = !{ptr @.str.304, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf.c", i32 1349, i32 2}
!567 = !{ptr @mxl111sf_get_stream_config_mercury_mh.__UNIQUE_ID_ddebug424, !566, !"__UNIQUE_ID_ddebug424", i1 false, i1 false}
!568 = !{i32 1, !"wchar_size", i32 2}
!569 = !{i32 1, !"min_enum_size", i32 4}
!570 = !{i32 8, !"branch-target-enforcement", i32 0}
!571 = !{i32 8, !"sign-return-address", i32 0}
!572 = !{i32 8, !"sign-return-address-all", i32 0}
!573 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!574 = !{i32 7, !"uwtable", i32 1}
!575 = !{i32 7, !"frame-pointer", i32 2}
!576 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!577 = !{i64 2148350365, i64 2148350370, i64 2148350383, i64 2148350427, i64 2148350461, i64 2148350482}
!578 = !{!"auto-init"}
