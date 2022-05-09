; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/dib0700_core.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/dib0700_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_usb_device_properties = type { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, [12 x %struct.dvb_usb_device_description] }
%struct.dvb_usb_adapter_properties = type { i32, ptr, i32, [3 x %struct.dvb_usb_adapter_fe_properties] }
%struct.dvb_usb_adapter_fe_properties = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.usb_data_stream_properties, i32 }
%struct.usb_data_stream_properties = type { i32, i32, i32, %union.anon.131 }
%union.anon.131 = type { %struct.anon.133 }
%struct.anon.133 = type { i32, i32, i32 }
%struct.anon.134 = type { i32, %struct.dvb_rc_legacy, %struct.dvb_rc }
%struct.dvb_rc_legacy = type { ptr, i32, ptr, i32 }
%struct.dvb_rc = type { ptr, i64, i64, i32, ptr, ptr, ptr, i32, i8, i32 }
%struct.dvb_usb_device_description = type { ptr, [15 x ptr], [15 x ptr] }
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
%struct.dvb_usb_device = type { %struct.dvb_usb_device_properties, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, %struct.i2c_adapter, i32, [2 x %struct.dvb_usb_adapter], ptr, ptr, [64 x i8], %struct.delayed_work, i32, i32, ptr, ptr }
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
%struct.dib0700_state = type { i8, [2 x i16], i8, i8, i8, i8, i8, i32, i32, ptr, ptr, [255 x i8], ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.hexline = type { i8, i32, i8, [255 x i8], i8 }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.dib0700_rc_response = type { i8, i8, %union.anon.144 }
%union.anon.144 = type { %struct.anon.145 }
%struct.anon.145 = type { i8, i8, i8, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__param_str_debug = internal constant [22 x i8] c"dvb_usb_dib0700.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usb_dib0700_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_dib0700_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype386 = internal constant [35 x i8] c"dvb_usb_dib0700.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug387 = internal constant [88 x i8] c"dvb_usb_dib0700.parm=debug:set debugging level (1=info,2=fw,4=fwdata,8=data (or-able)).\00", section ".modinfo", align 1
@__param_str_nb_packet_buffer_size = internal constant [38 x i8] c"dvb_usb_dib0700.nb_packet_buffer_size\00", align 1
@nb_packet_buffer_size = internal global { i32, [28 x i8] } { i32 21, [28 x i8] zeroinitializer }, align 32
@__param_nb_packet_buffer_size = internal constant %struct.kernel_param { ptr @__param_str_nb_packet_buffer_size, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @nb_packet_buffer_size } }, section "__param", align 4
@__UNIQUE_ID_nb_packet_buffer_sizetype388 = internal constant [51 x i8] c"dvb_usb_dib0700.parmtype=nb_packet_buffer_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nb_packet_buffer_size389 = internal constant [237 x i8] c"dvb_usb_dib0700.parm=nb_packet_buffer_size:Set the dib0700 driver data buffer size. This parameter corresponds to the number of TS packets. The actual size of the data buffer corresponds to this parameter multiplied by 188 (default: 21)\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [27 x i8] c"dvb_usb_dib0700.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype390 = internal constant [51 x i8] c"dvb_usb_dib0700.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr391 = internal constant [52 x i8] c"dvb_usb_dib0700.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@dib0700_get_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 28, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013dib0700: could not acquire lock\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dib0700_get_version\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/usb/dvb-usb/dib0700_core.c\00", [55 x i8] zeroinitializer }, align 32
@dib0700_get_version._entry_ptr = internal global ptr @dib0700_get_version._entry, section ".printk_index", align 4
@dib0700_ctrl_rd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013dib0700: tx buffer length is smaller than 2. Makes no sense.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dib0700_ctrl_rd\00", [16 x i8] zeroinitializer }, align 32
@dib0700_ctrl_rd._entry_ptr = internal global ptr @dib0700_ctrl_rd._entry, section ".printk_index", align 4
@dib0700_ctrl_rd._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013dib0700: tx buffer length is larger than 4. Not supported.\0A\00", [34 x i8] zeroinitializer }, align 32
@dib0700_ctrl_rd._entry_ptr.7 = internal global ptr @dib0700_ctrl_rd._entry.5, section ".printk_index", align 4
@dib0700_ctrl_rd._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c">>> \00", [27 x i8] zeroinitializer }, align 32
@dib0700_ctrl_rd._entry_ptr.10 = internal global ptr @dib0700_ctrl_rd._entry.8, section ".printk_index", align 4
@dib0700_ctrl_rd._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@dib0700_ctrl_rd._entry_ptr.13 = internal global ptr @dib0700_ctrl_rd._entry.11, section ".printk_index", align 4
@dib0700_ctrl_rd._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@dib0700_ctrl_rd._entry_ptr.16 = internal global ptr @dib0700_ctrl_rd._entry.14, section ".printk_index", align 4
@dib0700_ctrl_rd._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ep 0 read error (status = %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@dib0700_ctrl_rd._entry_ptr.19 = internal global ptr @dib0700_ctrl_rd._entry.17, section ".printk_index", align 4
@dib0700_ctrl_rd._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"<<< \00", [27 x i8] zeroinitializer }, align 32
@dib0700_ctrl_rd._entry_ptr.22 = internal global ptr @dib0700_ctrl_rd._entry.20, section ".printk_index", align 4
@dib0700_ctrl_rd._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib0700_ctrl_rd._entry_ptr.24 = internal global ptr @dib0700_ctrl_rd._entry.23, section ".printk_index", align 4
@dib0700_ctrl_rd._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib0700_ctrl_rd._entry_ptr.26 = internal global ptr @dib0700_ctrl_rd._entry.25, section ".printk_index", align 4
@dib0700_set_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.27, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dib0700_set_gpio\00", [47 x i8] zeroinitializer }, align 32
@dib0700_set_gpio._entry_ptr = internal global ptr @dib0700_set_gpio._entry, section ".printk_index", align 4
@dib0700_i2c_algo = dso_local global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @dib0700_i2c_xfer, ptr null, ptr null, ptr null, ptr @dib0700_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dib0700_identify_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"FW GET_VERSION length: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dib0700_identify_state\00", [41 x i8] zeroinitializer }, align 32
@dib0700_identify_state._entry_ptr = internal global ptr @dib0700_identify_state._entry, section ".printk_index", align 4
@dib0700_identify_state._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cold: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@dib0700_identify_state._entry_ptr.32 = internal global ptr @dib0700_identify_state._entry.30, section ".printk_index", align 4
@dib0700_set_i2c_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.33, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dib0700_set_i2c_speed\00", [42 x i8] zeroinitializer }, align 32
@dib0700_set_i2c_speed._entry_ptr = internal global ptr @dib0700_set_i2c_speed._entry, section ".printk_index", align 4
@dib0700_set_i2c_speed._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"setting I2C speed: %04x %04x %04x (%d kHz).\00", [52 x i8] zeroinitializer }, align 32
@dib0700_set_i2c_speed._entry_ptr.36 = internal global ptr @dib0700_set_i2c_speed._entry.34, section ".printk_index", align 4
@dib0700_download_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"writing to address 0x%08x (buffer: 0x%02x %02x)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dib0700_download_firmware\00", [38 x i8] zeroinitializer }, align 32
@dib0700_download_firmware._entry_ptr = internal global ptr @dib0700_download_firmware._entry, section ".printk_index", align 4
@dib0700_download_firmware._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013dib0700: firmware download failed at %d with %d\0A\00", [45 x i8] zeroinitializer }, align 32
@dib0700_download_firmware._entry_ptr.41 = internal global ptr @dib0700_download_firmware._entry.39, section ".printk_index", align 4
@dib0700_download_firmware._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016dib0700: firmware started successfully.\0A\00", [53 x i8] zeroinitializer }, align 32
@dib0700_download_firmware._entry_ptr.44 = internal global ptr @dib0700_download_firmware._entry.42, section ".printk_index", align 4
@dib0700_device_count = external dso_local local_unnamed_addr global i32, align 4
@dib0700_devices = external dso_local global [0 x %struct.dvb_usb_device_properties], align 8
@dib0700_streaming_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can not set the USB xfer len\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dib0700_streaming_ctrl\00", [41 x i8] zeroinitializer }, align 32
@dib0700_streaming_ctrl._entry_ptr = internal global ptr @dib0700_streaming_ctrl._entry, section ".printk_index", align 4
@dib0700_streaming_ctrl._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"the endpoint number (%i) is not correct, use the adapter id instead\0A\00", [59 x i8] zeroinitializer }, align 32
@dib0700_streaming_ctrl._entry_ptr.49 = internal global ptr @dib0700_streaming_ctrl._entry.47, section ".printk_index", align 4
@dib0700_streaming_ctrl._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.2, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"adapter %d, streaming %s: %*ph\0A\00", [32 x i8] zeroinitializer }, align 32
@dib0700_streaming_ctrl._entry_ptr.52 = internal global ptr @dib0700_streaming_ctrl._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@dib0700_change_protocol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dib0700_change_protocol\00", [40 x i8] zeroinitializer }, align 32
@dib0700_change_protocol._entry_ptr = internal global ptr @dib0700_change_protocol._entry, section ".printk_index", align 4
@dib0700_change_protocol._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013dib0700: ir protocol setup failed\0A\00", [59 x i8] zeroinitializer }, align 32
@dib0700_change_protocol._entry_ptr.58 = internal global ptr @dib0700_change_protocol._entry.56, section ".printk_index", align 4
@dib0700_rc_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013dib0700: rc kzalloc failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dib0700_rc_setup\00", [47 x i8] zeroinitializer }, align 32
@dib0700_rc_setup._entry_ptr = internal global ptr @dib0700_rc_setup._entry, section ".printk_index", align 4
@dib0700_rc_setup._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013dib0700: There's no endpoint for remote controller\0A\00", [42 x i8] zeroinitializer }, align 32
@dib0700_rc_setup._entry_ptr.63 = internal global ptr @dib0700_rc_setup._entry.61, section ".printk_index", align 4
@dib0700_rc_setup._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.2, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013dib0700: rc submit urb failed\0A\00", [63 x i8] zeroinitializer }, align 32
@dib0700_rc_setup._entry_ptr.66 = internal global ptr @dib0700_rc_setup._entry.64, section ".printk_index", align 4
@__initcall__kmod_dvb_usb_dib0700__392_942_dib0700_driver_init6 = internal global ptr @dib0700_driver_init, section ".initcall6.init", align 4
@dib0700_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.68, ptr @dib0700_probe, ptr @dib0700_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dib0700_usb_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_dib0700_driver_exit = internal global ptr @dib0700_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_firmware393 = internal constant [49 x i8] c"dvb_usb_dib0700.firmware=dvb-usb-dib0700-1.20.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_author394 = internal constant [71 x i8] c"dvb_usb_dib0700.author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description395 = internal constant [84 x i8] c"dvb_usb_dib0700.description=Driver for devices based on DiBcom DiB0700 - USB bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_version396 = internal constant [28 x i8] c"dvb_usb_dib0700.version=1.0\00", section ".modinfo", align 1
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb_usb_dib0700\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.68, ptr @.str.69 }, section "__modver", align 4
@__UNIQUE_ID_file397 = internal constant [63 x i8] c"dvb_usb_dib0700.file=drivers/media/usb/dvb-usb/dvb-usb-dib0700\00", section ".modinfo", align 1
@__UNIQUE_ID_license398 = internal constant [28 x i8] c"dvb_usb_dib0700.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@dib0700_ctrl_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.70, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dib0700_ctrl_wr\00", [16 x i8] zeroinitializer }, align 32
@dib0700_ctrl_wr._entry_ptr = internal global ptr @dib0700_ctrl_wr._entry, section ".printk_index", align 4
@dib0700_ctrl_wr._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.70, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib0700_ctrl_wr._entry_ptr.72 = internal global ptr @dib0700_ctrl_wr._entry.71, section ".printk_index", align 4
@dib0700_ctrl_wr._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.70, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib0700_ctrl_wr._entry_ptr.74 = internal global ptr @dib0700_ctrl_wr._entry.73, section ".printk_index", align 4
@dib0700_ctrl_wr._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.70, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ep 0 write error (status = %d, len: %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@dib0700_ctrl_wr._entry_ptr.77 = internal global ptr @dib0700_ctrl_wr._entry.75, section ".printk_index", align 4
@dib0700_i2c_xfer_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"i2c read error (status = %d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dib0700_i2c_xfer_new\00", [43 x i8] zeroinitializer }, align 32
@dib0700_i2c_xfer_new._entry_ptr = internal global ptr @dib0700_i2c_xfer_new._entry, section ".printk_index", align 4
@dib0700_i2c_xfer_new._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"buffer too small to fit %d bytes\0A\00", [62 x i8] zeroinitializer }, align 32
@dib0700_i2c_xfer_new._entry_ptr.82 = internal global ptr @dib0700_i2c_xfer_new._entry.80, section ".printk_index", align 4
@dib0700_i2c_xfer_new._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.79, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib0700_i2c_xfer_new._entry_ptr.84 = internal global ptr @dib0700_i2c_xfer_new._entry.83, section ".printk_index", align 4
@dib0700_i2c_xfer_new._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.79, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib0700_i2c_xfer_new._entry_ptr.86 = internal global ptr @dib0700_i2c_xfer_new._entry.85, section ".printk_index", align 4
@dib0700_i2c_xfer_new._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.79, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib0700_i2c_xfer_new._entry_ptr.88 = internal global ptr @dib0700_i2c_xfer_new._entry.87, section ".printk_index", align 4
@dib0700_i2c_xfer_new._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.79, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib0700_i2c_xfer_new._entry_ptr.90 = internal global ptr @dib0700_i2c_xfer_new._entry.89, section ".printk_index", align 4
@dib0700_i2c_xfer_new._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.79, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i2c message to big: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@dib0700_i2c_xfer_new._entry_ptr.93 = internal global ptr @dib0700_i2c_xfer_new._entry.91, section ".printk_index", align 4
@dib0700_i2c_xfer_new._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.79, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib0700_i2c_xfer_new._entry_ptr.95 = internal global ptr @dib0700_i2c_xfer_new._entry.94, section ".printk_index", align 4
@dib0700_i2c_xfer_new._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.79, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib0700_i2c_xfer_new._entry_ptr.97 = internal global ptr @dib0700_i2c_xfer_new._entry.96, section ".printk_index", align 4
@dib0700_i2c_xfer_new._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.79, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib0700_i2c_xfer_new._entry_ptr.99 = internal global ptr @dib0700_i2c_xfer_new._entry.98, section ".printk_index", align 4
@dib0700_i2c_xfer_new._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.79, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"i2c write error (status = %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@dib0700_i2c_xfer_new._entry_ptr.102 = internal global ptr @dib0700_i2c_xfer_new._entry.100, section ".printk_index", align 4
@dib0700_i2c_xfer_legacy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.103, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dib0700_i2c_xfer_legacy\00", [40 x i8] zeroinitializer }, align 32
@dib0700_i2c_xfer_legacy._entry_ptr = internal global ptr @dib0700_i2c_xfer_legacy._entry, section ".printk_index", align 4
@dib0700_i2c_xfer_legacy._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i2c xfer to big: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@dib0700_i2c_xfer_legacy._entry_ptr.106 = internal global ptr @dib0700_i2c_xfer_legacy._entry.104, section ".printk_index", align 4
@dib0700_i2c_xfer_legacy._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.103, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"I2C read failed on address 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@dib0700_i2c_xfer_legacy._entry_ptr.109 = internal global ptr @dib0700_i2c_xfer_legacy._entry.107, section ".printk_index", align 4
@dib0700_i2c_xfer_legacy._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.103, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"i2c xfer buffer to small for %d\0A\00", [63 x i8] zeroinitializer }, align 32
@dib0700_i2c_xfer_legacy._entry_ptr.112 = internal global ptr @dib0700_i2c_xfer_legacy._entry.110, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dib0700_set_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.113, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dib0700_set_clock\00", [46 x i8] zeroinitializer }, align 32
@dib0700_set_clock._entry_ptr = internal global ptr @dib0700_set_clock._entry, section ".printk_index", align 4
@dib0700_jumpram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"jumpram to 0x%x failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dib0700_jumpram\00", [16 x i8] zeroinitializer }, align 32
@dib0700_jumpram._entry_ptr = internal global ptr @dib0700_jumpram._entry, section ".printk_index", align 4
@dib0700_jumpram._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib0700_jumpram._entry_ptr.117 = internal global ptr @dib0700_jumpram._entry.116, section ".printk_index", align 4
@dib0700_set_usb_xfer_len._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.118, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dib0700_set_usb_xfer_len\00", [39 x i8] zeroinitializer }, align 32
@dib0700_set_usb_xfer_len._entry_ptr = internal global ptr @dib0700_set_usb_xfer_len._entry, section ".printk_index", align 4
@dib0700_set_usb_xfer_len._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"set the USB xfer len to %i Ts packet\0A\00", [58 x i8] zeroinitializer }, align 32
@dib0700_set_usb_xfer_len._entry_ptr.121 = internal global ptr @dib0700_set_usb_xfer_len._entry.119, section ".printk_index", align 4
@dib0700_set_usb_xfer_len._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.118, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"this firmware does not allow to change the USB xfer len\0A\00", [39 x i8] zeroinitializer }, align 32
@dib0700_set_usb_xfer_len._entry_ptr.124 = internal global ptr @dib0700_set_usb_xfer_len._entry.122, section ".printk_index", align 4
@dib0700_rc_urb_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.2, i32 716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dib0700_rc_urb_completion\00", [38 x i8] zeroinitializer }, align 32
@dib0700_rc_urb_completion._entry_ptr = internal global ptr @dib0700_rc_urb_completion._entry, section ".printk_index", align 4
@dib0700_rc_urb_completion._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.2, i32 727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"discontinuing polling\0A\00", [41 x i8] zeroinitializer }, align 32
@dib0700_rc_urb_completion._entry_ptr.129 = internal global ptr @dib0700_rc_urb_completion._entry.127, section ".printk_index", align 4
@dib0700_rc_urb_completion._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.126, ptr @.str.2, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"malformed rc msg size=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@dib0700_rc_urb_completion._entry_ptr.132 = internal global ptr @dib0700_rc_urb_completion._entry.130, section ".printk_index", align 4
@dib0700_rc_urb_completion._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.126, ptr @.str.2, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"IR ID = %02X state = %02X System = %02X %02X Cmd = %02X %02X (len %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@dib0700_rc_urb_completion._entry_ptr.135 = internal global ptr @dib0700_rc_urb_completion._entry.133, section ".printk_index", align 4
@dib0700_rc_urb_completion._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.126, ptr @.str.2, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NEC32 protocol\0A\00", [16 x i8] zeroinitializer }, align 32
@dib0700_rc_urb_completion._entry_ptr.138 = internal global ptr @dib0700_rc_urb_completion._entry.136, section ".printk_index", align 4
@dib0700_rc_urb_completion._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.126, ptr @.str.2, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NEC extended protocol\0A\00", [41 x i8] zeroinitializer }, align 32
@dib0700_rc_urb_completion._entry_ptr.141 = internal global ptr @dib0700_rc_urb_completion._entry.139, section ".printk_index", align 4
@dib0700_rc_urb_completion._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.126, ptr @.str.2, i32 773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NEC normal protocol\0A\00", [43 x i8] zeroinitializer }, align 32
@dib0700_rc_urb_completion._entry_ptr.144 = internal global ptr @dib0700_rc_urb_completion._entry.142, section ".printk_index", align 4
@dib0700_rc_urb_completion._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.126, ptr @.str.2, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RC5 protocol\0A\00", [18 x i8] zeroinitializer }, align 32
@dib0700_rc_urb_completion._entry_ptr.147 = internal global ptr @dib0700_rc_urb_completion._entry.145, section ".printk_index", align 4
@dib0700_rc_urb_completion._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.126, ptr @.str.2, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013dib0700: key failed integrity check: %02x %02x %02x %02x\0A\00", [36 x i8] zeroinitializer }, align 32
@dib0700_rc_urb_completion._entry_ptr.150 = internal global ptr @dib0700_rc_urb_completion._entry.148, section ".printk_index", align 4
@dib0700_usb_id_table = external dso_local global [0 x %struct.usb_device_id], align 4
@dib0700_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.2, i32 892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Firmware version: %x, %d, 0x%x, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dib0700_probe\00", [18 x i8] zeroinitializer }, align 32
@dib0700_probe._entry_ptr = internal global ptr @dib0700_probe._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@___asan_gen_.153 = private unnamed_addr constant [22 x i8] c"dvb_usb_dib0700_debug\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 9, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant [22 x i8] c"nb_packet_buffer_size\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 13, i32 12 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 28, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 77, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 81, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 85, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 86, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 100, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 102, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 103, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 114, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"dib0700_i2c_algo\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 370, i32 22 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 391, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 394, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 440, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 456, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 519, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 537, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 545, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 594, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 615, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 629, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 645, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 676, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 830, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 860, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 868, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant [15 x i8] c"dib0700_driver\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 935, i32 26 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 947, i32 1 }
@___asan_gen_.351 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 18, i32 1 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 57, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 58, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 65, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 214, i32 5 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 219, i32 5 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 227, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 228, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 233, i32 5 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 246, i32 5 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 256, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 257, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 267, i32 5 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 292, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 302, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 318, i32 5 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 325, i32 5 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 408, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 494, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 498, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 135, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 143, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 148, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 716, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 727, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 734, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 738, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 759, i32 4 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 766, i32 4 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 773, i32 4 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 781, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 788, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.543 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.544 = private constant [44 x i8] c"../drivers/media/usb/dvb-usb/dib0700_core.c\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 891, i32 4 }
@llvm.compiler.used = appending global [211 x ptr] [ptr @__UNIQUE_ID_adapter_nr391, ptr @__UNIQUE_ID_adapter_nrtype390, ptr @__UNIQUE_ID_author394, ptr @__UNIQUE_ID_debug387, ptr @__UNIQUE_ID_debugtype386, ptr @__UNIQUE_ID_description395, ptr @__UNIQUE_ID_file397, ptr @__UNIQUE_ID_firmware393, ptr @__UNIQUE_ID_license398, ptr @__UNIQUE_ID_nb_packet_buffer_size389, ptr @__UNIQUE_ID_nb_packet_buffer_sizetype388, ptr @__UNIQUE_ID_version396, ptr @__exitcall_dib0700_driver_exit, ptr @__initcall__kmod_dvb_usb_dib0700__392_942_dib0700_driver_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @__param_debug, ptr @__param_nb_packet_buffer_size, ptr @dib0700_change_protocol._entry, ptr @dib0700_change_protocol._entry.56, ptr @dib0700_change_protocol._entry_ptr, ptr @dib0700_change_protocol._entry_ptr.58, ptr @dib0700_ctrl_rd._entry, ptr @dib0700_ctrl_rd._entry.11, ptr @dib0700_ctrl_rd._entry.14, ptr @dib0700_ctrl_rd._entry.17, ptr @dib0700_ctrl_rd._entry.20, ptr @dib0700_ctrl_rd._entry.23, ptr @dib0700_ctrl_rd._entry.25, ptr @dib0700_ctrl_rd._entry.5, ptr @dib0700_ctrl_rd._entry.8, ptr @dib0700_ctrl_rd._entry_ptr, ptr @dib0700_ctrl_rd._entry_ptr.10, ptr @dib0700_ctrl_rd._entry_ptr.13, ptr @dib0700_ctrl_rd._entry_ptr.16, ptr @dib0700_ctrl_rd._entry_ptr.19, ptr @dib0700_ctrl_rd._entry_ptr.22, ptr @dib0700_ctrl_rd._entry_ptr.24, ptr @dib0700_ctrl_rd._entry_ptr.26, ptr @dib0700_ctrl_rd._entry_ptr.7, ptr @dib0700_ctrl_wr._entry, ptr @dib0700_ctrl_wr._entry.71, ptr @dib0700_ctrl_wr._entry.73, ptr @dib0700_ctrl_wr._entry.75, ptr @dib0700_ctrl_wr._entry_ptr, ptr @dib0700_ctrl_wr._entry_ptr.72, ptr @dib0700_ctrl_wr._entry_ptr.74, ptr @dib0700_ctrl_wr._entry_ptr.77, ptr @dib0700_download_firmware._entry, ptr @dib0700_download_firmware._entry.39, ptr @dib0700_download_firmware._entry.42, ptr @dib0700_download_firmware._entry_ptr, ptr @dib0700_download_firmware._entry_ptr.41, ptr @dib0700_download_firmware._entry_ptr.44, ptr @dib0700_driver_exit, ptr @dib0700_get_version._entry, ptr @dib0700_get_version._entry_ptr, ptr @dib0700_i2c_xfer_legacy._entry, ptr @dib0700_i2c_xfer_legacy._entry.104, ptr @dib0700_i2c_xfer_legacy._entry.107, ptr @dib0700_i2c_xfer_legacy._entry.110, ptr @dib0700_i2c_xfer_legacy._entry_ptr, ptr @dib0700_i2c_xfer_legacy._entry_ptr.106, ptr @dib0700_i2c_xfer_legacy._entry_ptr.109, ptr @dib0700_i2c_xfer_legacy._entry_ptr.112, ptr @dib0700_i2c_xfer_new._entry, ptr @dib0700_i2c_xfer_new._entry.100, ptr @dib0700_i2c_xfer_new._entry.80, ptr @dib0700_i2c_xfer_new._entry.83, ptr @dib0700_i2c_xfer_new._entry.85, ptr @dib0700_i2c_xfer_new._entry.87, ptr @dib0700_i2c_xfer_new._entry.89, ptr @dib0700_i2c_xfer_new._entry.91, ptr @dib0700_i2c_xfer_new._entry.94, ptr @dib0700_i2c_xfer_new._entry.96, ptr @dib0700_i2c_xfer_new._entry.98, ptr @dib0700_i2c_xfer_new._entry_ptr, ptr @dib0700_i2c_xfer_new._entry_ptr.102, ptr @dib0700_i2c_xfer_new._entry_ptr.82, ptr @dib0700_i2c_xfer_new._entry_ptr.84, ptr @dib0700_i2c_xfer_new._entry_ptr.86, ptr @dib0700_i2c_xfer_new._entry_ptr.88, ptr @dib0700_i2c_xfer_new._entry_ptr.90, ptr @dib0700_i2c_xfer_new._entry_ptr.93, ptr @dib0700_i2c_xfer_new._entry_ptr.95, ptr @dib0700_i2c_xfer_new._entry_ptr.97, ptr @dib0700_i2c_xfer_new._entry_ptr.99, ptr @dib0700_identify_state._entry, ptr @dib0700_identify_state._entry.30, ptr @dib0700_identify_state._entry_ptr, ptr @dib0700_identify_state._entry_ptr.32, ptr @dib0700_jumpram._entry, ptr @dib0700_jumpram._entry.116, ptr @dib0700_jumpram._entry_ptr, ptr @dib0700_jumpram._entry_ptr.117, ptr @dib0700_probe._entry, ptr @dib0700_probe._entry_ptr, ptr @dib0700_rc_setup._entry, ptr @dib0700_rc_setup._entry.61, ptr @dib0700_rc_setup._entry.64, ptr @dib0700_rc_setup._entry_ptr, ptr @dib0700_rc_setup._entry_ptr.63, ptr @dib0700_rc_setup._entry_ptr.66, ptr @dib0700_rc_urb_completion._entry, ptr @dib0700_rc_urb_completion._entry.127, ptr @dib0700_rc_urb_completion._entry.130, ptr @dib0700_rc_urb_completion._entry.133, ptr @dib0700_rc_urb_completion._entry.136, ptr @dib0700_rc_urb_completion._entry.139, ptr @dib0700_rc_urb_completion._entry.142, ptr @dib0700_rc_urb_completion._entry.145, ptr @dib0700_rc_urb_completion._entry.148, ptr @dib0700_rc_urb_completion._entry_ptr, ptr @dib0700_rc_urb_completion._entry_ptr.129, ptr @dib0700_rc_urb_completion._entry_ptr.132, ptr @dib0700_rc_urb_completion._entry_ptr.135, ptr @dib0700_rc_urb_completion._entry_ptr.138, ptr @dib0700_rc_urb_completion._entry_ptr.141, ptr @dib0700_rc_urb_completion._entry_ptr.144, ptr @dib0700_rc_urb_completion._entry_ptr.147, ptr @dib0700_rc_urb_completion._entry_ptr.150, ptr @dib0700_set_clock._entry, ptr @dib0700_set_clock._entry_ptr, ptr @dib0700_set_gpio._entry, ptr @dib0700_set_gpio._entry_ptr, ptr @dib0700_set_i2c_speed._entry, ptr @dib0700_set_i2c_speed._entry.34, ptr @dib0700_set_i2c_speed._entry_ptr, ptr @dib0700_set_i2c_speed._entry_ptr.36, ptr @dib0700_set_usb_xfer_len._entry, ptr @dib0700_set_usb_xfer_len._entry.119, ptr @dib0700_set_usb_xfer_len._entry.122, ptr @dib0700_set_usb_xfer_len._entry_ptr, ptr @dib0700_set_usb_xfer_len._entry_ptr.121, ptr @dib0700_set_usb_xfer_len._entry_ptr.124, ptr @dib0700_streaming_ctrl._entry, ptr @dib0700_streaming_ctrl._entry.47, ptr @dib0700_streaming_ctrl._entry.50, ptr @dib0700_streaming_ctrl._entry_ptr, ptr @dib0700_streaming_ctrl._entry_ptr.49, ptr @dib0700_streaming_ctrl._entry_ptr.52, ptr @dvb_usb_dib0700_debug, ptr @nb_packet_buffer_size, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.27, ptr @dib0700_i2c_algo, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @dib0700_driver, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @adapter_nr, ptr @.str.70, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.92, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.118, ptr @.str.120, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @.str.151, ptr @.str.152], section "llvm.metadata"
@0 = internal global [131 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_dib0700_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nb_packet_buffer_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_get_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_ctrl_rd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_ctrl_rd._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_ctrl_rd._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_ctrl_rd._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_ctrl_rd._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_ctrl_rd._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_ctrl_rd._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_ctrl_rd._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_ctrl_rd._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_set_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_identify_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_identify_state._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_set_i2c_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_set_i2c_speed._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_download_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_download_firmware._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_download_firmware._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_streaming_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_streaming_ctrl._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_streaming_ctrl._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_change_protocol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_change_protocol._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_rc_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_rc_setup._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_rc_setup._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_ctrl_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_ctrl_wr._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_ctrl_wr._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_ctrl_wr._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_i2c_xfer_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_i2c_xfer_new._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_i2c_xfer_new._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_i2c_xfer_new._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_i2c_xfer_new._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_i2c_xfer_new._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_i2c_xfer_new._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_i2c_xfer_new._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_i2c_xfer_new._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_i2c_xfer_new._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_i2c_xfer_new._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_i2c_xfer_legacy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_i2c_xfer_legacy._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_i2c_xfer_legacy._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_i2c_xfer_legacy._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_set_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_jumpram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_jumpram._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_set_usb_xfer_len._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_set_usb_xfer_len._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_set_usb_xfer_len._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_rc_urb_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_rc_urb_completion._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_rc_urb_completion._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_rc_urb_completion._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_rc_urb_completion._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_rc_urb_completion._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_rc_urb_completion._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_rc_urb_completion._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_rc_urb_completion._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dib0700_get_version(ptr noundef %d, ptr noundef writeonly %hwversion, ptr noundef writeonly %romversion, ptr noundef writeonly %ramversion, ptr noundef writeonly %fwtype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i = shl i32 %5, 8
  %or4 = or i32 %shl.i, -2147483520
  %buf = getelementptr inbounds %struct.dib0700_state, ptr %1, i32 0, i32 11
  %call5 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or4, i8 noundef zeroext 21, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf, i16 noundef zeroext 16, i32 noundef 5000) #8
  %cmp6.not = icmp eq ptr %hwversion, null
  br i1 %cmp6.not, label %if.end.if.end23_crit_edge, label %if.then7

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf, align 4
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx10 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %9 to i32
  %shl12 = shl nuw nsw i32 %conv11, 16
  %or13 = or i32 %shl12, %shl
  %arrayidx15 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 2
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx15, align 2
  %conv16 = zext i8 %11 to i32
  %shl17 = shl nuw nsw i32 %conv16, 8
  %or18 = or i32 %or13, %shl17
  %arrayidx20 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 3
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %13 to i32
  %or22 = or i32 %or18, %conv21
  %14 = ptrtoint ptr %hwversion to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or22, ptr %hwversion, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then7, %if.end.if.end23_crit_edge
  %cmp24.not = icmp eq ptr %romversion, null
  br i1 %cmp24.not, label %if.end23.if.end45_crit_edge, label %if.then26

if.end23.if.end45_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx28 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 4
  %15 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx28, align 4
  %conv29 = zext i8 %16 to i32
  %shl30 = shl nuw i32 %conv29, 24
  %arrayidx32 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 5
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %18 to i32
  %shl34 = shl nuw nsw i32 %conv33, 16
  %or35 = or i32 %shl34, %shl30
  %arrayidx37 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 6
  %19 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx37, align 2
  %conv38 = zext i8 %20 to i32
  %shl39 = shl nuw nsw i32 %conv38, 8
  %or40 = or i32 %or35, %shl39
  %arrayidx42 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 7
  %21 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %22 to i32
  %or44 = or i32 %or40, %conv43
  %23 = ptrtoint ptr %romversion to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or44, ptr %romversion, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then26, %if.end23.if.end45_crit_edge
  %cmp46.not = icmp eq ptr %ramversion, null
  br i1 %cmp46.not, label %if.end45.if.end67_crit_edge, label %if.then48

if.end45.if.end67_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx50 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 8
  %24 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx50, align 4
  %conv51 = zext i8 %25 to i32
  %shl52 = shl nuw i32 %conv51, 24
  %arrayidx54 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 9
  %26 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %27 to i32
  %shl56 = shl nuw nsw i32 %conv55, 16
  %or57 = or i32 %shl56, %shl52
  %arrayidx59 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 10
  %28 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx59, align 2
  %conv60 = zext i8 %29 to i32
  %shl61 = shl nuw nsw i32 %conv60, 8
  %or62 = or i32 %or57, %shl61
  %arrayidx64 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 11
  %30 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %31 to i32
  %or66 = or i32 %or62, %conv65
  %32 = ptrtoint ptr %ramversion to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or66, ptr %ramversion, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then48, %if.end45.if.end67_crit_edge
  %cmp68.not = icmp eq ptr %fwtype, null
  br i1 %cmp68.not, label %if.end67.if.end89_crit_edge, label %if.then70

if.end67.if.end89_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx72 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 12
  %33 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx72, align 4
  %conv73 = zext i8 %34 to i32
  %shl74 = shl nuw i32 %conv73, 24
  %arrayidx76 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 13
  %35 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %36 to i32
  %shl78 = shl nuw nsw i32 %conv77, 16
  %or79 = or i32 %shl78, %shl74
  %arrayidx81 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 14
  %37 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx81, align 2
  %conv82 = zext i8 %38 to i32
  %shl83 = shl nuw nsw i32 %conv82, 8
  %or84 = or i32 %or79, %shl83
  %arrayidx86 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 15
  %39 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %40 to i32
  %or88 = or i32 %or84, %conv87
  %41 = ptrtoint ptr %fwtype to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or88, ptr %fwtype, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then70, %if.end67.if.end89_crit_edge
  tail call void @mutex_unlock(ptr noundef %usb_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %do.end
  %retval.0 = phi i32 [ -4, %do.end ], [ %call5, %if.end89 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dib0700_ctrl_rd(ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %tx, i8 noundef zeroext %txlen, ptr noundef %rx, i8 noundef zeroext %rxlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %txlen to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %txlen)
  %cmp = icmp ult i8 %txlen, 2
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %txlen)
  %cmp3 = icmp ugt i8 %txlen, 4
  br i1 %cmp3, label %if.end.cleanup.sink.split_crit_edge, label %do.body12

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body12:                                        ; preds = %if.end
  %0 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body12.do.body25.preheader_crit_edge, label %do.end16

do.body12.do.body25.preheader_crit_edge:          ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25.preheader

do.end16:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %do.body25.preheader

do.body25.preheader:                              ; preds = %do.end16, %do.body12.do.body25.preheader_crit_edge
  %umax = call i32 @llvm.umax.i32(i32 %conv, i32 1)
  br label %do.body25

do.body25:                                        ; preds = %for.inc.do.body25_crit_edge, %do.body25.preheader
  %loop_.0170 = phi i32 [ %inc, %for.inc.do.body25_crit_edge ], [ 0, %do.body25.preheader ]
  %1 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and26 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body25.for.inc_crit_edge, label %do.end31

do.body25.for.inc_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end31:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %tx, i32 %loop_.0170
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv33 = zext i8 %3 to i32
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv33) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end31, %do.body25.for.inc_crit_edge
  %inc = add nuw nsw i32 %loop_.0170, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %do.body38, label %for.inc.do.body25_crit_edge

for.inc.do.body25_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

do.body38:                                        ; preds = %for.inc
  %4 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and39 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body38.do.end49_crit_edge, label %do.end44

do.body38.do.end49_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49

do.end44:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  br label %do.end49

do.end49:                                         ; preds = %do.end44, %do.body38.do.end49_crit_edge
  %sub = shl nuw nsw i32 %conv, 8
  %shl = add nuw nsw i32 %sub, 65024
  %arrayidx51 = getelementptr i8, ptr %tx, i32 1
  %5 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %6 to i32
  %or = or i32 %shl, %conv52
  %conv53 = trunc i32 %or to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %txlen)
  %cmp55 = icmp ugt i8 %txlen, 2
  br i1 %cmp55, label %if.end64, label %do.end49.if.end74_crit_edge

do.end49.if.end74_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.end64:                                         ; preds = %do.end49
  %arrayidx58 = getelementptr i8, ptr %tx, i32 2
  %7 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %8 to i16
  %shl60 = shl nuw i16 %conv59, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %txlen)
  %cmp66.not = icmp eq i8 %txlen, 3
  br i1 %cmp66.not, label %if.end64.if.end74_crit_edge, label %if.then68

if.end64.if.end74_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx69 = getelementptr i8, ptr %tx, i32 3
  %9 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %10 to i16
  %or72 = or i16 %shl60, %conv70
  br label %if.end74

if.end74:                                         ; preds = %if.then68, %if.end64.if.end74_crit_edge, %do.end49.if.end74_crit_edge
  %index.1 = phi i16 [ %or72, %if.then68 ], [ %shl60, %if.end64.if.end74_crit_edge ], [ 0, %do.end49.if.end74_crit_edge ]
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %11 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i = shl i32 %14, 8
  %or78 = or i32 %shl.i, -2147483520
  %15 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tx, align 1
  %conv80 = zext i8 %rxlen to i16
  %call81 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or78, i8 noundef zeroext %16, i8 noundef zeroext -64, i16 noundef zeroext %conv53, i16 noundef zeroext %index.1, ptr noundef %rx, i16 noundef zeroext %conv80, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %do.body85, label %if.end74.do.body98_crit_edge

if.end74.do.body98_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body98

do.body85:                                        ; preds = %if.end74
  %17 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and86 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %do.body85.do.body98_crit_edge, label %do.end91

do.body85.do.body98_crit_edge:                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body98

do.end91:                                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #10
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call81) #11
  br label %do.body98

do.body98:                                        ; preds = %do.end91, %do.body85.do.body98_crit_edge, %if.end74.do.body98_crit_edge
  %18 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and99 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %do.body98.do.end109_crit_edge, label %do.end104

do.body98.do.end109_crit_edge:                    ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end109

do.end104:                                        ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #10
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %do.end109

do.end109:                                        ; preds = %do.end104, %do.body98.do.end109_crit_edge
  %conv112 = zext i8 %rxlen to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rxlen)
  %cmp113172.not = icmp eq i8 %rxlen, 0
  br i1 %cmp113172.not, label %do.end109.do.body133_crit_edge, label %do.end109.do.body116_crit_edge

do.end109.do.body116_crit_edge:                   ; preds = %do.end109
  br label %do.body116

do.end109.do.body133_crit_edge:                   ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body133

do.body116:                                       ; preds = %for.inc130.do.body116_crit_edge, %do.end109.do.body116_crit_edge
  %loop_110.0173 = phi i32 [ %inc131, %for.inc130.do.body116_crit_edge ], [ 0, %do.end109.do.body116_crit_edge ]
  %19 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and117 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %do.body116.for.inc130_crit_edge, label %do.end122

do.body116.for.inc130_crit_edge:                  ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc130

do.end122:                                        ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx124 = getelementptr i8, ptr %rx, i32 %loop_110.0173
  %20 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %21 to i32
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv125) #11
  br label %for.inc130

for.inc130:                                       ; preds = %do.end122, %do.body116.for.inc130_crit_edge
  %inc131 = add nuw nsw i32 %loop_110.0173, 1
  %exitcond175.not = icmp eq i32 %inc131, %conv112
  br i1 %exitcond175.not, label %for.inc130.do.body133_crit_edge, label %for.inc130.do.body116_crit_edge

for.inc130.do.body116_crit_edge:                  ; preds = %for.inc130
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body116

for.inc130.do.body133_crit_edge:                  ; preds = %for.inc130
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body133

do.body133:                                       ; preds = %for.inc130.do.body133_crit_edge, %do.end109.do.body133_crit_edge
  %22 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and134 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %do.body133.cleanup_crit_edge, label %do.body133.cleanup.sink.split_crit_edge

do.body133.cleanup.sink.split_crit_edge:          ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body133.cleanup_crit_edge:                     ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body133.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.15.sink = phi ptr [ @.str.3, %entry.cleanup.sink.split_crit_edge ], [ @.str.6, %if.end.cleanup.sink.split_crit_edge ], [ @.str.15, %do.body133.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %entry.cleanup.sink.split_crit_edge ], [ -22, %if.end.cleanup.sink.split_crit_edge ], [ %call81, %do.body133.cleanup.sink.split_crit_edge ]
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.15.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body133.cleanup_crit_edge
  %retval.0 = phi i32 [ %call81, %do.body133.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dib0700_set_gpio(ptr noundef %d, i32 noundef %gpio, i8 noundef zeroext %gpio_dir, i8 noundef zeroext %gpio_val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %buf = getelementptr inbounds %struct.dib0700_state, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 12, ptr %buf, align 4
  %conv = trunc i32 %gpio to i8
  %arrayidx3 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %arrayidx3, align 1
  %4 = shl i8 %gpio_dir, 7
  %5 = shl i8 %gpio_val, 6
  %6 = and i8 %5, 64
  %or21 = or i8 %6, %4
  %arrayidx10 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 2
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %or21, ptr %arrayidx10, align 2
  %call12 = tail call fastcc i32 @dib0700_ctrl_wr(ptr noundef %d, ptr noundef %buf, i8 noundef zeroext 3)
  tail call void @mutex_unlock(ptr noundef %usb_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -4, %do.end ], [ %call12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dib0700_ctrl_wr(ptr nocapture noundef readonly %d, ptr noundef %tx, i8 noundef zeroext %txlen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %conv = zext i8 %txlen to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %txlen)
  %cmp66.not = icmp eq i8 %txlen, 0
  br i1 %cmp66.not, label %do.end3.do.body18_crit_edge, label %do.end3.do.body5_crit_edge

do.end3.do.body5_crit_edge:                       ; preds = %do.end3
  br label %do.body5

do.end3.do.body18_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

do.body5:                                         ; preds = %for.inc.do.body5_crit_edge, %do.end3.do.body5_crit_edge
  %loop_.067 = phi i32 [ %inc, %for.inc.do.body5_crit_edge ], [ 0, %do.end3.do.body5_crit_edge ]
  %1 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and6 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body5.for.inc_crit_edge, label %do.end11

do.body5.for.inc_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %tx, i32 %loop_.067
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv13 = zext i8 %3 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv13) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end11, %do.body5.for.inc_crit_edge
  %inc = add nuw nsw i32 %loop_.067, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.do.body18_crit_edge, label %for.inc.do.body5_crit_edge

for.inc.do.body5_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5

for.inc.do.body18_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

do.body18:                                        ; preds = %for.inc.do.body18_crit_edge, %do.end3.do.body18_crit_edge
  %4 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and19 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body18.do.end29_crit_edge, label %do.end24

do.body18.do.end29_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

do.end24:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  br label %do.end29

do.end29:                                         ; preds = %do.end24, %do.body18.do.end29_crit_edge
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i = shl i32 %8, 8
  %or = or i32 %shl.i, -2147483648
  %9 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tx, align 1
  %conv33 = zext i8 %txlen to i16
  %call34 = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or, i8 noundef zeroext %10, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %tx, i16 noundef zeroext %conv33, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call34, i32 %conv)
  %cmp36.not = icmp eq i32 %call34, %conv
  br i1 %cmp36.not, label %do.end29.if.end52_crit_edge, label %do.body39

do.end29.if.end52_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

do.body39:                                        ; preds = %do.end29
  %11 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and40 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body39.if.end52_crit_edge, label %do.end45

do.body39.if.end52_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

do.end45:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %call34, i32 noundef %conv) #11
  br label %if.end52

if.end52:                                         ; preds = %do.end45, %do.body39.if.end52_crit_edge, %do.end29.if.end52_crit_edge
  %12 = tail call i32 @llvm.smin.i32(i32 %call34, i32 0)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib0700_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef %msg, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %fw_use_new_i2c_api = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %fw_use_new_i2c_api to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_use_new_i2c_api, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  %i2c_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 7
  %call1.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %for.cond.preheader.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp2396.i = icmp sgt i32 %num, 0
  br i1 %cmp2396.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.cleanup.sink.split_crit_edge

for.cond.preheader.i.cleanup.sink.split_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sub.i = add nsw i32 %num, -1
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %buf.i = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 11
  %usb_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 6
  %arrayidx158.i = getelementptr %struct.dib0700_state, ptr %3, i32 0, i32 11, i32 1
  %arrayidx171.i = getelementptr %struct.dib0700_state, ptr %3, i32 0, i32 11, i32 2
  %arrayidx181.i = getelementptr %struct.dib0700_state, ptr %3, i32 0, i32 11, i32 3
  %arrayidx206.i = getelementptr %struct.dib0700_state, ptr %3, i32 0, i32 11, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc292.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %en_stop.0399.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %spec.select.i, %for.inc292.i.for.body.i_crit_edge ]
  %i.0397.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc293.i, %for.inc292.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0397.i)
  %cmp3.i = icmp eq i32 %i.0397.i, 0
  br i1 %cmp3.i, label %for.body.i.if.end8.i_crit_edge, label %if.else.i

for.body.i.if.end8.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0397.i, i32 1
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 2
  %8 = lshr i16 %7, 7
  %9 = and i16 %8, 128
  %10 = xor i16 %9, 128
  %11 = zext i16 %10 to i32
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %for.body.i.if.end8.i_crit_edge
  %en_start.0.i = phi i32 [ 128, %for.body.i.if.end8.i_crit_edge ], [ %11, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0397.i, i32 %sub.i)
  %cmp9.i = icmp eq i32 %i.0397.i, %sub.i
  %spec.select.i = select i1 %cmp9.i, i8 1, i8 %en_stop.0399.i
  %arrayidx13.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0397.i
  %flags14.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0397.i, i32 1
  %12 = ptrtoint ptr %flags14.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags14.i, align 2
  %14 = and i16 %13, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool17.not.i = icmp eq i16 %14, 0
  br i1 %tobool17.not.i, label %if.else139.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end8.i
  %15 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx13.i, align 4
  %conv20.i = zext i16 %16 to i32
  %shl.i = shl nuw nsw i32 %conv20.i, 1
  %conv24.i = zext i8 %spec.select.i to i32
  %shl25.i = shl nuw nsw i32 %conv24.i, 6
  %or.i = or i32 %en_start.0.i, %shl25.i
  %len.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0397.i, i32 2
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len.i, align 4
  %19 = and i16 %18, 63
  %and28.i = zext i16 %19 to i32
  %or29.i = or i32 %or.i, %and28.i
  %shl30.i = shl nuw nsw i32 %or29.i, 8
  %conv31.i = and i32 %shl.i, 254
  %or32.i = or i32 %shl30.i, %conv31.i
  %conv33.i = trunc i32 %or32.i to i16
  %20 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i = shl i32 %23, 8
  %or45.i = or i32 %shl.i.i, -2147483520
  %call48.i = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or45.i, i8 noundef zeroext 18, i8 noundef zeroext -64, i16 noundef zeroext %conv33.i, i16 noundef zeroext 16, ptr noundef %buf.i, i16 noundef zeroext %18, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 0
  br i1 %cmp49.i, label %do.body.i, label %if.end60.i

do.body.i:                                        ; preds = %if.then18.i
  %24 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and52.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %do.body.i.cleanup.sink.split_crit_edge, label %do.end.i

do.body.i.cleanup.sink.split_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %call48.i) #11
  br label %cleanup.sink.split

if.end60.i:                                       ; preds = %if.then18.i
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %26)
  %cmp64.i = icmp ugt i16 %26, 255
  br i1 %cmp64.i, label %do.body67.i, label %if.end82.i

do.body67.i:                                      ; preds = %if.end60.i
  %27 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and68.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %do.body67.i.cleanup.sink.split_crit_edge, label %do.end73.i

do.body67.i.cleanup.sink.split_crit_edge:         ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.end73.i:                                       ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv63.le.i = zext i16 %26 to i32
  %call78.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %conv63.le.i) #11
  br label %cleanup.sink.split

if.end82.i:                                       ; preds = %if.end60.i
  %conv63.i = zext i16 %26 to i32
  %buf84.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0397.i, i32 3
  %28 = ptrtoint ptr %buf84.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf84.i, align 4
  %30 = call ptr @memcpy(ptr %29, ptr %buf.i, i32 %conv63.i)
  %31 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and91.i = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  br i1 %tobool92.not.i, label %if.end82.i.do.end101.i_crit_edge, label %do.end96.i

if.end82.i.do.end101.i_crit_edge:                 ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end101.i

do.end96.i:                                       ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  %call98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %do.end101.i

do.end101.i:                                      ; preds = %do.end96.i, %if.end82.i.do.end101.i_crit_edge
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp106388.not.i = icmp eq i16 %33, 0
  br i1 %cmp106388.not.i, label %do.end101.i.do.body125.i_crit_edge, label %do.end101.i.do.body109.i_crit_edge

do.end101.i.do.body109.i_crit_edge:               ; preds = %do.end101.i
  br label %do.body109.i

do.end101.i.do.body125.i_crit_edge:               ; preds = %do.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body125.i

do.body109.i:                                     ; preds = %for.inc.i.do.body109.i_crit_edge, %do.end101.i.do.body109.i_crit_edge
  %loop_.0389.i = phi i32 [ %inc.i, %for.inc.i.do.body109.i_crit_edge ], [ 0, %do.end101.i.do.body109.i_crit_edge ]
  %34 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and110.i = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.i)
  %tobool111.not.i = icmp eq i32 %and110.i, 0
  br i1 %tobool111.not.i, label %do.body109.i.for.inc.i_crit_edge, label %do.end115.i

do.body109.i.for.inc.i_crit_edge:                 ; preds = %do.body109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

do.end115.i:                                      ; preds = %do.body109.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %buf84.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf84.i, align 4
  %arrayidx119.i = getelementptr i8, ptr %36, i32 %loop_.0389.i
  %37 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx119.i, align 1
  %conv120.i = zext i8 %38 to i32
  %call121.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv120.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end115.i, %do.body109.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %loop_.0389.i, 1
  %39 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %len.i, align 4
  %conv105.i = zext i16 %40 to i32
  %cmp106.i = icmp ult i32 %inc.i, %conv105.i
  br i1 %cmp106.i, label %for.inc.i.do.body109.i_crit_edge, label %for.inc.i.do.body125.i_crit_edge

for.inc.i.do.body125.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body125.i

for.inc.i.do.body109.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body109.i

do.body125.i:                                     ; preds = %for.inc.i.do.body125.i_crit_edge, %do.end101.i.do.body125.i_crit_edge
  %41 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and126.i = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126.i)
  %tobool127.not.i = icmp eq i32 %and126.i, 0
  br i1 %tobool127.not.i, label %do.body125.i.for.inc292.i_crit_edge, label %do.end131.i

do.body125.i.for.inc292.i_crit_edge:              ; preds = %do.body125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc292.i

do.end131.i:                                      ; preds = %do.body125.i
  call void @__sanitizer_cov_trace_pc() #10
  %call133.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  br label %for.inc292.i

if.else139.i:                                     ; preds = %if.end8.i
  %call140.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i)
  %cmp141.i = icmp slt i32 %call140.i, 0
  br i1 %cmp141.i, label %do.end146.i, label %if.end149.i

do.end146.i:                                      ; preds = %if.else139.i
  call void @__sanitizer_cov_trace_pc() #10
  %call148.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup.sink.split

if.end149.i:                                      ; preds = %if.else139.i
  %42 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 19, ptr %buf.i, align 4
  %43 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx13.i, align 4
  %conv154.i = trunc i16 %44 to i8
  %shl155.i = shl i8 %conv154.i, 1
  %45 = ptrtoint ptr %arrayidx158.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %shl155.i, ptr %arrayidx158.i, align 1
  %conv161.i = zext i8 %spec.select.i to i32
  %shl162.i = shl nuw nsw i32 %conv161.i, 6
  %or163.i = or i32 %en_start.0.i, %shl162.i
  %len165.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0397.i, i32 2
  %46 = ptrtoint ptr %len165.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %len165.i, align 4
  %48 = and i16 %47, 63
  %and167.i = zext i16 %48 to i32
  %or168.i = or i32 %or163.i, %and167.i
  %conv169.i = trunc i32 %or168.i to i8
  %49 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv169.i, ptr %arrayidx171.i, align 2
  %50 = ptrtoint ptr %arrayidx181.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 16, ptr %arrayidx181.i, align 1
  %51 = load i16, ptr %len165.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 251, i16 %51)
  %cmp185.i = icmp ugt i16 %51, 251
  br i1 %cmp185.i, label %do.body188.i, label %if.end204.i

do.body188.i:                                     ; preds = %if.end149.i
  %52 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and189.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189.i)
  %tobool190.not.i = icmp eq i32 %and189.i, 0
  br i1 %tobool190.not.i, label %do.body188.i.do.end202.i_crit_edge, label %do.end194.i

do.body188.i.do.end202.i_crit_edge:               ; preds = %do.body188.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end202.i

do.end194.i:                                      ; preds = %do.body188.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv184.le.i = zext i16 %51 to i32
  %call199.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %conv184.le.i) #11
  br label %do.end202.i

do.end202.i:                                      ; preds = %do.end194.i, %do.body188.i.do.end202.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #8
  br label %cleanup.sink.split

if.end204.i:                                      ; preds = %if.end149.i
  %conv184.i = zext i16 %51 to i32
  %buf208.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0397.i, i32 3
  %53 = ptrtoint ptr %buf208.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buf208.i, align 4
  %55 = call ptr @memcpy(ptr %arrayidx206.i, ptr %54, i32 %conv184.i)
  %56 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and213.i = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213.i)
  %tobool214.not.i = icmp eq i32 %and213.i, 0
  br i1 %tobool214.not.i, label %if.end204.i.do.body232.i.preheader_crit_edge, label %do.end218.i

if.end204.i.do.body232.i.preheader_crit_edge:     ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body232.i.preheader

do.end218.i:                                      ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #10
  %call220.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %do.body232.i.preheader

do.body232.i.preheader:                           ; preds = %do.end218.i, %if.end204.i.do.body232.i.preheader_crit_edge
  br label %do.body232.i

do.body232.i:                                     ; preds = %for.inc247.i.do.body232.i_crit_edge, %do.body232.i.preheader
  %loop_224.0393.i = phi i32 [ %inc248.i, %for.inc247.i.do.body232.i_crit_edge ], [ 0, %do.body232.i.preheader ]
  %57 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and233.i = and i32 %57, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233.i)
  %tobool234.not.i = icmp eq i32 %and233.i, 0
  br i1 %tobool234.not.i, label %do.body232.i.for.inc247.i_crit_edge, label %do.end238.i

do.body232.i.for.inc247.i_crit_edge:              ; preds = %do.body232.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc247.i

do.end238.i:                                      ; preds = %do.body232.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx241.i = getelementptr %struct.dib0700_state, ptr %3, i32 0, i32 11, i32 %loop_224.0393.i
  %58 = ptrtoint ptr %arrayidx241.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx241.i, align 1
  %conv242.i = zext i8 %59 to i32
  %call243.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv242.i) #11
  br label %for.inc247.i

for.inc247.i:                                     ; preds = %do.end238.i, %do.body232.i.for.inc247.i_crit_edge
  %inc248.i = add nuw nsw i32 %loop_224.0393.i, 1
  %60 = ptrtoint ptr %len165.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %len165.i, align 4
  %conv228.i = zext i16 %61 to i32
  %add.i = add nuw nsw i32 %conv228.i, 4
  %cmp229.i = icmp ult i32 %inc248.i, %add.i
  br i1 %cmp229.i, label %for.inc247.i.do.body232.i_crit_edge, label %do.body250.i

for.inc247.i.do.body232.i_crit_edge:              ; preds = %for.inc247.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body232.i

do.body250.i:                                     ; preds = %for.inc247.i
  %62 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and251.i = and i32 %62, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and251.i)
  %tobool252.not.i = icmp eq i32 %and251.i, 0
  br i1 %tobool252.not.i, label %do.body250.i.do.end261.i_crit_edge, label %do.end256.i

do.body250.i.do.end261.i_crit_edge:               ; preds = %do.body250.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end261.i

do.end256.i:                                      ; preds = %do.body250.i
  call void @__sanitizer_cov_trace_pc() #10
  %call258.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  br label %do.end261.i

do.end261.i:                                      ; preds = %do.end256.i, %do.body250.i.do.end261.i_crit_edge
  %63 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %udev.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  %shl.i375.i = shl i32 %66, 8
  %or265.i = or i32 %shl.i375.i, -2147483648
  %67 = ptrtoint ptr %len165.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %len165.i, align 4
  %add271.i = add i16 %68, 4
  %call273.i = tail call i32 @usb_control_msg(ptr noundef %64, i32 noundef %or265.i, i8 noundef zeroext 19, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf.i, i16 noundef zeroext %add271.i, i32 noundef 5000) #8
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273.i)
  %cmp275.i = icmp slt i32 %call273.i, 0
  br i1 %cmp275.i, label %do.body278.i, label %do.end261.i.for.inc292.i_crit_edge

do.end261.i.for.inc292.i_crit_edge:               ; preds = %do.end261.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc292.i

do.body278.i:                                     ; preds = %do.end261.i
  %69 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and279.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and279.i)
  %tobool280.not.i = icmp eq i32 %and279.i, 0
  br i1 %tobool280.not.i, label %do.body278.i.cleanup.sink.split_crit_edge, label %do.end284.i

do.body278.i.cleanup.sink.split_crit_edge:        ; preds = %do.body278.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.end284.i:                                      ; preds = %do.body278.i
  call void @__sanitizer_cov_trace_pc() #10
  %call286.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %call273.i) #11
  br label %cleanup.sink.split

for.inc292.i:                                     ; preds = %do.end261.i.for.inc292.i_crit_edge, %do.end131.i, %do.body125.i.for.inc292.i_crit_edge
  %inc293.i = add nuw nsw i32 %i.0397.i, 1
  %exitcond.not.i = icmp eq i32 %inc293.i, %num
  br i1 %exitcond.not.i, label %for.inc292.i.cleanup.sink.split_crit_edge, label %for.inc292.i.for.body.i_crit_edge

for.inc292.i.for.body.i_crit_edge:                ; preds = %for.inc292.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc292.i.cleanup.sink.split_crit_edge:        ; preds = %for.inc292.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  br i1 %cmp.i, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %usb_mutex.i14 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 6
  %call2.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex.i14, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i15 = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i15, label %do.end.i19, label %for.cond.preheader.i16

for.cond.preheader.i16:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp8199.i = icmp sgt i32 %num, 0
  br i1 %cmp8199.i, label %for.body.lr.ph.i18, label %for.cond.preheader.i16.unlock.i27_crit_edge

for.cond.preheader.i16.unlock.i27_crit_edge:      ; preds = %for.cond.preheader.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.i27

for.body.lr.ph.i18:                               ; preds = %for.cond.preheader.i16
  %buf.i17 = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 11
  %arrayidx10.i = getelementptr %struct.dib0700_state, ptr %3, i32 0, i32 11, i32 1
  %arrayidx32.i = getelementptr %struct.dib0700_state, ptr %3, i32 0, i32 11, i32 2
  br label %for.body.i21

do.end.i19:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup.sink.split

for.body.i21:                                     ; preds = %for.inc.i26.for.body.i21_crit_edge, %for.body.lr.ph.i18
  %i.0200.i = phi i32 [ 0, %for.body.lr.ph.i18 ], [ %inc135.pre-phi.i, %for.inc.i26.for.body.i21_crit_edge ]
  %arrayidx.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0200.i
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx.i, align 4
  %conv.i = trunc i16 %71 to i8
  %shl.i20 = shl i8 %conv.i, 1
  %72 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %shl.i20, ptr %arrayidx10.i, align 1
  %len12.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0200.i, i32 2
  %73 = ptrtoint ptr %len12.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %len12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 253, i16 %74)
  %cmp14.i = icmp ugt i16 %74, 253
  br i1 %cmp14.i, label %do.body17.i, label %if.end30.i

do.body17.i:                                      ; preds = %for.body.i21
  %75 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body17.i.unlock.i27_crit_edge, label %do.body17.i.unlock.sink.split.i_crit_edge

do.body17.i.unlock.sink.split.i_crit_edge:        ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.sink.split.i

do.body17.i.unlock.i27_crit_edge:                 ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.i27

if.end30.i:                                       ; preds = %for.body.i21
  %conv13.i = zext i16 %74 to i32
  %buf34.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0200.i, i32 3
  %76 = ptrtoint ptr %buf34.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %buf34.i, align 4
  %78 = call ptr @memcpy(ptr %arrayidx32.i, ptr %77, i32 %conv13.i)
  %add.i22 = add nsw i32 %i.0200.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i22, i32 %num)
  %cmp38.i = icmp slt i32 %add.i22, %num
  br i1 %cmp38.i, label %land.lhs.true.i, label %if.end30.i.if.else.i25_crit_edge

if.end30.i.if.else.i25_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i25

land.lhs.true.i:                                  ; preds = %if.end30.i
  %flags.i23 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add.i22, i32 1
  %79 = ptrtoint ptr %flags.i23 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %flags.i23, align 2
  %81 = and i16 %80, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool44.not.i = icmp eq i16 %81, 0
  br i1 %tobool44.not.i, label %land.lhs.true.i.if.else.i25_crit_edge, label %if.then45.i

land.lhs.true.i.if.else.i25_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i25

if.then45.i:                                      ; preds = %land.lhs.true.i
  %82 = ptrtoint ptr %buf.i17 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 2, ptr %buf.i17, align 4
  %83 = or i8 %shl.i20, 1
  %84 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx10.i, align 1
  %85 = ptrtoint ptr %len12.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %len12.i, align 4
  %conv55.i = trunc i16 %86 to i8
  %add56.i = add i8 %conv55.i, 2
  %len62.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %add.i22, i32 2
  %87 = ptrtoint ptr %len62.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %len62.i, align 4
  %conv63.i24 = trunc i16 %88 to i8
  %call64.i = tail call i32 @dib0700_ctrl_rd(ptr noundef %1, ptr noundef %buf.i17, i8 noundef zeroext %add56.i, ptr noundef %buf.i17, i8 noundef zeroext %conv63.i24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call64.i)
  %cmp65.i = icmp slt i32 %call64.i, 1
  br i1 %cmp65.i, label %do.body68.i, label %if.end83.i

do.body68.i:                                      ; preds = %if.then45.i
  %89 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and69.i = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %do.body68.i.unlock.i27_crit_edge, label %do.body68.i.unlock.sink.split.sink.split.i_crit_edge

do.body68.i.unlock.sink.split.sink.split.i_crit_edge: ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.sink.split.sink.split.i

do.body68.i.unlock.i27_crit_edge:                 ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.i27

if.end83.i:                                       ; preds = %if.then45.i
  %90 = ptrtoint ptr %len62.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %len62.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %91)
  %cmp88.i = icmp ugt i16 %91, 255
  br i1 %cmp88.i, label %do.body91.i, label %if.end106.i

do.body91.i:                                      ; preds = %if.end83.i
  %92 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and92.i = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool93.not.i = icmp eq i32 %and92.i, 0
  br i1 %tobool93.not.i, label %do.body91.i.unlock.i27_crit_edge, label %do.body91.i.unlock.sink.split.sink.split.i_crit_edge

do.body91.i.unlock.sink.split.sink.split.i_crit_edge: ; preds = %do.body91.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.sink.split.sink.split.i

do.body91.i.unlock.i27_crit_edge:                 ; preds = %do.body91.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.i27

if.end106.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv87.i = zext i16 %91 to i32
  %buf109.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %add.i22, i32 3
  %93 = ptrtoint ptr %buf109.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %buf109.i, align 4
  %95 = call ptr @memcpy(ptr %94, ptr %buf.i17, i32 %conv87.i)
  %conv116.i = trunc i32 %call64.i to i16
  %96 = ptrtoint ptr %len62.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv116.i, ptr %len62.i, align 4
  %.pre.i = add nsw i32 %i.0200.i, 2
  br label %for.inc.i26

if.else.i25:                                      ; preds = %land.lhs.true.i.if.else.i25_crit_edge, %if.end30.i.if.else.i25_crit_edge
  %97 = ptrtoint ptr %buf.i17 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 3, ptr %buf.i17, align 4
  %98 = ptrtoint ptr %len12.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %len12.i, align 4
  %conv126.i = trunc i16 %99 to i8
  %add127.i = add i8 %conv126.i, 2
  %call129.i = tail call fastcc i32 @dib0700_ctrl_wr(ptr noundef %1, ptr noundef %buf.i17, i8 noundef zeroext %add127.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129.i)
  %cmp130.i = icmp slt i32 %call129.i, 0
  br i1 %cmp130.i, label %if.else.i25.unlock.i27_crit_edge, label %if.else.i25.for.inc.i26_crit_edge

if.else.i25.for.inc.i26_crit_edge:                ; preds = %if.else.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i26

if.else.i25.unlock.i27_crit_edge:                 ; preds = %if.else.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.i27

for.inc.i26:                                      ; preds = %if.else.i25.for.inc.i26_crit_edge, %if.end106.i
  %inc135.pre-phi.i = phi i32 [ %.pre.i, %if.end106.i ], [ %add.i22, %if.else.i25.for.inc.i26_crit_edge ]
  %cmp8.i = icmp slt i32 %inc135.pre-phi.i, %num
  br i1 %cmp8.i, label %for.inc.i26.for.body.i21_crit_edge, label %for.inc.i26.unlock.i27_crit_edge

for.inc.i26.unlock.i27_crit_edge:                 ; preds = %for.inc.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.i27

for.inc.i26.for.body.i21_crit_edge:               ; preds = %for.inc.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i21

unlock.sink.split.sink.split.i:                   ; preds = %do.body91.i.unlock.sink.split.sink.split.i_crit_edge, %do.body68.i.unlock.sink.split.sink.split.i_crit_edge
  %arrayidx.lcssa217.sink.i = phi ptr [ %arrayidx.i, %do.body68.i.unlock.sink.split.sink.split.i_crit_edge ], [ %len12.i, %do.body91.i.unlock.sink.split.sink.split.i_crit_edge ]
  %.str.111.sink.ph.i = phi ptr [ @.str.108, %do.body68.i.unlock.sink.split.sink.split.i_crit_edge ], [ @.str.111, %do.body91.i.unlock.sink.split.sink.split.i_crit_edge ]
  %100 = ptrtoint ptr %arrayidx.lcssa217.sink.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx.lcssa217.sink.i, align 4
  br label %unlock.sink.split.i

unlock.sink.split.i:                              ; preds = %unlock.sink.split.sink.split.i, %do.body17.i.unlock.sink.split.i_crit_edge
  %.sink.i = phi i16 [ %74, %do.body17.i.unlock.sink.split.i_crit_edge ], [ %101, %unlock.sink.split.sink.split.i ]
  %.str.111.sink.i = phi ptr [ @.str.105, %do.body17.i.unlock.sink.split.i_crit_edge ], [ %.str.111.sink.ph.i, %unlock.sink.split.sink.split.i ]
  %conv101.i = zext i16 %.sink.i to i32
  %call102.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.111.sink.i, i32 noundef %conv101.i) #11
  br label %unlock.i27

unlock.i27:                                       ; preds = %unlock.sink.split.i, %for.inc.i26.unlock.i27_crit_edge, %if.else.i25.unlock.i27_crit_edge, %do.body91.i.unlock.i27_crit_edge, %do.body68.i.unlock.i27_crit_edge, %do.body17.i.unlock.i27_crit_edge, %for.cond.preheader.i16.unlock.i27_crit_edge
  %result.0.i = phi i32 [ -5, %do.body17.i.unlock.i27_crit_edge ], [ -5, %do.body68.i.unlock.i27_crit_edge ], [ -5, %do.body91.i.unlock.i27_crit_edge ], [ 0, %for.cond.preheader.i16.unlock.i27_crit_edge ], [ -5, %unlock.sink.split.i ], [ %inc135.pre-phi.i, %for.inc.i26.unlock.i27_crit_edge ], [ %call129.i, %if.else.i25.unlock.i27_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i14) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %unlock.i27, %do.end.i19, %for.inc292.i.cleanup.sink.split_crit_edge, %do.end284.i, %do.body278.i.cleanup.sink.split_crit_edge, %do.end202.i, %do.end146.i, %do.end73.i, %do.body67.i.cleanup.sink.split_crit_edge, %do.end.i, %do.body.i.cleanup.sink.split_crit_edge, %for.cond.preheader.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -4, %do.end146.i ], [ -5, %do.end202.i ], [ %i.0397.i, %do.body278.i.cleanup.sink.split_crit_edge ], [ %i.0397.i, %do.end284.i ], [ -5, %do.body67.i.cleanup.sink.split_crit_edge ], [ -5, %do.end73.i ], [ %call48.i, %do.body.i.cleanup.sink.split_crit_edge ], [ %call48.i, %do.end.i ], [ 0, %for.cond.preheader.i.cleanup.sink.split_crit_edge ], [ %result.0.i, %unlock.i27 ], [ -4, %do.end.i19 ], [ %num, %for.inc292.i.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %if.then.cleanup_crit_edge ], [ -4, %if.else.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dib0700_i2c_func(ptr nocapture noundef readnone %adapter) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dib0700_identify_state(ptr noundef %udev, ptr nocapture noundef readnone %props, ptr nocapture noundef readnone %desc, ptr nocapture noundef writeonly %cold) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 16) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %udev, align 8
  %shl.i = shl i32 %2, 8
  %or2 = or i32 %shl.i, -2147483520
  %call3 = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or2, i8 noundef zeroext 21, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 16, i32 noundef 5000) #8
  %3 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %.pre = shl i32 %call3, 16
  br i1 %tobool4.not, label %if.end.do.end11_crit_edge, label %do.end

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv7 = ashr exact i32 %.pre, 16
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7) #11
  br label %do.end11

do.end11:                                         ; preds = %do.end, %if.end.do.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %.pre)
  %cmp = icmp slt i32 %.pre, 65536
  %conv13 = zext i1 %cmp to i32
  %4 = ptrtoint ptr %cold to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv13, ptr %cold, align 4
  %5 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and15 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.end11.do.end25_crit_edge, label %do.end20

do.end11.do.end25_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

do.end20:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %conv13) #11
  br label %do.end25

do.end25:                                         ; preds = %do.end20, %do.end11.do.end25_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end25 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dib0700_set_i2c_speed(ptr noundef %d, i16 noundef zeroext %scl_kHz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = zext i16 %scl_kHz to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %scl_kHz)
  %cmp = icmp eq i16 %scl_kHz, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %buf = getelementptr inbounds %struct.dib0700_state, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 16, ptr %buf, align 4
  %div = udiv i16 30000, %scl_kHz
  %arrayidx10 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx10, align 1
  %4 = lshr i16 %div, 8
  %conv12 = trunc i16 %4 to i8
  %arrayidx14 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 2
  %5 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv12, ptr %arrayidx14, align 2
  %conv16 = trunc i16 %div to i8
  %arrayidx18 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 3
  %6 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv16, ptr %arrayidx18, align 1
  %div20 = udiv i32 72000, %conv
  %7 = lshr i32 %div20, 8
  %conv24 = trunc i32 %7 to i8
  %arrayidx26 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 4
  %8 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv24, ptr %arrayidx26, align 4
  %conv29 = trunc i32 %div20 to i8
  %arrayidx31 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 5
  %9 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv29, ptr %arrayidx31, align 1
  %arrayidx39 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 6
  %10 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv24, ptr %arrayidx39, align 2
  %arrayidx44 = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 7
  %11 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv29, ptr %arrayidx44, align 1
  %12 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and46 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool.not = icmp eq i32 %and46, 0
  br i1 %tobool.not, label %if.end6.do.end78_crit_edge, label %do.end50

if.end6.do.end78_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end78

do.end50:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %or = zext i16 %div to i32
  %or65 = and i32 %div20, 65535
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %or, i32 noundef %or65, i32 noundef %or65, i32 noundef %conv) #11
  br label %do.end78

do.end78:                                         ; preds = %do.end50, %if.end6.do.end78_crit_edge
  %call80 = tail call fastcc i32 @dib0700_ctrl_wr(ptr noundef %d, ptr noundef %buf, i8 noundef zeroext 8)
  tail call void @mutex_unlock(ptr noundef %usb_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %do.end ], [ %call80, %do.end78 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dib0700_ctrl_clock(ptr noundef %d, i32 noundef %clk_MHz, i8 noundef zeroext %clock_out_gp3) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %clk_MHz)
  %cond = icmp eq i32 %clk_MHz, 72
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %usb_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %return

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %buf.i = getelementptr inbounds %struct.dib0700_state, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 11, ptr %buf.i, align 4
  %shl8.i = shl i8 %clock_out_gp3, 4
  %or9.i = or i8 %shl8.i, -96
  %arrayidx12.i = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %or9.i, ptr %arrayidx12.i, align 1
  %arrayidx16.i = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx16.i, align 2
  %arrayidx21.i = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 3
  %5 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %arrayidx21.i, align 1
  %arrayidx27.i = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 4
  %6 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx27.i, align 4
  %arrayidx32.i = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 5
  %7 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 24, ptr %arrayidx32.i, align 1
  %arrayidx38.i = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 6
  %8 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx38.i, align 2
  %arrayidx43.i = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 7
  %9 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx43.i, align 1
  %arrayidx49.i = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 8
  %10 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx49.i, align 4
  %arrayidx54.i = getelementptr %struct.dib0700_state, ptr %1, i32 0, i32 11, i32 9
  %11 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 76, ptr %arrayidx54.i, align 1
  %call56.i = tail call fastcc i32 @dib0700_ctrl_wr(ptr noundef %d, ptr noundef %buf.i, i8 noundef zeroext 10) #8
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #8
  br label %return

return:                                           ; preds = %if.end.i, %do.end.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dib0700_download_firmware(ptr noundef %udev, ptr noundef %fw) local_unnamed_addr #0 align 64 {
entry:
  %actlen.i = alloca i32, align 4
  %hx = alloca %struct.hexline, align 4
  %pos = alloca i32, align 4
  %act_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %hx) #8
  %0 = call ptr @memset(ptr %hx, i32 255, i32 268)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #8
  %1 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %pos, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %act_len) #8
  %2 = ptrtoint ptr %act_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %act_len, align 4, !annotation !294
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 260) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %addr = getelementptr inbounds %struct.hexline, ptr %hx, i32 0, i32 1
  %chk = getelementptr inbounds %struct.hexline, ptr %hx, i32 0, i32 4
  %arrayidx14 = getelementptr i8, ptr %call7.i, i32 1
  %arrayidx18 = getelementptr i8, ptr %call7.i, i32 2
  %type = getelementptr inbounds %struct.hexline, ptr %hx, i32 0, i32 2
  %arrayidx19 = getelementptr i8, ptr %call7.i, i32 3
  %arrayidx20 = getelementptr i8, ptr %call7.i, i32 4
  %data = getelementptr inbounds %struct.hexline, ptr %hx, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %do.end9.while.cond_crit_edge, %while.cond.preheader
  %call1 = call i32 @dvb_usb_get_hexline(ptr noundef %fw, ptr noundef nonnull %hx, ptr noundef nonnull %pos) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %do.body, label %while.end

do.body:                                          ; preds = %while.cond
  %4 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.end9_crit_edge, label %do.end

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %7 = ptrtoint ptr %hx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hx, align 4
  %conv = zext i8 %8 to i32
  %9 = ptrtoint ptr %chk to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %chk, align 4
  %conv5 = zext i8 %10 to i32
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %6, i32 noundef %conv, i32 noundef %conv5) #11
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %11 = ptrtoint ptr %hx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hx, align 4
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %call7.i, align 8
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr, align 4
  %shr = lshr i32 %15, 8
  %conv13 = trunc i32 %shr to i8
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv13, ptr %arrayidx14, align 1
  %conv17 = trunc i32 %15 to i8
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv17, ptr %arrayidx18, align 2
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %type, align 4
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx19, align 1
  %conv22 = zext i8 %12 to i32
  %21 = call ptr @memcpy(ptr %arrayidx20, ptr %data, i32 %conv22)
  %22 = ptrtoint ptr %chk to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %chk, align 4
  %add = add nuw nsw i32 %conv22, 4
  %arrayidx26 = getelementptr i8, ptr %call7.i, i32 %add
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx26, align 1
  %25 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %udev, align 8
  %shl.i = shl i32 %26, 8
  %or = or i32 %shl.i, -1073709056
  %add30 = add nuw nsw i32 %conv22, 5
  %call31 = call i32 @usb_bulk_msg(ptr noundef %udev, i32 noundef %or, ptr noundef nonnull %call7.i, i32 noundef %add30, ptr noundef nonnull %act_len, i32 noundef 1000) #8
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.end37, label %do.end9.while.cond_crit_edge

do.end9.while.cond_crit_edge:                     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

do.end37:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pos, align 4
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %28, i32 noundef %call31) #11
  br label %out

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp41 = icmp eq i32 %call1, 0
  br i1 %cmp41, label %if.then43, label %while.end.if.end54_crit_edge

while.end.if.end54_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then43:                                        ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actlen.i) #8
  %29 = ptrtoint ptr %actlen.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %actlen.i, align 4, !annotation !294
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 8) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %dib0700_jumpram.exit.thread, label %if.end.i

dib0700_jumpram.exit.thread:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actlen.i) #8
  br label %if.end54

if.end.i:                                         ; preds = %if.then43
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 8, ptr %call7.i.i, align 8
  %arrayidx1.i = getelementptr i8, ptr %call7.i.i, i32 1
  %32 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %call7.i.i, i32 2
  %33 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx2.i, align 2
  %arrayidx3.i = getelementptr i8, ptr %call7.i.i, i32 3
  %34 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx3.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %call7.i.i, i32 4
  %35 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 112, ptr %arrayidx4.i, align 4
  %arrayidx8.i = getelementptr i8, ptr %call7.i.i, i32 5
  %36 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx8.i, align 1
  %arrayidx12.i = getelementptr i8, ptr %call7.i.i, i32 6
  %37 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx12.i, align 2
  %arrayidx15.i = getelementptr i8, ptr %call7.i.i, i32 7
  %38 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx15.i, align 1
  %39 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %udev, align 8
  %shl.i.i = shl i32 %40, 8
  %or.i163 = or i32 %shl.i.i, -1073709056
  %call17.i = call i32 @usb_bulk_msg(ptr noundef %udev, i32 noundef %or.i163, ptr noundef nonnull %call7.i.i, i32 noundef 8, ptr noundef nonnull %actlen.i, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp.i = icmp slt i32 %call17.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end28.i

do.body.i:                                        ; preds = %if.end.i
  %41 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and20.i = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %do.body.i.dib0700_jumpram.exit.thread167_crit_edge, label %do.body.i.out.sink.split.i_crit_edge

do.body.i.out.sink.split.i_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split.i

do.body.i.dib0700_jumpram.exit.thread167_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dib0700_jumpram.exit.thread167

if.end28.i:                                       ; preds = %if.end.i
  %42 = ptrtoint ptr %actlen.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %actlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %43)
  %cmp29.not.i = icmp eq i32 %43, 8
  br i1 %cmp29.not.i, label %dib0700_jumpram.exit, label %do.body32.i

do.body32.i:                                      ; preds = %if.end28.i
  %44 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and33.i = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %do.body32.i.dib0700_jumpram.exit.thread167_crit_edge, label %do.body32.i.out.sink.split.i_crit_edge

do.body32.i.out.sink.split.i_crit_edge:           ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split.i

do.body32.i.dib0700_jumpram.exit.thread167_crit_edge: ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dib0700_jumpram.exit.thread167

out.sink.split.i:                                 ; preds = %do.body32.i.out.sink.split.i_crit_edge, %do.body.i.out.sink.split.i_crit_edge
  %ret.0.ph.i = phi i32 [ %call17.i, %do.body.i.out.sink.split.i_crit_edge ], [ -5, %do.body32.i.out.sink.split.i_crit_edge ]
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef 1879048192) #11
  br label %dib0700_jumpram.exit.thread167

dib0700_jumpram.exit.thread167:                   ; preds = %out.sink.split.i, %do.body32.i.dib0700_jumpram.exit.thread167_crit_edge, %do.body.i.dib0700_jumpram.exit.thread167_crit_edge
  %ret.0.i.ph = phi i32 [ %ret.0.ph.i, %out.sink.split.i ], [ -5, %do.body32.i.dib0700_jumpram.exit.thread167_crit_edge ], [ %call17.i, %do.body.i.dib0700_jumpram.exit.thread167_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actlen.i) #8
  br label %if.end54

dib0700_jumpram.exit:                             ; preds = %if.end28.i
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actlen.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp45 = icmp eq i32 %call17.i, 0
  br i1 %cmp45, label %do.end50, label %dib0700_jumpram.exit.if.end54_crit_edge

dib0700_jumpram.exit.if.end54_crit_edge:          ; preds = %dib0700_jumpram.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

do.end50:                                         ; preds = %dib0700_jumpram.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #11
  call void @msleep(i32 noundef 500) #8
  br label %if.end54

if.end54:                                         ; preds = %do.end50, %dib0700_jumpram.exit.if.end54_crit_edge, %dib0700_jumpram.exit.thread167, %dib0700_jumpram.exit.thread, %while.end.if.end54_crit_edge
  %ret.0 = phi i32 [ 0, %do.end50 ], [ %call17.i, %dib0700_jumpram.exit.if.end54_crit_edge ], [ -5, %while.end.if.end54_crit_edge ], [ -12, %dib0700_jumpram.exit.thread ], [ %ret.0.i.ph, %dib0700_jumpram.exit.thread167 ]
  %45 = load i32, ptr @nb_packet_buffer_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp55 = icmp slt i32 %45, 1
  br i1 %cmp55, label %if.then57, label %if.end54.if.end58_crit_edge

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  store i32 1, ptr @nb_packet_buffer_size, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end54.if.end58_crit_edge
  %46 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %udev, align 8
  %shl.i164 = shl i32 %47, 8
  %or61 = or i32 %shl.i164, -2147483520
  %call62 = call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or61, i8 noundef zeroext 21, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 16, i32 noundef 5000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dib0700_device_count to i32))
  %48 = load i32, ptr @dib0700_device_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp76174 = icmp sgt i32 %48, 0
  br i1 %cmp76174, label %for.cond78.preheader.lr.ph, label %if.end58.out_crit_edge

if.end58.out_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond78.preheader.lr.ph:                       ; preds = %if.end58
  %arrayidx65 = getelementptr i8, ptr %call7.i, i32 9
  %49 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %50 to i32
  %shl67 = shl nuw nsw i32 %conv66, 16
  %arrayidx63 = getelementptr i8, ptr %call7.i, i32 8
  %51 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx63, align 8
  %conv64 = zext i8 %52 to i32
  %shl = shl nuw i32 %conv64, 24
  %or68 = or i32 %shl67, %shl
  %arrayidx69 = getelementptr i8, ptr %call7.i, i32 10
  %53 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx69, align 2
  %conv70 = zext i8 %54 to i32
  %shl71 = shl nuw nsw i32 %conv70, 8
  %or72 = or i32 %or68, %shl71
  %arrayidx73 = getelementptr i8, ptr %call7.i, i32 11
  %55 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %56 to i32
  %or75 = or i32 %or72, %conv74
  call void @__sanitizer_cov_trace_const_cmp4(i32 66048, i32 %or75)
  %cmp83 = icmp ugt i32 %or75, 66048
  br label %for.cond78.preheader

for.cond78.preheader:                             ; preds = %for.inc122.for.cond78.preheader_crit_edge, %for.cond78.preheader.lr.ph
  %i.0175 = phi i32 [ 0, %for.cond78.preheader.lr.ph ], [ %inc123, %for.inc122.for.cond78.preheader_crit_edge ]
  %num_adapters = getelementptr [0 x %struct.dvb_usb_device_properties], ptr @dib0700_devices, i32 0, i32 %i.0175, i32 8
  %57 = ptrtoint ptr %num_adapters to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_adapters, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp80171 = icmp sgt i32 %58, 0
  br i1 %cmp80171, label %for.body82.preheader, label %for.cond78.preheader.for.inc122_crit_edge

for.cond78.preheader.for.inc122_crit_edge:        ; preds = %for.cond78.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc122

for.body82.preheader:                             ; preds = %for.cond78.preheader
  %59 = load i32, ptr @nb_packet_buffer_size, align 4
  %mul = mul i32 %59, 188
  %add91 = add i32 %mul, 94
  %div = sdiv i32 %add91, 512
  %mul92 = shl nsw i32 %div, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add91)
  %cmp109 = icmp slt i32 %add91, 512
  %spec.store.select = select i1 %cmp109, i32 512, i32 %mul92
  br label %for.body82

for.body82:                                       ; preds = %for.body82.for.body82_crit_edge, %for.body82.preheader
  %adap_num.0172 = phi i32 [ %inc, %for.body82.for.body82_crit_edge ], [ 0, %for.body82.preheader ]
  %spec.select = select i1 %cmp83, i32 %mul, i32 %spec.store.select
  %60 = getelementptr [0 x %struct.dvb_usb_device_properties], ptr @dib0700_devices, i32 0, i32 %i.0175, i32 9, i32 %adap_num.0172, i32 3, i32 0, i32 7, i32 3
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %spec.select, ptr %60, align 4
  %inc = add nuw nsw i32 %adap_num.0172, 1
  %62 = ptrtoint ptr %num_adapters to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_adapters, align 8
  %cmp80 = icmp slt i32 %inc, %63
  br i1 %cmp80, label %for.body82.for.body82_crit_edge, label %for.body82.for.inc122_crit_edge

for.body82.for.inc122_crit_edge:                  ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc122

for.body82.for.body82_crit_edge:                  ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body82

for.inc122:                                       ; preds = %for.body82.for.inc122_crit_edge, %for.cond78.preheader.for.inc122_crit_edge
  %inc123 = add nuw nsw i32 %i.0175, 1
  %exitcond.not = icmp eq i32 %inc123, %48
  br i1 %exitcond.not, label %for.inc122.out_crit_edge, label %for.inc122.for.cond78.preheader_crit_edge

for.inc122.for.cond78.preheader_crit_edge:        ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond78.preheader

for.inc122.out_crit_edge:                         ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %for.inc122.out_crit_edge, %if.end58.out_crit_edge, %do.end37
  %ret.1 = phi i32 [ %call31, %do.end37 ], [ %ret.0, %if.end58.out_crit_edge ], [ %ret.0, %for.inc122.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %act_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #8
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %hx) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_get_hexline(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dib0700_streaming_ctrl(ptr nocapture noundef readonly %adap, i32 noundef %onoff) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %cmp.not = icmp eq i32 %onoff, 0
  br i1 %cmp.not, label %entry.if.end12_crit_edge, label %land.lhs.true

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %fw_version = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66048, i32 %5)
  %cmp1 = icmp ugt i32 %5, 66048
  br i1 %cmp1, label %if.then.i, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then.i:                                        ; preds = %land.lhs.true
  %nb_packet_buffer_size = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %nb_packet_buffer_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nb_packet_buffer_size, align 4
  %usb_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 6
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %dib0700_set_usb_xfer_len.exit.thread, label %if.end.i

dib0700_set_usb_xfer_len.exit.thread:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %do.body

if.end.i:                                         ; preds = %if.then.i
  %buf.i = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %buf.i, align 4
  %9 = lshr i32 %7, 8
  %conv4.i = trunc i32 %9 to i8
  %arrayidx6.i = getelementptr %struct.dib0700_state, ptr %3, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv4.i, ptr %arrayidx6.i, align 1
  %conv9.i = trunc i32 %7 to i8
  %arrayidx11.i = getelementptr %struct.dib0700_state, ptr %3, i32 0, i32 11, i32 2
  %11 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv9.i, ptr %arrayidx11.i, align 2
  %12 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and13.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool.not.i, label %if.end.i.dib0700_set_usb_xfer_len.exit_crit_edge, label %do.end17.i

if.end.i.dib0700_set_usb_xfer_len.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dib0700_set_usb_xfer_len.exit

do.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = and i32 %7, 65535
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef %conv.i) #11
  br label %dib0700_set_usb_xfer_len.exit

dib0700_set_usb_xfer_len.exit:                    ; preds = %do.end17.i, %if.end.i.dib0700_set_usb_xfer_len.exit_crit_edge
  %call25.i = tail call fastcc i32 @dib0700_ctrl_wr(ptr noundef %1, ptr noundef %buf.i, i8 noundef zeroext 3) #8
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp3 = icmp slt i32 %call25.i, 0
  br i1 %cmp3, label %dib0700_set_usb_xfer_len.exit.do.body_crit_edge, label %dib0700_set_usb_xfer_len.exit.if.end12_crit_edge

dib0700_set_usb_xfer_len.exit.if.end12_crit_edge: ; preds = %dib0700_set_usb_xfer_len.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

dib0700_set_usb_xfer_len.exit.do.body_crit_edge:  ; preds = %dib0700_set_usb_xfer_len.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %dib0700_set_usb_xfer_len.exit.do.body_crit_edge, %dib0700_set_usb_xfer_len.exit.thread
  %retval.0.i139 = phi i32 [ -4, %dib0700_set_usb_xfer_len.exit.thread ], [ %call25.i, %dib0700_set_usb_xfer_len.exit.do.body_crit_edge ]
  %13 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #11
  br label %cleanup

if.end12:                                         ; preds = %dib0700_set_usb_xfer_len.exit.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 8
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %15, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex, i32 noundef 0) #8
  %buf = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 11
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 15, ptr %buf, align 4
  %onoff.tr = trunc i32 %onoff to i8
  %conv14 = shl i8 %onoff.tr, 4
  %arrayidx16 = getelementptr %struct.dib0700_state, ptr %3, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv14, ptr %arrayidx16, align 1
  %disable_streaming_master_mode = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %disable_streaming_master_mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %disable_streaming_master_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp18 = icmp eq i8 %19, 1
  %spec.select = select i1 %cmp18, i8 0, i8 16
  %20 = getelementptr %struct.dib0700_state, ptr %3, i32 0, i32 11, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %spec.select, ptr %20, align 2
  %arrayidx27 = getelementptr %struct.dib0700_state, ptr %3, i32 0, i32 11, i32 3
  %22 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx27, align 1
  %endpoint = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9, i32 0, i32 3, i32 1, i32 2
  %23 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %endpoint, align 4
  %.off = add i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end12.if.end64_crit_edge, label %do.body40

if.end12.if.end64_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

do.body40:                                        ; preds = %if.end12
  %25 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and41 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.body40.do.end56_crit_edge, label %do.end46

do.body40.do.end56_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end56

do.end46:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %24) #11
  br label %do.end56

do.end56:                                         ; preds = %do.end46, %do.body40.do.end56_crit_edge
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 3
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %id, align 4
  %conv57 = zext i8 %27 to i32
  br label %if.end64

if.end64:                                         ; preds = %do.end56, %if.end12.if.end64_crit_edge
  %adapt_nr.0 = phi i32 [ %conv57, %do.end56 ], [ %.off, %if.end12.if.end64_crit_edge ]
  %shl72 = shl nuw i32 1, %adapt_nr.0
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %3, align 4
  %30 = trunc i32 %shl72 to i8
  %31 = xor i8 %30, -1
  %conv76 = and i8 %29, %31
  %conv70 = or i8 %29, %30
  %storemerge = select i1 %cmp.not, i8 %conv76, i8 %conv70
  store i8 %storemerge, ptr %3, align 4
  %32 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %20, align 2
  %or83136 = or i8 %33, %storemerge
  store i8 %or83136, ptr %20, align 2
  %34 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and86 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end64.do.end98_crit_edge, label %do.end91

if.end64.do.end98_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end98

do.end91:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %cond = select i1 %cmp.not, ptr @.str.54, ptr @.str.53
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %adapt_nr.0, ptr noundef nonnull %cond, i32 noundef 3, ptr noundef %buf) #11
  br label %do.end98

do.end98:                                         ; preds = %do.end91, %if.end64.do.end98_crit_edge
  %35 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adap, align 8
  %call102 = tail call fastcc i32 @dib0700_ctrl_wr(ptr noundef %36, ptr noundef %buf, i8 noundef zeroext 4)
  %37 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adap, align 8
  %usb_mutex104 = getelementptr inbounds %struct.dvb_usb_device, ptr %38, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %usb_mutex104) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end98, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call102, %do.end98 ], [ %retval.0.i139, %do.end ], [ %retval.0.i139, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dib0700_change_protocol(ptr nocapture noundef readonly %rc, ptr nocapture noundef %rc_proto) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %priv1 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 6
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 17, ptr %buf, align 4
  %arrayidx4 = getelementptr %struct.dib0700_state, ptr %3, i32 0, i32 11, i32 1
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr %struct.dib0700_state, ptr %3, i32 0, i32 11, i32 2
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx6, align 2
  %7 = ptrtoint ptr %rc_proto to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %rc_proto, align 8
  %and = and i64 %8, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.else:                                          ; preds = %if.end
  %and8 = and i64 %8, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool9.not = icmp eq i64 %and8, 0
  br i1 %tobool9.not, label %if.else11, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.else11:                                        ; preds = %if.else
  %and12 = and i64 %8, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12)
  %tobool13.not = icmp eq i64 %and12, 0
  br i1 %tobool13.not, label %if.else11.out_crit_edge, label %if.then14

if.else11.out_crit_edge:                          ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then14:                                        ; preds = %if.else11
  %fw_version = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66048, i32 %10)
  %cmp15 = icmp ult i32 %10, 66048
  br i1 %cmp15, label %if.then14.out_crit_edge, label %if.then14.if.end21_crit_edge

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then14.out_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end21:                                         ; preds = %if.then14.if.end21_crit_edge, %if.else.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %.sink = phi i64 [ 4, %if.end.if.end21_crit_edge ], [ 512, %if.else.if.end21_crit_edge ], [ 524288, %if.then14.if.end21_crit_edge ]
  %new_proto.0 = phi i8 [ 1, %if.end.if.end21_crit_edge ], [ 0, %if.else.if.end21_crit_edge ], [ 2, %if.then14.if.end21_crit_edge ]
  %11 = ptrtoint ptr %rc_proto to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %.sink, ptr %rc_proto, align 8
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %new_proto.0, ptr %arrayidx4, align 1
  %call25 = tail call fastcc i32 @dib0700_ctrl_wr(ptr noundef %1, ptr noundef %buf, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end31, label %if.end34

do.end31:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #11
  br label %out

if.end34:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %rc_proto to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rc_proto, align 8
  %protocol = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %1, i32 0, i32 13, i32 2, i32 1
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %protocol, align 8
  br label %out

out:                                              ; preds = %if.end34, %do.end31, %if.then14.out_crit_edge, %if.else11.out_crit_edge
  %ret.0 = phi i32 [ %call25, %do.end31 ], [ %call25, %if.end34 ], [ -22, %if.then14.out_crit_edge ], [ -22, %if.else11.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %usb_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ -4, %do.end ], [ %ret.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dib0700_rc_setup(ptr noundef %d, ptr noundef readonly %intf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fw_version = getelementptr inbounds %struct.dib0700_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66048, i32 %3)
  %cmp = icmp ult i32 %3, 66048
  %tobool.not = icmp eq ptr %intf, null
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %4 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp1 = icmp ult i8 %7, 2
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %cmp5 = icmp eq ptr %call, null
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 6) #12
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %9 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %transfer_buffer, align 4
  %cmp11 = icmp eq ptr %call7.i.i, null
  br i1 %cmp11, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #11
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end8
  %status = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 12
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -115, ptr %status, align 4
  %11 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_altsetting, align 4
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress.i = getelementptr %struct.usb_host_endpoint, ptr %14, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %tobool19.not = icmp sgt i8 %16, -1
  br i1 %tobool19.not, label %if.end15.do.end44_crit_edge, label %if.then20

if.end15.do.end44_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end44

if.then20:                                        ; preds = %if.end15
  %bmAttributes.i = getelementptr %struct.usb_host_endpoint, ptr %14, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bmAttributes.i, align 1
  %trunc = trunc i8 %18 to i2
  %19 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc, label %if.then20.do.end44_crit_edge [
    i2 -2, label %if.then23
    i2 -1, label %if.then30
  ]

if.then20.do.end44_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end44

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %20 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i = shl i32 %23, 8
  %or25 = or i32 %shl.i, -1073708928
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 8
  %24 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 10
  %25 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or25, ptr %pipe2.i, align 4
  %26 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %transfer_buffer, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 19
  %27 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 6, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 28
  %28 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @dib0700_rc_urb_completion, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 27
  %29 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %d, ptr %context4.i, align 4
  br label %if.end48

if.then30:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %udev31 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %30 = ptrtoint ptr %udev31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %udev31, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i97 = shl i32 %33, 8
  %or34 = or i32 %shl.i97, 1073774720
  %dev1.i99 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 8
  %34 = ptrtoint ptr %dev1.i99 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %dev1.i99, align 4
  %pipe2.i100 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 10
  %35 = ptrtoint ptr %pipe2.i100 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or34, ptr %pipe2.i100, align 4
  %36 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %transfer_buffer, align 4
  %transfer_buffer_length.i102 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 19
  %37 = ptrtoint ptr %transfer_buffer_length.i102 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 6, ptr %transfer_buffer_length.i102, align 4
  %complete.i103 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 28
  %38 = ptrtoint ptr %complete.i103 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @dib0700_rc_urb_completion, ptr %complete.i103, align 4
  %context4.i104 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 27
  %39 = ptrtoint ptr %context4.i104 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %d, ptr %context4.i104, align 4
  %40 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 25
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %40, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 23
  %42 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %start_frame.i, align 4
  br label %if.end48

do.end44:                                         ; preds = %if.then20.do.end44_crit_edge, %if.end15.do.end44_crit_edge
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #11
  %43 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %44) #8
  br label %cleanup.sink.split

if.end48:                                         ; preds = %if.then30, %if.then23
  %call49 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end48.cleanup_crit_edge, label %do.end54

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #11
  %45 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %46) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end54, %do.end44, %do.end
  %retval.0.ph = phi i32 [ %call49, %do.end54 ], [ 0, %do.end44 ], [ -12, %do.end ]
  tail call void @usb_free_urb(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end48.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ 0, %if.end48.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dib0700_rc_urb_completion(ptr noundef %purb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rc_dev, align 8
  %cmp = icmp eq ptr %4, null
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 14
  %5 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %transfer_buffer, align 4
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %6) #8
  tail call void @usb_free_urb(ptr noundef %purb) #8
  br label %cleanup

if.end5:                                          ; preds = %do.end3
  %status = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 12
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7 = icmp slt i32 %8, 0
  br i1 %cmp7, label %do.body9, label %if.end22

do.body9:                                         ; preds = %if.end5
  %9 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and10 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body9.do.end20_crit_edge, label %do.end15

do.body9.do.end20_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #11
  br label %do.end20

do.end20:                                         ; preds = %do.end15, %do.body9.do.end20_crit_edge
  %10 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %11) #8
  tail call void @usb_free_urb(ptr noundef %purb) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end5
  %actual_length = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 20
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp23.not = icmp eq i32 %13, 6
  %14 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  br i1 %cmp23.not, label %do.body39, label %do.body25

do.body25:                                        ; preds = %if.end22
  %and26 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body25.resubmit_crit_edge, label %do.end31

do.body25.resubmit_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %resubmit

do.end31:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %13) #11
  br label %resubmit

do.body39:                                        ; preds = %if.end22
  %and40 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body39.do.end56_crit_edge, label %do.end45

do.body39.do.end56_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end56

do.end45:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %6, align 1
  %conv = zext i8 %16 to i32
  %data_state = getelementptr inbounds %struct.dib0700_rc_response, ptr %6, i32 0, i32 1
  %17 = ptrtoint ptr %data_state to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %data_state, align 1
  %conv47 = zext i8 %18 to i32
  %19 = getelementptr inbounds %struct.dib0700_rc_response, ptr %6, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %conv48 = zext i8 %21 to i32
  %not_system = getelementptr inbounds %struct.dib0700_rc_response, ptr %6, i32 0, i32 2, i32 0, i32 1
  %22 = ptrtoint ptr %not_system to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %not_system, align 1
  %conv49 = zext i8 %23 to i32
  %data = getelementptr inbounds %struct.dib0700_rc_response, ptr %6, i32 0, i32 2, i32 0, i32 2
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data, align 1
  %conv50 = zext i8 %25 to i32
  %not_data = getelementptr inbounds %struct.dib0700_rc_response, ptr %6, i32 0, i32 2, i32 0, i32 3
  %26 = ptrtoint ptr %not_data to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %not_data, align 1
  %conv51 = zext i8 %27 to i32
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, i32 noundef %conv, i32 noundef %conv47, i32 noundef %conv48, i32 noundef %conv49, i32 noundef %conv50, i32 noundef %conv51, i32 noundef 6) #11
  br label %do.end56

do.end56:                                         ; preds = %do.end45, %do.body39.do.end56_crit_edge
  %protocol57 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %1, i32 0, i32 13, i32 2, i32 1
  %28 = ptrtoint ptr %protocol57 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %protocol57, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %29)
  %cond = icmp eq i64 %29, 512
  br i1 %cond, label %sw.bb, label %do.body163

sw.bb:                                            ; preds = %do.end56
  %30 = getelementptr inbounds %struct.dib0700_rc_response, ptr %6, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp60 = icmp eq i8 %32, 0
  br i1 %cmp60, label %land.lhs.true, label %sw.bb.if.end79_crit_edge

sw.bb.if.end79_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

land.lhs.true:                                    ; preds = %sw.bb
  %not_system62 = getelementptr inbounds %struct.dib0700_rc_response, ptr %6, i32 0, i32 2, i32 0, i32 1
  %33 = ptrtoint ptr %not_system62 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %not_system62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp64 = icmp eq i8 %34, 0
  br i1 %cmp64, label %land.lhs.true66, label %land.lhs.true.if.end79_crit_edge

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

land.lhs.true66:                                  ; preds = %land.lhs.true
  %data67 = getelementptr inbounds %struct.dib0700_rc_response, ptr %6, i32 0, i32 2, i32 0, i32 2
  %35 = ptrtoint ptr %data67 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %data67, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp69 = icmp eq i8 %36, 0
  br i1 %cmp69, label %land.lhs.true71, label %land.lhs.true66.if.end79_crit_edge

land.lhs.true66.if.end79_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

land.lhs.true71:                                  ; preds = %land.lhs.true66
  %not_data72 = getelementptr inbounds %struct.dib0700_rc_response, ptr %6, i32 0, i32 2, i32 0, i32 3
  %37 = ptrtoint ptr %not_data72 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %not_data72, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %38)
  %cmp74 = icmp eq i8 %38, -1
  br i1 %cmp74, label %if.then76, label %land.lhs.true71.if.end79_crit_edge

land.lhs.true71.if.end79_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then76:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #10
  %data_state77 = getelementptr inbounds %struct.dib0700_rc_response, ptr %6, i32 0, i32 1
  %39 = ptrtoint ptr %data_state77 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 2, ptr %data_state77, align 1
  %40 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rc_dev, align 8
  tail call void @rc_repeat(ptr noundef %41) #8
  br label %resubmit

if.end79:                                         ; preds = %land.lhs.true71.if.end79_crit_edge, %land.lhs.true66.if.end79_crit_edge, %land.lhs.true.if.end79_crit_edge, %sw.bb.if.end79_crit_edge
  %data80 = getelementptr inbounds %struct.dib0700_rc_response, ptr %6, i32 0, i32 2, i32 0, i32 2
  %42 = ptrtoint ptr %data80 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %data80, align 1
  %not_data82 = getelementptr inbounds %struct.dib0700_rc_response, ptr %6, i32 0, i32 2, i32 0, i32 3
  %44 = ptrtoint ptr %not_data82 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %not_data82, align 1
  %xor258 = xor i8 %45, %43
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %xor258)
  %cmp84.not = icmp eq i8 %xor258, -1
  br i1 %cmp84.not, label %if.else, label %do.body87

do.body87:                                        ; preds = %if.end79
  %46 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and88 = and i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %do.body87.do.end98_crit_edge, label %do.end93

do.body87.do.end98_crit_edge:                     ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end98

do.end93:                                         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #10
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137) #11
  br label %do.end98

do.end98:                                         ; preds = %do.end93, %do.body87.do.end98_crit_edge
  %47 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %30, align 1
  %conv100 = zext i8 %48 to i32
  %shl = shl nuw i32 %conv100, 24
  %not_system101 = getelementptr inbounds %struct.dib0700_rc_response, ptr %6, i32 0, i32 2, i32 0, i32 1
  %49 = ptrtoint ptr %not_system101 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %not_system101, align 1
  %conv102 = zext i8 %50 to i32
  %shl103 = shl nuw nsw i32 %conv102, 16
  %or = or i32 %shl103, %shl
  %51 = ptrtoint ptr %data80 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %data80, align 1
  %conv105 = zext i8 %52 to i32
  %shl106 = shl nuw nsw i32 %conv105, 8
  %or107 = or i32 %or, %shl106
  br label %sw.epilog.sink.split

if.else:                                          ; preds = %if.end79
  %not_system114 = getelementptr inbounds %struct.dib0700_rc_response, ptr %6, i32 0, i32 2, i32 0, i32 1
  %53 = ptrtoint ptr %not_system114 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %not_system114, align 1
  %xor116259 = xor i8 %54, %32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %xor116259)
  %cmp117.not = icmp eq i8 %xor116259, -1
  %55 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and144 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %cmp117.not, label %do.body143, label %do.body120

do.body120:                                       ; preds = %if.else
  br i1 %tobool145.not, label %do.body120.do.end131_crit_edge, label %do.end126

do.body120.do.end131_crit_edge:                   ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end131

do.end126:                                        ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #10
  %call128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140) #11
  br label %do.end131

do.end131:                                        ; preds = %do.end126, %do.body120.do.end131_crit_edge
  %56 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %30, align 1
  %conv133 = zext i8 %57 to i32
  %58 = ptrtoint ptr %not_system114 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %not_system114, align 1
  %conv136 = zext i8 %59 to i32
  %60 = shl nuw nsw i32 %conv133, 16
  %61 = shl nuw nsw i32 %conv136, 8
  %shl138 = or i32 %61, %60
  br label %sw.epilog.sink.split

do.body143:                                       ; preds = %if.else
  br i1 %tobool145.not, label %do.body143.do.end154_crit_edge, label %do.end149

do.body143.do.end154_crit_edge:                   ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end154

do.end149:                                        ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #10
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143) #11
  br label %do.end154

do.end154:                                        ; preds = %do.end149, %do.body143.do.end154_crit_edge
  %62 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %30, align 1
  %conv156 = zext i8 %63 to i32
  %shl157 = shl nuw nsw i32 %conv156, 8
  br label %sw.epilog.sink.split

do.body163:                                       ; preds = %do.end56
  %64 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and164 = and i32 %64, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %do.body163.do.end174_crit_edge, label %do.end169

do.body163.do.end174_crit_edge:                   ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end174

do.end169:                                        ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #10
  %call171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146) #11
  br label %do.end174

do.end174:                                        ; preds = %do.end169, %do.body163.do.end174_crit_edge
  %65 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %6, align 1
  %system176 = getelementptr inbounds %struct.dib0700_rc_response, ptr %6, i32 0, i32 2, i32 0, i32 1
  %67 = ptrtoint ptr %system176 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %system176, align 1
  %conv177 = zext i8 %68 to i32
  %shl178 = shl nuw nsw i32 %conv177, 8
  %data179 = getelementptr inbounds %struct.dib0700_rc_response, ptr %6, i32 0, i32 2, i32 0, i32 2
  %69 = ptrtoint ptr %data179 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %data179, align 1
  %conv180 = zext i8 %70 to i32
  %or181 = or i32 %shl178, %conv180
  %not_data184 = getelementptr inbounds %struct.dib0700_rc_response, ptr %6, i32 0, i32 2, i32 0, i32 3
  %71 = ptrtoint ptr %not_data184 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %not_data184, align 1
  %xor186257 = xor i8 %72, %70
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %xor186257)
  %cmp187.not = icmp eq i8 %xor186257, -1
  br i1 %cmp187.not, label %do.end174.sw.epilog_crit_edge, label %do.end192

do.end174.sw.epilog_crit_edge:                    ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end192:                                        ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #10
  %conv185 = zext i8 %72 to i32
  %73 = getelementptr inbounds %struct.dib0700_rc_response, ptr %6, i32 0, i32 2
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %73, align 1
  %conv194 = zext i8 %75 to i32
  %call201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, i32 noundef %conv194, i32 noundef %conv177, i32 noundef %conv180, i32 noundef %conv185) #11
  br label %resubmit

sw.epilog.sink.split:                             ; preds = %do.end154, %do.end131, %do.end98
  %not_data82.sink = phi ptr [ %not_data82, %do.end98 ], [ %data80, %do.end154 ], [ %data80, %do.end131 ]
  %or107.sink = phi i32 [ %or107, %do.end98 ], [ %shl157, %do.end154 ], [ %shl138, %do.end131 ]
  %protocol.0.ph = phi i32 [ 11, %do.end98 ], [ 9, %do.end154 ], [ 10, %do.end131 ]
  %76 = ptrtoint ptr %not_data82.sink to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %not_data82.sink, align 1
  %conv109 = zext i8 %77 to i32
  %or110 = or i32 %or107.sink, %conv109
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.end174.sw.epilog_crit_edge
  %toggle.0 = phi i8 [ %66, %do.end174.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  %keycode.0 = phi i32 [ %or181, %do.end174.sw.epilog_crit_edge ], [ %or110, %sw.epilog.sink.split ]
  %protocol.0 = phi i32 [ 2, %do.end174.sw.epilog_crit_edge ], [ %protocol.0.ph, %sw.epilog.sink.split ]
  %78 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rc_dev, align 8
  %conv204 = zext i32 %keycode.0 to i64
  tail call void @rc_keydown(ptr noundef %79, i32 noundef %protocol.0, i64 noundef %conv204, i8 noundef zeroext %toggle.0) #8
  br label %resubmit

resubmit:                                         ; preds = %sw.epilog, %do.end192, %if.then76, %do.end31, %do.body25.resubmit_crit_edge
  %80 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %transfer_buffer, align 4
  %82 = call ptr @memset(ptr %81, i32 0, i32 6)
  %call206 = tail call i32 @usb_submit_urb(ptr noundef %purb, i32 noundef 2592) #8
  br label %cleanup

cleanup:                                          ; preds = %resubmit, %do.end20, %if.then4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dib0700_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @dib0700_driver, ptr noundef null, ptr noundef nonnull @.str.68) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dib0700_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @dib0700_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_repeat(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib0700_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %dev = alloca ptr, align 4
  %hwversion = alloca i32, align 4
  %romversion = alloca i32, align 4
  %fw_version = alloca i32, align 4
  %fwtype = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dev, align 4, !annotation !294
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dib0700_device_count to i32))
  %1 = load i32, ptr @dib0700_device_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25 = icmp sgt i32 %1, 0
  br i1 %cmp25, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.026, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dib0700_device_count to i32))
  %2 = load i32, ptr @dib0700_device_count, align 4
  %cmp = icmp slt i32 %inc, %2
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.dvb_usb_device_properties], ptr @dib0700_devices, i32 0, i32 %i.026
  %call = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef %arrayidx, ptr noundef null, ptr noundef nonnull %dev, ptr noundef nonnull @adapter_nr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwversion) #8
  %7 = ptrtoint ptr %hwversion to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %hwversion, align 4, !annotation !294
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %romversion) #8
  %8 = ptrtoint ptr %romversion to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %romversion, align 4, !annotation !294
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_version) #8
  %9 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %fw_version, align 4, !annotation !294
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fwtype) #8
  %10 = ptrtoint ptr %fwtype to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %fwtype, align 4, !annotation !294
  %call2 = call i32 @dib0700_get_version(ptr noundef %4, ptr noundef nonnull %hwversion, ptr noundef nonnull %romversion, ptr noundef nonnull %fw_version, ptr noundef nonnull %fwtype)
  %11 = load i32, ptr @dvb_usb_dib0700_debug, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.do.end7_crit_edge, label %do.end

if.then.do.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %hwversion to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwversion, align 4
  %14 = ptrtoint ptr %romversion to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %romversion, align 4
  %16 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_version, align 4
  %18 = ptrtoint ptr %fwtype to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fwtype, align 4
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #11
  br label %do.end7

do.end7:                                          ; preds = %do.end, %if.then.do.end7_crit_edge
  %20 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fw_version, align 4
  %fw_version8 = getelementptr inbounds %struct.dib0700_state, ptr %6, i32 0, i32 7
  %22 = ptrtoint ptr %fw_version8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %fw_version8, align 4
  %23 = load i32, ptr @nb_packet_buffer_size, align 4
  %nb_packet_buffer_size = getelementptr inbounds %struct.dib0700_state, ptr %6, i32 0, i32 8
  %24 = ptrtoint ptr %nb_packet_buffer_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %nb_packet_buffer_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66047, i32 %21)
  %cmp10 = icmp ugt i32 %21, 66047
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %bulk_mode = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %26, i32 0, i32 13, i32 2, i32 8
  %. = zext i1 %cmp10 to i8
  %27 = ptrtoint ptr %bulk_mode to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %., ptr %bulk_mode, align 4
  %call17 = call i32 @dib0700_rc_setup(ptr noundef %26, ptr noundef %intf)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fwtype) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_version) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %romversion) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwversion) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end7 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dib0700_disconnect(ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %i2c_client_tuner = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_client_tuner, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %9) #8
  tail call void @i2c_unregister_device(ptr noundef nonnull %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_client_demod = getelementptr inbounds %struct.dib0700_state, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client_demod, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %driver4 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4, i32 6
  %12 = ptrtoint ptr %driver4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver4, align 4
  %owner5 = getelementptr inbounds %struct.device_driver, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %owner5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %owner5, align 4
  tail call void @module_put(ptr noundef %15) #8
  tail call void @i2c_unregister_device(ptr noundef nonnull %11) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  tail call void @dvb_usb_device_exit(ptr noundef %intf) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usb_device_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !130, !132, !134, !136, !137, !138, !139, !140, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !179, !180, !181, !182, !184, !185, !187, !188, !189, !191, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !226, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !252, !253, !254, !256, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !282, !283, !284}
!llvm.module.flags = !{!285, !286, !287, !288, !289, !290, !291, !292}
!llvm.ident = !{!293}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 10, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype386, !1, !"__UNIQUE_ID_debugtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug387, !4, !"__UNIQUE_ID_debug387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 11, i32 1}
!5 = !{ptr @__param_nb_packet_buffer_size, !6, !"__param_nb_packet_buffer_size", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 14, i32 1}
!7 = !{ptr @__UNIQUE_ID_nb_packet_buffer_sizetype388, !6, !"__UNIQUE_ID_nb_packet_buffer_sizetype388", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_nb_packet_buffer_size389, !9, !"__UNIQUE_ID_nb_packet_buffer_size389", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 15, i32 1}
!10 = !{ptr @__param_adapter_nr, !11, !"__param_adapter_nr", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 18, i32 1}
!12 = !{ptr @__UNIQUE_ID_adapter_nrtype390, !11, !"__UNIQUE_ID_adapter_nrtype390", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_adapter_nr391, !11, !"__UNIQUE_ID_adapter_nr391", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 28, i32 3}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dib0700_get_version._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @dib0700_get_version._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 77, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @dib0700_ctrl_rd._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @dib0700_ctrl_rd._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 81, i32 3}
!27 = !{ptr @dib0700_ctrl_rd._entry.5, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @dib0700_ctrl_rd._entry_ptr.7, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 85, i32 2}
!31 = !{ptr @dib0700_ctrl_rd._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @dib0700_ctrl_rd._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 86, i32 2}
!35 = !{ptr @dib0700_ctrl_rd._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @dib0700_ctrl_rd._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @dib0700_ctrl_rd._entry.14, !34, !"_entry", i1 false, i1 false}
!39 = !{ptr @dib0700_ctrl_rd._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 100, i32 3}
!42 = !{ptr @dib0700_ctrl_rd._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @dib0700_ctrl_rd._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 102, i32 2}
!46 = !{ptr @dib0700_ctrl_rd._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @dib0700_ctrl_rd._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @dib0700_ctrl_rd._entry.23, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 103, i32 2}
!50 = !{ptr @dib0700_ctrl_rd._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @dib0700_ctrl_rd._entry.25, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @dib0700_ctrl_rd._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 114, i32 3}
!55 = !{ptr @dib0700_set_gpio._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @dib0700_set_gpio._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @dib0700_i2c_algo, !58, !"dib0700_i2c_algo", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 370, i32 22}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 391, i32 2}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @dib0700_identify_state._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @dib0700_identify_state._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 394, i32 2}
!66 = !{ptr @dib0700_identify_state._entry.30, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @dib0700_identify_state._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 440, i32 3}
!70 = !{ptr @dib0700_set_i2c_speed._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @dib0700_set_i2c_speed._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 456, i32 2}
!74 = !{ptr @dib0700_set_i2c_speed._entry.34, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @dib0700_set_i2c_speed._entry_ptr.36, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 519, i32 3}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @dib0700_download_firmware._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @dib0700_download_firmware._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 537, i32 4}
!83 = !{ptr @dib0700_download_firmware._entry.39, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @dib0700_download_firmware._entry_ptr.41, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 545, i32 4}
!87 = !{ptr @dib0700_download_firmware._entry.42, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @dib0700_download_firmware._entry_ptr.44, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 594, i32 4}
!91 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @dib0700_streaming_ctrl._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @dib0700_streaming_ctrl._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 615, i32 3}
!96 = !{ptr @dib0700_streaming_ctrl._entry.47, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @dib0700_streaming_ctrl._entry_ptr.49, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 629, i32 2}
!100 = !{ptr @dib0700_streaming_ctrl._entry.50, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @dib0700_streaming_ctrl._entry_ptr.52, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 645, i32 3}
!106 = !{ptr @dib0700_change_protocol._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @dib0700_change_protocol._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 676, i32 3}
!110 = !{ptr @dib0700_change_protocol._entry.56, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @dib0700_change_protocol._entry_ptr.58, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 830, i32 3}
!114 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @dib0700_rc_setup._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @dib0700_rc_setup._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 860, i32 3}
!119 = !{ptr @dib0700_rc_setup._entry.61, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @dib0700_rc_setup._entry_ptr.63, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 868, i32 3}
!123 = !{ptr @dib0700_rc_setup._entry.64, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @dib0700_rc_setup._entry_ptr.66, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @__initcall__kmod_dvb_usb_dib0700__392_942_dib0700_driver_init6, !126, !"__initcall__kmod_dvb_usb_dib0700__392_942_dib0700_driver_init6", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 942, i32 1}
!127 = !{ptr @__exitcall_dib0700_driver_exit, !126, !"__exitcall_dib0700_driver_exit", i1 false, i1 false}
!128 = !{ptr @__UNIQUE_ID_firmware393, !129, !"__UNIQUE_ID_firmware393", i1 false, i1 false}
!129 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 944, i32 1}
!130 = !{ptr @__UNIQUE_ID_author394, !131, !"__UNIQUE_ID_author394", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 945, i32 1}
!132 = !{ptr @__UNIQUE_ID_description395, !133, !"__UNIQUE_ID_description395", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 946, i32 1}
!134 = !{ptr @__UNIQUE_ID_version396, !135, !"__UNIQUE_ID_version396", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 947, i32 1}
!136 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.69, !135, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @__modver_attr, !135, !"__modver_attr", i1 false, i1 false}
!140 = !{ptr @__UNIQUE_ID_file397, !141, !"__UNIQUE_ID_file397", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 948, i32 1}
!142 = !{ptr @__UNIQUE_ID_license398, !141, !"__UNIQUE_ID_license398", i1 false, i1 false}
!143 = !{ptr @dvb_usb_dib0700_debug, !144, !"dvb_usb_dib0700_debug", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 9, i32 5}
!145 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!146 = !{ptr @__param_str_nb_packet_buffer_size, !6, !"__param_str_nb_packet_buffer_size", i1 false, i1 false}
!147 = !{ptr @nb_packet_buffer_size, !148, !"nb_packet_buffer_size", i1 false, i1 false}
!148 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 13, i32 12}
!149 = !{ptr @__param_str_adapter_nr, !11, !"__param_str_adapter_nr", i1 false, i1 false}
!150 = !{ptr @__param_arr_adapter_nr, !11, !"__param_arr_adapter_nr", i1 false, i1 false}
!151 = !{ptr @adapter_nr, !11, !"adapter_nr", i1 false, i1 false}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 57, i32 2}
!154 = !{ptr @dib0700_ctrl_wr._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @dib0700_ctrl_wr._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @dib0700_ctrl_wr._entry.71, !157, !"_entry", i1 false, i1 false}
!157 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 58, i32 2}
!158 = !{ptr @dib0700_ctrl_wr._entry_ptr.72, !157, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @dib0700_ctrl_wr._entry.73, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @dib0700_ctrl_wr._entry_ptr.74, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 65, i32 3}
!163 = !{ptr @dib0700_ctrl_wr._entry.75, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @dib0700_ctrl_wr._entry_ptr.77, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 214, i32 5}
!167 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @dib0700_i2c_xfer_new._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @dib0700_i2c_xfer_new._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 219, i32 5}
!172 = !{ptr @dib0700_i2c_xfer_new._entry.80, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @dib0700_i2c_xfer_new._entry_ptr.82, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @dib0700_i2c_xfer_new._entry.83, !175, !"_entry", i1 false, i1 false}
!175 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 227, i32 4}
!176 = !{ptr @dib0700_i2c_xfer_new._entry_ptr.84, !175, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @dib0700_i2c_xfer_new._entry.85, !178, !"_entry", i1 false, i1 false}
!178 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 228, i32 4}
!179 = !{ptr @dib0700_i2c_xfer_new._entry_ptr.86, !178, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @dib0700_i2c_xfer_new._entry.87, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @dib0700_i2c_xfer_new._entry_ptr.88, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @dib0700_i2c_xfer_new._entry.89, !183, !"_entry", i1 false, i1 false}
!183 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 233, i32 5}
!184 = !{ptr @dib0700_i2c_xfer_new._entry_ptr.90, !183, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.92, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 246, i32 5}
!187 = !{ptr @dib0700_i2c_xfer_new._entry.91, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @dib0700_i2c_xfer_new._entry_ptr.93, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @dib0700_i2c_xfer_new._entry.94, !190, !"_entry", i1 false, i1 false}
!190 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 256, i32 4}
!191 = !{ptr @dib0700_i2c_xfer_new._entry_ptr.95, !190, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @dib0700_i2c_xfer_new._entry.96, !193, !"_entry", i1 false, i1 false}
!193 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 257, i32 4}
!194 = !{ptr @dib0700_i2c_xfer_new._entry_ptr.97, !193, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @dib0700_i2c_xfer_new._entry.98, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @dib0700_i2c_xfer_new._entry_ptr.99, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.101, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 267, i32 5}
!199 = !{ptr @dib0700_i2c_xfer_new._entry.100, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @dib0700_i2c_xfer_new._entry_ptr.102, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.103, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 292, i32 3}
!203 = !{ptr @dib0700_i2c_xfer_legacy._entry, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @dib0700_i2c_xfer_legacy._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.105, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 302, i32 4}
!207 = !{ptr @dib0700_i2c_xfer_legacy._entry.104, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @dib0700_i2c_xfer_legacy._entry_ptr.106, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.108, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 318, i32 5}
!211 = !{ptr @dib0700_i2c_xfer_legacy._entry.107, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @dib0700_i2c_xfer_legacy._entry_ptr.109, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.111, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 325, i32 5}
!215 = !{ptr @dib0700_i2c_xfer_legacy._entry.110, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @dib0700_i2c_xfer_legacy._entry_ptr.112, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.113, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 408, i32 3}
!219 = !{ptr @dib0700_set_clock._entry, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @dib0700_set_clock._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.114, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 494, i32 3}
!223 = !{ptr @.str.115, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @dib0700_jumpram._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @dib0700_jumpram._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @dib0700_jumpram._entry.116, !227, !"_entry", i1 false, i1 false}
!227 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 498, i32 3}
!228 = !{ptr @dib0700_jumpram._entry_ptr.117, !227, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.118, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 135, i32 4}
!231 = !{ptr @dib0700_set_usb_xfer_len._entry, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @dib0700_set_usb_xfer_len._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.120, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 143, i32 3}
!235 = !{ptr @dib0700_set_usb_xfer_len._entry.119, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @dib0700_set_usb_xfer_len._entry_ptr.121, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.123, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 148, i32 3}
!239 = !{ptr @dib0700_set_usb_xfer_len._entry.122, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @dib0700_set_usb_xfer_len._entry_ptr.124, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.125, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 716, i32 2}
!243 = !{ptr @.str.126, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @dib0700_rc_urb_completion._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @dib0700_rc_urb_completion._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.128, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 727, i32 3}
!248 = !{ptr @dib0700_rc_urb_completion._entry.127, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @dib0700_rc_urb_completion._entry_ptr.129, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.131, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 734, i32 3}
!252 = !{ptr @dib0700_rc_urb_completion._entry.130, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @dib0700_rc_urb_completion._entry_ptr.132, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.134, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 738, i32 2}
!256 = !{ptr @dib0700_rc_urb_completion._entry.133, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @dib0700_rc_urb_completion._entry_ptr.135, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.137, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 759, i32 4}
!260 = !{ptr @dib0700_rc_urb_completion._entry.136, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @dib0700_rc_urb_completion._entry_ptr.138, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.140, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 766, i32 4}
!264 = !{ptr @dib0700_rc_urb_completion._entry.139, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @dib0700_rc_urb_completion._entry_ptr.141, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.143, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 773, i32 4}
!268 = !{ptr @dib0700_rc_urb_completion._entry.142, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @dib0700_rc_urb_completion._entry_ptr.144, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.146, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 781, i32 3}
!272 = !{ptr @dib0700_rc_urb_completion._entry.145, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @dib0700_rc_urb_completion._entry_ptr.147, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.149, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 788, i32 4}
!276 = !{ptr @dib0700_rc_urb_completion._entry.148, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @dib0700_rc_urb_completion._entry_ptr.150, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @dib0700_driver, !279, !"dib0700_driver", i1 false, i1 false}
!279 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 935, i32 26}
!280 = !{ptr @.str.151, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/usb/dvb-usb/dib0700_core.c", i32 891, i32 4}
!282 = !{ptr @.str.152, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @dib0700_probe._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @dib0700_probe._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{i32 1, !"wchar_size", i32 2}
!286 = !{i32 1, !"min_enum_size", i32 4}
!287 = !{i32 8, !"branch-target-enforcement", i32 0}
!288 = !{i32 8, !"sign-return-address", i32 0}
!289 = !{i32 8, !"sign-return-address-all", i32 0}
!290 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!291 = !{i32 7, !"uwtable", i32 1}
!292 = !{i32 7, !"frame-pointer", i32 2}
!293 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!294 = !{!"auto-init"}
