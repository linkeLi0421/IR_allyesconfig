; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/af9005.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/af9005.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.dvb_usb_device = type { %struct.dvb_usb_device_properties, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, %struct.i2c_adapter, i32, [2 x %struct.dvb_usb_adapter], ptr, ptr, [64 x i8], %struct.delayed_work, i32, i32, ptr, ptr }
%struct.dvb_usb_device_properties = type { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, [12 x %struct.dvb_usb_device_description] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.af9005_device_state = type { i8, i32, [256 x i8] }
%struct.firmware = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [21 x i8] c"dvb_usb_af9005.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usb_af9005_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_af9005_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype386 = internal constant [34 x i8] c"dvb_usb_af9005.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug387 = internal constant [97 x i8] c"dvb_usb_af9005.parm=debug:set debugging level (1=info,xfer=2,rc=4,reg=8,i2c=16,fw=32 (or-able)).\00", section ".modinfo", align 1
@dvb_usb_af9005_led = dso_local global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_str_led = internal constant [19 x i8] c"dvb_usb_af9005.led\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_led = internal constant %struct.kernel_param { ptr @__param_str_led, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_af9005_led } }, section "__param", align 4
@__UNIQUE_ID_ledtype388 = internal constant [33 x i8] c"dvb_usb_af9005.parmtype=led:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_led389 = internal constant [49 x i8] c"dvb_usb_af9005.parm=led:enable led (default: 1).\00", section ".modinfo", align 1
@__param_str_dump_eeprom = internal constant [27 x i8] c"dvb_usb_af9005.dump_eeprom\00", align 1
@dvb_usb_af9005_dump_eeprom = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dump_eeprom = internal constant %struct.kernel_param { ptr @__param_str_dump_eeprom, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_af9005_dump_eeprom } }, section "__param", align 4
@__UNIQUE_ID_dump_eepromtype390 = internal constant [40 x i8] c"dvb_usb_af9005.parmtype=dump_eeprom:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dump_eeprom391 = internal constant [61 x i8] c"dvb_usb_af9005.parm=dump_eeprom:dump contents of the eeprom.\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [26 x i8] c"dvb_usb_af9005.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype392 = internal constant [50 x i8] c"dvb_usb_af9005.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr393 = internal constant [51 x i8] c"dvb_usb_af9005.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@regmask = dso_local global { [8 x i8], [24 x i8] } { [8 x i8] c"\01\03\07\0F\1F?\7F\FF", [24 x i8] zeroinitializer }, align 32
@af9005_read_ofdm_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read register %x \00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"af9005_read_ofdm_register\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/usb/dvb-usb/af9005.c\00", [61 x i8] zeroinitializer }, align 32
@af9005_read_ofdm_register._entry_ptr = internal global ptr @af9005_read_ofdm_register._entry, section ".printk_index", align 4
@af9005_read_ofdm_register._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"failed\0A\00", [24 x i8] zeroinitializer }, align 32
@af9005_read_ofdm_register._entry_ptr.5 = internal global ptr @af9005_read_ofdm_register._entry.3, section ".printk_index", align 4
@af9005_read_ofdm_register._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"value %x\0A\00", [22 x i8] zeroinitializer }, align 32
@af9005_read_ofdm_register._entry_ptr.8 = internal global ptr @af9005_read_ofdm_register._entry.6, section ".printk_index", align 4
@af9005_read_ofdm_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"read %d registers %x \00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"af9005_read_ofdm_registers\00", [37 x i8] zeroinitializer }, align 32
@af9005_read_ofdm_registers._entry_ptr = internal global ptr @af9005_read_ofdm_registers._entry, section ".printk_index", align 4
@af9005_read_ofdm_registers._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.10, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_read_ofdm_registers._entry_ptr.12 = internal global ptr @af9005_read_ofdm_registers._entry.11, section ".printk_index", align 4
@af9005_read_ofdm_registers._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@af9005_read_ofdm_registers._entry_ptr.15 = internal global ptr @af9005_read_ofdm_registers._entry.13, section ".printk_index", align 4
@af9005_read_ofdm_registers._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@af9005_read_ofdm_registers._entry_ptr.18 = internal global ptr @af9005_read_ofdm_registers._entry.16, section ".printk_index", align 4
@af9005_write_ofdm_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"write register %x value %x \00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"af9005_write_ofdm_register\00", [37 x i8] zeroinitializer }, align 32
@af9005_write_ofdm_register._entry_ptr = internal global ptr @af9005_write_ofdm_register._entry, section ".printk_index", align 4
@af9005_write_ofdm_register._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.20, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_write_ofdm_register._entry_ptr.22 = internal global ptr @af9005_write_ofdm_register._entry.21, section ".printk_index", align 4
@af9005_write_ofdm_register._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ok\0A\00", [28 x i8] zeroinitializer }, align 32
@af9005_write_ofdm_register._entry_ptr.25 = internal global ptr @af9005_write_ofdm_register._entry.23, section ".printk_index", align 4
@af9005_write_ofdm_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"write %d registers %x values \00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"af9005_write_ofdm_registers\00", [36 x i8] zeroinitializer }, align 32
@af9005_write_ofdm_registers._entry_ptr = internal global ptr @af9005_write_ofdm_registers._entry, section ".printk_index", align 4
@af9005_write_ofdm_registers._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.27, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_write_ofdm_registers._entry_ptr.29 = internal global ptr @af9005_write_ofdm_registers._entry.28, section ".printk_index", align 4
@af9005_write_ofdm_registers._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.27, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_write_ofdm_registers._entry_ptr.31 = internal global ptr @af9005_write_ofdm_registers._entry.30, section ".printk_index", align 4
@af9005_write_ofdm_registers._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.27, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_write_ofdm_registers._entry_ptr.33 = internal global ptr @af9005_write_ofdm_registers._entry.32, section ".printk_index", align 4
@af9005_write_ofdm_registers._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.27, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_write_ofdm_registers._entry_ptr.35 = internal global ptr @af9005_write_ofdm_registers._entry.34, section ".printk_index", align 4
@af9005_read_register_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"read bits %x %x %x\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"af9005_read_register_bits\00", [38 x i8] zeroinitializer }, align 32
@af9005_read_register_bits._entry_ptr = internal global ptr @af9005_read_register_bits._entry, section ".printk_index", align 4
@af9005_read_register_bits._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" failed\0A\00", [23 x i8] zeroinitializer }, align 32
@af9005_read_register_bits._entry_ptr.40 = internal global ptr @af9005_read_register_bits._entry.38, section ".printk_index", align 4
@af9005_read_register_bits._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" value %x\0A\00", [21 x i8] zeroinitializer }, align 32
@af9005_read_register_bits._entry_ptr.43 = internal global ptr @af9005_read_register_bits._entry.41, section ".printk_index", align 4
@af9005_write_register_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"write bits %x %x %x value %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"af9005_write_register_bits\00", [37 x i8] zeroinitializer }, align 32
@af9005_write_register_bits._entry_ptr = internal global ptr @af9005_write_register_bits._entry, section ".printk_index", align 4
@af9005_send_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013af9005: send command, wlen less than 0 bytes. Makes no sense.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"af9005_send_command\00", [44 x i8] zeroinitializer }, align 32
@af9005_send_command._entry_ptr = internal global ptr @af9005_send_command._entry, section ".printk_index", align 4
@af9005_send_command._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013af9005: send command, wlen more than 54 bytes. Not supported.\0A\00", [63 x i8] zeroinitializer }, align 32
@af9005_send_command._entry_ptr.50 = internal global ptr @af9005_send_command._entry.48, section ".printk_index", align 4
@af9005_send_command._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013af9005: send command, rlen more than 54 bytes. Not supported.\0A\00", [63 x i8] zeroinitializer }, align 32
@af9005_send_command._entry_ptr.53 = internal global ptr @af9005_send_command._entry.51, section ".printk_index", align 4
@af9005_send_command._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.47, ptr @.str.2, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013af9005: send command, wrong reply code.\0A\00", [53 x i8] zeroinitializer }, align 32
@af9005_send_command._entry_ptr.56 = internal global ptr @af9005_send_command._entry.54, section ".printk_index", align 4
@af9005_send_command._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.47, ptr @.str.2, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013af9005: send command, wrong sequence in reply.\0A\00", [46 x i8] zeroinitializer }, align 32
@af9005_send_command._entry_ptr.59 = internal global ptr @af9005_send_command._entry.57, section ".printk_index", align 4
@af9005_send_command._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.47, ptr @.str.2, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013af9005: send command, wrong status code in reply.\0A\00", [43 x i8] zeroinitializer }, align 32
@af9005_send_command._entry_ptr.62 = internal global ptr @af9005_send_command._entry.60, section ".printk_index", align 4
@af9005_send_command._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.47, ptr @.str.2, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013af9005: send command, invalid data length in reply.\0A\00", [41 x i8] zeroinitializer }, align 32
@af9005_send_command._entry_ptr.65 = internal global ptr @af9005_send_command._entry.63, section ".printk_index", align 4
@af9005_read_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013af9005: Read eeprom, invalid reply code\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"af9005_read_eeprom\00", [45 x i8] zeroinitializer }, align 32
@af9005_read_eeprom._entry_ptr = internal global ptr @af9005_read_eeprom._entry, section ".printk_index", align 4
@af9005_read_eeprom._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013af9005: Read eeprom, invalid reply length\0A\00", [51 x i8] zeroinitializer }, align 32
@af9005_read_eeprom._entry_ptr.70 = internal global ptr @af9005_read_eeprom._entry.68, section ".printk_index", align 4
@af9005_read_eeprom._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.2, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013af9005: Read eeprom, wrong sequence in reply \0A\00", [47 x i8] zeroinitializer }, align 32
@af9005_read_eeprom._entry_ptr.73 = internal global ptr @af9005_read_eeprom._entry.71, section ".printk_index", align 4
@af9005_read_eeprom._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013af9005: Read eeprom, wrong status in reply \0A\00", [49 x i8] zeroinitializer }, align 32
@af9005_read_eeprom._entry_ptr.76 = internal global ptr @af9005_read_eeprom._entry.74, section ".printk_index", align 4
@rc_decode = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"af9005_rc_decode\00", [47 x i8] zeroinitializer }, align 32
@rc_keys = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rc_map_af9005_table\00", [44 x i8] zeroinitializer }, align 32
@rc_keys_size = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rc_map_af9005_table_size\00", [39 x i8] zeroinitializer }, align 32
@af9005_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.81, ptr @af9005_usb_probe, ptr @dvb_usb_device_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @af9005_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_dvb_usb_af9005__394_1131_af9005_usb_module_init6 = internal global ptr @af9005_usb_module_init, section ".initcall6.init", align 4
@__exitcall_af9005_usb_module_exit = internal global ptr @af9005_usb_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author395 = internal constant [55 x i8] c"dvb_usb_af9005.author=Luca Olivetti <luca@ventoso.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description396 = internal constant [70 x i8] c"dvb_usb_af9005.description=Driver for Afatech 9005 DVB-T USB1.1 stick\00", section ".modinfo", align 1
@__UNIQUE_ID_version397 = internal constant [27 x i8] c"dvb_usb_af9005.version=1.0\00", section ".modinfo", align 1
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_usb_af9005\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.80, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.81, ptr @.str.82 }, section "__modver", align 4
@__UNIQUE_ID_file398 = internal constant [61 x i8] c"dvb_usb_af9005.file=drivers/media/usb/dvb-usb/dvb-usb-af9005\00", section ".modinfo", align 1
@__UNIQUE_ID_license399 = internal constant [27 x i8] c"dvb_usb_af9005.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@af9005_generic_read_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013af9005: generic read/write, less than 1 byte. Makes no sense.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"af9005_generic_read_write\00", [38 x i8] zeroinitializer }, align 32
@af9005_generic_read_write._entry_ptr = internal global ptr @af9005_generic_read_write._entry, section ".printk_index", align 4
@af9005_generic_read_write._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013af9005: generic read/write, more than 8 bytes. Not supported.\0A\00", [63 x i8] zeroinitializer }, align 32
@af9005_generic_read_write._entry_ptr.87 = internal global ptr @af9005_generic_read_write._entry.85, section ".printk_index", align 4
@af9005_generic_read_write._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.84, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013af9005: generic read/write, wrong reply code.\0A\00", [47 x i8] zeroinitializer }, align 32
@af9005_generic_read_write._entry_ptr.90 = internal global ptr @af9005_generic_read_write._entry.88, section ".printk_index", align 4
@af9005_generic_read_write._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.84, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013af9005: generic read/write, wrong length in reply.\0A\00", [42 x i8] zeroinitializer }, align 32
@af9005_generic_read_write._entry_ptr.93 = internal global ptr @af9005_generic_read_write._entry.91, section ".printk_index", align 4
@af9005_generic_read_write._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.84, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013af9005: generic read/write, wrong sequence in reply.\0A\00", [40 x i8] zeroinitializer }, align 32
@af9005_generic_read_write._entry_ptr.96 = internal global ptr @af9005_generic_read_write._entry.94, section ".printk_index", align 4
@af9005_generic_read_write._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.84, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013af9005: generic read/write wrong status code in reply.\0A\00", [38 x i8] zeroinitializer }, align 32
@af9005_generic_read_write._entry_ptr.99 = internal global ptr @af9005_generic_read_write._entry.97, section ".printk_index", align 4
@af9005_usb_table = internal global { [4 x %struct.usb_device_id], [32 x i8] } { [4 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5540, i16 -28640, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3277, i16 85, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4281, i16 24576, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"af9005.fw\00", [22 x i8] zeroinitializer }, align 32
@af9005_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @af9005_i2c_xfer, ptr null, ptr null, ptr null, ptr @af9005_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Afatech DVB-T USB1.1 stick\00", [37 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TerraTec Cinergy T USB XE\00", [38 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Ansonic DVB-T USB1.1 stick\00", [37 x i8] zeroinitializer }, align 32
@af9005_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x %struct.dvb_usb_device_description] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x %struct.dvb_usb_device_description] }> } { i32 1, i32 0, ptr @af9005_download_firmware, ptr @.str.100, i32 1, i32 264, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr null, ptr null, ptr @af9005_pid_filter, ptr @af9005_frontend_attach, ptr null, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 10, i32 4, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @af9005_power_ctrl, ptr null, ptr @af9005_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy { ptr null, i32 0, ptr @af9005_rc_query, i32 200 }, %struct.dvb_rc zeroinitializer }, ptr @af9005_i2c_algo, i32 2, i32 1, i32 3, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x %struct.dvb_usb_device_description] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.101, <{ ptr, [14 x ptr] }> <{ ptr @af9005_usb_table, [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.102, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @af9005_usb_table, i64 24), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.103, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @af9005_usb_table, i64 48), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [9 x %struct.dvb_usb_device_description] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@af9005_download_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013af9005: before downloading firmware, FW_CONFIG expected 0x01, received 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"af9005_download_firmware\00", [39 x i8] zeroinitializer }, align 32
@af9005_download_firmware._entry_ptr = internal global ptr @af9005_download_firmware._entry, section ".printk_index", align 4
@af9005_download_firmware._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.2, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c">>> \00", [27 x i8] zeroinitializer }, align 32
@af9005_download_firmware._entry_ptr.109 = internal global ptr @af9005_download_firmware._entry.107, section ".printk_index", align 4
@af9005_download_firmware._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.106, ptr @.str.2, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_download_firmware._entry_ptr.111 = internal global ptr @af9005_download_firmware._entry.110, section ".printk_index", align 4
@af9005_download_firmware._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.106, ptr @.str.2, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_download_firmware._entry_ptr.113 = internal global ptr @af9005_download_firmware._entry.112, section ".printk_index", align 4
@af9005_download_firmware._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.106, ptr @.str.2, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013af9005: firmware download failed at packet %d with code %d\0A\00", [34 x i8] zeroinitializer }, align 32
@af9005_download_firmware._entry_ptr.116 = internal global ptr @af9005_download_firmware._entry.114, section ".printk_index", align 4
@af9005_download_firmware._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.106, ptr @.str.2, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013af9005: after downloading firmware, FW_CONFIRM expected 0x%x, received 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@af9005_download_firmware._entry_ptr.119 = internal global ptr @af9005_download_firmware._entry.117, section ".printk_index", align 4
@af9005_download_firmware._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.106, ptr @.str.2, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013af9005: after downloading firmware, FW_CONFIG expected 0x02, received 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@af9005_download_firmware._entry_ptr.122 = internal global ptr @af9005_download_firmware._entry.120, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@af9005_boot_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.2, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013af9005: boot packet invalid boot packet type\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"af9005_boot_packet\00", [45 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr = internal global ptr @af9005_boot_packet._entry, section ".printk_index", align 4
@af9005_boot_packet._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.124, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.126 = internal global ptr @af9005_boot_packet._entry.125, section ".printk_index", align 4
@af9005_boot_packet._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.124, ptr @.str.2, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.128 = internal global ptr @af9005_boot_packet._entry.127, section ".printk_index", align 4
@af9005_boot_packet._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.124, ptr @.str.2, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.130 = internal global ptr @af9005_boot_packet._entry.129, section ".printk_index", align 4
@af9005_boot_packet._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.124, ptr @.str.2, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013af9005: boot packet bulk message failed: %d (%d/%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.133 = internal global ptr @af9005_boot_packet._entry.131, section ".printk_index", align 4
@af9005_boot_packet._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.124, ptr @.str.2, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013af9005: boot packet recv bulk message failed: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.136 = internal global ptr @af9005_boot_packet._entry.134, section ".printk_index", align 4
@af9005_boot_packet._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.124, ptr @.str.2, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"<<< \00", [27 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.139 = internal global ptr @af9005_boot_packet._entry.137, section ".printk_index", align 4
@af9005_boot_packet._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.124, ptr @.str.2, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.141 = internal global ptr @af9005_boot_packet._entry.140, section ".printk_index", align 4
@af9005_boot_packet._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.124, ptr @.str.2, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.143 = internal global ptr @af9005_boot_packet._entry.142, section ".printk_index", align 4
@af9005_boot_packet._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.124, ptr @.str.2, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013af9005: boot bad config header.\0A\00", [61 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.146 = internal global ptr @af9005_boot_packet._entry.144, section ".printk_index", align 4
@af9005_boot_packet._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.124, ptr @.str.2, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013af9005: boot bad config size.\0A\00", [63 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.149 = internal global ptr @af9005_boot_packet._entry.147, section ".printk_index", align 4
@af9005_boot_packet._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.124, ptr @.str.2, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013af9005: boot bad config sequence.\0A\00", [59 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.152 = internal global ptr @af9005_boot_packet._entry.150, section ".printk_index", align 4
@af9005_boot_packet._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.124, ptr @.str.2, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013af9005: boot bad config subtype.\0A\00", [60 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.155 = internal global ptr @af9005_boot_packet._entry.153, section ".printk_index", align 4
@af9005_boot_packet._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.124, ptr @.str.2, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013af9005: boot bad config checksum.\0A\00", [59 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.158 = internal global ptr @af9005_boot_packet._entry.156, section ".printk_index", align 4
@af9005_boot_packet._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.124, ptr @.str.2, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013af9005: boot bad confirm header.\0A\00", [60 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.161 = internal global ptr @af9005_boot_packet._entry.159, section ".printk_index", align 4
@af9005_boot_packet._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.124, ptr @.str.2, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013af9005: boot bad confirm size.\0A\00", [62 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.164 = internal global ptr @af9005_boot_packet._entry.162, section ".printk_index", align 4
@af9005_boot_packet._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.124, ptr @.str.2, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013af9005: boot bad confirm sequence.\0A\00", [58 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.167 = internal global ptr @af9005_boot_packet._entry.165, section ".printk_index", align 4
@af9005_boot_packet._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.124, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013af9005: boot bad confirm subtype.\0A\00", [59 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.170 = internal global ptr @af9005_boot_packet._entry.168, section ".printk_index", align 4
@af9005_boot_packet._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.124, ptr @.str.2, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013af9005: boot bad confirm checksum.\0A\00", [58 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.173 = internal global ptr @af9005_boot_packet._entry.171, section ".printk_index", align 4
@af9005_boot_packet._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.124, ptr @.str.2, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013af9005: boot bad boot header.\0A\00", [63 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.176 = internal global ptr @af9005_boot_packet._entry.174, section ".printk_index", align 4
@af9005_boot_packet._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.124, ptr @.str.2, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013af9005: boot bad boot size.\0A\00", [33 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.179 = internal global ptr @af9005_boot_packet._entry.177, section ".printk_index", align 4
@af9005_boot_packet._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.124, ptr @.str.2, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013af9005: boot bad boot sequence.\0A\00", [61 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.182 = internal global ptr @af9005_boot_packet._entry.180, section ".printk_index", align 4
@af9005_boot_packet._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.124, ptr @.str.2, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013af9005: boot bad boot pattern 01.\0A\00", [59 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.185 = internal global ptr @af9005_boot_packet._entry.183, section ".printk_index", align 4
@af9005_boot_packet._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.124, ptr @.str.2, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013af9005: boot bad boot pattern 10.\0A\00", [59 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.188 = internal global ptr @af9005_boot_packet._entry.186, section ".printk_index", align 4
@af9005_boot_packet._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.124, ptr @.str.2, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013af9005: boot bad boot checksum.\0A\00", [61 x i8] zeroinitializer }, align 32
@af9005_boot_packet._entry_ptr.191 = internal global ptr @af9005_boot_packet._entry.189, section ".printk_index", align 4
@af9005_pid_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.193, ptr @.str.2, i32 919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"set pid filter, index %d, pid %x, onoff %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"af9005_pid_filter\00", [46 x i8] zeroinitializer }, align 32
@af9005_pid_filter._entry_ptr = internal global ptr @af9005_pid_filter._entry, section ".printk_index", align 4
@af9005_pid_filter._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.193, ptr @.str.2, i32 924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"first pid set, enable pid table\0A\00", [63 x i8] zeroinitializer }, align 32
@af9005_pid_filter._entry_ptr.196 = internal global ptr @af9005_pid_filter._entry.194, section ".printk_index", align 4
@af9005_pid_filter._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.193, ptr @.str.2, i32 944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"last pid unset, disable pid table\0A\00", [61 x i8] zeroinitializer }, align 32
@af9005_pid_filter._entry_ptr.199 = internal global ptr @af9005_pid_filter._entry.197, section ".printk_index", align 4
@af9005_pid_filter._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.193, ptr @.str.2, i32 953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"set pid ok\0A\00", [20 x i8] zeroinitializer }, align 32
@af9005_pid_filter._entry_ptr.202 = internal global ptr @af9005_pid_filter._entry.200, section ".printk_index", align 4
@af9005_pid_filter_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.204, ptr @.str.2, i32 891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pid filter control  onoff %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"af9005_pid_filter_control\00", [38 x i8] zeroinitializer }, align 32
@af9005_pid_filter_control._entry_ptr = internal global ptr @af9005_pid_filter_control._entry, section ".printk_index", align 4
@af9005_pid_filter_control._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.204, ptr @.str.2, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pid filter control ok\0A\00", [41 x i8] zeroinitializer }, align 32
@af9005_pid_filter_control._entry_ptr.207 = internal global ptr @af9005_pid_filter_control._entry.205, section ".printk_index", align 4
@af9005_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.209, ptr @.str.2, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EEPROM DUMP\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"af9005_frontend_attach\00", [41 x i8] zeroinitializer }, align 32
@af9005_frontend_attach._entry_ptr = internal global ptr @af9005_frontend_attach._entry, section ".printk_index", align 4
@af9005_frontend_attach._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.209, ptr @.str.2, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_frontend_attach._entry_ptr.211 = internal global ptr @af9005_frontend_attach._entry.210, section ".printk_index", align 4
@af9005_frontend_attach._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.209, ptr @.str.2, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_frontend_attach._entry_ptr.213 = internal global ptr @af9005_frontend_attach._entry.212, section ".printk_index", align 4
@af9005_identify_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.2, i32 973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"result of FW_CONFIG in identify state %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"af9005_identify_state\00", [42 x i8] zeroinitializer }, align 32
@af9005_identify_state._entry_ptr = internal global ptr @af9005_identify_state._entry, section ".printk_index", align 4
@af9005_identify_state._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.215, ptr @.str.2, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Identify state cold = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@af9005_identify_state._entry_ptr.218 = internal global ptr @af9005_identify_state._entry.216, section ".printk_index", align 4
@af9005_rc_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.220, ptr @.str.2, i32 845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013af9005: rc query failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"af9005_rc_query\00", [16 x i8] zeroinitializer }, align 32
@af9005_rc_query._entry_ptr = internal global ptr @af9005_rc_query._entry, section ".printk_index", align 4
@af9005_rc_query._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.220, ptr @.str.2, i32 849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013af9005: rc query bad header.\0A\00", [32 x i8] zeroinitializer }, align 32
@af9005_rc_query._entry_ptr.223 = internal global ptr @af9005_rc_query._entry.221, section ".printk_index", align 4
@af9005_rc_query._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.220, ptr @.str.2, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013af9005: rc query bad sequence.\0A\00", [62 x i8] zeroinitializer }, align 32
@af9005_rc_query._entry_ptr.226 = internal global ptr @af9005_rc_query._entry.224, section ".printk_index", align 4
@af9005_rc_query._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.220, ptr @.str.2, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013af9005: rc query invalid length\0A\00", [61 x i8] zeroinitializer }, align 32
@af9005_rc_query._entry_ptr.229 = internal global ptr @af9005_rc_query._entry.227, section ".printk_index", align 4
@af9005_rc_query._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.220, ptr @.str.2, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rc data (%d) \00", [18 x i8] zeroinitializer }, align 32
@af9005_rc_query._entry_ptr.232 = internal global ptr @af9005_rc_query._entry.230, section ".printk_index", align 4
@af9005_rc_query._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.220, ptr @.str.2, i32 865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_rc_query._entry_ptr.234 = internal global ptr @af9005_rc_query._entry.233, section ".printk_index", align 4
@af9005_rc_query._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.220, ptr @.str.2, i32 865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_rc_query._entry_ptr.236 = internal global ptr @af9005_rc_query._entry.235, section ".printk_index", align 4
@af9005_rc_query._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.220, ptr @.str.2, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013af9005: rc_decode failed\0A\00", [36 x i8] zeroinitializer }, align 32
@af9005_rc_query._entry_ptr.239 = internal global ptr @af9005_rc_query._entry.237, section ".printk_index", align 4
@af9005_rc_query._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.220, ptr @.str.2, i32 871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rc_decode state %x event %x\0A\00", [35 x i8] zeroinitializer }, align 32
@af9005_rc_query._entry_ptr.242 = internal global ptr @af9005_rc_query._entry.240, section ".printk_index", align 4
@af9005_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.244, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014af9005: more than 2 i2c messages at a time is not handled yet. TODO.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"af9005_i2c_xfer\00", [16 x i8] zeroinitializer }, align 32
@af9005_i2c_xfer._entry_ptr = internal global ptr @af9005_i2c_xfer._entry, section ".printk_index", align 4
@af9005_i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.246, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"i2c_read i2caddr %x, reg %x, len %d\0A \00", [58 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"af9005_i2c_read\00", [16 x i8] zeroinitializer }, align 32
@af9005_i2c_read._entry_ptr = internal global ptr @af9005_i2c_read._entry, section ".printk_index", align 4
@af9005_i2c_read._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.246, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i2c_read failed\0A\00", [47 x i8] zeroinitializer }, align 32
@af9005_i2c_read._entry_ptr.249 = internal global ptr @af9005_i2c_read._entry.247, section ".printk_index", align 4
@af9005_i2c_read._entry.250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.246, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2c data read: \00", [16 x i8] zeroinitializer }, align 32
@af9005_i2c_read._entry_ptr.252 = internal global ptr @af9005_i2c_read._entry.250, section ".printk_index", align 4
@af9005_i2c_read._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.246, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_i2c_read._entry_ptr.254 = internal global ptr @af9005_i2c_read._entry.253, section ".printk_index", align 4
@af9005_i2c_read._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.246, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_i2c_read._entry_ptr.256 = internal global ptr @af9005_i2c_read._entry.255, section ".printk_index", align 4
@af9005_i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.258, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"i2c_write i2caddr %x, reg %x, len %d data \00", [53 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"af9005_i2c_write\00", [47 x i8] zeroinitializer }, align 32
@af9005_i2c_write._entry_ptr = internal global ptr @af9005_i2c_write._entry, section ".printk_index", align 4
@af9005_i2c_write._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.258, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_i2c_write._entry_ptr.260 = internal global ptr @af9005_i2c_write._entry.259, section ".printk_index", align 4
@af9005_i2c_write._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.258, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_i2c_write._entry_ptr.262 = internal global ptr @af9005_i2c_write._entry.261, section ".printk_index", align 4
@af9005_i2c_write._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.258, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c_write failed\0A\00", [46 x i8] zeroinitializer }, align 32
@af9005_i2c_write._entry_ptr.265 = internal global ptr @af9005_i2c_write._entry.263, section ".printk_index", align 4
@af9005_i2c_write._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.258, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_write ok\0A\00", [18 x i8] zeroinitializer }, align 32
@af9005_i2c_write._entry_ptr.268 = internal global ptr @af9005_i2c_write._entry.266, section ".printk_index", align 4
@af9005_usb_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.270, ptr @.str.2, i32 1098, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013af9005: usb_register failed. (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"af9005_usb_module_init\00", [41 x i8] zeroinitializer }, align 32
@af9005_usb_module_init._entry_ptr = internal global ptr @af9005_usb_module_init._entry, section ".printk_index", align 4
@.str.271 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"symbol:af9005_rc_decode\00", [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"symbol:rc_map_af9005_table\00", [37 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"symbol:rc_map_af9005_table_size\00", [32 x i8] zeroinitializer }, align 32
@af9005_usb_module_init._entry.274 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.270, ptr @.str.2, i32 1108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013af9005: af9005_rc_decode function not found, disabling remote\0A\00", [63 x i8] zeroinitializer }, align 32
@af9005_usb_module_init._entry_ptr.276 = internal global ptr @af9005_usb_module_init._entry.274, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.277 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.278 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.279 = private unnamed_addr constant [21 x i8] c"dvb_usb_af9005_debug\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 14, i32 5 }
@___asan_gen_.282 = private unnamed_addr constant [19 x i8] c"dvb_usb_af9005_led\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 20, i32 6 }
@___asan_gen_.285 = private unnamed_addr constant [27 x i8] c"dvb_usb_af9005_dump_eeprom\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 25, i32 12 }
@___asan_gen_.288 = private unnamed_addr constant [8 x i8] c"regmask\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 37, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 137, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 142, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 144, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 152, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 157, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 159, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 167, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 172, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 174, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 182, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 183, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 189, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 191, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 200, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 203, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 207, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 217, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 457, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 461, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 465, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 484, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 487, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 490, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 493, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 531, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 534, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 537, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 540, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant [10 x i8] c"rc_decode\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 32, i32 14 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1122, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant [8 x i8] c"rc_keys\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 34, i32 14 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1124, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant [13 x i8] c"rc_keys_size\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 35, i32 13 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1126, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant [18 x i8] c"af9005_usb_driver\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1086, i32 26 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1136, i32 1 }
@___asan_gen_.510 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 29, i32 1 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 53, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 57, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 97, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 102, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 107, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 119, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant [17 x i8] c"af9005_usb_table\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1003, i32 29 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1019, i32 14 }
@___asan_gen_.558 = private unnamed_addr constant [16 x i8] c"af9005_i2c_algo\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 443, i32 29 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1069, i32 16 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1073, i32 16 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1077, i32 16 }
@___asan_gen_.570 = private unnamed_addr constant [18 x i8] c"af9005_properties\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1015, i32 41 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 724, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 734, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 735, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 740, i32 4 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 749, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 762, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 597, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 600, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 601, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 607, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 617, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 620, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 621, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 626, i32 4 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 630, i32 4 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 634, i32 4 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 638, i32 4 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 644, i32 4 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 651, i32 4 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 655, i32 4 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 659, i32 4 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 663, i32 4 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 669, i32 4 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 676, i32 4 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 680, i32 4 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 684, i32 4 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 688, i32 4 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 692, i32 4 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 698, i32 4 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 918, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 924, i32 4 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 944, i32 4 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 953, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 891, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 909, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 813, i32 3 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 816, i32 4 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 973, i32 2 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 981, i32 3 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 845, i32 3 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 849, i32 3 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 853, i32 3 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 859, i32 3 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 864, i32 3 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 865, i32 3 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 868, i32 4 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 871, i32 4 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 414, i32 3 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 382, i32 2 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 390, i32 4 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 395, i32 2 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 396, i32 2 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 356, i32 2 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 358, i32 2 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 369, i32 4 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 373, i32 2 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1098, i32 3 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1103, i32 14 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1104, i32 12 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1105, i32 17 }
@___asan_gen_.954 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.957 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.958 = private constant [38 x i8] c"../drivers/media/usb/dvb-usb/af9005.c\00", align 1
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1108, i32 3 }
@llvm.compiler.used = appending global [349 x ptr] [ptr @__UNIQUE_ID_adapter_nr393, ptr @__UNIQUE_ID_adapter_nrtype392, ptr @__UNIQUE_ID_author395, ptr @__UNIQUE_ID_debug387, ptr @__UNIQUE_ID_debugtype386, ptr @__UNIQUE_ID_description396, ptr @__UNIQUE_ID_dump_eeprom391, ptr @__UNIQUE_ID_dump_eepromtype390, ptr @__UNIQUE_ID_file398, ptr @__UNIQUE_ID_led389, ptr @__UNIQUE_ID_ledtype388, ptr @__UNIQUE_ID_license399, ptr @__UNIQUE_ID_version397, ptr @__exitcall_af9005_usb_module_exit, ptr @__initcall__kmod_dvb_usb_af9005__394_1131_af9005_usb_module_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @__param_debug, ptr @__param_dump_eeprom, ptr @__param_led, ptr @af9005_boot_packet._entry, ptr @af9005_boot_packet._entry.125, ptr @af9005_boot_packet._entry.127, ptr @af9005_boot_packet._entry.129, ptr @af9005_boot_packet._entry.131, ptr @af9005_boot_packet._entry.134, ptr @af9005_boot_packet._entry.137, ptr @af9005_boot_packet._entry.140, ptr @af9005_boot_packet._entry.142, ptr @af9005_boot_packet._entry.144, ptr @af9005_boot_packet._entry.147, ptr @af9005_boot_packet._entry.150, ptr @af9005_boot_packet._entry.153, ptr @af9005_boot_packet._entry.156, ptr @af9005_boot_packet._entry.159, ptr @af9005_boot_packet._entry.162, ptr @af9005_boot_packet._entry.165, ptr @af9005_boot_packet._entry.168, ptr @af9005_boot_packet._entry.171, ptr @af9005_boot_packet._entry.174, ptr @af9005_boot_packet._entry.177, ptr @af9005_boot_packet._entry.180, ptr @af9005_boot_packet._entry.183, ptr @af9005_boot_packet._entry.186, ptr @af9005_boot_packet._entry.189, ptr @af9005_boot_packet._entry_ptr, ptr @af9005_boot_packet._entry_ptr.126, ptr @af9005_boot_packet._entry_ptr.128, ptr @af9005_boot_packet._entry_ptr.130, ptr @af9005_boot_packet._entry_ptr.133, ptr @af9005_boot_packet._entry_ptr.136, ptr @af9005_boot_packet._entry_ptr.139, ptr @af9005_boot_packet._entry_ptr.141, ptr @af9005_boot_packet._entry_ptr.143, ptr @af9005_boot_packet._entry_ptr.146, ptr @af9005_boot_packet._entry_ptr.149, ptr @af9005_boot_packet._entry_ptr.152, ptr @af9005_boot_packet._entry_ptr.155, ptr @af9005_boot_packet._entry_ptr.158, ptr @af9005_boot_packet._entry_ptr.161, ptr @af9005_boot_packet._entry_ptr.164, ptr @af9005_boot_packet._entry_ptr.167, ptr @af9005_boot_packet._entry_ptr.170, ptr @af9005_boot_packet._entry_ptr.173, ptr @af9005_boot_packet._entry_ptr.176, ptr @af9005_boot_packet._entry_ptr.179, ptr @af9005_boot_packet._entry_ptr.182, ptr @af9005_boot_packet._entry_ptr.185, ptr @af9005_boot_packet._entry_ptr.188, ptr @af9005_boot_packet._entry_ptr.191, ptr @af9005_download_firmware._entry, ptr @af9005_download_firmware._entry.107, ptr @af9005_download_firmware._entry.110, ptr @af9005_download_firmware._entry.112, ptr @af9005_download_firmware._entry.114, ptr @af9005_download_firmware._entry.117, ptr @af9005_download_firmware._entry.120, ptr @af9005_download_firmware._entry_ptr, ptr @af9005_download_firmware._entry_ptr.109, ptr @af9005_download_firmware._entry_ptr.111, ptr @af9005_download_firmware._entry_ptr.113, ptr @af9005_download_firmware._entry_ptr.116, ptr @af9005_download_firmware._entry_ptr.119, ptr @af9005_download_firmware._entry_ptr.122, ptr @af9005_frontend_attach._entry, ptr @af9005_frontend_attach._entry.210, ptr @af9005_frontend_attach._entry.212, ptr @af9005_frontend_attach._entry_ptr, ptr @af9005_frontend_attach._entry_ptr.211, ptr @af9005_frontend_attach._entry_ptr.213, ptr @af9005_generic_read_write._entry, ptr @af9005_generic_read_write._entry.85, ptr @af9005_generic_read_write._entry.88, ptr @af9005_generic_read_write._entry.91, ptr @af9005_generic_read_write._entry.94, ptr @af9005_generic_read_write._entry.97, ptr @af9005_generic_read_write._entry_ptr, ptr @af9005_generic_read_write._entry_ptr.87, ptr @af9005_generic_read_write._entry_ptr.90, ptr @af9005_generic_read_write._entry_ptr.93, ptr @af9005_generic_read_write._entry_ptr.96, ptr @af9005_generic_read_write._entry_ptr.99, ptr @af9005_i2c_read._entry, ptr @af9005_i2c_read._entry.247, ptr @af9005_i2c_read._entry.250, ptr @af9005_i2c_read._entry.253, ptr @af9005_i2c_read._entry.255, ptr @af9005_i2c_read._entry_ptr, ptr @af9005_i2c_read._entry_ptr.249, ptr @af9005_i2c_read._entry_ptr.252, ptr @af9005_i2c_read._entry_ptr.254, ptr @af9005_i2c_read._entry_ptr.256, ptr @af9005_i2c_write._entry, ptr @af9005_i2c_write._entry.259, ptr @af9005_i2c_write._entry.261, ptr @af9005_i2c_write._entry.263, ptr @af9005_i2c_write._entry.266, ptr @af9005_i2c_write._entry_ptr, ptr @af9005_i2c_write._entry_ptr.260, ptr @af9005_i2c_write._entry_ptr.262, ptr @af9005_i2c_write._entry_ptr.265, ptr @af9005_i2c_write._entry_ptr.268, ptr @af9005_i2c_xfer._entry, ptr @af9005_i2c_xfer._entry_ptr, ptr @af9005_identify_state._entry, ptr @af9005_identify_state._entry.216, ptr @af9005_identify_state._entry_ptr, ptr @af9005_identify_state._entry_ptr.218, ptr @af9005_pid_filter._entry, ptr @af9005_pid_filter._entry.194, ptr @af9005_pid_filter._entry.197, ptr @af9005_pid_filter._entry.200, ptr @af9005_pid_filter._entry_ptr, ptr @af9005_pid_filter._entry_ptr.196, ptr @af9005_pid_filter._entry_ptr.199, ptr @af9005_pid_filter._entry_ptr.202, ptr @af9005_pid_filter_control._entry, ptr @af9005_pid_filter_control._entry.205, ptr @af9005_pid_filter_control._entry_ptr, ptr @af9005_pid_filter_control._entry_ptr.207, ptr @af9005_rc_query._entry, ptr @af9005_rc_query._entry.221, ptr @af9005_rc_query._entry.224, ptr @af9005_rc_query._entry.227, ptr @af9005_rc_query._entry.230, ptr @af9005_rc_query._entry.233, ptr @af9005_rc_query._entry.235, ptr @af9005_rc_query._entry.237, ptr @af9005_rc_query._entry.240, ptr @af9005_rc_query._entry_ptr, ptr @af9005_rc_query._entry_ptr.223, ptr @af9005_rc_query._entry_ptr.226, ptr @af9005_rc_query._entry_ptr.229, ptr @af9005_rc_query._entry_ptr.232, ptr @af9005_rc_query._entry_ptr.234, ptr @af9005_rc_query._entry_ptr.236, ptr @af9005_rc_query._entry_ptr.239, ptr @af9005_rc_query._entry_ptr.242, ptr @af9005_read_eeprom._entry, ptr @af9005_read_eeprom._entry.68, ptr @af9005_read_eeprom._entry.71, ptr @af9005_read_eeprom._entry.74, ptr @af9005_read_eeprom._entry_ptr, ptr @af9005_read_eeprom._entry_ptr.70, ptr @af9005_read_eeprom._entry_ptr.73, ptr @af9005_read_eeprom._entry_ptr.76, ptr @af9005_read_ofdm_register._entry, ptr @af9005_read_ofdm_register._entry.3, ptr @af9005_read_ofdm_register._entry.6, ptr @af9005_read_ofdm_register._entry_ptr, ptr @af9005_read_ofdm_register._entry_ptr.5, ptr @af9005_read_ofdm_register._entry_ptr.8, ptr @af9005_read_ofdm_registers._entry, ptr @af9005_read_ofdm_registers._entry.11, ptr @af9005_read_ofdm_registers._entry.13, ptr @af9005_read_ofdm_registers._entry.16, ptr @af9005_read_ofdm_registers._entry_ptr, ptr @af9005_read_ofdm_registers._entry_ptr.12, ptr @af9005_read_ofdm_registers._entry_ptr.15, ptr @af9005_read_ofdm_registers._entry_ptr.18, ptr @af9005_read_register_bits._entry, ptr @af9005_read_register_bits._entry.38, ptr @af9005_read_register_bits._entry.41, ptr @af9005_read_register_bits._entry_ptr, ptr @af9005_read_register_bits._entry_ptr.40, ptr @af9005_read_register_bits._entry_ptr.43, ptr @af9005_send_command._entry, ptr @af9005_send_command._entry.48, ptr @af9005_send_command._entry.51, ptr @af9005_send_command._entry.54, ptr @af9005_send_command._entry.57, ptr @af9005_send_command._entry.60, ptr @af9005_send_command._entry.63, ptr @af9005_send_command._entry_ptr, ptr @af9005_send_command._entry_ptr.50, ptr @af9005_send_command._entry_ptr.53, ptr @af9005_send_command._entry_ptr.56, ptr @af9005_send_command._entry_ptr.59, ptr @af9005_send_command._entry_ptr.62, ptr @af9005_send_command._entry_ptr.65, ptr @af9005_usb_module_exit, ptr @af9005_usb_module_init._entry, ptr @af9005_usb_module_init._entry.274, ptr @af9005_usb_module_init._entry_ptr, ptr @af9005_usb_module_init._entry_ptr.276, ptr @af9005_write_ofdm_register._entry, ptr @af9005_write_ofdm_register._entry.21, ptr @af9005_write_ofdm_register._entry.23, ptr @af9005_write_ofdm_register._entry_ptr, ptr @af9005_write_ofdm_register._entry_ptr.22, ptr @af9005_write_ofdm_register._entry_ptr.25, ptr @af9005_write_ofdm_registers._entry, ptr @af9005_write_ofdm_registers._entry.28, ptr @af9005_write_ofdm_registers._entry.30, ptr @af9005_write_ofdm_registers._entry.32, ptr @af9005_write_ofdm_registers._entry.34, ptr @af9005_write_ofdm_registers._entry_ptr, ptr @af9005_write_ofdm_registers._entry_ptr.29, ptr @af9005_write_ofdm_registers._entry_ptr.31, ptr @af9005_write_ofdm_registers._entry_ptr.33, ptr @af9005_write_ofdm_registers._entry_ptr.35, ptr @af9005_write_register_bits._entry, ptr @af9005_write_register_bits._entry_ptr, ptr @dvb_usb_af9005_debug, ptr @dvb_usb_af9005_led, ptr @dvb_usb_af9005_dump_eeprom, ptr @regmask, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @rc_decode, ptr @.str.77, ptr @rc_keys, ptr @.str.78, ptr @rc_keys_size, ptr @.str.79, ptr @af9005_usb_driver, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @adapter_nr, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @af9005_usb_table, ptr @.str.100, ptr @af9005_i2c_algo, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @af9005_properties, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.132, ptr @.str.135, ptr @.str.138, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.184, ptr @.str.187, ptr @.str.190, ptr @.str.192, ptr @.str.193, ptr @.str.195, ptr @.str.198, ptr @.str.201, ptr @.str.203, ptr @.str.204, ptr @.str.206, ptr @.str.208, ptr @.str.209, ptr @.str.214, ptr @.str.215, ptr @.str.217, ptr @.str.219, ptr @.str.220, ptr @.str.222, ptr @.str.225, ptr @.str.228, ptr @.str.231, ptr @.str.238, ptr @.str.241, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.248, ptr @.str.251, ptr @.str.257, ptr @.str.258, ptr @.str.264, ptr @.str.267, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.275], section "llvm.metadata"
@0 = internal global [227 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_af9005_led to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_af9005_dump_eeprom to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_read_ofdm_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_read_ofdm_register._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_read_ofdm_register._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_read_ofdm_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_read_ofdm_registers._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_read_ofdm_registers._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_read_ofdm_registers._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_write_ofdm_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_write_ofdm_register._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_write_ofdm_register._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_write_ofdm_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_write_ofdm_registers._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_write_ofdm_registers._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_write_ofdm_registers._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_write_ofdm_registers._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_read_register_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_read_register_bits._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_read_register_bits._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_write_register_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_send_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_send_command._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_send_command._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_send_command._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_send_command._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_send_command._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_send_command._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_read_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_read_eeprom._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_read_eeprom._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_read_eeprom._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_decode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_keys to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_keys_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_generic_read_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_generic_read_write._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_generic_read_write._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_generic_read_write._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_generic_read_write._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_generic_read_write._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_usb_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_download_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_download_firmware._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_download_firmware._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_download_firmware._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_download_firmware._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_download_firmware._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_download_firmware._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_boot_packet._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_pid_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_pid_filter._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_pid_filter._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_pid_filter._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_pid_filter_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_pid_filter_control._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_frontend_attach._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_frontend_attach._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_identify_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_identify_state._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_rc_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_rc_query._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_rc_query._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_rc_query._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_rc_query._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_rc_query._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_rc_query._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_rc_query._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_rc_query._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_i2c_read._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_i2c_read._entry.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_i2c_read._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_i2c_read._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_i2c_write._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_i2c_write._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_i2c_write._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_i2c_write._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_usb_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_usb_module_init._entry.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @af9005_read_ofdm_register(ptr noundef %d, i16 noundef zeroext %reg, ptr nocapture noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %reg to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call fastcc i32 @af9005_generic_read_write(ptr noundef %d, i16 noundef zeroext %reg, i32 noundef 0, i32 noundef 0, ptr noundef %value, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  %1 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and20 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool5.not, label %do.body19, label %do.body7

do.body7:                                         ; preds = %do.end3
  br i1 %tobool21.not, label %do.body7.if.end32_crit_edge, label %do.end13

do.body7.if.end32_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %if.end32

do.body19:                                        ; preds = %do.end3
  br i1 %tobool21.not, label %do.body19.if.end32_crit_edge, label %do.end25

do.body19.if.end32_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end25:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value, align 1
  %conv27 = zext i8 %3 to i32
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv27) #11
  br label %if.end32

if.end32:                                         ; preds = %do.end25, %do.body19.if.end32_crit_edge, %do.end13, %do.body7.if.end32_crit_edge
  ret i32 %call4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9005_generic_read_write(ptr noundef %d, i16 noundef zeroext %reg, i32 noundef %readwrite, i32 noundef %type, ptr nocapture noundef %values, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp = icmp slt i32 %len, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %cmp1 = icmp ugt i32 %len, 8
  br i1 %cmp1, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %data_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #8
  %data = getelementptr inbounds %struct.af9005_device_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 14, ptr %data, align 4
  %arrayidx10 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 32, ptr %arrayidx12, align 2
  %arrayidx14 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 12, ptr %arrayidx14, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 4
  %inc = add i8 %7, 1
  store i8 %inc, ptr %1, align 4
  %arrayidx16 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx16, align 4
  %9 = lshr i16 %reg, 8
  %conv17 = trunc i16 %9 to i8
  %arrayidx19 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 5
  %10 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv17, ptr %arrayidx19, align 1
  %conv21 = trunc i16 %reg to i8
  %arrayidx23 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 6
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv21, ptr %arrayidx23, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp24 = icmp eq i32 %type, 0
  %. = select i1 %cmp24, i8 0, i8 -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp28 = icmp ugt i32 %len, 1
  %len.tr = trunc i32 %len to i8
  %12 = shl nuw nsw i8 %len.tr, 3
  %13 = add nsw i8 %12, -8
  %14 = or i8 %., %13
  %conv33 = or i8 %14, 6
  %command.1 = select i1 %cmp28, i8 %conv33, i8 %.
  %15 = trunc i32 %readwrite to i8
  %conv37 = or i8 %command.1, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %readwrite)
  %cmp38 = icmp eq i32 %readwrite, 1
  br i1 %cmp38, label %for.body, label %if.else47

for.body:                                         ; preds = %if.end8
  %16 = ptrtoint ptr %values to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %values, align 1
  %arrayidx45 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 8
  %18 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx45, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %exitcond.not = icmp eq i32 %len, 1
  br i1 %exitcond.not, label %for.body.if.end55_crit_edge, label %for.body.1

for.body.if.end55_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

for.body.1:                                       ; preds = %for.body
  %arrayidx43.1 = getelementptr i8, ptr %values, i32 1
  %19 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx43.1, align 1
  %arrayidx45.1 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 9
  %21 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx45.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %exitcond.not.1 = icmp eq i32 %len, 2
  br i1 %exitcond.not.1, label %for.body.1.if.end55_crit_edge, label %for.body.2

for.body.1.if.end55_crit_edge:                    ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

for.body.2:                                       ; preds = %for.body.1
  %arrayidx43.2 = getelementptr i8, ptr %values, i32 2
  %22 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx43.2, align 1
  %arrayidx45.2 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 10
  %24 = ptrtoint ptr %arrayidx45.2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx45.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %exitcond.not.2 = icmp eq i32 %len, 3
  br i1 %exitcond.not.2, label %for.body.2.if.end55_crit_edge, label %for.body.3

for.body.2.if.end55_crit_edge:                    ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

for.body.3:                                       ; preds = %for.body.2
  %arrayidx43.3 = getelementptr i8, ptr %values, i32 3
  %25 = ptrtoint ptr %arrayidx43.3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx43.3, align 1
  %arrayidx45.3 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 11
  %27 = ptrtoint ptr %arrayidx45.3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx45.3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %exitcond.not.3 = icmp eq i32 %len, 4
  br i1 %exitcond.not.3, label %for.body.3.if.end55_crit_edge, label %for.body.4

for.body.3.if.end55_crit_edge:                    ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

for.body.4:                                       ; preds = %for.body.3
  %arrayidx43.4 = getelementptr i8, ptr %values, i32 4
  %28 = ptrtoint ptr %arrayidx43.4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx43.4, align 1
  %arrayidx45.4 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 12
  %30 = ptrtoint ptr %arrayidx45.4 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx45.4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %len)
  %exitcond.not.4 = icmp eq i32 %len, 5
  br i1 %exitcond.not.4, label %for.body.4.if.end55_crit_edge, label %for.body.5

for.body.4.if.end55_crit_edge:                    ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

for.body.5:                                       ; preds = %for.body.4
  %arrayidx43.5 = getelementptr i8, ptr %values, i32 5
  %31 = ptrtoint ptr %arrayidx43.5 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx43.5, align 1
  %arrayidx45.5 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 13
  %33 = ptrtoint ptr %arrayidx45.5 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx45.5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %len)
  %exitcond.not.5 = icmp eq i32 %len, 6
  br i1 %exitcond.not.5, label %for.body.5.if.end55_crit_edge, label %for.body.6

for.body.5.if.end55_crit_edge:                    ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

for.body.6:                                       ; preds = %for.body.5
  %arrayidx43.6 = getelementptr i8, ptr %values, i32 6
  %34 = ptrtoint ptr %arrayidx43.6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx43.6, align 1
  %arrayidx45.6 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 14
  %36 = ptrtoint ptr %arrayidx45.6 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx45.6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %len)
  %exitcond.not.6 = icmp eq i32 %len, 7
  br i1 %exitcond.not.6, label %for.body.6.if.end55_crit_edge, label %for.body.7

for.body.6.if.end55_crit_edge:                    ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

for.body.7:                                       ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx43.7 = getelementptr i8, ptr %values, i32 7
  %37 = ptrtoint ptr %arrayidx43.7 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx43.7, align 1
  %arrayidx45.7 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 15
  %39 = ptrtoint ptr %arrayidx45.7 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx45.7, align 1
  br label %if.end55

if.else47:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp48 = icmp eq i32 %type, 1
  br i1 %cmp48, label %if.then50, label %if.else47.if.end55_crit_edge

if.else47.if.end55_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then50:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %values to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %values, align 1
  %arrayidx53 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 8
  %42 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx53, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %if.else47.if.end55_crit_edge, %for.body.7, %for.body.6.if.end55_crit_edge, %for.body.5.if.end55_crit_edge, %for.body.4.if.end55_crit_edge, %for.body.3.if.end55_crit_edge, %for.body.2.if.end55_crit_edge, %for.body.1.if.end55_crit_edge, %for.body.if.end55_crit_edge
  %arrayidx57 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 7
  %43 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv37, ptr %arrayidx57, align 1
  %call61 = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data, i16 noundef zeroext 16, ptr noundef %data, i16 noundef zeroext 17, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool.not = icmp eq i32 %call61, 0
  br i1 %tobool.not, label %if.end63, label %if.end55.ret128_crit_edge

if.end55.ret128_crit_edge:                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %ret128

if.end63:                                         ; preds = %if.end55
  %44 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx12, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %45)
  %cmp67.not = icmp eq i8 %45, 33
  br i1 %cmp67.not, label %if.end75, label %if.end63.ret128.sink.split_crit_edge

if.end63.ret128.sink.split_crit_edge:             ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %ret128.sink.split

if.end75:                                         ; preds = %if.end63
  %46 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %47)
  %cmp79.not = icmp eq i8 %47, 13
  br i1 %cmp79.not, label %if.end87, label %if.end75.ret128.sink.split_crit_edge

if.end75.ret128.sink.split_crit_edge:             ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %ret128.sink.split

if.end87:                                         ; preds = %if.end75
  %48 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %7)
  %cmp92.not = icmp eq i8 %49, %7
  br i1 %cmp92.not, label %if.end100, label %if.end87.ret128.sink.split_crit_edge

if.end87.ret128.sink.split_crit_edge:             ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %ret128.sink.split

if.end100:                                        ; preds = %if.end87
  %arrayidx102 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 16
  %50 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx102, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %51)
  %cmp104.not = icmp eq i8 %51, 1
  br i1 %cmp104.not, label %if.end112, label %if.end100.ret128.sink.split_crit_edge

if.end100.ret128.sink.split_crit_edge:            ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %ret128.sink.split

if.end112:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %readwrite)
  %cmp113 = icmp eq i32 %readwrite, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp117177 = icmp sgt i32 %len, 0
  %or.cond = and i1 %cmp113, %cmp117177
  br i1 %or.cond, label %if.end112.for.body119_crit_edge, label %if.end112.ret128_crit_edge

if.end112.ret128_crit_edge:                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %ret128

if.end112.for.body119_crit_edge:                  ; preds = %if.end112
  br label %for.body119

for.body119:                                      ; preds = %for.body119.for.body119_crit_edge, %if.end112.for.body119_crit_edge
  %i.1178 = phi i32 [ %inc125, %for.body119.for.body119_crit_edge ], [ 0, %if.end112.for.body119_crit_edge ]
  %add121 = add nuw i32 %i.1178, 8
  %arrayidx122 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 %add121
  %52 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx122, align 1
  %arrayidx123 = getelementptr i8, ptr %values, i32 %i.1178
  %54 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx123, align 1
  %inc125 = add nuw nsw i32 %i.1178, 1
  %exitcond179.not = icmp eq i32 %inc125, %len
  br i1 %exitcond179.not, label %for.body119.ret128_crit_edge, label %for.body119.for.body119_crit_edge

for.body119.for.body119_crit_edge:                ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body119

for.body119.ret128_crit_edge:                     ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #10
  br label %ret128

ret128.sink.split:                                ; preds = %if.end100.ret128.sink.split_crit_edge, %if.end87.ret128.sink.split_crit_edge, %if.end75.ret128.sink.split_crit_edge, %if.end63.ret128.sink.split_crit_edge
  %.str.98.sink = phi ptr [ @.str.89, %if.end63.ret128.sink.split_crit_edge ], [ @.str.92, %if.end75.ret128.sink.split_crit_edge ], [ @.str.95, %if.end87.ret128.sink.split_crit_edge ], [ @.str.98, %if.end100.ret128.sink.split_crit_edge ]
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.98.sink) #11
  br label %ret128

ret128:                                           ; preds = %ret128.sink.split, %for.body119.ret128_crit_edge, %if.end112.ret128_crit_edge, %if.end55.ret128_crit_edge
  %ret.0 = phi i32 [ %call61, %if.end55.ret128_crit_edge ], [ 0, %if.end112.ret128_crit_edge ], [ -5, %ret128.sink.split ], [ 0, %for.body119.ret128_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %ret128, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end5 ], [ %ret.0, %ret128 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @af9005_read_ofdm_registers(ptr noundef %d, i16 noundef zeroext %reg, ptr nocapture noundef %values, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %reg to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %len, i32 noundef %conv) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call fastcc i32 @af9005_generic_read_write(ptr noundef %d, i16 noundef zeroext %reg, i32 noundef 0, i32 noundef 0, ptr noundef %values, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.cond.preheader, label %do.body7

for.cond.preheader:                               ; preds = %do.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp53 = icmp sgt i32 %len, 0
  br i1 %cmp53, label %for.cond.preheader.do.body20_crit_edge, label %for.cond.preheader.do.body33_crit_edge

for.cond.preheader.do.body33_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body33

for.cond.preheader.do.body20_crit_edge:           ; preds = %for.cond.preheader
  br label %do.body20

do.body7:                                         ; preds = %do.end3
  %1 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and8 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.if.end45_crit_edge, label %do.body7.if.end45.sink.split_crit_edge

do.body7.if.end45.sink.split_crit_edge:           ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.sink.split

do.body7.if.end45_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

do.body20:                                        ; preds = %for.inc.do.body20_crit_edge, %for.cond.preheader.do.body20_crit_edge
  %loop_.054 = phi i32 [ %inc, %for.inc.do.body20_crit_edge ], [ 0, %for.cond.preheader.do.body20_crit_edge ]
  %2 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and21 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.for.inc_crit_edge, label %do.end26

do.body20.for.inc_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %values, i32 %loop_.054
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv28 = zext i8 %4 to i32
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv28) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end26, %do.body20.for.inc_crit_edge
  %inc = add nuw nsw i32 %loop_.054, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.inc.do.body33_crit_edge, label %for.inc.do.body20_crit_edge

for.inc.do.body20_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

for.inc.do.body33_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body33

do.body33:                                        ; preds = %for.inc.do.body33_crit_edge, %for.cond.preheader.do.body33_crit_edge
  %5 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and34 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body33.if.end45_crit_edge, label %do.body33.if.end45.sink.split_crit_edge

do.body33.if.end45.sink.split_crit_edge:          ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.sink.split

do.body33.if.end45_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.end45.sink.split:                              ; preds = %do.body33.if.end45.sink.split_crit_edge, %do.body7.if.end45.sink.split_crit_edge
  %.str.17.sink = phi ptr [ @.str.4, %do.body7.if.end45.sink.split_crit_edge ], [ @.str.17, %do.body33.if.end45.sink.split_crit_edge ]
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.17.sink) #11
  br label %if.end45

if.end45:                                         ; preds = %if.end45.sink.split, %do.body33.if.end45_crit_edge, %do.body7.if.end45_crit_edge
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext %reg, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  %temp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp) #8
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %value, ptr %temp, align 1
  %1 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %reg to i32
  %conv2 = zext i8 %value to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv2) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = call fastcc i32 @af9005_generic_read_write(ptr noundef %d, i16 noundef zeroext %reg, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %temp, i32 noundef 1)
  %2 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and21 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.end4.if.end32_crit_edge, label %if.end32.sink.split

do.end4.if.end32_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end32.sink.split:                              ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %.str.24..str.4 = select i1 %tobool6.not, ptr @.str.24, ptr @.str.4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.24..str.4) #11
  br label %if.end32

if.end32:                                         ; preds = %if.end32.sink.split, %do.end4.if.end32_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp) #8
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @af9005_write_ofdm_registers(ptr noundef %d, i16 noundef zeroext %reg, ptr nocapture noundef %values, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %reg to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %len, i32 noundef %conv) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp65 = icmp sgt i32 %len, 0
  br i1 %cmp65, label %do.end3.do.body5_crit_edge, label %do.end3.do.body18_crit_edge

do.end3.do.body18_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

do.end3.do.body5_crit_edge:                       ; preds = %do.end3
  br label %do.body5

do.body5:                                         ; preds = %for.inc.do.body5_crit_edge, %do.end3.do.body5_crit_edge
  %loop_.066 = phi i32 [ %inc, %for.inc.do.body5_crit_edge ], [ 0, %do.end3.do.body5_crit_edge ]
  %1 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and6 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body5.for.inc_crit_edge, label %do.end11

do.body5.for.inc_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %values, i32 %loop_.066
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv13 = zext i8 %3 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv13) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end11, %do.body5.for.inc_crit_edge
  %inc = add nuw nsw i32 %loop_.066, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.inc.do.body18_crit_edge, label %for.inc.do.body5_crit_edge

for.inc.do.body5_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5

for.inc.do.body18_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

do.body18:                                        ; preds = %for.inc.do.body18_crit_edge, %do.end3.do.body18_crit_edge
  %4 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and19 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body18.do.end29_crit_edge, label %do.end24

do.body18.do.end29_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

do.end24:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %do.end29

do.end29:                                         ; preds = %do.end24, %do.body18.do.end29_crit_edge
  %call30 = tail call fastcc i32 @af9005_generic_read_write(ptr noundef %d, i16 noundef zeroext %reg, i32 noundef 1, i32 noundef 0, ptr noundef %values, i32 noundef %len)
  %5 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and46 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.end29.if.end57_crit_edge, label %if.end57.sink.split

do.end29.if.end57_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.end57.sink.split:                              ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  %.str.24..str.4 = select i1 %tobool31.not, ptr @.str.24, ptr @.str.4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.24..str.4) #11
  br label %if.end57

if.end57:                                         ; preds = %if.end57.sink.split, %do.end29.if.end57_crit_edge
  ret i32 %call30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @af9005_read_register_bits(ptr noundef %d, i16 noundef zeroext %reg, i8 noundef zeroext %pos, i8 noundef zeroext %len, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %temp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp) #8
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %temp, align 1, !annotation !488
  %1 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %reg to i32
  %conv2 = zext i8 %pos to i32
  %conv3 = zext i8 %len to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %2 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and.i = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end5.do.end3.i_crit_edge, label %do.end.i

do.end5.do.end3.i_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i16 %reg to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv.i) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.end5.do.end3.i_crit_edge
  %call4.i = call fastcc i32 @af9005_generic_read_write(ptr noundef %d, i16 noundef zeroext %reg, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %temp, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  %3 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and20.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool5.not.i, label %do.body19.i, label %do.body7.i

do.body7.i:                                       ; preds = %do.end3.i
  br i1 %tobool21.not.i, label %do.body7.i.do.body9_crit_edge, label %do.end13.i

do.body7.i.do.body9_crit_edge:                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

do.end13.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %do.body9

do.body19.i:                                      ; preds = %do.end3.i
  br i1 %tobool21.not.i, label %do.body19.i.if.end21_crit_edge, label %do.end25.i

do.body19.i.if.end21_crit_edge:                   ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.end25.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %temp, align 1
  %conv27.i = zext i8 %5 to i32
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv27.i) #11
  br label %if.end21

do.body9:                                         ; preds = %do.end13.i, %do.body7.i.do.body9_crit_edge
  %6 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and10 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body9.cleanup_crit_edge, label %do.end15

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #11
  br label %cleanup

if.end21:                                         ; preds = %do.end25.i, %do.body19.i.if.end21_crit_edge
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %temp, align 1
  %conv22 = zext i8 %8 to i32
  %conv23 = zext i8 %pos to i32
  %shr = lshr i32 %conv22, %conv23
  %conv24 = zext i8 %len to i32
  %sub = add nsw i32 %conv24, -1
  %arrayidx = getelementptr [8 x i8], ptr @regmask, i32 0, i32 %sub
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %11 = trunc i32 %shr to i8
  %conv27 = and i8 %10, %11
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv27, ptr %value, align 1
  %13 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and29 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end21.cleanup_crit_edge, label %do.end34

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end34:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %conv36 = zext i8 %conv27 to i32
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv36) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %if.end21.cleanup_crit_edge, %do.end15, %do.body9.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp) #8
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @af9005_write_register_bits(ptr noundef %d, i16 noundef zeroext %reg, i8 noundef zeroext %pos, i8 noundef zeroext %len, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  %temp.i55 = alloca i8, align 1
  %temp.i = alloca i8, align 1
  %temp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp) #8
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %temp, align 1, !annotation !488
  %1 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = zext i8 %pos to i32
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %reg to i32
  %conv2 = zext i8 %pos to i32
  %conv3 = zext i8 %len to i32
  %conv4 = zext i8 %value to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %conv7.pre-phi = phi i32 [ %.pre, %entry.do.end6_crit_edge ], [ %conv2, %do.end ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pos)
  %cmp = icmp eq i8 %pos, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %len)
  %cmp10 = icmp eq i8 %len, 8
  %or.cond = and i1 %cmp, %cmp10
  br i1 %or.cond, label %if.then12, label %if.end14

if.then12:                                        ; preds = %do.end6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp.i) #8
  %2 = ptrtoint ptr %temp.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %value, ptr %temp.i, align 1
  %3 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then12.do.end4.i_crit_edge, label %do.end.i

if.then12.do.end4.i_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i

do.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i16 %reg to i32
  %conv2.i = zext i8 %value to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv.i, i32 noundef %conv2.i) #11
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.then12.do.end4.i_crit_edge
  %call5.i = call fastcc i32 @af9005_generic_read_write(ptr noundef %d, i16 noundef zeroext %reg, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %temp.i, i32 noundef 1) #8
  %4 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and21.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %do.end4.i.af9005_write_ofdm_register.exit_crit_edge, label %if.end32.sink.split.i

do.end4.i.af9005_write_ofdm_register.exit_crit_edge: ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %af9005_write_ofdm_register.exit

if.end32.sink.split.i:                            ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  %.str.24..str.4.i = select i1 %tobool6.not.i, ptr @.str.24, ptr @.str.4
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.24..str.4.i) #11
  br label %af9005_write_ofdm_register.exit

af9005_write_ofdm_register.exit:                  ; preds = %if.end32.sink.split.i, %do.end4.i.af9005_write_ofdm_register.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i) #8
  br label %cleanup

if.end14:                                         ; preds = %do.end6
  %5 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and.i49 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool.not.i50 = icmp eq i32 %and.i49, 0
  br i1 %tobool.not.i50, label %if.end14.do.end3.i_crit_edge, label %do.end.i53

if.end14.do.end3.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i53:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i51 = zext i16 %reg to i32
  %call.i52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv.i51) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i53, %if.end14.do.end3.i_crit_edge
  %call4.i = call fastcc i32 @af9005_generic_read_write(ptr noundef %d, i16 noundef zeroext %reg, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %temp, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  %6 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and20.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool5.not.i, label %do.body19.i, label %do.body7.i

do.body7.i:                                       ; preds = %do.end3.i
  br i1 %tobool21.not.i, label %do.body7.i.cleanup_crit_edge, label %do.end13.i

do.body7.i.cleanup_crit_edge:                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end13.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %cleanup

do.body19.i:                                      ; preds = %do.end3.i
  br i1 %tobool21.not.i, label %do.body19.i.if.end18_crit_edge, label %do.end25.i

do.body19.i.if.end18_crit_edge:                   ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end25.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %temp, align 1
  %conv27.i = zext i8 %8 to i32
  %call28.i54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv27.i) #11
  br label %if.end18

if.end18:                                         ; preds = %do.end25.i, %do.body19.i.if.end18_crit_edge
  %conv19 = zext i8 %len to i32
  %sub = add nsw i32 %conv19, -1
  %arrayidx = getelementptr [8 x i8], ptr @regmask, i32 0, i32 %sub
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv20 = zext i8 %10 to i32
  %shl = shl i32 %conv20, %conv7.pre-phi
  %11 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %temp, align 1
  %conv23 = zext i8 %12 to i32
  %neg = xor i32 %shl, -1
  %and25 = and i32 %conv23, %neg
  %conv26 = zext i8 %value to i32
  %shl28 = shl i32 %conv26, %conv7.pre-phi
  %and30 = and i32 %shl, %shl28
  %or = or i32 %and25, %and30
  %conv31 = trunc i32 %or to i8
  store i8 %conv31, ptr %temp, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp.i55) #8
  %13 = ptrtoint ptr %temp.i55 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv31, ptr %temp.i55, align 1
  %14 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and.i56 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool.not.i57 = icmp eq i32 %and.i56, 0
  br i1 %tobool.not.i57, label %if.end18.do.end4.i65_crit_edge, label %do.end.i61

if.end18.do.end4.i65_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i65

do.end.i61:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i58 = zext i16 %reg to i32
  %conv2.i59 = and i32 %or, 255
  %call.i60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv.i58, i32 noundef %conv2.i59) #11
  br label %do.end4.i65

do.end4.i65:                                      ; preds = %do.end.i61, %if.end18.do.end4.i65_crit_edge
  %call5.i62 = call fastcc i32 @af9005_generic_read_write(ptr noundef %d, i16 noundef zeroext %reg, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %temp.i55, i32 noundef 1) #8
  %15 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and21.i63 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i63)
  %tobool22.not.i64 = icmp eq i32 %and21.i63, 0
  br i1 %tobool22.not.i64, label %do.end4.i65.af9005_write_ofdm_register.exit70_crit_edge, label %if.end32.sink.split.i69

do.end4.i65.af9005_write_ofdm_register.exit70_crit_edge: ; preds = %do.end4.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %af9005_write_ofdm_register.exit70

if.end32.sink.split.i69:                          ; preds = %do.end4.i65
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i62)
  %tobool6.not.i66 = icmp eq i32 %call5.i62, 0
  %.str.24..str.4.i67 = select i1 %tobool6.not.i66, ptr @.str.24, ptr @.str.4
  %call28.i68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.24..str.4.i67) #11
  br label %af9005_write_ofdm_register.exit70

af9005_write_ofdm_register.exit70:                ; preds = %if.end32.sink.split.i69, %do.end4.i65.af9005_write_ofdm_register.exit70_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i55) #8
  br label %cleanup

cleanup:                                          ; preds = %af9005_write_ofdm_register.exit70, %do.end13.i, %do.body7.i.cleanup_crit_edge, %af9005_write_ofdm_register.exit
  %retval.0 = phi i32 [ %call5.i, %af9005_write_ofdm_register.exit ], [ %call5.i62, %af9005_write_ofdm_register.exit70 ], [ %call4.i, %do.body7.i.cleanup_crit_edge ], [ %call4.i, %do.end13.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @af9005_write_tuner_registers(ptr noundef %d, i16 noundef zeroext %reg, ptr nocapture noundef %values, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %temp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp) #8
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %temp, align 1, !annotation !488
  %call.i = tail call fastcc i32 @af9005_generic_read_write(ptr noundef %d, i16 noundef zeroext %reg, i32 noundef 1, i32 noundef 1, ptr noundef %values, i32 noundef %len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %reg)
  %cmp.not = icmp eq i16 %reg, -1
  br i1 %cmp.not, label %if.end.if.end33_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.066 = phi i32 [ %inc, %if.end20.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %1 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.do.end3.i_crit_edge, label %do.end.i

for.body.do.end3.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 41997) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %for.body.do.end3.i_crit_edge
  %call4.i = call fastcc i32 @af9005_generic_read_write(ptr noundef %d, i16 noundef zeroext -23539, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %temp, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  %2 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and20.i = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool5.not.i, label %do.body19.i, label %do.body7.i

do.body7.i:                                       ; preds = %do.end3.i
  br i1 %tobool21.not.i, label %do.body7.i.cleanup_crit_edge, label %do.end13.i

do.body7.i.cleanup_crit_edge:                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end13.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %cleanup

do.body19.i:                                      ; preds = %do.end3.i
  br i1 %tobool21.not.i, label %do.body19.i.if.end8_crit_edge, label %do.end25.i

do.body19.i.if.end8_crit_edge:                    ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.end25.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %temp, align 1
  %conv27.i = zext i8 %4 to i32
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv27.i) #11
  br label %if.end8

if.end8:                                          ; preds = %do.end25.i, %do.body19.i.if.end8_crit_edge
  %5 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %temp, align 1
  %conv9 = zext i8 %6 to i32
  %7 = load i8, ptr @regmask, align 1
  %conv10 = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv10, 1
  %and = and i32 %shl, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end13, label %if.end28

if.end13:                                         ; preds = %if.end8
  %shl16 = shl nuw nsw i32 %conv10, 2
  %and17 = and i32 %shl16, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then26

if.end20:                                         ; preds = %if.end13
  tail call void @msleep(i32 noundef 50) #8
  %inc = add nuw nsw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %if.end20.cleanup_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call i32 @af9005_write_register_bits(ptr noundef %d, i16 noundef zeroext -23539, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1)
  br label %cleanup

if.end28:                                         ; preds = %if.end8
  %call29 = tail call i32 @af9005_write_register_bits(ptr noundef %d, i16 noundef zeroext -23539, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end28.if.end33_crit_edge, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.end33:                                         ; preds = %if.end28.if.end33_crit_edge, %if.end.if.end33_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end28.cleanup_crit_edge, %if.then26, %if.end20.cleanup_crit_edge, %do.end13.i, %do.body7.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then26 ], [ 0, %if.end33 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call29, %if.end28.cleanup_crit_edge ], [ %call4.i, %do.body7.i.cleanup_crit_edge ], [ %call4.i, %do.end13.i ], [ -110, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @af9005_read_tuner_registers(ptr noundef %d, i16 noundef zeroext %reg, i8 noundef zeroext %addr, ptr nocapture noundef %values, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %temp.i = alloca i8, align 1
  %temp = alloca i8, align 1
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp) #8
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %temp, align 1, !annotation !488
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #8
  %1 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %addr, ptr %buf, align 1
  %3 = ptrtoint ptr %values to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %values, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %1, align 1
  %add = add i8 %addr, 1
  store i8 %add, ptr %values, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4095, i16 %reg)
  %cmp = icmp eq i16 %reg, -4095
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %call = call i32 @af9005_write_tuner_registers(ptr noundef %d, i16 noundef zeroext 192, ptr noundef nonnull %buf, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end8_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %call.i = tail call fastcc i32 @af9005_generic_read_write(ptr noundef %d, i16 noundef zeroext %reg, i32 noundef 0, i32 noundef 1, ptr noundef %values, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end8.for.body_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %if.end8.for.body_crit_edge
  %i.0100 = phi i32 [ %inc, %if.end22.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %6 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.do.end3.i_crit_edge, label %do.end.i

for.body.do.end3.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 41992) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %for.body.do.end3.i_crit_edge
  %call4.i = call fastcc i32 @af9005_generic_read_write(ptr noundef %d, i16 noundef zeroext -23544, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %temp, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  %7 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and20.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool5.not.i, label %do.body19.i, label %do.body7.i

do.body7.i:                                       ; preds = %do.end3.i
  br i1 %tobool21.not.i, label %do.body7.i.cleanup_crit_edge, label %do.body7.i.cleanup.sink.split_crit_edge

do.body7.i.cleanup.sink.split_crit_edge:          ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body7.i.cleanup_crit_edge:                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body19.i:                                      ; preds = %do.end3.i
  br i1 %tobool21.not.i, label %do.body19.i.if.end18_crit_edge, label %do.end25.i

do.body19.i.if.end18_crit_edge:                   ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end25.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %temp, align 1
  %conv27.i = zext i8 %9 to i32
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv27.i) #11
  br label %if.end18

if.end18:                                         ; preds = %do.end25.i, %do.body19.i.if.end18_crit_edge
  %10 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %temp, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool20.not = icmp eq i8 %12, 0
  br i1 %tobool20.not, label %if.end22, label %if.end26

if.end22:                                         ; preds = %if.end18
  tail call void @msleep(i32 noundef 50) #8
  %inc = add nuw nsw i32 %i.0100, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %if.end22.cleanup_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp.i) #8
  %13 = ptrtoint ptr %temp.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %temp.i, align 1
  %14 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and.i73 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73)
  %tobool.not.i74 = icmp eq i32 %and.i73, 0
  br i1 %tobool.not.i74, label %if.end26.do.end4.i_crit_edge, label %do.end.i76

if.end26.do.end4.i_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i

do.end.i76:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %call.i75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 41992, i32 noundef 1) #11
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i76, %if.end26.do.end4.i_crit_edge
  %call5.i = call fastcc i32 @af9005_generic_read_write(ptr noundef %d, i16 noundef zeroext -23544, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %temp.i, i32 noundef 1) #8
  %15 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and21.i = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %do.end4.i.af9005_write_ofdm_register.exit_crit_edge, label %if.end32.sink.split.i

do.end4.i.af9005_write_ofdm_register.exit_crit_edge: ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %af9005_write_ofdm_register.exit

if.end32.sink.split.i:                            ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  %.str.24..str.4.i = select i1 %tobool6.not.i, ptr @.str.24, ptr @.str.4
  %call28.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.24..str.4.i) #11
  br label %af9005_write_ofdm_register.exit

af9005_write_ofdm_register.exit:                  ; preds = %if.end32.sink.split.i, %do.end4.i.af9005_write_ofdm_register.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool28.not = icmp eq i32 %call5.i, 0
  br i1 %tobool28.not, label %for.cond31.preheader, label %af9005_write_ofdm_register.exit.cleanup_crit_edge

af9005_write_ofdm_register.exit.cleanup_crit_edge: ; preds = %af9005_write_ofdm_register.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond31.preheader:                             ; preds = %af9005_write_ofdm_register.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp32101 = icmp sgt i32 %len, 0
  br i1 %cmp32101, label %for.cond31.preheader.for.body34_crit_edge, label %for.cond31.preheader.cleanup_crit_edge

for.cond31.preheader.cleanup_crit_edge:           ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond31.preheader.for.body34_crit_edge:        ; preds = %for.cond31.preheader
  br label %for.body34

for.body34:                                       ; preds = %if.end40.for.body34_crit_edge, %for.cond31.preheader.for.body34_crit_edge
  %i.1102 = phi i32 [ %inc43, %if.end40.for.body34_crit_edge ], [ 0, %for.cond31.preheader.for.body34_crit_edge ]
  %16 = trunc i32 %i.1102 to i16
  %conv36 = add i16 %16, -23552
  %17 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and.i78 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78)
  %tobool.not.i79 = icmp eq i32 %and.i78, 0
  br i1 %tobool.not.i79, label %for.body34.do.end3.i86_crit_edge, label %do.end.i81

for.body34.do.end3.i86_crit_edge:                 ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i86

do.end.i81:                                       ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i16 %conv36 to i32
  %call.i80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv.i) #11
  br label %do.end3.i86

do.end3.i86:                                      ; preds = %do.end.i81, %for.body34.do.end3.i86_crit_edge
  %call4.i82 = call fastcc i32 @af9005_generic_read_write(ptr noundef %d, i16 noundef zeroext %conv36, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %temp, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i82)
  %tobool5.not.i83 = icmp eq i32 %call4.i82, 0
  %18 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and20.i84 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i84)
  %tobool21.not.i85 = icmp eq i32 %and20.i84, 0
  br i1 %tobool5.not.i83, label %do.body19.i90, label %do.body7.i87

do.body7.i87:                                     ; preds = %do.end3.i86
  br i1 %tobool21.not.i85, label %do.body7.i87.cleanup_crit_edge, label %do.body7.i87.cleanup.sink.split_crit_edge

do.body7.i87.cleanup.sink.split_crit_edge:        ; preds = %do.body7.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body7.i87.cleanup_crit_edge:                   ; preds = %do.body7.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body19.i90:                                    ; preds = %do.end3.i86
  br i1 %tobool21.not.i85, label %do.body19.i90.if.end40_crit_edge, label %do.end25.i93

do.body19.i90.if.end40_crit_edge:                 ; preds = %do.body19.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

do.end25.i93:                                     ; preds = %do.body19.i90
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %temp, align 1
  %conv27.i91 = zext i8 %20 to i32
  %call28.i92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv27.i91) #11
  br label %if.end40

if.end40:                                         ; preds = %do.end25.i93, %do.body19.i90.if.end40_crit_edge
  %21 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %temp, align 1
  %arrayidx41 = getelementptr i8, ptr %values, i32 %i.1102
  %23 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx41, align 1
  %inc43 = add nuw nsw i32 %i.1102, 1
  %exitcond109.not = icmp eq i32 %inc43, %len
  br i1 %exitcond109.not, label %if.end40.cleanup_crit_edge, label %if.end40.for.body34_crit_edge

if.end40.for.body34_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body34

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body7.i87.cleanup.sink.split_crit_edge, %do.body7.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call4.i, %do.body7.i.cleanup.sink.split_crit_edge ], [ %call4.i82, %do.body7.i87.cleanup.sink.split_crit_edge ]
  %call15.i88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end40.cleanup_crit_edge, %do.body7.i87.cleanup_crit_edge, %for.cond31.preheader.cleanup_crit_edge, %af9005_write_ofdm_register.exit.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.body7.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call.i, %if.end8.cleanup_crit_edge ], [ %call5.i, %af9005_write_ofdm_register.exit.cleanup_crit_edge ], [ %call4.i, %do.body7.i.cleanup_crit_edge ], [ %call4.i82, %do.body7.i87.cleanup_crit_edge ], [ 0, %for.cond31.preheader.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %if.end40.cleanup_crit_edge ], [ -110, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @af9005_send_command(ptr noundef %d, i8 noundef zeroext %command, ptr nocapture noundef readonly %wbuf, i32 noundef %wlen, ptr nocapture noundef writeonly %rbuf, i32 noundef %rlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wlen)
  %cmp = icmp slt i32 %wlen, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %wlen)
  %cmp1 = icmp ugt i32 %wlen, 54
  br i1 %cmp1, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %rlen)
  %cmp9 = icmp sgt i32 %rlen, 54
  br i1 %cmp9, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %data_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #8
  %2 = trunc i32 %wlen to i8
  %conv = add nuw nsw i8 %2, 5
  %data = getelementptr inbounds %struct.af9005_device_state, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %data, align 4
  %arrayidx20 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx20, align 1
  %arrayidx22 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 38, ptr %arrayidx22, align 2
  %conv24 = add nuw nsw i8 %2, 3
  %arrayidx26 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv24, ptr %arrayidx26, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 4
  %inc = add i8 %8, 1
  store i8 %inc, ptr %1, align 4
  %arrayidx28 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx28, align 4
  %arrayidx30 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 5
  %10 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %command, ptr %arrayidx30, align 1
  %arrayidx33 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 6
  %11 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %2, ptr %arrayidx33, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wlen)
  %cmp34157.not = icmp eq i32 %wlen, 0
  br i1 %cmp34157.not, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end16.for.body_crit_edge
  %i.0158 = phi i32 [ %inc40, %for.body.for.body_crit_edge ], [ 0, %if.end16.for.body_crit_edge ]
  %arrayidx36 = getelementptr i8, ptr %wbuf, i32 %i.0158
  %12 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx36, align 1
  %add38 = add nuw i32 %i.0158, 7
  %arrayidx39 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 %add38
  %14 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx39, align 1
  %inc40 = add nuw nsw i32 %i.0158, 1
  %exitcond.not = icmp eq i32 %inc40, %wlen
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end16.for.end_crit_edge
  %15 = trunc i32 %wlen to i16
  %conv43 = add i16 %15, 7
  %16 = trunc i32 %rlen to i16
  %conv47 = add i16 %16, 7
  %call48 = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data, i16 noundef zeroext %conv43, ptr noundef %data, i16 noundef zeroext %conv47, i32 noundef 0) #8
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx22, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 39, i8 %18)
  %cmp52.not = icmp eq i8 %18, 39
  br i1 %cmp52.not, label %if.else, label %for.end.if.end112.sink.split_crit_edge

for.end.if.end112.sink.split_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112.sink.split

if.else:                                          ; preds = %for.end
  %19 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx28, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %8)
  %cmp64.not = icmp eq i8 %20, %8
  br i1 %cmp64.not, label %if.else72, label %if.else.if.end112.sink.split_crit_edge

if.else.if.end112.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112.sink.split

if.else72:                                        ; preds = %if.else
  %21 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp76.not = icmp eq i8 %22, 1
  br i1 %cmp76.not, label %if.else84, label %if.else72.if.end112.sink.split_crit_edge

if.else72.if.end112.sink.split_crit_edge:         ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112.sink.split

if.else84:                                        ; preds = %if.else72
  %23 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx33, align 2
  %conv87 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv87, i32 %rlen)
  %cmp88.not = icmp eq i32 %conv87, %rlen
  br i1 %cmp88.not, label %if.end99, label %if.else84.if.end112.sink.split_crit_edge

if.else84.if.end112.sink.split_crit_edge:         ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112.sink.split

if.end99:                                         ; preds = %if.else84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool.not = icmp eq i32 %call48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rlen)
  %cmp102159 = icmp sgt i32 %rlen, 0
  %or.cond = and i1 %tobool.not, %cmp102159
  br i1 %or.cond, label %if.end99.for.body104_crit_edge, label %if.end99.if.end112_crit_edge

if.end99.if.end112_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.end99.for.body104_crit_edge:                   ; preds = %if.end99
  br label %for.body104

for.body104:                                      ; preds = %for.body104.for.body104_crit_edge, %if.end99.for.body104_crit_edge
  %i.1160 = phi i32 [ %inc110, %for.body104.for.body104_crit_edge ], [ 0, %if.end99.for.body104_crit_edge ]
  %add106 = add nuw i32 %i.1160, 7
  %arrayidx107 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 %add106
  %25 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx107, align 1
  %arrayidx108 = getelementptr i8, ptr %rbuf, i32 %i.1160
  %27 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx108, align 1
  %inc110 = add nuw nsw i32 %i.1160, 1
  %exitcond161.not = icmp eq i32 %inc110, %rlen
  br i1 %exitcond161.not, label %for.body104.if.end112_crit_edge, label %for.body104.for.body104_crit_edge

for.body104.for.body104_crit_edge:                ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body104

for.body104.if.end112_crit_edge:                  ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.end112.sink.split:                             ; preds = %if.else84.if.end112.sink.split_crit_edge, %if.else72.if.end112.sink.split_crit_edge, %if.else.if.end112.sink.split_crit_edge, %for.end.if.end112.sink.split_crit_edge
  %.str.64.sink = phi ptr [ @.str.55, %for.end.if.end112.sink.split_crit_edge ], [ @.str.58, %if.else.if.end112.sink.split_crit_edge ], [ @.str.61, %if.else72.if.end112.sink.split_crit_edge ], [ @.str.64, %if.else84.if.end112.sink.split_crit_edge ]
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.64.sink) #11
  br label %if.end112

if.end112:                                        ; preds = %if.end112.sink.split, %for.body104.if.end112_crit_edge, %if.end99.if.end112_crit_edge
  %ret.0156 = phi i32 [ %call48, %if.end99.if.end112_crit_edge ], [ -5, %if.end112.sink.split ], [ 0, %for.body104.if.end112_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %do.end13, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end5 ], [ -22, %do.end13 ], [ %ret.0156, %if.end112 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_generic_rw(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @af9005_read_eeprom(ptr noundef %d, i8 noundef zeroext %address, ptr nocapture noundef writeonly %values, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %data_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #8
  %data = getelementptr inbounds %struct.af9005_device_state, ptr %1, i32 0, i32 2
  %2 = getelementptr inbounds %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 248)
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 14, ptr %data, align 4
  %arrayidx3 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx3, align 1
  %arrayidx5 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 42, ptr %arrayidx5, align 2
  %arrayidx7 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 12, ptr %arrayidx7, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 4
  %inc = add i8 %9, 1
  store i8 %inc, ptr %1, align 4
  %arrayidx9 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 5
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx11, align 1
  %conv = trunc i32 %len to i8
  %arrayidx13 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 6
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx13, align 2
  %arrayidx15 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 7
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %address, ptr %arrayidx15, align 1
  %call = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data, i16 noundef zeroext 16, ptr noundef %data, i16 noundef zeroext 14, i32 noundef 0) #8
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %15)
  %cmp.not = icmp eq i8 %15, 43
  br i1 %cmp.not, label %if.else, label %entry.if.end71.sink.split_crit_edge

entry.if.end71.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71.sink.split

if.else:                                          ; preds = %entry
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %17)
  %cmp28.not = icmp eq i8 %17, 10
  br i1 %cmp28.not, label %if.else36, label %if.else.if.end71.sink.split_crit_edge

if.else.if.end71.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71.sink.split

if.else36:                                        ; preds = %if.else
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %9)
  %cmp41.not = icmp eq i8 %19, %9
  br i1 %cmp41.not, label %if.else49, label %if.else36.if.end71.sink.split_crit_edge

if.else36.if.end71.sink.split_crit_edge:          ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71.sink.split

if.else49:                                        ; preds = %if.else36
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp53.not = icmp eq i8 %21, 1
  br i1 %cmp53.not, label %if.end63, label %if.else49.if.end71.sink.split_crit_edge

if.else49.if.end71.sink.split_crit_edge:          ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71.sink.split

if.end63:                                         ; preds = %if.else49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp65100 = icmp sgt i32 %len, 0
  %or.cond = and i1 %tobool.not, %cmp65100
  br i1 %or.cond, label %if.end63.for.body_crit_edge, label %if.end63.if.end71_crit_edge

if.end63.if.end71_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.end63.for.body_crit_edge:                      ; preds = %if.end63
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end63.for.body_crit_edge
  %i.0101 = phi i32 [ %inc70, %for.body.for.body_crit_edge ], [ 0, %if.end63.for.body_crit_edge ]
  %add = add nuw i32 %i.0101, 6
  %arrayidx68 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 %add
  %22 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx68, align 1
  %arrayidx69 = getelementptr i8, ptr %values, i32 %i.0101
  %24 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx69, align 1
  %inc70 = add nuw nsw i32 %i.0101, 1
  %exitcond.not = icmp eq i32 %inc70, %len
  br i1 %exitcond.not, label %for.body.if.end71_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.if.end71_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.end71.sink.split:                              ; preds = %if.else49.if.end71.sink.split_crit_edge, %if.else36.if.end71.sink.split_crit_edge, %if.else.if.end71.sink.split_crit_edge, %entry.if.end71.sink.split_crit_edge
  %.str.75.sink = phi ptr [ @.str.66, %entry.if.end71.sink.split_crit_edge ], [ @.str.69, %if.else.if.end71.sink.split_crit_edge ], [ @.str.72, %if.else36.if.end71.sink.split_crit_edge ], [ @.str.75, %if.else49.if.end71.sink.split_crit_edge ]
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.75.sink) #11
  br label %if.end71

if.end71:                                         ; preds = %if.end71.sink.split, %for.body.if.end71_crit_edge, %if.end63.if.end71_crit_edge
  %ret.099 = phi i32 [ %call, %if.end63.if.end71_crit_edge ], [ -5, %if.end71.sink.split ], [ 0, %for.body.if.end71_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #8
  ret i32 %ret.099
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @af9005_led_control(ptr noundef %d, i32 noundef %onoff) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, ptr @dvb_usb_af9005_led, align 1, !range !489
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %temp.0 = phi i32 [ 0, %if.else ], [ 1, %land.lhs.true.if.end_crit_edge ]
  %led_state = getelementptr inbounds %struct.af9005_device_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %led_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %led_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %temp.0)
  %cmp.not = icmp eq i32 %4, %temp.0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %conv = trunc i32 %temp.0 to i8
  %call = tail call i32 @af9005_write_register_bits(ptr noundef %d, i16 noundef zeroext -23035, i8 noundef zeroext 4, i8 noundef zeroext 1, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.then2
  %call7 = tail call i32 @af9005_write_register_bits(ptr noundef %d, i16 noundef zeroext -23036, i8 noundef zeroext 4, i8 noundef zeroext 1, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %led_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %temp.0, ptr %led_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then2.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ 0, %if.end10 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @af9005_usb_module_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @rc_decode, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.77) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load ptr, ptr @rc_keys, align 4
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.78) #8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %2 = load ptr, ptr @rc_keys_size, align 4
  %cmp4.not = icmp eq ptr %2, null
  br i1 %cmp4.not, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.79) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  tail call void @usb_deregister(ptr noundef nonnull @af9005_usb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @af9005_usb_module_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @af9005_usb_driver, ptr noundef null, ptr noundef nonnull @.str.81) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.269, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.77) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.271) #8
  %call5 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.77) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %call5, %cond.false ], [ %call2, %if.end.cond.end_crit_edge ]
  store ptr %cond, ptr @rc_decode, align 4
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %cond.false9, label %cond.end.cond.end12_crit_edge

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end12

cond.false9:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.272) #8
  %call11 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #8
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false9, %cond.end.cond.end12_crit_edge
  %cond13 = phi ptr [ %call11, %cond.false9 ], [ %call6, %cond.end.cond.end12_crit_edge ]
  store ptr %cond13, ptr @rc_keys, align 4
  %call14 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.79) #8
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %cond.false17, label %cond.end12.cond.end20_crit_edge

cond.end12.cond.end20_crit_edge:                  ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end20

cond.false17:                                     ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.273) #8
  %call19 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.79) #8
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false17, %cond.end12.cond.end20_crit_edge
  %cond21 = phi ptr [ %call19, %cond.false17 ], [ %call14, %cond.end12.cond.end20_crit_edge ]
  store ptr %cond21, ptr @rc_keys_size, align 4
  %0 = load ptr, ptr @rc_decode, align 4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %cond.end20.do.end28_crit_edge, label %lor.lhs.false

cond.end20.do.end28_crit_edge:                    ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

lor.lhs.false:                                    ; preds = %cond.end20
  %1 = load ptr, ptr @rc_keys, align 4
  %cmp22 = icmp eq ptr %1, null
  %cmp24 = icmp eq ptr %cond21, null
  %or.cond = select i1 %cmp22, i1 true, i1 %cmp24
  br i1 %or.cond, label %lor.lhs.false.do.end28_crit_edge, label %if.else

lor.lhs.false.do.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

do.end28:                                         ; preds = %lor.lhs.false.do.end28_crit_edge, %cond.end20.do.end28_crit_edge
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.275) #11
  store ptr null, ptr getelementptr inbounds ({ i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x %struct.dvb_usb_device_description] }> }, ptr @af9005_properties, i32 0, i32 13, i32 1, i32 2), align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %1, ptr getelementptr inbounds ({ i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x %struct.dvb_usb_device_description] }> }, ptr @af9005_properties, i32 0, i32 13, i32 1), align 4
  %2 = ptrtoint ptr %cond21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cond21, align 4
  store i32 %3, ptr getelementptr inbounds ({ i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x %struct.dvb_usb_device_description] }> }, ptr @af9005_properties, i32 0, i32 13, i32 1, i32 1), align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end28, %do.end
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9005_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @af9005_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usb_device_exit(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9005_download_firmware(ptr noundef %udev, ptr nocapture noundef readonly %fw) #0 align 64 {
entry:
  %act_len = alloca i32, align 4
  %reply = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %act_len) #8
  %0 = ptrtoint ptr %act_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %act_len, align 4, !annotation !488
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reply) #8
  %1 = ptrtoint ptr %reply to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %reply, align 1, !annotation !488
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 252) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @af9005_boot_packet(ptr noundef %udev, i32 noundef 0, ptr noundef nonnull %reply, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %reply to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %reply, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp.not = icmp eq i8 %4, 1
  br i1 %cmp.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %4 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %conv) #11
  br label %err

if.end9:                                          ; preds = %if.end4
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw, align 4
  %div = udiv i32 %6, 250
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -6, ptr %call7.i, align 8
  %arrayidx10 = getelementptr i8, ptr %call7.i, i32 1
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %6)
  %9 = icmp ult i32 %6, 250
  br i1 %9, label %if.end9.for.end67_crit_edge, label %for.body.lr.ph

if.end9.for.end67_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end67

for.body.lr.ph:                                   ; preds = %if.end9
  %arrayidx13 = getelementptr i8, ptr %call7.i, i32 2
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %smax = call i32 @llvm.smax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc65.for.body_crit_edge, %for.body.lr.ph
  %i.0144 = phi i32 [ 0, %for.body.lr.ph ], [ %inc66, %for.inc65.for.body_crit_edge ]
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %mul = mul nuw i32 %i.0144, 250
  %add.ptr = getelementptr i8, ptr %11, i32 %mul
  %12 = call ptr @memcpy(ptr %arrayidx13, ptr %add.ptr, i32 250)
  %13 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %for.body.do.body29.preheader_crit_edge, label %do.end19

for.body.do.body29.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29.preheader

do.end19:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #11
  br label %do.body29.preheader

do.body29.preheader:                              ; preds = %do.end19, %for.body.do.body29.preheader_crit_edge
  br label %do.body29

do.body29:                                        ; preds = %for.inc.do.body29_crit_edge, %do.body29.preheader
  %loop_.0141 = phi i32 [ %inc, %for.inc.do.body29_crit_edge ], [ 0, %do.body29.preheader ]
  %14 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and30 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.body29.for.inc_crit_edge, label %do.end35

do.body29.for.inc_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx37 = getelementptr i8, ptr %call7.i, i32 %loop_.0141
  %15 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %16 to i32
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv38) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end35, %do.body29.for.inc_crit_edge
  %inc = add nuw nsw i32 %loop_.0141, 1
  %exitcond.not = icmp eq i32 %inc, 252
  br i1 %exitcond.not, label %do.body43, label %for.inc.do.body29_crit_edge

for.inc.do.body29_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

do.body43:                                        ; preds = %for.inc
  %17 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and44 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body43.do.end54_crit_edge, label %do.end49

do.body43.do.end54_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end54

do.end49:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %do.end54

do.end54:                                         ; preds = %do.end49, %do.body43.do.end54_crit_edge
  %18 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %udev, align 8
  %shl.i = shl i32 %19, 8
  %or = or i32 %shl.i, -1073676288
  %call56 = call i32 @usb_bulk_msg(ptr noundef %udev, i32 noundef %or, ptr noundef nonnull %call7.i, i32 noundef 252, ptr noundef nonnull %act_len, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %for.inc65, label %do.end61

do.end61:                                         ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %i.0144, i32 noundef %call56) #11
  br label %err

for.inc65:                                        ; preds = %do.end54
  %inc66 = add nuw nsw i32 %i.0144, 1
  %exitcond147.not = icmp eq i32 %inc66, %smax
  br i1 %exitcond147.not, label %for.inc65.for.end67_crit_edge, label %for.inc65.for.body_crit_edge

for.inc65.for.body_crit_edge:                     ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc65.for.end67_crit_edge:                    ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end67

for.end67:                                        ; preds = %for.inc65.for.end67_crit_edge, %if.end9.for.end67_crit_edge
  %call68 = call fastcc i32 @af9005_boot_packet(ptr noundef %udev, i32 noundef 1, ptr noundef nonnull %reply, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %for.end67.err_crit_edge

for.end67.err_crit_edge:                          ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end71:                                         ; preds = %for.end67
  %20 = ptrtoint ptr %reply to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reply, align 1
  %conv72 = zext i8 %21 to i32
  %conv75 = and i32 %div, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv75, i32 %conv72)
  %cmp76.not = icmp eq i32 %conv75, %conv72
  br i1 %cmp76.not, label %if.end86, label %do.end81

do.end81:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %conv75, i32 noundef %conv72) #11
  br label %err

if.end86:                                         ; preds = %if.end71
  %call87 = call fastcc i32 @af9005_boot_packet(ptr noundef %udev, i32 noundef 2, ptr noundef nonnull %reply, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end86.err_crit_edge

if.end86.err_crit_edge:                           ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end90:                                         ; preds = %if.end86
  %call91 = call fastcc i32 @af9005_boot_packet(ptr noundef %udev, i32 noundef 0, ptr noundef nonnull %reply, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end90.err_crit_edge

if.end90.err_crit_edge:                           ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end94:                                         ; preds = %if.end90
  %22 = ptrtoint ptr %reply to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reply, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp96.not = icmp eq i8 %23, 2
  br i1 %cmp96.not, label %if.end94.err_crit_edge, label %do.end101

if.end94.err_crit_edge:                           ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

do.end101:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %conv95 = zext i8 %23 to i32
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %conv95) #11
  br label %err

err:                                              ; preds = %do.end101, %if.end94.err_crit_edge, %if.end90.err_crit_edge, %if.end86.err_crit_edge, %do.end81, %for.end67.err_crit_edge, %do.end61, %do.end, %if.end.err_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.err_crit_edge ], [ -5, %do.end ], [ %call56, %do.end61 ], [ %call68, %for.end67.err_crit_edge ], [ -5, %do.end81 ], [ %call87, %if.end86.err_crit_edge ], [ %call91, %if.end90.err_crit_edge ], [ -5, %do.end101 ], [ 0, %if.end94.err_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reply) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %act_len) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9005_pid_filter(ptr nocapture noundef readonly %adap, i32 noundef %index, i16 noundef zeroext %pid, i32 noundef %onoff) #0 align 64 {
entry:
  %temp.i120 = alloca i8, align 1
  %temp.i105 = alloca i8, align 1
  %temp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %index to i8
  %conv = and i8 %0, 31
  %1 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and1 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv3 = zext i16 %pid to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, i32 noundef %index, i32 noundef %conv3, i32 noundef %onoff) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool6.not = icmp eq i32 %onoff, 0
  %feedcount43 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 4
  %2 = ptrtoint ptr %feedcount43 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %feedcount43, align 8
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %do.body10, label %if.then7.if.end26_crit_edge

if.then7.if.end26_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

do.body10:                                        ; preds = %if.then7
  %4 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and11 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body10.do.end21_crit_edge, label %do.end16

do.body10.do.end21_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21

do.end16:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195) #11
  br label %do.end21

do.end21:                                         ; preds = %do.end16, %do.body10.do.end21_crit_edge
  %call22 = tail call fastcc i32 @af9005_pid_filter_control(ptr noundef %adap, i32 noundef %onoff)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.end21.if.end26_crit_edge, label %do.end21.cleanup_crit_edge

do.end21.cleanup_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end21.if.end26_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end26:                                         ; preds = %do.end21.if.end26_crit_edge, %if.then7.if.end26_crit_edge
  %5 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adap, align 8
  %conv29 = trunc i16 %pid to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp.i) #8
  %7 = ptrtoint ptr %temp.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv29, ptr %temp.i, align 1
  %8 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and.i = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end26.do.end4.i_crit_edge, label %do.end.i

if.end26.do.end4.i_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i

do.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %conv29.mask = and i16 %pid, 255
  %conv2.i = zext i16 %conv29.mask to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 45061, i32 noundef %conv2.i) #11
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.end26.do.end4.i_crit_edge
  %call5.i = call fastcc i32 @af9005_generic_read_write(ptr noundef %6, i16 noundef zeroext -20475, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %temp.i, i32 noundef 1) #8
  %9 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and21.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %do.end4.i.af9005_write_ofdm_register.exit_crit_edge, label %if.end32.sink.split.i

do.end4.i.af9005_write_ofdm_register.exit_crit_edge: ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %af9005_write_ofdm_register.exit

if.end32.sink.split.i:                            ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  %.str.24..str.4.i = select i1 %tobool6.not.i, ptr @.str.24, ptr @.str.4
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.24..str.4.i) #11
  br label %af9005_write_ofdm_register.exit

af9005_write_ofdm_register.exit:                  ; preds = %if.end32.sink.split.i, %do.end4.i.af9005_write_ofdm_register.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool31.not = icmp eq i32 %call5.i, 0
  br i1 %tobool31.not, label %if.end33, label %af9005_write_ofdm_register.exit.cleanup_crit_edge

af9005_write_ofdm_register.exit.cleanup_crit_edge: ; preds = %af9005_write_ofdm_register.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %af9005_write_ofdm_register.exit
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 8
  %12 = lshr i16 %pid, 8
  %conv36 = trunc i16 %12 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp.i105) #8
  %13 = ptrtoint ptr %temp.i105 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv36, ptr %temp.i105, align 1
  %14 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and.i106 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %tobool.not.i107 = icmp eq i32 %and.i106, 0
  br i1 %tobool.not.i107, label %if.end33.do.end4.i114_crit_edge, label %do.end.i110

if.end33.do.end4.i114_crit_edge:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i114

do.end.i110:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %conv2.i108 = zext i16 %12 to i32
  %call.i109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 45062, i32 noundef %conv2.i108) #11
  br label %do.end4.i114

do.end4.i114:                                     ; preds = %do.end.i110, %if.end33.do.end4.i114_crit_edge
  %call5.i111 = call fastcc i32 @af9005_generic_read_write(ptr noundef %11, i16 noundef zeroext -20474, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %temp.i105, i32 noundef 1) #8
  %15 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and21.i112 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i112)
  %tobool22.not.i113 = icmp eq i32 %and21.i112, 0
  br i1 %tobool22.not.i113, label %do.end4.i114.af9005_write_ofdm_register.exit119_crit_edge, label %if.end32.sink.split.i118

do.end4.i114.af9005_write_ofdm_register.exit119_crit_edge: ; preds = %do.end4.i114
  call void @__sanitizer_cov_trace_pc() #10
  br label %af9005_write_ofdm_register.exit119

if.end32.sink.split.i118:                         ; preds = %do.end4.i114
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i111)
  %tobool6.not.i115 = icmp eq i32 %call5.i111, 0
  %.str.24..str.4.i116 = select i1 %tobool6.not.i115, ptr @.str.24, ptr @.str.4
  %call28.i117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.24..str.4.i116) #11
  br label %af9005_write_ofdm_register.exit119

af9005_write_ofdm_register.exit119:               ; preds = %if.end32.sink.split.i118, %do.end4.i114.af9005_write_ofdm_register.exit119_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i105) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i111)
  %tobool38.not = icmp eq i32 %call5.i111, 0
  br i1 %tobool38.not, label %if.end40, label %af9005_write_ofdm_register.exit119.cleanup_crit_edge

af9005_write_ofdm_register.exit119.cleanup_crit_edge: ; preds = %af9005_write_ofdm_register.exit119
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %af9005_write_ofdm_register.exit119
  call void @__sanitizer_cov_trace_pc() #10
  %16 = or i8 %conv, 96
  br label %if.end64

if.else:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp44 = icmp eq i32 %3, 0
  br i1 %cmp44, label %do.body47, label %if.else.if.end64_crit_edge

if.else.if.end64_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

do.body47:                                        ; preds = %if.else
  %17 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and48 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.body47.do.end58_crit_edge, label %do.end53

do.body47.do.end58_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58

do.end53:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198) #11
  br label %do.end58

do.end58:                                         ; preds = %do.end53, %do.body47.do.end58_crit_edge
  %call59 = tail call fastcc i32 @af9005_pid_filter_control(ptr noundef %adap, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %do.end58.if.end64_crit_edge, label %do.end58.cleanup_crit_edge

do.end58.cleanup_crit_edge:                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end58.if.end64_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.end64:                                         ; preds = %do.end58.if.end64_crit_edge, %if.else.if.end64_crit_edge, %if.end40
  %cmd.0 = phi i8 [ %16, %if.end40 ], [ %conv, %do.end58.if.end64_crit_edge ], [ %conv, %if.else.if.end64_crit_edge ]
  %18 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp.i120) #8
  %20 = ptrtoint ptr %temp.i120 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %cmd.0, ptr %temp.i120, align 1
  %21 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and.i121 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i121)
  %tobool.not.i122 = icmp eq i32 %and.i121, 0
  br i1 %tobool.not.i122, label %if.end64.do.end4.i129_crit_edge, label %do.end.i125

if.end64.do.end4.i129_crit_edge:                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i129

do.end.i125:                                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %conv2.i123 = zext i8 %cmd.0 to i32
  %call.i124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 45060, i32 noundef %conv2.i123) #11
  br label %do.end4.i129

do.end4.i129:                                     ; preds = %do.end.i125, %if.end64.do.end4.i129_crit_edge
  %call5.i126 = call fastcc i32 @af9005_generic_read_write(ptr noundef %19, i16 noundef zeroext -20476, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %temp.i120, i32 noundef 1) #8
  %22 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and21.i127 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i127)
  %tobool22.not.i128 = icmp eq i32 %and21.i127, 0
  br i1 %tobool22.not.i128, label %do.end4.i129.af9005_write_ofdm_register.exit134_crit_edge, label %if.end32.sink.split.i133

do.end4.i129.af9005_write_ofdm_register.exit134_crit_edge: ; preds = %do.end4.i129
  call void @__sanitizer_cov_trace_pc() #10
  br label %af9005_write_ofdm_register.exit134

if.end32.sink.split.i133:                         ; preds = %do.end4.i129
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i126)
  %tobool6.not.i130 = icmp eq i32 %call5.i126, 0
  %.str.24..str.4.i131 = select i1 %tobool6.not.i130, ptr @.str.24, ptr @.str.4
  %call28.i132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.24..str.4.i131) #11
  br label %af9005_write_ofdm_register.exit134

af9005_write_ofdm_register.exit134:               ; preds = %if.end32.sink.split.i133, %do.end4.i129.af9005_write_ofdm_register.exit134_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i120) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i126)
  %tobool67.not = icmp eq i32 %call5.i126, 0
  br i1 %tobool67.not, label %do.body70, label %af9005_write_ofdm_register.exit134.cleanup_crit_edge

af9005_write_ofdm_register.exit134.cleanup_crit_edge: ; preds = %af9005_write_ofdm_register.exit134
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body70:                                        ; preds = %af9005_write_ofdm_register.exit134
  %23 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and71 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.body70.cleanup_crit_edge, label %do.end76

do.body70.cleanup_crit_edge:                      ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end76:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #10
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end76, %do.body70.cleanup_crit_edge, %af9005_write_ofdm_register.exit134.cleanup_crit_edge, %do.end58.cleanup_crit_edge, %af9005_write_ofdm_register.exit119.cleanup_crit_edge, %af9005_write_ofdm_register.exit.cleanup_crit_edge, %do.end21.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %do.end21.cleanup_crit_edge ], [ %call5.i, %af9005_write_ofdm_register.exit.cleanup_crit_edge ], [ %call5.i111, %af9005_write_ofdm_register.exit119.cleanup_crit_edge ], [ %call59, %do.end58.cleanup_crit_edge ], [ %call5.i126, %af9005_write_ofdm_register.exit134.cleanup_crit_edge ], [ 0, %do.end76 ], [ 0, %do.body70.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9005_frontend_attach(ptr nocapture noundef %adap) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  %0 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %buf, align 8
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 8
  %udev1 = getelementptr inbounds %struct.dvb_usb_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev1, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i = shl i32 %13, 8
  %or = or i32 %shl.i, -1073676288
  %call2 = tail call i32 @usb_clear_halt(ptr noundef %11, i32 noundef %or) #8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 8
  %shl.i40 = shl i32 %15, 8
  %or5 = or i32 %shl.i40, -1073708928
  %call6 = tail call i32 @usb_clear_halt(ptr noundef %11, i32 noundef %or5) #8
  %16 = load i32, ptr @dvb_usb_af9005_dump_eeprom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208) #11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end
  %i.043 = phi i32 [ 0, %do.end ], [ %add, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adap, align 8
  %conv = trunc i32 %i.043 to i8
  %call9 = call i32 @af9005_read_eeprom(ptr noundef %18, i8 noundef zeroext %conv, ptr noundef nonnull %buf, i32 noundef 8)
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %buf, align 8
  %conv18 = zext i8 %20 to i32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv18) #11
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %0, align 1
  %conv18.1 = zext i8 %22 to i32
  %call19.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv18.1) #11
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %1, align 2
  %conv18.2 = zext i8 %24 to i32
  %call19.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv18.2) #11
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %2, align 1
  %conv18.3 = zext i8 %26 to i32
  %call19.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv18.3) #11
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %3, align 4
  %conv18.4 = zext i8 %28 to i32
  %call19.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv18.4) #11
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %4, align 1
  %conv18.5 = zext i8 %30 to i32
  %call19.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv18.5) #11
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %5, align 2
  %conv18.6 = zext i8 %32 to i32
  %call19.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv18.6) #11
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %6, align 1
  %conv18.7 = zext i8 %34 to i32
  %call19.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv18.7) #11
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  %add = add nuw nsw i32 %i.043, 8
  %cmp = icmp ult i32 %i.043, 247
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %entry.if.end_crit_edge
  %35 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adap, align 8
  %call28 = tail call ptr @af9005_fe_attach(ptr noundef %36) #8
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %37 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call28, ptr %fe_adap, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @af9005_power_ctrl(ptr nocapture noundef readnone %d, i32 noundef %onoff) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9005_identify_state(ptr noundef %udev, ptr nocapture noundef readnone %props, ptr nocapture noundef readnone %desc, ptr nocapture noundef %cold) #0 align 64 {
entry:
  %reply = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reply) #8
  %0 = ptrtoint ptr %reply to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reply, align 1, !annotation !488
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 252) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @af9005_boot_packet(ptr noundef %udev, i32 noundef 0, ptr noundef nonnull %reply, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

do.body:                                          ; preds = %if.end
  %2 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %3 = ptrtoint ptr %reply to i32
  call void @__asan_load1_noabort(i32 %3)
  %.pr = load i8, ptr %reply, align 1
  br i1 %tobool5.not, label %do.body.do.end11_crit_edge, label %do.end

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %.pr to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214, i32 noundef %conv) #11
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  %4 = zext i8 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %.pr, label %do.end11.err_crit_edge [
    i8 1, label %do.end11.do.body24_crit_edge
    i8 2, label %if.then18
  ]

do.end11.do.body24_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

do.end11.err_crit_edge:                           ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.then18:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

do.body24:                                        ; preds = %if.then18, %do.end11.do.body24_crit_edge
  %storemerge = phi i32 [ 0, %if.then18 ], [ 1, %do.end11.do.body24_crit_edge ]
  %5 = ptrtoint ptr %cold to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %storemerge, ptr %cold, align 4
  %6 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and25 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.err_crit_edge, label %do.end30

do.body24.err_crit_edge:                          ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

do.end30:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %cold to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cold, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217, i32 noundef %8) #11
  br label %err

err:                                              ; preds = %do.end30, %do.body24.err_crit_edge, %do.end11.err_crit_edge, %if.end.err_crit_edge
  %ret.1 = phi i32 [ %call1, %if.end.err_crit_edge ], [ 0, %do.end30 ], [ 0, %do.body24.err_crit_edge ], [ -5, %do.end11.err_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reply) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9005_rc_query(ptr noundef %d, ptr noundef %event, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  %3 = load ptr, ptr @rc_decode, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #8
  %data = getelementptr inbounds %struct.af9005_device_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %data, align 4
  %arrayidx2 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx2, align 1
  %arrayidx4 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 64, ptr %arrayidx4, align 2
  %arrayidx6 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %arrayidx6, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 4
  %inc = add i8 %9, 1
  store i8 %inc, ptr %1, align 4
  %arrayidx8 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx8, align 4
  %call = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data, i16 noundef zeroext 5, ptr noundef %data, i16 noundef zeroext 256, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219) #11
  br label %ret125

if.end14:                                         ; preds = %if.end
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx4, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %12)
  %cmp17.not = icmp eq i8 %12, 65
  br i1 %cmp17.not, label %if.else, label %do.end22

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222) #11
  br label %ret125

if.else:                                          ; preds = %if.end14
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %9)
  %cmp29.not = icmp eq i8 %14, %9
  br i1 %cmp29.not, label %if.end38, label %do.end34

do.end34:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225) #11
  br label %ret125

if.end38:                                         ; preds = %if.else
  %arrayidx40 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 5
  %15 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -10, i8 %16)
  %cmp42 = icmp ugt i8 %16, -10
  br i1 %cmp42, label %do.end47, label %if.end50

do.end47:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228) #11
  br label %ret125

if.end50:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp51.not = icmp eq i8 %16, 0
  br i1 %cmp51.not, label %if.end50.ret125_crit_edge, label %do.body54

if.end50.ret125_crit_edge:                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %ret125

do.body54:                                        ; preds = %if.end50
  %17 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool55.not = icmp eq i32 %and, 0
  br i1 %tobool55.not, label %do.body54.do.body67.lr.ph_crit_edge, label %do.end59

do.body54.do.body67.lr.ph_crit_edge:              ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body67.lr.ph

do.end59:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231, i32 noundef %conv41) #11
  br label %do.body67.lr.ph

do.body67.lr.ph:                                  ; preds = %do.end59, %do.body54.do.body67.lr.ph_crit_edge
  %add.ptr = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 6
  %umax = call i32 @llvm.umax.i32(i32 %conv41, i32 1)
  br label %do.body67

do.body67:                                        ; preds = %for.inc.do.body67_crit_edge, %do.body67.lr.ph
  %loop_.0161 = phi i32 [ 0, %do.body67.lr.ph ], [ %inc83, %for.inc.do.body67_crit_edge ]
  %18 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and68 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body67.for.inc_crit_edge, label %do.end73

do.body67.for.inc_crit_edge:                      ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end73:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx77 = getelementptr i8, ptr %add.ptr, i32 %loop_.0161
  %19 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %20 to i32
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv78) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end73, %do.body67.for.inc_crit_edge
  %inc83 = add nuw nsw i32 %loop_.0161, 1
  %exitcond.not = icmp eq i32 %inc83, %umax
  br i1 %exitcond.not, label %do.body84, label %for.inc.do.body67_crit_edge

for.inc.do.body67_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body67

do.body84:                                        ; preds = %for.inc
  %21 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and85 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %do.body84.do.end95_crit_edge, label %do.end90

do.body84.do.end95_crit_edge:                     ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end95

do.end90:                                         ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #10
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %do.end95

do.end95:                                         ; preds = %do.end90, %do.body84.do.end95_crit_edge
  %22 = load ptr, ptr @rc_decode, align 4
  %arrayidx97 = getelementptr %struct.af9005_device_state, ptr %1, i32 0, i32 2, i32 6
  %call98 = tail call i32 %22(ptr noundef %d, ptr noundef %arrayidx97, i32 noundef %conv41, ptr noundef %event, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %do.body107, label %do.end103

do.end103:                                        ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #10
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238) #11
  br label %ret125

do.body107:                                       ; preds = %do.end95
  %23 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and108 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %do.body107.do.end118_crit_edge, label %do.end113

do.body107.do.end118_crit_edge:                   ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end118

do.end113:                                        ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state, align 4
  %26 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %event, align 4
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241, i32 noundef %25, i32 noundef %27) #11
  br label %do.end118

do.end118:                                        ; preds = %do.end113, %do.body107.do.end118_crit_edge
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp119 = icmp eq i32 %29, 2
  br i1 %cmp119, label %if.then121, label %do.end118.ret125_crit_edge

do.end118.ret125_crit_edge:                       ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %ret125

if.then121:                                       ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #10
  %last_event = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %30 = ptrtoint ptr %last_event to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %last_event, align 4
  %32 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %event, align 4
  br label %ret125

ret125:                                           ; preds = %if.then121, %do.end118.ret125_crit_edge, %do.end103, %if.end50.ret125_crit_edge, %do.end47, %do.end34, %do.end22, %do.end
  %ret.0 = phi i32 [ %call, %do.end ], [ -5, %do.end22 ], [ -5, %do.end34 ], [ -5, %do.end47 ], [ %call98, %do.end103 ], [ 0, %if.then121 ], [ 0, %do.end118.ret125_crit_edge ], [ 0, %if.end50.ret125_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %ret125, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %ret125 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9005_boot_packet(ptr noundef %udev, i32 noundef %type, ptr nocapture noundef writeonly %reply, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  %act_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %act_len) #8
  %0 = ptrtoint ptr %act_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %act_len, align 4
  %1 = getelementptr inbounds i8, ptr %buf, i32 2
  %2 = call ptr @memset(ptr %1, i32 0, i32 250)
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -6, ptr %buf, align 1
  %arrayidx1 = getelementptr i8, ptr %buf, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx1, align 1
  %5 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.277)
  switch i32 %type, label %do.end [
    i32 0, label %entry.do.body61_crit_edge
    i32 1, label %sw.bb17
    i32 2, label %sw.bb37
  ]

entry.do.body61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body61

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body61

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx38 = getelementptr i8, ptr %buf, i32 2
  %6 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %arrayidx38, align 1
  %arrayidx39 = getelementptr i8, ptr %buf, i32 3
  %7 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %arrayidx39, align 1
  %arrayidx40 = getelementptr i8, ptr %buf, i32 4
  %8 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx40, align 1
  %arrayidx41 = getelementptr i8, ptr %buf, i32 5
  %9 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -105, ptr %arrayidx41, align 1
  br label %do.body61

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #11
  br label %cleanup

do.body61:                                        ; preds = %sw.bb37, %sw.bb17, %entry.do.body61_crit_edge
  %.sink33 = phi i32 [ 2, %sw.bb17 ], [ 6, %sw.bb37 ], [ 2, %entry.do.body61_crit_edge ]
  %.sink32 = phi i8 [ 17, %sw.bb17 ], [ -86, %sw.bb37 ], [ 17, %entry.do.body61_crit_edge ]
  %.sink31 = phi i32 [ 3, %sw.bb17 ], [ 7, %sw.bb37 ], [ 3, %entry.do.body61_crit_edge ]
  %.sink30 = phi i8 [ 4, %sw.bb17 ], [ 85, %sw.bb37 ], [ 4, %entry.do.body61_crit_edge ]
  %.sink29 = phi i32 [ 4, %sw.bb17 ], [ 8, %sw.bb37 ], [ 4, %entry.do.body61_crit_edge ]
  %.sink28 = phi i8 [ 0, %sw.bb17 ], [ -91, %sw.bb37 ], [ 0, %entry.do.body61_crit_edge ]
  %.sink27 = phi i32 [ 5, %sw.bb17 ], [ 9, %sw.bb37 ], [ 5, %entry.do.body61_crit_edge ]
  %.sink26 = phi i8 [ 1, %sw.bb17 ], [ 90, %sw.bb37 ], [ 3, %entry.do.body61_crit_edge ]
  %.sink25 = phi i32 [ 6, %sw.bb17 ], [ 10, %sw.bb37 ], [ 6, %entry.do.body61_crit_edge ]
  %.sink24 = phi i8 [ 0, %sw.bb17 ], [ 2, %sw.bb37 ], [ 0, %entry.do.body61_crit_edge ]
  %.sink23 = phi i32 [ 7, %sw.bb17 ], [ 11, %sw.bb37 ], [ 7, %entry.do.body61_crit_edge ]
  %.sink = phi i8 [ 1, %sw.bb17 ], [ -107, %sw.bb37 ], [ 3, %entry.do.body61_crit_edge ]
  %arrayidx2 = getelementptr i8, ptr %buf, i32 %.sink33
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink32, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr i8, ptr %buf, i32 %.sink31
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink30, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr i8, ptr %buf, i32 %.sink29
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink28, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr i8, ptr %buf, i32 %.sink27
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink26, ptr %arrayidx5, align 1
  %arrayidx12 = getelementptr i8, ptr %buf, i32 %.sink25
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink24, ptr %arrayidx12, align 1
  %arrayidx16 = getelementptr i8, ptr %buf, i32 %.sink23
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink, ptr %arrayidx16, align 1
  %16 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and62 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool.not = icmp eq i32 %and62, 0
  br i1 %tobool.not, label %do.body61.do.body74.preheader_crit_edge, label %do.end65

do.body61.do.body74.preheader_crit_edge:          ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body74.preheader

do.end65:                                         ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #10
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #11
  br label %do.body74.preheader

do.body74.preheader:                              ; preds = %do.end65, %do.body61.do.body74.preheader_crit_edge
  br label %do.body74

do.body74:                                        ; preds = %for.inc88.do.body74_crit_edge, %do.body74.preheader
  %loop_.09 = phi i32 [ %inc89, %for.inc88.do.body74_crit_edge ], [ 0, %do.body74.preheader ]
  %17 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and75 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body74.for.inc88_crit_edge, label %do.end80

do.body74.for.inc88_crit_edge:                    ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc88

do.end80:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx82 = getelementptr i8, ptr %buf, i32 %loop_.09
  %18 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %19 to i32
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv83) #11
  br label %for.inc88

for.inc88:                                        ; preds = %do.end80, %do.body74.for.inc88_crit_edge
  %inc89 = add nuw nsw i32 %loop_.09, 1
  %exitcond.not = icmp eq i32 %inc89, 252
  br i1 %exitcond.not, label %do.body91, label %for.inc88.do.body74_crit_edge

for.inc88.do.body74_crit_edge:                    ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body74

do.body91:                                        ; preds = %for.inc88
  %20 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and92 = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %do.body91.do.end102_crit_edge, label %do.end97

do.body91.do.end102_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end102

do.end97:                                         ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #10
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %do.end102

do.end102:                                        ; preds = %do.end97, %do.body91.do.end102_crit_edge
  %21 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %udev, align 8
  %shl.i = shl i32 %22, 8
  %or = or i32 %shl.i, -1073676288
  %call104 = call i32 @usb_bulk_msg(ptr noundef %udev, i32 noundef %or, ptr noundef %buf, i32 noundef 252, ptr noundef nonnull %act_len, i32 noundef 2000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  %23 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %act_len, align 4
  br i1 %tobool105.not, label %if.end114, label %if.end114.thread

if.end114.thread:                                 ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #10
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, i32 noundef %call104, i32 noundef 252, i32 noundef %24) #11
  br label %cleanup

if.end114:                                        ; preds = %do.end102
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %24)
  %cmp112.not.not = icmp eq i32 %24, 252
  br i1 %cmp112.not.not, label %if.end117, label %if.end114.cleanup_crit_edge

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end117:                                        ; preds = %if.end114
  %25 = call ptr @memset(ptr %buf, i32 0, i32 9)
  %26 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %udev, align 8
  %shl.i3 = shl i32 %27, 8
  %or120 = or i32 %shl.i3, -1073708928
  %call121 = call i32 @usb_bulk_msg(ptr noundef %udev, i32 noundef %or120, ptr noundef %buf, i32 noundef 9, ptr noundef nonnull %act_len, i32 noundef 2000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %do.body130, label %do.end126

do.end126:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  %call128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, i32 noundef %call121) #11
  br label %cleanup

do.body130:                                       ; preds = %if.end117
  %28 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and131 = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %do.body130.do.end141_crit_edge, label %do.end136

do.body130.do.end141_crit_edge:                   ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end141

do.end136:                                        ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #10
  %call138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #11
  br label %do.end141

do.end141:                                        ; preds = %do.end136, %do.body130.do.end141_crit_edge
  %29 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %act_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp14411 = icmp sgt i32 %30, 0
  br i1 %cmp14411, label %do.end141.do.body147_crit_edge, label %do.end141.do.body164_crit_edge

do.end141.do.body164_crit_edge:                   ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body164

do.end141.do.body147_crit_edge:                   ; preds = %do.end141
  br label %do.body147

do.body147:                                       ; preds = %for.inc161.do.body147_crit_edge, %do.end141.do.body147_crit_edge
  %loop_142.012 = phi i32 [ %inc162, %for.inc161.do.body147_crit_edge ], [ 0, %do.end141.do.body147_crit_edge ]
  %31 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and148 = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %do.body147.for.inc161_crit_edge, label %do.end153

do.body147.for.inc161_crit_edge:                  ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc161

do.end153:                                        ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx155 = getelementptr i8, ptr %buf, i32 %loop_142.012
  %32 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx155, align 1
  %conv156 = zext i8 %33 to i32
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv156) #11
  br label %for.inc161

for.inc161:                                       ; preds = %do.end153, %do.body147.for.inc161_crit_edge
  %inc162 = add nuw nsw i32 %loop_142.012, 1
  %34 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %act_len, align 4
  %cmp144 = icmp slt i32 %inc162, %35
  br i1 %cmp144, label %for.inc161.do.body147_crit_edge, label %for.inc161.do.body164_crit_edge

for.inc161.do.body164_crit_edge:                  ; preds = %for.inc161
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body164

for.inc161.do.body147_crit_edge:                  ; preds = %for.inc161
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body147

do.body164:                                       ; preds = %for.inc161.do.body164_crit_edge, %do.end141.do.body164_crit_edge
  %36 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and165 = and i32 %36, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %do.body164.do.end175_crit_edge, label %do.end170

do.body164.do.end175_crit_edge:                   ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end175

do.end170:                                        ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #10
  %call172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %do.end175

do.end175:                                        ; preds = %do.end170, %do.body164.do.end175_crit_edge
  %37 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.278)
  switch i32 %type, label %do.end175.cleanup_crit_edge [
    i32 0, label %sw.bb176
    i32 1, label %sw.bb249
    i32 2, label %sw.bb323
  ]

do.end175.cleanup_crit_edge:                      ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb176:                                         ; preds = %do.end175
  %arrayidx177 = getelementptr i8, ptr %buf, i32 2
  %38 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx177, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %39)
  %cmp179.not = icmp eq i8 %39, 17
  br i1 %cmp179.not, label %if.end187, label %do.end184

do.end184:                                        ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #10
  %call186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145) #11
  br label %cleanup

if.end187:                                        ; preds = %sw.bb176
  %arrayidx188 = getelementptr i8, ptr %buf, i32 3
  %40 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx188, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %41)
  %cmp190.not = icmp eq i8 %41, 5
  br i1 %cmp190.not, label %if.end198, label %do.end195

do.end195:                                        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  %call197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148) #11
  br label %cleanup

if.end198:                                        ; preds = %if.end187
  %arrayidx199 = getelementptr i8, ptr %buf, i32 4
  %42 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx199, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp201.not = icmp eq i8 %43, 0
  br i1 %cmp201.not, label %if.end209, label %do.end206

do.end206:                                        ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #10
  %call208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151) #11
  br label %cleanup

if.end209:                                        ; preds = %if.end198
  %arrayidx210 = getelementptr i8, ptr %buf, i32 5
  %44 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx210, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %45)
  %cmp212.not = icmp eq i8 %45, 4
  br i1 %cmp212.not, label %for.body224.preheader, label %do.end217

for.body224.preheader:                            ; preds = %if.end209
  %46 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx199, align 1
  %conv226 = zext i8 %47 to i32
  %48 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx210, align 1
  %conv226.1 = zext i8 %49 to i32
  %add228.1 = add nuw nsw i32 %conv226, %conv226.1
  %arrayidx225.2 = getelementptr i8, ptr %buf, i32 6
  %50 = ptrtoint ptr %arrayidx225.2 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx225.2, align 1
  %conv226.2 = zext i8 %51 to i32
  %add228.2 = add nuw nsw i32 %add228.1, %conv226.2
  %arrayidx233 = getelementptr i8, ptr %buf, i32 7
  %52 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx233, align 1
  %conv234 = zext i8 %53 to i32
  %mul = shl nuw nsw i32 %conv234, 8
  %arrayidx235 = getelementptr i8, ptr %buf, i32 8
  %54 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx235, align 1
  %conv236 = zext i8 %55 to i32
  %add237 = or i32 %mul, %conv236
  call void @__sanitizer_cov_trace_cmp4(i32 %add237, i32 %add228.2)
  %cmp239.not = icmp eq i32 %add237, %add228.2
  br i1 %cmp239.not, label %if.end247, label %do.end244

do.end217:                                        ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  %call219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154) #11
  br label %cleanup

do.end244:                                        ; preds = %for.body224.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %call246 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157) #11
  br label %cleanup

if.end247:                                        ; preds = %for.body224.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %arrayidx225.2 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx225.2, align 1
  %58 = ptrtoint ptr %reply to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %reply, align 1
  br label %cleanup

sw.bb249:                                         ; preds = %do.end175
  %arrayidx250 = getelementptr i8, ptr %buf, i32 2
  %59 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx250, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %60)
  %cmp252.not = icmp eq i8 %60, 17
  br i1 %cmp252.not, label %if.end260, label %do.end257

do.end257:                                        ; preds = %sw.bb249
  call void @__sanitizer_cov_trace_pc() #10
  %call259 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160) #11
  br label %cleanup

if.end260:                                        ; preds = %sw.bb249
  %arrayidx261 = getelementptr i8, ptr %buf, i32 3
  %61 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx261, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %62)
  %cmp263.not = icmp eq i8 %62, 5
  br i1 %cmp263.not, label %if.end271, label %do.end268

do.end268:                                        ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #10
  %call270 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #11
  br label %cleanup

if.end271:                                        ; preds = %if.end260
  %arrayidx272 = getelementptr i8, ptr %buf, i32 4
  %63 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx272, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp274.not = icmp eq i8 %64, 0
  br i1 %cmp274.not, label %if.end282, label %do.end279

do.end279:                                        ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #10
  %call281 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166) #11
  br label %cleanup

if.end282:                                        ; preds = %if.end271
  %arrayidx283 = getelementptr i8, ptr %buf, i32 5
  %65 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx283, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %cmp285.not = icmp eq i8 %66, 2
  br i1 %cmp285.not, label %for.body297.preheader, label %do.end290

for.body297.preheader:                            ; preds = %if.end282
  %67 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx272, align 1
  %conv299 = zext i8 %68 to i32
  %69 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx283, align 1
  %conv299.1 = zext i8 %70 to i32
  %add301.1 = add nuw nsw i32 %conv299, %conv299.1
  %arrayidx298.2 = getelementptr i8, ptr %buf, i32 6
  %71 = ptrtoint ptr %arrayidx298.2 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx298.2, align 1
  %conv299.2 = zext i8 %72 to i32
  %add301.2 = add nuw nsw i32 %add301.1, %conv299.2
  %arrayidx306 = getelementptr i8, ptr %buf, i32 7
  %73 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx306, align 1
  %conv307 = zext i8 %74 to i32
  %mul308 = shl nuw nsw i32 %conv307, 8
  %arrayidx309 = getelementptr i8, ptr %buf, i32 8
  %75 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx309, align 1
  %conv310 = zext i8 %76 to i32
  %add311 = or i32 %mul308, %conv310
  call void @__sanitizer_cov_trace_cmp4(i32 %add311, i32 %add301.2)
  %cmp313.not = icmp eq i32 %add311, %add301.2
  br i1 %cmp313.not, label %if.end321, label %do.end318

do.end290:                                        ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #10
  %call292 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169) #11
  br label %cleanup

do.end318:                                        ; preds = %for.body297.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %call320 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172) #11
  br label %cleanup

if.end321:                                        ; preds = %for.body297.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %arrayidx298.2 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx298.2, align 1
  %79 = ptrtoint ptr %reply to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %reply, align 1
  br label %cleanup

sw.bb323:                                         ; preds = %do.end175
  %arrayidx324 = getelementptr i8, ptr %buf, i32 2
  %80 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx324, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %81)
  %cmp326.not = icmp eq i8 %81, 16
  br i1 %cmp326.not, label %if.end334, label %do.end331

do.end331:                                        ; preds = %sw.bb323
  call void @__sanitizer_cov_trace_pc() #10
  %call333 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175) #11
  br label %cleanup

if.end334:                                        ; preds = %sw.bb323
  %arrayidx335 = getelementptr i8, ptr %buf, i32 3
  %82 = ptrtoint ptr %arrayidx335 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx335, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %83)
  %cmp337.not = icmp eq i8 %83, 5
  br i1 %cmp337.not, label %if.end345, label %do.end342

do.end342:                                        ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #10
  %call344 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #11
  br label %cleanup

if.end345:                                        ; preds = %if.end334
  %arrayidx346 = getelementptr i8, ptr %buf, i32 4
  %84 = ptrtoint ptr %arrayidx346 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx346, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %cmp348.not = icmp eq i8 %85, 0
  br i1 %cmp348.not, label %if.end356, label %do.end353

do.end353:                                        ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #10
  %call355 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #11
  br label %cleanup

if.end356:                                        ; preds = %if.end345
  %arrayidx357 = getelementptr i8, ptr %buf, i32 5
  %86 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx357, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp359.not = icmp eq i8 %87, 1
  br i1 %cmp359.not, label %if.end367, label %do.end364

do.end364:                                        ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #10
  %call366 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184) #11
  br label %cleanup

if.end367:                                        ; preds = %if.end356
  %arrayidx368 = getelementptr i8, ptr %buf, i32 6
  %88 = ptrtoint ptr %arrayidx368 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx368, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %89)
  %cmp370.not = icmp eq i8 %89, 16
  br i1 %cmp370.not, label %for.body382.preheader, label %do.end375

for.body382.preheader:                            ; preds = %if.end367
  %90 = ptrtoint ptr %arrayidx346 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx346, align 1
  %conv384 = zext i8 %91 to i32
  %92 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx357, align 1
  %conv384.1 = zext i8 %93 to i32
  %add386.1 = add nuw nsw i32 %conv384, %conv384.1
  %94 = ptrtoint ptr %arrayidx368 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx368, align 1
  %conv384.2 = zext i8 %95 to i32
  %add386.2 = add nuw nsw i32 %add386.1, %conv384.2
  %arrayidx391 = getelementptr i8, ptr %buf, i32 7
  %96 = ptrtoint ptr %arrayidx391 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx391, align 1
  %conv392 = zext i8 %97 to i32
  %mul393 = shl nuw nsw i32 %conv392, 8
  %arrayidx394 = getelementptr i8, ptr %buf, i32 8
  %98 = ptrtoint ptr %arrayidx394 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx394, align 1
  %conv395 = zext i8 %99 to i32
  %add396 = or i32 %mul393, %conv395
  call void @__sanitizer_cov_trace_cmp4(i32 %add396, i32 %add386.2)
  %cmp398.not = icmp eq i32 %add396, %add386.2
  br i1 %cmp398.not, label %for.body382.preheader.cleanup_crit_edge, label %do.end403

for.body382.preheader.cleanup_crit_edge:          ; preds = %for.body382.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end375:                                        ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #10
  %call377 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187) #11
  br label %cleanup

do.end403:                                        ; preds = %for.body382.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %call405 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end403, %do.end375, %for.body382.preheader.cleanup_crit_edge, %do.end364, %do.end353, %do.end342, %do.end331, %if.end321, %do.end318, %do.end290, %do.end279, %do.end268, %do.end257, %if.end247, %do.end244, %do.end217, %do.end206, %do.end195, %do.end184, %do.end175.cleanup_crit_edge, %do.end126, %if.end114.cleanup_crit_edge, %if.end114.thread, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call121, %do.end126 ], [ -5, %do.end331 ], [ -5, %do.end342 ], [ -5, %do.end353 ], [ -5, %do.end364 ], [ -5, %do.end375 ], [ -5, %do.end403 ], [ -5, %do.end257 ], [ -5, %do.end268 ], [ -5, %do.end279 ], [ -5, %do.end290 ], [ -5, %do.end318 ], [ -5, %do.end184 ], [ -5, %do.end195 ], [ -5, %do.end206 ], [ -5, %do.end217 ], [ -5, %do.end244 ], [ -1, %if.end114.cleanup_crit_edge ], [ 0, %for.body382.preheader.cleanup_crit_edge ], [ 0, %do.end175.cleanup_crit_edge ], [ 0, %if.end321 ], [ 0, %if.end247 ], [ %call104, %if.end114.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %act_len) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9005_pid_filter_control(ptr nocapture noundef readonly %adap, i32 noundef %onoff) unnamed_addr #0 align 64 {
entry:
  %temp.i58 = alloca i8, align 1
  %temp.i44 = alloca i8, align 1
  %temp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, i32 noundef %onoff) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool4.not = icmp eq i32 %onoff, 0
  %1 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adap, align 8
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp.i) #8
  %3 = ptrtoint ptr %temp.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %temp.i, align 1
  %4 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then5.do.end4.i_crit_edge, label %do.end.i

if.then5.do.end4.i_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 45059, i32 noundef 1) #11
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.then5.do.end4.i_crit_edge
  %call5.i = call fastcc i32 @af9005_generic_read_write(ptr noundef %2, i16 noundef zeroext -20477, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %temp.i, i32 noundef 1) #8
  %5 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and21.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %do.end4.i.af9005_write_ofdm_register.exit_crit_edge, label %if.end32.sink.split.i

do.end4.i.af9005_write_ofdm_register.exit_crit_edge: ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %af9005_write_ofdm_register.exit

if.end32.sink.split.i:                            ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  %.str.24..str.4.i = select i1 %tobool6.not.i, ptr @.str.24, ptr @.str.4
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.24..str.4.i) #11
  br label %af9005_write_ofdm_register.exit

af9005_write_ofdm_register.exit:                  ; preds = %if.end32.sink.split.i, %do.end4.i.af9005_write_ofdm_register.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool7.not = icmp eq i32 %call5.i, 0
  br i1 %tobool7.not, label %if.end9, label %af9005_write_ofdm_register.exit.cleanup_crit_edge

af9005_write_ofdm_register.exit.cleanup_crit_edge: ; preds = %af9005_write_ofdm_register.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %af9005_write_ofdm_register.exit
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 8
  %call11 = tail call i32 @af9005_write_register_bits(ptr noundef %7, i16 noundef zeroext -20477, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp.i44) #8
  %10 = ptrtoint ptr %temp.i44 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %temp.i44, align 1
  %11 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and.i45 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool.not.i46 = icmp eq i32 %and.i45, 0
  br i1 %tobool.not.i46, label %if.end14.do.end4.i52_crit_edge, label %do.end.i48

if.end14.do.end4.i52_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i52

do.end.i48:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call.i47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 45059, i32 noundef 1) #11
  br label %do.end4.i52

do.end4.i52:                                      ; preds = %do.end.i48, %if.end14.do.end4.i52_crit_edge
  %call5.i49 = call fastcc i32 @af9005_generic_read_write(ptr noundef %9, i16 noundef zeroext -20477, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %temp.i44, i32 noundef 1) #8
  %12 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and21.i50 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i50)
  %tobool22.not.i51 = icmp eq i32 %and21.i50, 0
  br i1 %tobool22.not.i51, label %do.end4.i52.af9005_write_ofdm_register.exit57_crit_edge, label %if.end32.sink.split.i56

do.end4.i52.af9005_write_ofdm_register.exit57_crit_edge: ; preds = %do.end4.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %af9005_write_ofdm_register.exit57

if.end32.sink.split.i56:                          ; preds = %do.end4.i52
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i49)
  %tobool6.not.i53 = icmp eq i32 %call5.i49, 0
  %.str.24..str.4.i54 = select i1 %tobool6.not.i53, ptr @.str.24, ptr @.str.4
  %call28.i55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.24..str.4.i54) #11
  br label %af9005_write_ofdm_register.exit57

af9005_write_ofdm_register.exit57:                ; preds = %if.end32.sink.split.i56, %do.end4.i52.af9005_write_ofdm_register.exit57_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i44) #8
  br label %if.end19

if.else:                                          ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp.i58) #8
  %13 = ptrtoint ptr %temp.i58 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %temp.i58, align 1
  %14 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and.i59 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59)
  %tobool.not.i60 = icmp eq i32 %and.i59, 0
  br i1 %tobool.not.i60, label %if.else.do.end4.i66_crit_edge, label %do.end.i62

if.else.do.end4.i66_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i66

do.end.i62:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call.i61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 45059, i32 noundef 0) #11
  br label %do.end4.i66

do.end4.i66:                                      ; preds = %do.end.i62, %if.else.do.end4.i66_crit_edge
  %call5.i63 = call fastcc i32 @af9005_generic_read_write(ptr noundef %2, i16 noundef zeroext -20477, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %temp.i58, i32 noundef 1) #8
  %15 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and21.i64 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i64)
  %tobool22.not.i65 = icmp eq i32 %and21.i64, 0
  br i1 %tobool22.not.i65, label %do.end4.i66.af9005_write_ofdm_register.exit71_crit_edge, label %if.end32.sink.split.i70

do.end4.i66.af9005_write_ofdm_register.exit71_crit_edge: ; preds = %do.end4.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %af9005_write_ofdm_register.exit71

if.end32.sink.split.i70:                          ; preds = %do.end4.i66
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i63)
  %tobool6.not.i67 = icmp eq i32 %call5.i63, 0
  %.str.24..str.4.i68 = select i1 %tobool6.not.i67, ptr @.str.24, ptr @.str.4
  %call28.i69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.24..str.4.i68) #11
  br label %af9005_write_ofdm_register.exit71

af9005_write_ofdm_register.exit71:                ; preds = %if.end32.sink.split.i70, %do.end4.i66.af9005_write_ofdm_register.exit71_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i58) #8
  br label %if.end19

if.end19:                                         ; preds = %af9005_write_ofdm_register.exit71, %af9005_write_ofdm_register.exit57
  %ret.0 = phi i32 [ %call5.i49, %af9005_write_ofdm_register.exit57 ], [ %call5.i63, %af9005_write_ofdm_register.exit71 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool20.not = icmp eq i32 %ret.0, 0
  br i1 %tobool20.not, label %do.body23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body23:                                        ; preds = %if.end19
  %16 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and24 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body23.cleanup_crit_edge, label %do.end29

do.body23.cleanup_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end29:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %do.body23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %af9005_write_ofdm_register.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5.i, %af9005_write_ofdm_register.exit.cleanup_crit_edge ], [ %call11, %if.end9.cleanup_crit_edge ], [ %ret.0, %if.end19.cleanup_crit_edge ], [ 0, %do.end29 ], [ 0, %do.body23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @af9005_fe_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9005_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #0 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 1
  %temp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp2 = icmp sgt i32 %num, 2
  br i1 %cmp2, label %if.end5.thread, label %if.end5

if.end5.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.243) #11
  br label %if.else

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp6 = icmp eq i32 %num, 2
  br i1 %cmp6, label %if.then7, label %if.end5.if.else_crit_edge

if.end5.if.else_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then7:                                         ; preds = %if.end5
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %msg, align 4
  %conv = trunc i16 %7 to i8
  %buf11 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %8 = ptrtoint ptr %buf11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf11, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp.i) #8
  %10 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and.i = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then7.do.end4.i_crit_edge, label %do.end.i

if.then7.do.end4.i_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i

do.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %conv.mask = and i16 %7, 255
  %conv.i = zext i16 %conv.mask to i32
  %conv2.i = zext i8 %5 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef 1) #11
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.then7.do.end4.i_crit_edge
  %11 = ptrtoint ptr %temp.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %5, ptr %temp.i, align 1
  %call8.i = call i32 @af9005_read_tuner_registers(ptr noundef %1, i16 noundef zeroext -4095, i8 noundef zeroext %conv, ptr noundef nonnull %temp.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end23.i, label %do.body11.i

do.body11.i:                                      ; preds = %do.end4.i
  %12 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and12.i = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %do.body11.i.af9005_i2c_read.exit_crit_edge, label %do.body11.i.cleanup.sink.split.i_crit_edge

do.body11.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

do.body11.i.af9005_i2c_read.exit_crit_edge:       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %af9005_i2c_read.exit

if.end23.i:                                       ; preds = %do.end4.i
  %13 = ptrtoint ptr %temp.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %temp.i, align 1
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %9, align 1
  %16 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and25.i = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end23.i.do.end35.i_crit_edge, label %do.end30.i

if.end23.i.do.end35.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35.i

do.end30.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251) #11
  br label %do.end35.i

do.end35.i:                                       ; preds = %do.end30.i, %if.end23.i.do.end35.i_crit_edge
  %17 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and41.i = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %do.end35.i.do.body57.i_crit_edge, label %do.end46.i

do.end35.i.do.body57.i_crit_edge:                 ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57.i

do.end46.i:                                       ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %9, align 1
  %conv49.i = zext i8 %19 to i32
  %call50.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv49.i) #11
  br label %do.body57.i

do.body57.i:                                      ; preds = %do.end46.i, %do.end35.i.do.body57.i_crit_edge
  %20 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and58.i = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %do.body57.i.af9005_i2c_read.exit_crit_edge, label %do.body57.i.cleanup.sink.split.i_crit_edge

do.body57.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

do.body57.i.af9005_i2c_read.exit_crit_edge:       ; preds = %do.body57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %af9005_i2c_read.exit

cleanup.sink.split.i:                             ; preds = %do.body57.i.cleanup.sink.split.i_crit_edge, %do.body11.i.cleanup.sink.split.i_crit_edge
  %.str.17.sink.i = phi ptr [ @.str.248, %do.body11.i.cleanup.sink.split.i_crit_edge ], [ @.str.17, %do.body57.i.cleanup.sink.split.i_crit_edge ]
  %call65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.17.sink.i) #11
  br label %af9005_i2c_read.exit

af9005_i2c_read.exit:                             ; preds = %cleanup.sink.split.i, %do.body57.i.af9005_i2c_read.exit_crit_edge, %do.body11.i.af9005_i2c_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i) #8
  %spec.store.select = select i1 %tobool9.not.i, i32 2, i32 %call8.i
  br label %if.end33

if.else:                                          ; preds = %if.end5.if.else_crit_edge, %if.end5.thread
  %buf18 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %21 = ptrtoint ptr %buf18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf18, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %25 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %msg, align 4
  %conv22 = trunc i16 %26 to i8
  %arrayidx25 = getelementptr i8, ptr %22, i32 1
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %len, align 4
  %conv27 = zext i16 %28 to i32
  %sub = add nsw i32 %conv27, -1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #8
  %29 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %30 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %31 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and.i55 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %tobool.not.i56 = icmp eq i32 %and.i55, 0
  br i1 %tobool.not.i56, label %if.else.do.end4.i61_crit_edge, label %do.end.i60

if.else.do.end4.i61_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i61

do.end.i60:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %conv22.mask = and i16 %26, 255
  %conv.i57 = zext i16 %conv22.mask to i32
  %conv2.i58 = zext i8 %24 to i32
  %call.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257, i32 noundef %conv.i57, i32 noundef %conv2.i58, i32 noundef %sub) #11
  br label %do.end4.i61

do.end4.i61:                                      ; preds = %do.end.i60, %if.else.do.end4.i61_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %28)
  %cmp87.i = icmp ugt i16 %28, 1
  br i1 %cmp87.i, label %do.end4.i61.do.body6.i_crit_edge, label %do.end4.i61.do.body19.i_crit_edge

do.end4.i61.do.body19.i_crit_edge:                ; preds = %do.end4.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19.i

do.end4.i61.do.body6.i_crit_edge:                 ; preds = %do.end4.i61
  br label %do.body6.i

do.body6.i:                                       ; preds = %for.inc.i.do.body6.i_crit_edge, %do.end4.i61.do.body6.i_crit_edge
  %loop_.088.i = phi i32 [ %inc.i, %for.inc.i.do.body6.i_crit_edge ], [ 0, %do.end4.i61.do.body6.i_crit_edge ]
  %32 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and7.i = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %do.body6.i.for.inc.i_crit_edge, label %do.end12.i

do.body6.i.for.inc.i_crit_edge:                   ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

do.end12.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr i8, ptr %arrayidx25, i32 %loop_.088.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i, align 1
  %conv14.i = zext i8 %34 to i32
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv14.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end12.i, %do.body6.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %loop_.088.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub
  br i1 %exitcond.not.i, label %for.inc.i.do.body19.i_crit_edge, label %for.inc.i.do.body6.i_crit_edge

for.inc.i.do.body6.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6.i

for.inc.i.do.body19.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19.i

do.body19.i:                                      ; preds = %for.inc.i.do.body19.i_crit_edge, %do.end4.i61.do.body19.i_crit_edge
  %35 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and20.i = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %do.body19.i.do.end30.i62_crit_edge, label %do.end25.i

do.body19.i.do.end30.i62_crit_edge:               ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i62

do.end25.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #10
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %do.end30.i62

do.end30.i62:                                     ; preds = %do.end25.i, %do.body19.i.do.end30.i62_crit_edge
  br i1 %cmp87.i, label %do.end30.i62.for.body34.i_crit_edge, label %do.end30.i62.do.body62.i_crit_edge

do.end30.i62.do.body62.i_crit_edge:               ; preds = %do.end30.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62.i

do.end30.i62.for.body34.i_crit_edge:              ; preds = %do.end30.i62
  br label %for.body34.i

for.cond31.i:                                     ; preds = %for.body34.i
  %inc60.i = add nuw nsw i32 %i.091.i, 1
  %exitcond93.not.i = icmp eq i32 %inc60.i, %sub
  br i1 %exitcond93.not.i, label %for.cond31.i.do.body62.i_crit_edge, label %for.cond31.i.for.body34.i_crit_edge

for.cond31.i.for.body34.i_crit_edge:              ; preds = %for.cond31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body34.i

for.cond31.i.do.body62.i_crit_edge:               ; preds = %for.cond31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62.i

for.body34.i:                                     ; preds = %for.cond31.i.for.body34.i_crit_edge, %do.end30.i62.for.body34.i_crit_edge
  %i.091.i = phi i32 [ %inc60.i, %for.cond31.i.for.body34.i_crit_edge ], [ 0, %do.end30.i62.for.body34.i_crit_edge ]
  %36 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv22, ptr %buf.i, align 1
  %37 = trunc i32 %i.091.i to i8
  %conv39.i = add i8 %24, %37
  %38 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv39.i, ptr %29, align 1
  %arrayidx41.i = getelementptr i8, ptr %arrayidx25, i32 %i.091.i
  %39 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx41.i, align 1
  %41 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %30, align 1
  %call43.i = call i32 @af9005_write_tuner_registers(ptr noundef %1, i16 noundef zeroext -4095, ptr noundef nonnull %buf.i, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %for.cond31.i, label %do.body46.i

do.body46.i:                                      ; preds = %for.body34.i
  %42 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and47.i = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %af9005_i2c_write.exit.thread67, label %af9005_i2c_write.exit

af9005_i2c_write.exit.thread67:                   ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #8
  br label %if.end33

do.body62.i:                                      ; preds = %for.cond31.i.do.body62.i_crit_edge, %do.end30.i62.do.body62.i_crit_edge
  %43 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and63.i = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %af9005_i2c_write.exit.thread, label %af9005_i2c_write.exit.thread70

af9005_i2c_write.exit.thread70:                   ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #10
  %call70.i73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.267) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #8
  br label %if.end33

af9005_i2c_write.exit.thread:                     ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #8
  br label %if.end33

af9005_i2c_write.exit:                            ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #10
  %call70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #8
  br label %if.end33

if.end33:                                         ; preds = %af9005_i2c_write.exit, %af9005_i2c_write.exit.thread, %af9005_i2c_write.exit.thread70, %af9005_i2c_write.exit.thread67, %af9005_i2c_read.exit
  %ret.0 = phi i32 [ %spec.store.select, %af9005_i2c_read.exit ], [ %call43.i, %af9005_i2c_write.exit ], [ %call43.i, %af9005_i2c_write.exit.thread67 ], [ 1, %af9005_i2c_write.exit.thread70 ], [ 1, %af9005_i2c_write.exit.thread ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end33 ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @af9005_i2c_func(ptr nocapture noundef readnone %adapter) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 227)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 227)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !21, !23, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !163, !164, !166, !167, !169, !171, !173, !175, !177, !178, !179, !180, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !212, !214, !216, !218, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !251, !253, !254, !256, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !316, !318, !319, !320, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !344, !345, !347, !348, !349, !351, !352, !353, !355, !356, !357, !359, !360, !361, !362, !364, !365, !366, !368, !369, !370, !371, !373, !374, !375, !376, !378, !379, !380, !381, !383, !384, !385, !387, !388, !389, !390, !392, !393, !394, !396, !397, !398, !400, !401, !402, !404, !405, !406, !408, !409, !410, !411, !413, !414, !415, !417, !418, !419, !421, !423, !424, !425, !426, !428, !429, !430, !431, !433, !434, !435, !437, !438, !439, !441, !442, !443, !444, !446, !447, !448, !449, !451, !452, !453, !454, !456, !457, !458, !460, !461, !462, !464, !466, !467, !468, !469, !471, !473, !475, !477, !478}
!llvm.module.flags = !{!479, !480, !481, !482, !483, !484, !485, !486}
!llvm.ident = !{!487}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype386, !1, !"__UNIQUE_ID_debugtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug387, !4, !"__UNIQUE_ID_debug387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 16, i32 1}
!5 = !{ptr @dvb_usb_af9005_led, !6, !"dvb_usb_af9005_led", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 20, i32 6}
!7 = !{ptr @__param_led, !8, !"__param_led", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 21, i32 1}
!9 = !{ptr @__UNIQUE_ID_ledtype388, !8, !"__UNIQUE_ID_ledtype388", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_led389, !11, !"__UNIQUE_ID_led389", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 22, i32 1}
!12 = !{ptr @__param_dump_eeprom, !13, !"__param_dump_eeprom", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 26, i32 1}
!14 = !{ptr @__UNIQUE_ID_dump_eepromtype390, !13, !"__UNIQUE_ID_dump_eepromtype390", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_dump_eeprom391, !16, !"__UNIQUE_ID_dump_eeprom391", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 27, i32 1}
!17 = !{ptr @__param_adapter_nr, !18, !"__param_adapter_nr", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 29, i32 1}
!19 = !{ptr @__UNIQUE_ID_adapter_nrtype392, !18, !"__UNIQUE_ID_adapter_nrtype392", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_adapter_nr393, !18, !"__UNIQUE_ID_adapter_nr393", i1 false, i1 false}
!21 = !{ptr @regmask, !22, !"regmask", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 37, i32 4}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 137, i32 2}
!25 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @af9005_read_ofdm_register._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @af9005_read_ofdm_register._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 142, i32 3}
!31 = !{ptr @af9005_read_ofdm_register._entry.3, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @af9005_read_ofdm_register._entry_ptr.5, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 144, i32 3}
!35 = !{ptr @af9005_read_ofdm_register._entry.6, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @af9005_read_ofdm_register._entry_ptr.8, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 152, i32 2}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @af9005_read_ofdm_registers._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @af9005_read_ofdm_registers._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @af9005_read_ofdm_registers._entry.11, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 157, i32 3}
!44 = !{ptr @af9005_read_ofdm_registers._entry_ptr.12, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 159, i32 3}
!47 = !{ptr @af9005_read_ofdm_registers._entry.13, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @af9005_read_ofdm_registers._entry_ptr.15, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @af9005_read_ofdm_registers._entry.16, !46, !"_entry", i1 false, i1 false}
!51 = !{ptr @af9005_read_ofdm_registers._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 167, i32 2}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @af9005_write_ofdm_register._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @af9005_write_ofdm_register._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @af9005_write_ofdm_register._entry.21, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 172, i32 3}
!59 = !{ptr @af9005_write_ofdm_register._entry_ptr.22, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 174, i32 3}
!62 = !{ptr @af9005_write_ofdm_register._entry.23, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @af9005_write_ofdm_register._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 182, i32 2}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @af9005_write_ofdm_registers._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @af9005_write_ofdm_registers._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @af9005_write_ofdm_registers._entry.28, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 183, i32 2}
!71 = !{ptr @af9005_write_ofdm_registers._entry_ptr.29, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @af9005_write_ofdm_registers._entry.30, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @af9005_write_ofdm_registers._entry_ptr.31, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @af9005_write_ofdm_registers._entry.32, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 189, i32 3}
!76 = !{ptr @af9005_write_ofdm_registers._entry_ptr.33, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @af9005_write_ofdm_registers._entry.34, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 191, i32 3}
!79 = !{ptr @af9005_write_ofdm_registers._entry_ptr.35, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 200, i32 2}
!82 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @af9005_read_register_bits._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @af9005_read_register_bits._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 203, i32 3}
!87 = !{ptr @af9005_read_register_bits._entry.38, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @af9005_read_register_bits._entry_ptr.40, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 207, i32 2}
!91 = !{ptr @af9005_read_register_bits._entry.41, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @af9005_read_register_bits._entry_ptr.43, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 217, i32 2}
!95 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @af9005_write_register_bits._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @af9005_write_register_bits._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 457, i32 3}
!100 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @af9005_send_command._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @af9005_send_command._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 461, i32 3}
!105 = !{ptr @af9005_send_command._entry.48, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @af9005_send_command._entry_ptr.50, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 465, i32 3}
!109 = !{ptr @af9005_send_command._entry.51, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @af9005_send_command._entry_ptr.53, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 484, i32 3}
!113 = !{ptr @af9005_send_command._entry.54, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @af9005_send_command._entry_ptr.56, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 487, i32 3}
!117 = !{ptr @af9005_send_command._entry.57, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @af9005_send_command._entry_ptr.59, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 490, i32 3}
!121 = !{ptr @af9005_send_command._entry.60, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @af9005_send_command._entry_ptr.62, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 493, i32 3}
!125 = !{ptr @af9005_send_command._entry.63, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @af9005_send_command._entry_ptr.65, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 531, i32 3}
!129 = !{ptr @.str.67, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @af9005_read_eeprom._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @af9005_read_eeprom._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 534, i32 3}
!134 = !{ptr @af9005_read_eeprom._entry.68, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @af9005_read_eeprom._entry_ptr.70, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 537, i32 3}
!138 = !{ptr @af9005_read_eeprom._entry.71, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @af9005_read_eeprom._entry_ptr.73, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 540, i32 3}
!142 = !{ptr @af9005_read_eeprom._entry.74, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @af9005_read_eeprom._entry_ptr.76, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.77, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 1122, i32 3}
!146 = !{ptr @.str.78, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 1124, i32 3}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 1126, i32 3}
!150 = !{ptr @__initcall__kmod_dvb_usb_af9005__394_1131_af9005_usb_module_init6, !151, !"__initcall__kmod_dvb_usb_af9005__394_1131_af9005_usb_module_init6", i1 false, i1 false}
!151 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 1131, i32 1}
!152 = !{ptr @__exitcall_af9005_usb_module_exit, !153, !"__exitcall_af9005_usb_module_exit", i1 false, i1 false}
!153 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 1132, i32 1}
!154 = !{ptr @__UNIQUE_ID_author395, !155, !"__UNIQUE_ID_author395", i1 false, i1 false}
!155 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 1134, i32 1}
!156 = !{ptr @__UNIQUE_ID_description396, !157, !"__UNIQUE_ID_description396", i1 false, i1 false}
!157 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 1135, i32 1}
!158 = !{ptr @__UNIQUE_ID_version397, !159, !"__UNIQUE_ID_version397", i1 false, i1 false}
!159 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 1136, i32 1}
!160 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.81, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.82, !159, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @__modver_attr, !159, !"__modver_attr", i1 false, i1 false}
!164 = !{ptr @__UNIQUE_ID_file398, !165, !"__UNIQUE_ID_file398", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 1137, i32 1}
!166 = !{ptr @__UNIQUE_ID_license399, !165, !"__UNIQUE_ID_license399", i1 false, i1 false}
!167 = !{ptr @dvb_usb_af9005_debug, !168, !"dvb_usb_af9005_debug", i1 false, i1 false}
!168 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 14, i32 5}
!169 = !{ptr @dvb_usb_af9005_dump_eeprom, !170, !"dvb_usb_af9005_dump_eeprom", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 25, i32 12}
!171 = !{ptr @rc_decode, !172, !"rc_decode", i1 false, i1 false}
!172 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 32, i32 14}
!173 = !{ptr @rc_keys, !174, !"rc_keys", i1 false, i1 false}
!174 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 34, i32 14}
!175 = !{ptr @rc_keys_size, !176, !"rc_keys_size", i1 false, i1 false}
!176 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 35, i32 13}
!177 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!178 = !{ptr @__param_str_led, !8, !"__param_str_led", i1 false, i1 false}
!179 = !{ptr @__param_str_dump_eeprom, !13, !"__param_str_dump_eeprom", i1 false, i1 false}
!180 = !{ptr @__param_str_adapter_nr, !18, !"__param_str_adapter_nr", i1 false, i1 false}
!181 = !{ptr @__param_arr_adapter_nr, !18, !"__param_arr_adapter_nr", i1 false, i1 false}
!182 = !{ptr @adapter_nr, !18, !"adapter_nr", i1 false, i1 false}
!183 = !{ptr @.str.83, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 53, i32 3}
!185 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @af9005_generic_read_write._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @af9005_generic_read_write._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.86, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 57, i32 3}
!190 = !{ptr @af9005_generic_read_write._entry.85, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @af9005_generic_read_write._entry_ptr.87, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.89, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 97, i32 3}
!194 = !{ptr @af9005_generic_read_write._entry.88, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @af9005_generic_read_write._entry_ptr.90, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.92, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 102, i32 3}
!198 = !{ptr @af9005_generic_read_write._entry.91, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @af9005_generic_read_write._entry_ptr.93, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.95, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 107, i32 3}
!202 = !{ptr @af9005_generic_read_write._entry.94, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @af9005_generic_read_write._entry_ptr.96, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.98, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 119, i32 3}
!206 = !{ptr @af9005_generic_read_write._entry.97, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @af9005_generic_read_write._entry_ptr.99, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @af9005_usb_driver, !209, !"af9005_usb_driver", i1 false, i1 false}
!209 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 1086, i32 26}
!210 = !{ptr @.str.100, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 1019, i32 14}
!212 = !{ptr @.str.101, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 1069, i32 16}
!214 = !{ptr @.str.102, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 1073, i32 16}
!216 = !{ptr @.str.103, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 1077, i32 16}
!218 = !{ptr @af9005_properties, !219, !"af9005_properties", i1 false, i1 false}
!219 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 1015, i32 41}
!220 = !{ptr @.str.105, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 724, i32 3}
!222 = !{ptr @.str.106, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @af9005_download_firmware._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @af9005_download_firmware._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.108, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 734, i32 3}
!227 = !{ptr @af9005_download_firmware._entry.107, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @af9005_download_firmware._entry_ptr.109, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @af9005_download_firmware._entry.110, !230, !"_entry", i1 false, i1 false}
!230 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 735, i32 3}
!231 = !{ptr @af9005_download_firmware._entry_ptr.111, !230, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @af9005_download_firmware._entry.112, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @af9005_download_firmware._entry_ptr.113, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.115, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 740, i32 4}
!236 = !{ptr @af9005_download_firmware._entry.114, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @af9005_download_firmware._entry_ptr.116, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.118, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 749, i32 3}
!240 = !{ptr @af9005_download_firmware._entry.117, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @af9005_download_firmware._entry_ptr.119, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.121, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 762, i32 3}
!244 = !{ptr @af9005_download_firmware._entry.120, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @af9005_download_firmware._entry_ptr.122, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.123, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 597, i32 3}
!248 = !{ptr @.str.124, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @af9005_boot_packet._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @af9005_boot_packet._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @af9005_boot_packet._entry.125, !252, !"_entry", i1 false, i1 false}
!252 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 600, i32 2}
!253 = !{ptr @af9005_boot_packet._entry_ptr.126, !252, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @af9005_boot_packet._entry.127, !255, !"_entry", i1 false, i1 false}
!255 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 601, i32 2}
!256 = !{ptr @af9005_boot_packet._entry_ptr.128, !255, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @af9005_boot_packet._entry.129, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @af9005_boot_packet._entry_ptr.130, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.132, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 607, i32 3}
!261 = !{ptr @af9005_boot_packet._entry.131, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @af9005_boot_packet._entry_ptr.133, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.135, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 617, i32 3}
!265 = !{ptr @af9005_boot_packet._entry.134, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @af9005_boot_packet._entry_ptr.136, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.138, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 620, i32 2}
!269 = !{ptr @af9005_boot_packet._entry.137, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @af9005_boot_packet._entry_ptr.139, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @af9005_boot_packet._entry.140, !272, !"_entry", i1 false, i1 false}
!272 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 621, i32 2}
!273 = !{ptr @af9005_boot_packet._entry_ptr.141, !272, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @af9005_boot_packet._entry.142, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @af9005_boot_packet._entry_ptr.143, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.145, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 626, i32 4}
!278 = !{ptr @af9005_boot_packet._entry.144, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @af9005_boot_packet._entry_ptr.146, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.148, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 630, i32 4}
!282 = !{ptr @af9005_boot_packet._entry.147, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @af9005_boot_packet._entry_ptr.149, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.151, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 634, i32 4}
!286 = !{ptr @af9005_boot_packet._entry.150, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @af9005_boot_packet._entry_ptr.152, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.154, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 638, i32 4}
!290 = !{ptr @af9005_boot_packet._entry.153, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @af9005_boot_packet._entry_ptr.155, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.157, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 644, i32 4}
!294 = !{ptr @af9005_boot_packet._entry.156, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @af9005_boot_packet._entry_ptr.158, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.160, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 651, i32 4}
!298 = !{ptr @af9005_boot_packet._entry.159, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @af9005_boot_packet._entry_ptr.161, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.163, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 655, i32 4}
!302 = !{ptr @af9005_boot_packet._entry.162, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @af9005_boot_packet._entry_ptr.164, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.166, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 659, i32 4}
!306 = !{ptr @af9005_boot_packet._entry.165, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @af9005_boot_packet._entry_ptr.167, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.169, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 663, i32 4}
!310 = !{ptr @af9005_boot_packet._entry.168, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @af9005_boot_packet._entry_ptr.170, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.172, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 669, i32 4}
!314 = !{ptr @af9005_boot_packet._entry.171, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @af9005_boot_packet._entry_ptr.173, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.175, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 676, i32 4}
!318 = !{ptr @af9005_boot_packet._entry.174, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @af9005_boot_packet._entry_ptr.176, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.178, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 680, i32 4}
!322 = !{ptr @af9005_boot_packet._entry.177, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @af9005_boot_packet._entry_ptr.179, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.181, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 684, i32 4}
!326 = !{ptr @af9005_boot_packet._entry.180, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @af9005_boot_packet._entry_ptr.182, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.184, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 688, i32 4}
!330 = !{ptr @af9005_boot_packet._entry.183, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @af9005_boot_packet._entry_ptr.185, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.187, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 692, i32 4}
!334 = !{ptr @af9005_boot_packet._entry.186, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @af9005_boot_packet._entry_ptr.188, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.190, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 698, i32 4}
!338 = !{ptr @af9005_boot_packet._entry.189, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @af9005_boot_packet._entry_ptr.191, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.192, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 918, i32 2}
!342 = !{ptr @.str.193, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @af9005_pid_filter._entry, !341, !"_entry", i1 false, i1 false}
!344 = !{ptr @af9005_pid_filter._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.195, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 924, i32 4}
!347 = !{ptr @af9005_pid_filter._entry.194, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @af9005_pid_filter._entry_ptr.196, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.198, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 944, i32 4}
!351 = !{ptr @af9005_pid_filter._entry.197, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @af9005_pid_filter._entry_ptr.199, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.201, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 953, i32 2}
!355 = !{ptr @af9005_pid_filter._entry.200, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @af9005_pid_filter._entry_ptr.202, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.203, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 891, i32 2}
!359 = !{ptr @.str.204, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @af9005_pid_filter_control._entry, !358, !"_entry", i1 false, i1 false}
!361 = !{ptr @af9005_pid_filter_control._entry_ptr, !358, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.206, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 909, i32 2}
!364 = !{ptr @af9005_pid_filter_control._entry.205, !363, !"_entry", i1 false, i1 false}
!365 = !{ptr @af9005_pid_filter_control._entry_ptr.207, !363, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.208, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 813, i32 3}
!368 = !{ptr @.str.209, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @af9005_frontend_attach._entry, !367, !"_entry", i1 false, i1 false}
!370 = !{ptr @af9005_frontend_attach._entry_ptr, !367, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @af9005_frontend_attach._entry.210, !372, !"_entry", i1 false, i1 false}
!372 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 816, i32 4}
!373 = !{ptr @af9005_frontend_attach._entry_ptr.211, !372, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @af9005_frontend_attach._entry.212, !372, !"_entry", i1 false, i1 false}
!375 = !{ptr @af9005_frontend_attach._entry_ptr.213, !372, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.214, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 973, i32 2}
!378 = !{ptr @.str.215, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @af9005_identify_state._entry, !377, !"_entry", i1 false, i1 false}
!380 = !{ptr @af9005_identify_state._entry_ptr, !377, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.217, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 981, i32 3}
!383 = !{ptr @af9005_identify_state._entry.216, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @af9005_identify_state._entry_ptr.218, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.219, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 845, i32 3}
!387 = !{ptr @.str.220, !386, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @af9005_rc_query._entry, !386, !"_entry", i1 false, i1 false}
!389 = !{ptr @af9005_rc_query._entry_ptr, !386, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.222, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 849, i32 3}
!392 = !{ptr @af9005_rc_query._entry.221, !391, !"_entry", i1 false, i1 false}
!393 = !{ptr @af9005_rc_query._entry_ptr.223, !391, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.225, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 853, i32 3}
!396 = !{ptr @af9005_rc_query._entry.224, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @af9005_rc_query._entry_ptr.226, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.228, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 859, i32 3}
!400 = !{ptr @af9005_rc_query._entry.227, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @af9005_rc_query._entry_ptr.229, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.231, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 864, i32 3}
!404 = !{ptr @af9005_rc_query._entry.230, !403, !"_entry", i1 false, i1 false}
!405 = !{ptr @af9005_rc_query._entry_ptr.232, !403, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @af9005_rc_query._entry.233, !407, !"_entry", i1 false, i1 false}
!407 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 865, i32 3}
!408 = !{ptr @af9005_rc_query._entry_ptr.234, !407, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @af9005_rc_query._entry.235, !407, !"_entry", i1 false, i1 false}
!410 = !{ptr @af9005_rc_query._entry_ptr.236, !407, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @.str.238, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 868, i32 4}
!413 = !{ptr @af9005_rc_query._entry.237, !412, !"_entry", i1 false, i1 false}
!414 = !{ptr @af9005_rc_query._entry_ptr.239, !412, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.241, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 871, i32 4}
!417 = !{ptr @af9005_rc_query._entry.240, !416, !"_entry", i1 false, i1 false}
!418 = !{ptr @af9005_rc_query._entry_ptr.242, !416, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @af9005_i2c_algo, !420, !"af9005_i2c_algo", i1 false, i1 false}
!420 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 443, i32 29}
!421 = !{ptr @.str.243, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 414, i32 3}
!423 = !{ptr @.str.244, !422, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @af9005_i2c_xfer._entry, !422, !"_entry", i1 false, i1 false}
!425 = !{ptr @af9005_i2c_xfer._entry_ptr, !422, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.245, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 382, i32 2}
!428 = !{ptr @.str.246, !427, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @af9005_i2c_read._entry, !427, !"_entry", i1 false, i1 false}
!430 = !{ptr @af9005_i2c_read._entry_ptr, !427, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.248, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 390, i32 4}
!433 = !{ptr @af9005_i2c_read._entry.247, !432, !"_entry", i1 false, i1 false}
!434 = !{ptr @af9005_i2c_read._entry_ptr.249, !432, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @.str.251, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 395, i32 2}
!437 = !{ptr @af9005_i2c_read._entry.250, !436, !"_entry", i1 false, i1 false}
!438 = !{ptr @af9005_i2c_read._entry_ptr.252, !436, !"_entry_ptr", i1 false, i1 false}
!439 = !{ptr @af9005_i2c_read._entry.253, !440, !"_entry", i1 false, i1 false}
!440 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 396, i32 2}
!441 = !{ptr @af9005_i2c_read._entry_ptr.254, !440, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @af9005_i2c_read._entry.255, !440, !"_entry", i1 false, i1 false}
!443 = !{ptr @af9005_i2c_read._entry_ptr.256, !440, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.257, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 356, i32 2}
!446 = !{ptr @.str.258, !445, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @af9005_i2c_write._entry, !445, !"_entry", i1 false, i1 false}
!448 = !{ptr @af9005_i2c_write._entry_ptr, !445, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @af9005_i2c_write._entry.259, !450, !"_entry", i1 false, i1 false}
!450 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 358, i32 2}
!451 = !{ptr @af9005_i2c_write._entry_ptr.260, !450, !"_entry_ptr", i1 false, i1 false}
!452 = !{ptr @af9005_i2c_write._entry.261, !450, !"_entry", i1 false, i1 false}
!453 = !{ptr @af9005_i2c_write._entry_ptr.262, !450, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @.str.264, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 369, i32 4}
!456 = !{ptr @af9005_i2c_write._entry.263, !455, !"_entry", i1 false, i1 false}
!457 = !{ptr @af9005_i2c_write._entry_ptr.265, !455, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.267, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 373, i32 2}
!460 = !{ptr @af9005_i2c_write._entry.266, !459, !"_entry", i1 false, i1 false}
!461 = !{ptr @af9005_i2c_write._entry_ptr.268, !459, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @af9005_usb_table, !463, !"af9005_usb_table", i1 false, i1 false}
!463 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 1003, i32 29}
!464 = !{ptr @.str.269, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 1098, i32 3}
!466 = !{ptr @.str.270, !465, !"<string literal>", i1 false, i1 false}
!467 = !{ptr @af9005_usb_module_init._entry, !465, !"_entry", i1 false, i1 false}
!468 = !{ptr @af9005_usb_module_init._entry_ptr, !465, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @.str.271, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 1103, i32 14}
!471 = !{ptr @.str.272, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 1104, i32 12}
!473 = !{ptr @.str.273, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 1105, i32 17}
!475 = !{ptr @.str.275, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/media/usb/dvb-usb/af9005.c", i32 1108, i32 3}
!477 = !{ptr @af9005_usb_module_init._entry.274, !476, !"_entry", i1 false, i1 false}
!478 = !{ptr @af9005_usb_module_init._entry_ptr.276, !476, !"_entry_ptr", i1 false, i1 false}
!479 = !{i32 1, !"wchar_size", i32 2}
!480 = !{i32 1, !"min_enum_size", i32 4}
!481 = !{i32 8, !"branch-target-enforcement", i32 0}
!482 = !{i32 8, !"sign-return-address", i32 0}
!483 = !{i32 8, !"sign-return-address-all", i32 0}
!484 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!485 = !{i32 7, !"uwtable", i32 1}
!486 = !{i32 7, !"frame-pointer", i32 2}
!487 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!488 = !{!"auto-init"}
!489 = !{i8 0, i8 2}
