; ModuleID = '/llk/IR_all_yes/drivers/media/usb/ttusb-dec/ttusb_dec.c_pt.bc'
source_filename = "../drivers/media/usb/ttusb-dec/ttusb_dec.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ttusbdecfe_config = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.ttusb_dec = type { i32, ptr, ptr, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dmx_frontend, %struct.dvb_net, ptr, [20 x i16], ptr, i8, i32, i32, i32, i32, i32, i32, %struct.mutex, ptr, ptr, i32, ptr, [4 x ptr], i32, %struct.mutex, [6148 x i8], i32, i32, i32, i32, i16, i32, i32, %struct.dvb_filter_pes2ts, %struct.dvb_filter_pes2ts, [6160 x i8], i32, i32, %struct.list_head, %struct.tasklet_struct, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, [64 x i8], i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_filter_pes2ts = type { [188 x i8], i8, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.139, i32 }
%union.anon.139 = type { ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.137], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.137 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.138 }>
%union.anon.138 = type { i64 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.urb_frame = type { [896 x i8], i32, %struct.list_head }
%struct.dvb_demux_feed = type { %union.anon.135, %union.anon.136, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.135 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.136 = type { ptr }
%struct.filter_info = type { i8, ptr, %struct.list_head }
%struct.dvb_demux_filter = type { %struct.dmx_section_filter, [18 x i8], [18 x i8], i8, ptr, ptr, i32, i32, i32, i16 }
%struct.dmx_section_filter = type { [18 x i8], [18 x i8], [18 x i8], ptr, ptr }

@__param_str_debug = internal constant [16 x i8] c"ttusb_dec.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype388 = internal constant [29 x i8] c"ttusb_dec.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug389 = internal constant [58 x i8] c"ttusb_dec.parm=debug:Turn on/off debugging (default:off).\00", section ".modinfo", align 1
@__param_str_output_pva = internal constant [21 x i8] c"ttusb_dec.output_pva\00", align 1
@output_pva = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_output_pva = internal constant %struct.kernel_param { ptr @__param_str_output_pva, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @output_pva } }, section "__param", align 4
@__UNIQUE_ID_output_pvatype390 = internal constant [34 x i8] c"ttusb_dec.parmtype=output_pva:int\00", section ".modinfo", align 1
@__UNIQUE_ID_output_pva391 = internal constant [67 x i8] c"ttusb_dec.parm=output_pva:Output PVA from dvr device (default:off)\00", section ".modinfo", align 1
@__param_str_enable_rc = internal constant [20 x i8] c"ttusb_dec.enable_rc\00", align 1
@enable_rc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_enable_rc = internal constant %struct.kernel_param { ptr @__param_str_enable_rc, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @enable_rc } }, section "__param", align 4
@__UNIQUE_ID_enable_rctype392 = internal constant [33 x i8] c"ttusb_dec.parmtype=enable_rc:int\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_rc393 = internal constant [69 x i8] c"ttusb_dec.parm=enable_rc:Turn on/off IR remote control(default: off)\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [21 x i8] c"ttusb_dec.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype394 = internal constant [45 x i8] c"ttusb_dec.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr395 = internal constant [46 x i8] c"ttusb_dec.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_ttusb_dec__396_1782_ttusb_dec_driver_init6 = internal global ptr @ttusb_dec_driver_init, section ".initcall6.init", align 4
@ttusb_dec_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @ttusb_dec_probe, ptr @ttusb_dec_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ttusb_dec_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ttusb_dec_driver_exit = internal global ptr @ttusb_dec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author397 = internal constant [52 x i8] c"ttusb_dec.author=Alex Woods <linux-dvb@giblets.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description398 = internal constant [52 x i8] c"ttusb_dec.description=TechnoTrend/Hauppauge DEC USB\00", section ".modinfo", align 1
@__UNIQUE_ID_file399 = internal constant [53 x i8] c"ttusb_dec.file=drivers/media/usb/ttusb-dec/ttusb_dec\00", section ".modinfo", align 1
@__UNIQUE_ID_license400 = internal constant [22 x i8] c"ttusb_dec.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ttusb_dec\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ttusb-dec\00", [22 x i8] zeroinitializer }, align 32
@ttusb_dec_table = internal constant { [4 x %struct.usb_device_id], [32 x i8] } { [4 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2888, i16 4102, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2888, i16 4104, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2888, i16 4105, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ttusb_dec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ttusb_dec_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/ttusb-dec/ttusb_dec.c\00", [56 x i8] zeroinitializer }, align 32
@ttusb_dec_probe._entry_ptr = internal global ptr @ttusb_dec_probe._entry, section ".printk_index", align 4
@ttusb_dec_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 1648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: couldn't allocate memory.\0A\00", [33 x i8] zeroinitializer }, align 32
@ttusb_dec_probe._entry_ptr.7 = internal global ptr @ttusb_dec_probe._entry.5, section ".printk_index", align 4
@fe_config = internal constant { %struct.ttusbdecfe_config, [28 x i8] } { %struct.ttusbdecfe_config { ptr @fe_send_command }, [28 x i8] zeroinitializer }, align 32
@ttusb_dec_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"dvb-ttusb-dec: A frontend driver was not found for device [%04x:%04x]\0A\00", [57 x i8] zeroinitializer }, align 32
@ttusb_dec_probe._entry_ptr.10 = internal global ptr @ttusb_dec_probe._entry.8, section ".printk_index", align 4
@ttusb_dec_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"budget-ci: Frontend registration failed!\0A\00", [54 x i8] zeroinitializer }, align 32
@ttusb_dec_probe._entry_ptr.13 = internal global ptr @ttusb_dec_probe._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DEC2000-t\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb-ttusb-dec-2000t.fw\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DEC2540-t\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb-ttusb-dec-2540t.fw\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DEC3000-s\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb-ttusb-dec-3000s.fw\00", [41 x i8] zeroinitializer }, align 32
@ttusb_dec_init_usb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.20, ptr @.str.4, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ttusb_dec_init_usb\00", [45 x i8] zeroinitializer }, align 32
@ttusb_dec_init_usb._entry_ptr = internal global ptr @ttusb_dec_init_usb._entry, section ".printk_index", align 4
@ttusb_dec_init_usb.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dec->usb_mutex\00", [16 x i8] zeroinitializer }, align 32
@ttusb_dec_init_usb.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dec->iso_mutex\00", [16 x i8] zeroinitializer }, align 32
@ttusb_dec_handle_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:urb shutting down with status: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ttusb_dec_handle_irq\00", [43 x i8] zeroinitializer }, align 32
@ttusb_dec_handle_irq._entry_ptr = internal global ptr @ttusb_dec_handle_irq._entry, section ".printk_index", align 4
@ttusb_dec_handle_irq._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.4, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:nonzero status received: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ttusb_dec_handle_irq._entry_ptr.28 = internal global ptr @ttusb_dec_handle_irq._entry.26, section ".printk_index", align 4
@ttusb_dec_handle_irq._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.4, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s:rc signal:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@ttusb_dec_handle_irq._entry_ptr.31 = internal global ptr @ttusb_dec_handle_irq._entry.29, section ".printk_index", align 4
@rc_keys = internal global { [26 x i16], [44 x i8] } { [26 x i16] [i16 116, i16 113, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 402, i16 114, i16 352, i16 115, i16 403, i16 412, i16 1, i16 398, i16 399, i16 400, i16 401, i16 357, i16 50, i16 385], [44 x i8] zeroinitializer }, align 32
@ttusb_dec_handle_irq._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.4, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s - usb_commit_urb failed with result: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ttusb_dec_handle_irq._entry_ptr.34 = internal global ptr @ttusb_dec_handle_irq._entry.32, section ".printk_index", align 4
@ttusb_dec_alloc_iso_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.35, ptr @.str.4, i32 1178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ttusb_dec_alloc_iso_urbs\00", [39 x i8] zeroinitializer }, align 32
@ttusb_dec_alloc_iso_urbs._entry_ptr = internal global ptr @ttusb_dec_alloc_iso_urbs._entry, section ".printk_index", align 4
@ttusb_dec_free_iso_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.36, ptr @.str.4, i32 1167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ttusb_dec_free_iso_urbs\00", [40 x i8] zeroinitializer }, align 32
@ttusb_dec_free_iso_urbs._entry_ptr = internal global ptr @ttusb_dec_free_iso_urbs._entry, section ".printk_index", align 4
@ttusb_dec_setup_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.37, ptr @.str.4, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ttusb_dec_setup_urbs\00", [43 x i8] zeroinitializer }, align 32
@ttusb_dec_setup_urbs._entry_ptr = internal global ptr @ttusb_dec_setup_urbs._entry, section ".printk_index", align 4
@ttusb_dec_process_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: urb error: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ttusb_dec_process_urb\00", [42 x i8] zeroinitializer }, align 32
@ttusb_dec_process_urb._entry_ptr = internal global ptr @ttusb_dec_process_urb._entry, section ".printk_index", align 4
@ttusb_dec_init_stb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.40, ptr @.str.4, i32 1412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ttusb_dec_init_stb\00", [45 x i8] zeroinitializer }, align 32
@ttusb_dec_init_stb._entry_ptr = internal global ptr @ttusb_dec_init_stb._entry, section ".printk_index", align 4
@ttusb_dec_init_stb._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.4, i32 1420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016ttusb_dec: no version info in Firmware\0A\00", [54 x i8] zeroinitializer }, align 32
@ttusb_dec_init_stb._entry_ptr.43 = internal global ptr @ttusb_dec_init_stb._entry.41, section ".printk_index", align 4
@ttusb_dec_init_stb._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.4, i32 1424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016ttusb_dec: Firmware %x.%02x%c%c\0A\00", [61 x i8] zeroinitializer }, align 32
@ttusb_dec_init_stb._entry_ptr.46 = internal global ptr @ttusb_dec_init_stb._entry.44, section ".printk_index", align 4
@ttusb_dec_init_stb._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.40, ptr @.str.4, i32 1447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s: unknown model returned by firmware (%08x) - please report\0A\00", [63 x i8] zeroinitializer }, align 32
@ttusb_dec_init_stb._entry_ptr.49 = internal global ptr @ttusb_dec_init_stb._entry.47, section ".printk_index", align 4
@ttusb_dec_get_stb_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.50, ptr @.str.4, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ttusb_dec_get_stb_state\00", [40 x i8] zeroinitializer }, align 32
@ttusb_dec_get_stb_state._entry_ptr = internal global ptr @ttusb_dec_get_stb_state._entry, section ".printk_index", align 4
@ttusb_dec_send_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.51, ptr @.str.4, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ttusb_dec_send_command\00", [41 x i8] zeroinitializer }, align 32
@ttusb_dec_send_command._entry_ptr = internal global ptr @ttusb_dec_send_command._entry, section ".printk_index", align 4
@ttusb_dec_send_command._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.4, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Failed to lock usb mutex.\0A\00", [33 x i8] zeroinitializer }, align 32
@ttusb_dec_send_command._entry_ptr.54 = internal global ptr @ttusb_dec_send_command._entry.52, section ".printk_index", align 4
@ttusb_dec_send_command._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.4, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: command: %*ph\0A\00", [43 x i8] zeroinitializer }, align 32
@ttusb_dec_send_command._entry_ptr.57 = internal global ptr @ttusb_dec_send_command._entry.55, section ".printk_index", align 4
@ttusb_dec_send_command._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.4, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: command bulk message failed: error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@ttusb_dec_send_command._entry_ptr.60 = internal global ptr @ttusb_dec_send_command._entry.58, section ".printk_index", align 4
@ttusb_dec_send_command._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.51, ptr @.str.4, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: result bulk message failed: error %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ttusb_dec_send_command._entry_ptr.63 = internal global ptr @ttusb_dec_send_command._entry.61, section ".printk_index", align 4
@ttusb_dec_send_command._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.51, ptr @.str.4, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: result: %*ph\0A\00", [44 x i8] zeroinitializer }, align 32
@ttusb_dec_send_command._entry_ptr.66 = internal global ptr @ttusb_dec_send_command._entry.64, section ".printk_index", align 4
@__const.ttusb_dec_boot_dsp.b0 = private unnamed_addr constant [10 x i8] c"\00\00\00\00\00\00\00\00a\00", align 1
@ttusb_dec_boot_dsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.67, ptr @.str.4, i32 1317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ttusb_dec_boot_dsp\00", [45 x i8] zeroinitializer }, align 32
@ttusb_dec_boot_dsp._entry_ptr = internal global ptr @ttusb_dec_boot_dsp._entry, section ".printk_index", align 4
@ttusb_dec_boot_dsp._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.4, i32 1322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Firmware (%s) unavailable.\0A\00", [62 x i8] zeroinitializer }, align 32
@ttusb_dec_boot_dsp._entry_ptr.70 = internal global ptr @ttusb_dec_boot_dsp._entry.68, section ".printk_index", align 4
@ttusb_dec_boot_dsp._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.4, i32 1331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: firmware size too small for DSP code (%zu < 60).\0A\00", [42 x i8] zeroinitializer }, align 32
@ttusb_dec_boot_dsp._entry_ptr.73 = internal global ptr @ttusb_dec_boot_dsp._entry.71, section ".printk_index", align 4
@ttusb_dec_boot_dsp._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.4, i32 1344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"%s: crc32 check of DSP code failed (calculated 0x%08x != 0x%08x in file), file invalid.\0A\00", [39 x i8] zeroinitializer }, align 32
@ttusb_dec_boot_dsp._entry_ptr.76 = internal global ptr @ttusb_dec_boot_dsp._entry.74, section ".printk_index", align 4
@ttusb_dec_boot_dsp._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.67, ptr @.str.4, i32 1350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016ttusb_dec: found DSP code \22%s\22.\0A\00", [61 x i8] zeroinitializer }, align 32
@ttusb_dec_boot_dsp._entry_ptr.79 = internal global ptr @ttusb_dec_boot_dsp._entry.77, section ".printk_index", align 4
@ttusb_dec_init_dvb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.80, ptr @.str.4, i32 1460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ttusb_dec_init_dvb\00", [45 x i8] zeroinitializer }, align 32
@ttusb_dec_init_dvb._entry_ptr = internal global ptr @ttusb_dec_init_dvb._entry, section ".printk_index", align 4
@ttusb_dec_init_dvb._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.4, i32 1467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: dvb_register_adapter failed: error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@ttusb_dec_init_dvb._entry_ptr.83 = internal global ptr @ttusb_dec_init_dvb._entry.81, section ".printk_index", align 4
@ttusb_dec_init_dvb._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.4, i32 1483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: dvb_dmx_init failed: error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ttusb_dec_init_dvb._entry_ptr.86 = internal global ptr @ttusb_dec_init_dvb._entry.84, section ".printk_index", align 4
@ttusb_dec_init_dvb._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str.4, i32 1496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: dvb_dmxdev_init failed: error %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ttusb_dec_init_dvb._entry_ptr.89 = internal global ptr @ttusb_dec_init_dvb._entry.87, section ".printk_index", align 4
@ttusb_dec_init_dvb._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.4, i32 1509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ttusb_dec_init_dvb._entry_ptr.91 = internal global ptr @ttusb_dec_init_dvb._entry.90, section ".printk_index", align 4
@ttusb_dec_init_dvb._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.4, i32 1521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ttusb_dec_init_dvb._entry_ptr.93 = internal global ptr @ttusb_dec_init_dvb._entry.92, section ".printk_index", align 4
@ttusb_dec_start_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.94, ptr @.str.4, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ttusb_dec_start_feed\00", [43 x i8] zeroinitializer }, align 32
@ttusb_dec_start_feed._entry_ptr = internal global ptr @ttusb_dec_start_feed._entry, section ".printk_index", align 4
@ttusb_dec_start_feed._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.4, i32 1096, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  pid: 0x%04X\0A\00", [17 x i8] zeroinitializer }, align 32
@ttusb_dec_start_feed._entry_ptr.97 = internal global ptr @ttusb_dec_start_feed._entry.95, section ".printk_index", align 4
@ttusb_dec_start_feed._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.4, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  type: unknown (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@ttusb_dec_start_feed._entry_ptr.100 = internal global ptr @ttusb_dec_start_feed._entry.98, section ".printk_index", align 4
@ttusb_dec_start_ts_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.101, ptr @.str.4, i32 971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ttusb_dec_start_ts_feed\00", [40 x i8] zeroinitializer }, align 32
@ttusb_dec_start_ts_feed._entry_ptr = internal global ptr @ttusb_dec_start_ts_feed._entry, section ".printk_index", align 4
@ttusb_dec_start_ts_feed._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.4, i32 973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"  ts_type:\00", [21 x i8] zeroinitializer }, align 32
@ttusb_dec_start_ts_feed._entry_ptr.104 = internal global ptr @ttusb_dec_start_ts_feed._entry.102, section ".printk_index", align 4
@ttusb_dec_start_ts_feed._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.101, ptr @.str.4, i32 976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" TS_DECODER\00", [20 x i8] zeroinitializer }, align 32
@ttusb_dec_start_ts_feed._entry_ptr.107 = internal global ptr @ttusb_dec_start_ts_feed._entry.105, section ".printk_index", align 4
@ttusb_dec_start_ts_feed._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.101, ptr @.str.4, i32 979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" TS_PACKET\00", [21 x i8] zeroinitializer }, align 32
@ttusb_dec_start_ts_feed._entry_ptr.110 = internal global ptr @ttusb_dec_start_ts_feed._entry.108, section ".printk_index", align 4
@ttusb_dec_start_ts_feed._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.101, ptr @.str.4, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" TS_PAYLOAD_ONLY\00", [47 x i8] zeroinitializer }, align 32
@ttusb_dec_start_ts_feed._entry_ptr.113 = internal global ptr @ttusb_dec_start_ts_feed._entry.111, section ".printk_index", align 4
@ttusb_dec_start_ts_feed._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.101, ptr @.str.4, i32 984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@ttusb_dec_start_ts_feed._entry_ptr.116 = internal global ptr @ttusb_dec_start_ts_feed._entry.114, section ".printk_index", align 4
@ttusb_dec_start_ts_feed._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.101, ptr @.str.4, i32 989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  pes_type: DMX_PES_VIDEO\0A\00", [37 x i8] zeroinitializer }, align 32
@ttusb_dec_start_ts_feed._entry_ptr.119 = internal global ptr @ttusb_dec_start_ts_feed._entry.117, section ".printk_index", align 4
@ttusb_dec_start_ts_feed._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.101, ptr @.str.4, i32 997, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  pes_type: DMX_PES_AUDIO\0A\00", [37 x i8] zeroinitializer }, align 32
@ttusb_dec_start_ts_feed._entry_ptr.122 = internal global ptr @ttusb_dec_start_ts_feed._entry.120, section ".printk_index", align 4
@ttusb_dec_start_ts_feed._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.101, ptr @.str.4, i32 1005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"  pes_type: DMX_PES_TELETEXT(not supported)\0A\00", [51 x i8] zeroinitializer }, align 32
@ttusb_dec_start_ts_feed._entry_ptr.125 = internal global ptr @ttusb_dec_start_ts_feed._entry.123, section ".printk_index", align 4
@ttusb_dec_start_ts_feed._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.101, ptr @.str.4, i32 1009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  pes_type: DMX_PES_PCR\0A\00", [39 x i8] zeroinitializer }, align 32
@ttusb_dec_start_ts_feed._entry_ptr.128 = internal global ptr @ttusb_dec_start_ts_feed._entry.126, section ".printk_index", align 4
@ttusb_dec_start_ts_feed._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.101, ptr @.str.4, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"  pes_type: DMX_PES_OTHER(not supported)\0A\00", [54 x i8] zeroinitializer }, align 32
@ttusb_dec_start_ts_feed._entry_ptr.131 = internal global ptr @ttusb_dec_start_ts_feed._entry.129, section ".printk_index", align 4
@ttusb_dec_start_ts_feed._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.101, ptr @.str.4, i32 1019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"  pes_type: unknown (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@ttusb_dec_start_ts_feed._entry_ptr.134 = internal global ptr @ttusb_dec_start_ts_feed._entry.132, section ".printk_index", align 4
@__const.ttusb_dec_set_pids.b = private unnamed_addr constant [12 x i8] c"\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF", align 1
@ttusb_dec_set_pids._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.135, ptr @.str.4, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ttusb_dec_set_pids\00", [45 x i8] zeroinitializer }, align 32
@ttusb_dec_set_pids._entry_ptr = internal global ptr @ttusb_dec_set_pids._entry, section ".printk_index", align 4
@ttusb_dec_start_iso_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.136, ptr @.str.4, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ttusb_dec_start_iso_xfer\00", [39 x i8] zeroinitializer }, align 32
@ttusb_dec_start_iso_xfer._entry_ptr = internal global ptr @ttusb_dec_start_iso_xfer._entry, section ".printk_index", align 4
@ttusb_dec_start_iso_xfer._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.4, i32 944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: failed urb submission %d: error %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ttusb_dec_start_iso_xfer._entry_ptr.139 = internal global ptr @ttusb_dec_start_iso_xfer._entry.137, section ".printk_index", align 4
@__const.ttusb_dec_start_sec_feed.b0 = private unnamed_addr constant <{ [18 x i8], [11 x i8] }> <{ [18 x i8] c"\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\FF", [11 x i8] zeroinitializer }>, align 1
@ttusb_dec_start_sec_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.140, ptr @.str.4, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ttusb_dec_start_sec_feed\00", [39 x i8] zeroinitializer }, align 32
@ttusb_dec_start_sec_feed._entry_ptr = internal global ptr @ttusb_dec_start_sec_feed._entry, section ".printk_index", align 4
@ttusb_dec_stop_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.141, ptr @.str.4, i32 1150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ttusb_dec_stop_feed\00", [44 x i8] zeroinitializer }, align 32
@ttusb_dec_stop_feed._entry_ptr = internal global ptr @ttusb_dec_stop_feed._entry, section ".printk_index", align 4
@ttusb_dec_stop_iso_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.142, ptr @.str.4, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ttusb_dec_stop_iso_xfer\00", [40 x i8] zeroinitializer }, align 32
@ttusb_dec_stop_iso_xfer._entry_ptr = internal global ptr @ttusb_dec_stop_iso_xfer._entry, section ".printk_index", align 4
@ttusb_dec_init_v_pes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.143, ptr @.str.4, i32 1249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ttusb_dec_init_v_pes\00", [43 x i8] zeroinitializer }, align 32
@ttusb_dec_init_v_pes._entry_ptr = internal global ptr @ttusb_dec_init_v_pes._entry, section ".printk_index", align 4
@ttusb_dec_init_filters.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.144 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&dec->filter_info_list_lock\00", [36 x i8] zeroinitializer }, align 32
@ttusb_dec_init_tasklet.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.145 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&dec->urb_frame_list_lock\00", [38 x i8] zeroinitializer }, align 32
@ttusb_dec_process_urb_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.4, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: unknown packet type: %02x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ttusb_dec_process_urb_frame\00", [36 x i8] zeroinitializer }, align 32
@ttusb_dec_process_urb_frame._entry_ptr = internal global ptr @ttusb_dec_process_urb_frame._entry, section ".printk_index", align 4
@ttusb_dec_process_urb_frame._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.147, ptr @.str.4, i32 763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: illegal packet state encountered.\0A\00", [57 x i8] zeroinitializer }, align 32
@ttusb_dec_process_urb_frame._entry_ptr.150 = internal global ptr @ttusb_dec_process_urb_frame._entry.148, section ".printk_index", align 4
@ttusb_dec_process_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.4, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: odd sized packet - discarding\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ttusb_dec_process_packet\00", [39 x i8] zeroinitializer }, align 32
@ttusb_dec_process_packet._entry_ptr = internal global ptr @ttusb_dec_process_packet._entry, section ".printk_index", align 4
@ttusb_dec_process_packet._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.4, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: checksum failed - discarding\0A\00", [62 x i8] zeroinitializer }, align 32
@ttusb_dec_process_packet._entry_ptr.155 = internal global ptr @ttusb_dec_process_packet._entry.153, section ".printk_index", align 4
@ttusb_dec_process_packet._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.152, ptr @.str.4, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: warning: lost packets between %u and %u\0A\00", [51 x i8] zeroinitializer }, align 32
@ttusb_dec_process_packet._entry_ptr.158 = internal global ptr @ttusb_dec_process_packet._entry.156, section ".printk_index", align 4
@ttusb_dec_process_pva._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.4, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: packet too short - discarding\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ttusb_dec_process_pva\00", [42 x i8] zeroinitializer }, align 32
@ttusb_dec_process_pva._entry_ptr = internal global ptr @ttusb_dec_process_pva._entry, section ".printk_index", align 4
@ttusb_dec_process_pva._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.4, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: packet too long - discarding\0A\00", [62 x i8] zeroinitializer }, align 32
@ttusb_dec_process_pva._entry_ptr.163 = internal global ptr @ttusb_dec_process_pva._entry.161, section ".printk_index", align 4
@ttusb_dec_process_pva._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.160, ptr @.str.4, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: unknown PVA type: %02x.\0A\00", [35 x i8] zeroinitializer }, align 32
@ttusb_dec_process_pva._entry_ptr.166 = internal global ptr @ttusb_dec_process_pva._entry.164, section ".printk_index", align 4
@.str.167 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ttusb_dec remote control\00", [39 x i8] zeroinitializer }, align 32
@ttusb_init_rc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.4, i32 1240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: usb_submit_urb failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ttusb_init_rc\00", [18 x i8] zeroinitializer }, align 32
@ttusb_init_rc._entry_ptr = internal global ptr @ttusb_init_rc._entry, section ".printk_index", align 4
@.str.171 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@ttusb_dec_exit_usb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.172, ptr @.str.4, i32 1568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ttusb_dec_exit_usb\00", [45 x i8] zeroinitializer }, align 32
@ttusb_dec_exit_usb._entry_ptr = internal global ptr @ttusb_dec_exit_usb._entry, section ".printk_index", align 4
@ttusb_dec_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.173, ptr @.str.4, i32 1730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ttusb_dec_disconnect\00", [43 x i8] zeroinitializer }, align 32
@ttusb_dec_disconnect._entry_ptr = internal global ptr @ttusb_dec_disconnect._entry, section ".printk_index", align 4
@ttusb_dec_exit_rc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.174, ptr @.str.4, i32 1555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ttusb_dec_exit_rc\00", [46 x i8] zeroinitializer }, align 32
@ttusb_dec_exit_rc._entry_ptr = internal global ptr @ttusb_dec_exit_rc._entry, section ".printk_index", align 4
@ttusb_dec_exit_dvb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.175, ptr @.str.4, i32 1538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ttusb_dec_exit_dvb\00", [45 x i8] zeroinitializer }, align 32
@ttusb_dec_exit_dvb._entry_ptr = internal global ptr @ttusb_dec_exit_dvb._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 4102, i64 4104, i64 4105]
@__sancov_gen_cov_switch_values.176 = internal global [8 x i64] [i64 6, i64 32, i64 458753, i64 458760, i64 458761, i64 458764, i64 458769, i64 458771]
@__sancov_gen_cov_switch_values.177 = internal global [5 x i64] [i64 3, i64 16, i64 4102, i64 4104, i64 4105]
@__sancov_gen_cov_switch_values.178 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967234, i64 4294967294]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.181 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 20]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.183 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 170]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 83]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.187 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.189 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 29, i32 12 }
@___asan_gen_.192 = private unnamed_addr constant [11 x i8] c"output_pva\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 30, i32 12 }
@___asan_gen_.195 = private unnamed_addr constant [10 x i8] c"enable_rc\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 31, i32 12 }
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"ttusb_dec_driver\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1775, i32 26 }
@___asan_gen_.201 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 40, i32 1 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1782, i32 1 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1776, i32 11 }
@___asan_gen_.210 = private unnamed_addr constant [16 x i8] c"ttusb_dec_table\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1767, i32 35 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1643, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1648, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [10 x i8] c"fe_config\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1632, i32 39 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1693, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1698, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1751, i32 21 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1752, i32 24 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1756, i32 21 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1757, i32 24 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1761, i32 21 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1762, i32 24 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1261, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1263, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1264, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 263, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 267, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 286, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant [8 x i8] c"rc_keys\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 168, i32 12 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 297, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1178, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1167, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 843, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 831, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1412, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1420, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1422, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1446, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 389, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 321, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 329, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 342, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 350, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 359, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 364, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1317, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1321, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1330, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1343, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1350, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1460, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1466, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1482, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1495, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1508, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1520, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1091, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1096, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1107, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 971, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 973, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 976, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 979, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 982, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 984, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 989, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 997, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1005, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1009, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1015, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1019, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 444, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 928, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 943, i32 5 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1051, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1150, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 873, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1249, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1609, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1203, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 690, i32 6 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 762, i32 4 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 590, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 598, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 606, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 463, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 468, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 551, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1216, i32 24 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1222, i32 20 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1240, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 912, i32 31 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1568, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1730, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1555, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.705 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.706 = private constant [43 x i8] c"../drivers/media/usb/ttusb-dec/ttusb_dec.c\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1538, i32 2 }
@llvm.compiler.used = appending global [262 x ptr] [ptr @__UNIQUE_ID_adapter_nr395, ptr @__UNIQUE_ID_adapter_nrtype394, ptr @__UNIQUE_ID_author397, ptr @__UNIQUE_ID_debug389, ptr @__UNIQUE_ID_debugtype388, ptr @__UNIQUE_ID_description398, ptr @__UNIQUE_ID_enable_rc393, ptr @__UNIQUE_ID_enable_rctype392, ptr @__UNIQUE_ID_file399, ptr @__UNIQUE_ID_license400, ptr @__UNIQUE_ID_output_pva391, ptr @__UNIQUE_ID_output_pvatype390, ptr @__exitcall_ttusb_dec_driver_exit, ptr @__initcall__kmod_ttusb_dec__396_1782_ttusb_dec_driver_init6, ptr @__param_adapter_nr, ptr @__param_debug, ptr @__param_enable_rc, ptr @__param_output_pva, ptr @ttusb_dec_alloc_iso_urbs._entry, ptr @ttusb_dec_alloc_iso_urbs._entry_ptr, ptr @ttusb_dec_boot_dsp._entry, ptr @ttusb_dec_boot_dsp._entry.68, ptr @ttusb_dec_boot_dsp._entry.71, ptr @ttusb_dec_boot_dsp._entry.74, ptr @ttusb_dec_boot_dsp._entry.77, ptr @ttusb_dec_boot_dsp._entry_ptr, ptr @ttusb_dec_boot_dsp._entry_ptr.70, ptr @ttusb_dec_boot_dsp._entry_ptr.73, ptr @ttusb_dec_boot_dsp._entry_ptr.76, ptr @ttusb_dec_boot_dsp._entry_ptr.79, ptr @ttusb_dec_disconnect._entry, ptr @ttusb_dec_disconnect._entry_ptr, ptr @ttusb_dec_driver_exit, ptr @ttusb_dec_exit_dvb._entry, ptr @ttusb_dec_exit_dvb._entry_ptr, ptr @ttusb_dec_exit_rc._entry, ptr @ttusb_dec_exit_rc._entry_ptr, ptr @ttusb_dec_exit_usb._entry, ptr @ttusb_dec_exit_usb._entry_ptr, ptr @ttusb_dec_free_iso_urbs._entry, ptr @ttusb_dec_free_iso_urbs._entry_ptr, ptr @ttusb_dec_get_stb_state._entry, ptr @ttusb_dec_get_stb_state._entry_ptr, ptr @ttusb_dec_handle_irq._entry, ptr @ttusb_dec_handle_irq._entry.26, ptr @ttusb_dec_handle_irq._entry.29, ptr @ttusb_dec_handle_irq._entry.32, ptr @ttusb_dec_handle_irq._entry_ptr, ptr @ttusb_dec_handle_irq._entry_ptr.28, ptr @ttusb_dec_handle_irq._entry_ptr.31, ptr @ttusb_dec_handle_irq._entry_ptr.34, ptr @ttusb_dec_init_dvb._entry, ptr @ttusb_dec_init_dvb._entry.81, ptr @ttusb_dec_init_dvb._entry.84, ptr @ttusb_dec_init_dvb._entry.87, ptr @ttusb_dec_init_dvb._entry.90, ptr @ttusb_dec_init_dvb._entry.92, ptr @ttusb_dec_init_dvb._entry_ptr, ptr @ttusb_dec_init_dvb._entry_ptr.83, ptr @ttusb_dec_init_dvb._entry_ptr.86, ptr @ttusb_dec_init_dvb._entry_ptr.89, ptr @ttusb_dec_init_dvb._entry_ptr.91, ptr @ttusb_dec_init_dvb._entry_ptr.93, ptr @ttusb_dec_init_stb._entry, ptr @ttusb_dec_init_stb._entry.41, ptr @ttusb_dec_init_stb._entry.44, ptr @ttusb_dec_init_stb._entry.47, ptr @ttusb_dec_init_stb._entry_ptr, ptr @ttusb_dec_init_stb._entry_ptr.43, ptr @ttusb_dec_init_stb._entry_ptr.46, ptr @ttusb_dec_init_stb._entry_ptr.49, ptr @ttusb_dec_init_usb._entry, ptr @ttusb_dec_init_usb._entry_ptr, ptr @ttusb_dec_init_v_pes._entry, ptr @ttusb_dec_init_v_pes._entry_ptr, ptr @ttusb_dec_probe._entry, ptr @ttusb_dec_probe._entry.11, ptr @ttusb_dec_probe._entry.5, ptr @ttusb_dec_probe._entry.8, ptr @ttusb_dec_probe._entry_ptr, ptr @ttusb_dec_probe._entry_ptr.10, ptr @ttusb_dec_probe._entry_ptr.13, ptr @ttusb_dec_probe._entry_ptr.7, ptr @ttusb_dec_process_packet._entry, ptr @ttusb_dec_process_packet._entry.153, ptr @ttusb_dec_process_packet._entry.156, ptr @ttusb_dec_process_packet._entry_ptr, ptr @ttusb_dec_process_packet._entry_ptr.155, ptr @ttusb_dec_process_packet._entry_ptr.158, ptr @ttusb_dec_process_pva._entry, ptr @ttusb_dec_process_pva._entry.161, ptr @ttusb_dec_process_pva._entry.164, ptr @ttusb_dec_process_pva._entry_ptr, ptr @ttusb_dec_process_pva._entry_ptr.163, ptr @ttusb_dec_process_pva._entry_ptr.166, ptr @ttusb_dec_process_urb._entry, ptr @ttusb_dec_process_urb._entry_ptr, ptr @ttusb_dec_process_urb_frame._entry, ptr @ttusb_dec_process_urb_frame._entry.148, ptr @ttusb_dec_process_urb_frame._entry_ptr, ptr @ttusb_dec_process_urb_frame._entry_ptr.150, ptr @ttusb_dec_send_command._entry, ptr @ttusb_dec_send_command._entry.52, ptr @ttusb_dec_send_command._entry.55, ptr @ttusb_dec_send_command._entry.58, ptr @ttusb_dec_send_command._entry.61, ptr @ttusb_dec_send_command._entry.64, ptr @ttusb_dec_send_command._entry_ptr, ptr @ttusb_dec_send_command._entry_ptr.54, ptr @ttusb_dec_send_command._entry_ptr.57, ptr @ttusb_dec_send_command._entry_ptr.60, ptr @ttusb_dec_send_command._entry_ptr.63, ptr @ttusb_dec_send_command._entry_ptr.66, ptr @ttusb_dec_set_pids._entry, ptr @ttusb_dec_set_pids._entry_ptr, ptr @ttusb_dec_setup_urbs._entry, ptr @ttusb_dec_setup_urbs._entry_ptr, ptr @ttusb_dec_start_feed._entry, ptr @ttusb_dec_start_feed._entry.95, ptr @ttusb_dec_start_feed._entry.98, ptr @ttusb_dec_start_feed._entry_ptr, ptr @ttusb_dec_start_feed._entry_ptr.100, ptr @ttusb_dec_start_feed._entry_ptr.97, ptr @ttusb_dec_start_iso_xfer._entry, ptr @ttusb_dec_start_iso_xfer._entry.137, ptr @ttusb_dec_start_iso_xfer._entry_ptr, ptr @ttusb_dec_start_iso_xfer._entry_ptr.139, ptr @ttusb_dec_start_sec_feed._entry, ptr @ttusb_dec_start_sec_feed._entry_ptr, ptr @ttusb_dec_start_ts_feed._entry, ptr @ttusb_dec_start_ts_feed._entry.102, ptr @ttusb_dec_start_ts_feed._entry.105, ptr @ttusb_dec_start_ts_feed._entry.108, ptr @ttusb_dec_start_ts_feed._entry.111, ptr @ttusb_dec_start_ts_feed._entry.114, ptr @ttusb_dec_start_ts_feed._entry.117, ptr @ttusb_dec_start_ts_feed._entry.120, ptr @ttusb_dec_start_ts_feed._entry.123, ptr @ttusb_dec_start_ts_feed._entry.126, ptr @ttusb_dec_start_ts_feed._entry.129, ptr @ttusb_dec_start_ts_feed._entry.132, ptr @ttusb_dec_start_ts_feed._entry_ptr, ptr @ttusb_dec_start_ts_feed._entry_ptr.104, ptr @ttusb_dec_start_ts_feed._entry_ptr.107, ptr @ttusb_dec_start_ts_feed._entry_ptr.110, ptr @ttusb_dec_start_ts_feed._entry_ptr.113, ptr @ttusb_dec_start_ts_feed._entry_ptr.116, ptr @ttusb_dec_start_ts_feed._entry_ptr.119, ptr @ttusb_dec_start_ts_feed._entry_ptr.122, ptr @ttusb_dec_start_ts_feed._entry_ptr.125, ptr @ttusb_dec_start_ts_feed._entry_ptr.128, ptr @ttusb_dec_start_ts_feed._entry_ptr.131, ptr @ttusb_dec_start_ts_feed._entry_ptr.134, ptr @ttusb_dec_stop_feed._entry, ptr @ttusb_dec_stop_feed._entry_ptr, ptr @ttusb_dec_stop_iso_xfer._entry, ptr @ttusb_dec_stop_iso_xfer._entry_ptr, ptr @ttusb_init_rc._entry, ptr @ttusb_init_rc._entry_ptr, ptr @debug, ptr @output_pva, ptr @enable_rc, ptr @ttusb_dec_driver, ptr @adapter_nr, ptr @.str, ptr @.str.1, ptr @ttusb_dec_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @fe_config, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @ttusb_dec_init_usb.__key, ptr @.str.21, ptr @ttusb_dec_init_usb.__key.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @rc_keys, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @ttusb_dec_init_filters.__key, ptr @.str.144, ptr @ttusb_dec_init_tasklet.__key, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.149, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.157, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.165, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175], section "llvm.metadata"
@0 = internal global [173 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_pva to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_rc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_init_usb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_init_usb.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_init_usb.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_handle_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_handle_irq._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_handle_irq._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_keys to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_handle_irq._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_alloc_iso_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_free_iso_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_setup_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_process_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_init_stb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_init_stb._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_init_stb._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_init_stb._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_get_stb_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_send_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_send_command._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_send_command._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_send_command._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_send_command._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_send_command._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_boot_dsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_boot_dsp._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_boot_dsp._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_boot_dsp._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_boot_dsp._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_init_dvb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_init_dvb._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_init_dvb._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_init_dvb._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_init_dvb._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_init_dvb._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_start_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_start_feed._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_start_feed._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_start_ts_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_start_ts_feed._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_start_ts_feed._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_start_ts_feed._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_start_ts_feed._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_start_ts_feed._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_start_ts_feed._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_start_ts_feed._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_start_ts_feed._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_start_ts_feed._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_start_ts_feed._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_start_ts_feed._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_set_pids._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_start_iso_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_start_iso_xfer._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_start_sec_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_stop_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_stop_iso_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_init_v_pes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_init_filters.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_init_tasklet.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_process_urb_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_process_urb_frame._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_process_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_process_packet._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_process_packet._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_process_pva._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_process_pva._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_process_pva._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_init_rc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_exit_usb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_exit_rc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_exit_dvb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusb_dec_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ttusb_dec_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ttusb_dec_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_deregister(ptr noundef nonnull @ttusb_dec_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusb_dec_probe(ptr nocapture noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %b.i139 = alloca [2 x i8], align 2
  %b.i = alloca [1 x i8], align 1
  %actual_len.i.i = alloca i32, align 4
  %b0.i.i = alloca [10 x i8], align 4
  %b1.i.i = alloca [1 x i8], align 1
  %idstring.i.i = alloca [21 x i8], align 1
  %fw_entry.i.i = alloca ptr, align 4
  %c.i.i = alloca [60 x i8], align 4
  %c_length.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 -128
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 15336, i32 noundef 3520, i32 noundef 2) #15
  %tobool3.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1.i.i.i, ptr %driver_data.i.i, align 4
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %4 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %idProduct, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %if.end10.sw.epilog_crit_edge [
    i16 4102, label %if.end10.sw.epilog.sink.split_crit_edge
    i16 4104, label %sw.bb11
    i16 4105, label %sw.bb12
  ]

if.end10.sw.epilog.sink.split_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb12:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb12, %sw.bb11, %if.end10.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 1, %sw.bb12 ], [ 0, %sw.bb11 ], [ 2, %if.end10.sw.epilog.sink.split_crit_edge ]
  %.str.16.sink = phi ptr [ @.str.16, %sw.bb12 ], [ @.str.14, %sw.bb11 ], [ @.str.18, %if.end10.sw.epilog.sink.split_crit_edge ]
  %.str.17.sink = phi ptr [ @.str.17, %sw.bb12 ], [ @.str.15, %sw.bb11 ], [ @.str.19, %if.end10.sw.epilog.sink.split_crit_edge ]
  %7 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %call1.i.i.i, align 4096
  %model_name6.i112 = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %model_name6.i112 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %.str.16.sink, ptr %model_name6.i112, align 4
  %firmware_name7.i113 = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %firmware_name7.i113 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %.str.17.sink, ptr %firmware_name7.i113, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end10.sw.epilog_crit_edge
  %udev13 = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %udev13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i, ptr %udev13, align 16
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %sw.epilog.do.body1.i_crit_edge, label %do.end.i

sw.epilog.do.body1.i_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.20) #14
  br label %do.body1.i

do.body1.i:                                       ; preds = %do.end.i, %sw.epilog.do.body1.i_crit_edge
  %usb_mutex.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %usb_mutex.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @ttusb_dec_init_usb.__key) #11
  %iso_mutex.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 26
  tail call void @__mutex_init(ptr noundef %iso_mutex.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @ttusb_dec_init_usb.__key.22) #11
  %12 = ptrtoint ptr %udev13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev13, align 16
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i = shl i32 %15, 8
  %or.i = or i32 %shl.i.i, -1073643520
  %command_pipe.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 13
  %16 = ptrtoint ptr %command_pipe.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i, ptr %command_pipe.i, align 8
  %17 = load i32, ptr %13, align 8
  %shl.i86.i = shl i32 %17, 8
  %or11.i = or i32 %shl.i86.i, -1073610624
  %result_pipe.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 14
  %18 = ptrtoint ptr %result_pipe.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or11.i, ptr %result_pipe.i, align 4
  %19 = load i32, ptr %13, align 8
  %shl.i88.i = shl i32 %19, 8
  %or15.i = or i32 %shl.i88.i, 262272
  %in_pipe.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 15
  %20 = ptrtoint ptr %in_pipe.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or15.i, ptr %in_pipe.i, align 32
  %21 = load i32, ptr %13, align 8
  %shl.i90.i = shl i32 %21, 8
  %or.i91.i = or i32 %shl.i90.i, 229376
  %out_pipe.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 16
  %22 = ptrtoint ptr %out_pipe.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or.i91.i, ptr %out_pipe.i, align 4
  %23 = load i32, ptr %13, align 8
  %shl.i92.i = shl i32 %23, 8
  %or22.i = or i32 %shl.i92.i, 1074069632
  %irq_pipe.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 17
  %24 = ptrtoint ptr %irq_pipe.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or22.i, ptr %irq_pipe.i, align 8
  %25 = load i32, ptr @enable_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool23.not.i = icmp eq i32 %25, 0
  br i1 %tobool23.not.i, label %do.body1.i.if.end45.i_crit_edge, label %if.then24.i

do.body1.i.if.end45.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i

if.then24.i:                                      ; preds = %do.body1.i
  %call25.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %irq_urb.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 21
  %26 = ptrtoint ptr %irq_urb.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call25.i, ptr %irq_urb.i, align 16
  %tobool27.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool27.not.i, label %if.then24.i.err_usb_crit_edge, label %if.end29.i

if.then24.i.err_usb_crit_edge:                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_usb

if.end29.i:                                       ; preds = %if.then24.i
  %27 = ptrtoint ptr %udev13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %udev13, align 16
  %irq_dma_handle.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 22
  %call31.i = tail call ptr @usb_alloc_coherent(ptr noundef %28, i32 noundef 8, i32 noundef 3264, ptr noundef %irq_dma_handle.i) #11
  %irq_buffer.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 20
  %29 = ptrtoint ptr %irq_buffer.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call31.i, ptr %irq_buffer.i, align 4
  %tobool33.not.i = icmp eq ptr %call31.i, null
  %30 = ptrtoint ptr %irq_urb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %irq_urb.i, align 16
  br i1 %tobool33.not.i, label %if.then34.i, label %if.end36.i

if.then34.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_free_urb(ptr noundef %31) #11
  br label %err_usb

if.end36.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %udev13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %udev13, align 16
  %34 = ptrtoint ptr %irq_pipe.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq_pipe.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 8
  %36 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 10
  %37 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 14
  %38 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call31.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 19
  %39 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 28
  %40 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @ttusb_dec_handle_irq, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 27
  %41 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call1.i.i.i, ptr %context4.i.i, align 4
  %42 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 25
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %42, align 4
  %start_frame.i.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 23
  %44 = ptrtoint ptr %start_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %start_frame.i.i, align 4
  %45 = ptrtoint ptr %irq_dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq_dma_handle.i, align 4
  %47 = ptrtoint ptr %irq_urb.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %irq_urb.i, align 16
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 15
  %49 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %46, ptr %transfer_dma.i, align 4
  %50 = load ptr, ptr %irq_urb.i, align 16
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 13
  %51 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %transfer_flags.i, align 4
  %or44.i = or i32 %52, 4
  store i32 %or44.i, ptr %transfer_flags.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end36.i, %do.body1.i.if.end45.i_crit_edge
  %53 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i, label %if.end45.i.if.end.i.i_crit_edge, label %do.end.i.i

if.end45.i.if.end.i.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.35) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end45.i.if.end.i.i_crit_edge
  %call1.i.i.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 14336, i32 noundef 3520, i32 noundef 2) #15
  %iso_buffer.i.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 23
  %54 = ptrtoint ptr %iso_buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call1.i.i.i.i.i.i, ptr %iso_buffer.i.i, align 8
  %tobool3.not.i.i = icmp eq ptr %call1.i.i.i.i.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.then48.i_crit_edge, label %for.body.preheader.i.i

if.end.i.i.if.then48.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48.i

for.body.preheader.i.i:                           ; preds = %if.end.i.i
  %call6.i.i = tail call ptr @usb_alloc_urb(i32 noundef 4, i32 noundef 2592) #11
  %tobool7.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool7.not.i.i, label %for.body.preheader.i.i.if.then8.i.i_crit_edge, label %if.end9.i.i

for.body.preheader.i.i.if.then8.i.i_crit_edge:    ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end9.2.i.i.if.then8.i.i_crit_edge, %if.end9.1.i.i.if.then8.i.i_crit_edge, %if.end9.i.i.if.then8.i.i_crit_edge, %for.body.preheader.i.i.if.then8.i.i_crit_edge
  %55 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.ttusb_dec_free_iso_urbs.exit.i.i_crit_edge, label %do.end.i.i.i

if.then8.i.i.ttusb_dec_free_iso_urbs.exit.i.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_free_iso_urbs.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.36) #14
  br label %ttusb_dec_free_iso_urbs.exit.i.i

ttusb_dec_free_iso_urbs.exit.i.i:                 ; preds = %do.end.i.i.i, %if.then8.i.i.ttusb_dec_free_iso_urbs.exit.i.i_crit_edge
  %arrayidx.i.i.i = getelementptr %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 24, i32 0
  %56 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %57) #11
  %arrayidx.1.i.i.i = getelementptr %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 24, i32 1
  %58 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.1.i.i.i, align 32
  tail call void @usb_free_urb(ptr noundef %59) #11
  %arrayidx.2.i.i.i = getelementptr %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 24, i32 2
  %60 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.2.i.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %61) #11
  %arrayidx.3.i.i.i = getelementptr %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 24, i32 3
  %62 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.3.i.i.i, align 8
  tail call void @usb_free_urb(ptr noundef %63) #11
  %64 = ptrtoint ptr %iso_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %iso_buffer.i.i, align 8
  tail call void @kfree(ptr noundef %65) #11
  br label %if.then48.i

if.end9.i.i:                                      ; preds = %for.body.preheader.i.i
  %arrayidx.i.i = getelementptr %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 24, i32 0
  %66 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call6.i.i, ptr %arrayidx.i.i, align 4
  %call6.1.i.i = tail call ptr @usb_alloc_urb(i32 noundef 4, i32 noundef 2592) #11
  %tobool7.not.1.i.i = icmp eq ptr %call6.1.i.i, null
  br i1 %tobool7.not.1.i.i, label %if.end9.i.i.if.then8.i.i_crit_edge, label %if.end9.1.i.i

if.end9.i.i.if.then8.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8.i.i

if.end9.1.i.i:                                    ; preds = %if.end9.i.i
  %arrayidx.1.i.i = getelementptr %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 24, i32 1
  %67 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call6.1.i.i, ptr %arrayidx.1.i.i, align 32
  %call6.2.i.i = tail call ptr @usb_alloc_urb(i32 noundef 4, i32 noundef 2592) #11
  %tobool7.not.2.i.i = icmp eq ptr %call6.2.i.i, null
  br i1 %tobool7.not.2.i.i, label %if.end9.1.i.i.if.then8.i.i_crit_edge, label %if.end9.2.i.i

if.end9.1.i.i.if.then8.i.i_crit_edge:             ; preds = %if.end9.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8.i.i

if.end9.2.i.i:                                    ; preds = %if.end9.1.i.i
  %arrayidx.2.i.i = getelementptr %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 24, i32 2
  %68 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call6.2.i.i, ptr %arrayidx.2.i.i, align 4
  %call6.3.i.i = tail call ptr @usb_alloc_urb(i32 noundef 4, i32 noundef 2592) #11
  %tobool7.not.3.i.i = icmp eq ptr %call6.3.i.i, null
  br i1 %tobool7.not.3.i.i, label %if.end9.2.i.i.if.then8.i.i_crit_edge, label %if.end17

if.end9.2.i.i.if.then8.i.i_crit_edge:             ; preds = %if.end9.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8.i.i

if.then48.i:                                      ; preds = %ttusb_dec_free_iso_urbs.exit.i.i, %if.end.i.i.if.then48.i_crit_edge
  %irq_urb49.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 21
  %69 = ptrtoint ptr %irq_urb49.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %irq_urb49.i, align 16
  tail call void @usb_free_urb(ptr noundef %70) #11
  %71 = ptrtoint ptr %udev13 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %udev13, align 16
  %irq_buffer51.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 20
  %73 = ptrtoint ptr %irq_buffer51.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %irq_buffer51.i, align 4
  %irq_dma_handle52.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 22
  %75 = ptrtoint ptr %irq_dma_handle52.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %irq_dma_handle52.i, align 4
  tail call void @usb_free_coherent(ptr noundef %72, i32 noundef 8, ptr noundef %74, i32 noundef %76) #11
  br label %err_usb

if.end17:                                         ; preds = %if.end9.2.i.i
  %arrayidx.3.i.i = getelementptr %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 24, i32 3
  %77 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call6.3.i.i, ptr %arrayidx.3.i.i, align 8
  tail call fastcc void @ttusb_dec_setup_urbs(ptr noundef nonnull %call1.i.i.i) #11
  %78 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i114 = icmp eq i32 %78, 0
  br i1 %tobool.not.i114, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %c.i.i) #11
  %79 = call ptr @memset(ptr %c.i.i, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c_length.i.i) #11
  %80 = ptrtoint ptr %c_length.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %c_length.i.i, align 4, !annotation !377
  br label %if.end.i.i120

if.end.i:                                         ; preds = %if.end17
  %call.i115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.40) #14
  %.pr.i = load i32, ptr @debug, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %c.i.i) #11
  %81 = call ptr @memset(ptr %c.i.i, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c_length.i.i) #11
  %82 = ptrtoint ptr %c_length.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %c_length.i.i, align 4, !annotation !377
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i.i116 = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i.i116, label %if.end.i.if.end.i.i120_crit_edge, label %do.end.i.i118

if.end.i.if.end.i.i120_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i120

do.end.i.i118:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.50) #14
  br label %if.end.i.i120

if.end.i.i120:                                    ; preds = %do.end.i.i118, %if.end.i.if.end.i.i120_crit_edge, %if.end.thread.i
  %call2.i.i = call fastcc i32 @ttusb_dec_send_command(ptr noundef nonnull %call1.i.i.i, i8 noundef zeroext 8, i32 noundef 0, ptr noundef null, ptr noundef nonnull %c_length.i.i, ptr noundef nonnull %c.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i119 = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i119, label %if.end5.i.i, label %if.end.i.i120.ttusb_dec_get_stb_state.exit.thread.i_crit_edge

if.end.i.i120.ttusb_dec_get_stb_state.exit.thread.i_crit_edge: ; preds = %if.end.i.i120
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_get_stb_state.exit.thread.i

if.end5.i.i:                                      ; preds = %if.end.i.i120
  %83 = ptrtoint ptr %c_length.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %c_length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %84)
  %cmp.i.i = icmp sgt i32 %84, 11
  br i1 %cmp.i.i, label %if.end4.i, label %if.end5.i.i.ttusb_dec_get_stb_state.exit.thread.i_crit_edge

if.end5.i.i.ttusb_dec_get_stb_state.exit.thread.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_get_stb_state.exit.thread.i

ttusb_dec_get_stb_state.exit.thread.i:            ; preds = %if.end5.i.i.ttusb_dec_get_stb_state.exit.thread.i_crit_edge, %if.end.i.i120.ttusb_dec_get_stb_state.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -2, %if.end5.i.i.ttusb_dec_get_stb_state.exit.thread.i_crit_edge ], [ %call2.i.i, %if.end.i.i120.ttusb_dec_get_stb_state.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c_length.i.i) #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %c.i.i) #11
  br label %err_stb

if.end4.i:                                        ; preds = %if.end5.i.i
  %85 = ptrtoint ptr %c.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %tmp.0.copyload.i.i = load i32, ptr %c.i.i, align 4
  %arrayidx.i.i121 = getelementptr inbounds [60 x i8], ptr %c.i.i, i32 0, i32 4
  %86 = ptrtoint ptr %arrayidx.i.i121 to i32
  call void @__asan_load4_noabort(i32 %86)
  %tmp.0.copyload21.i.i = load i32, ptr %arrayidx.i.i121, align 4
  %arrayidx16.i.i = getelementptr inbounds [60 x i8], ptr %c.i.i, i32 0, i32 8
  %87 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %tmp.0.copyload23.i.i = load i32, ptr %arrayidx16.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c_length.i.i) #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %c.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp.0.copyload.i.i)
  %tobool5.not.i = icmp eq i32 %tmp.0.copyload.i.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else27.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1412567125, i32 %tmp.0.copyload23.i.i)
  %cmp.i = icmp eq i32 %tmp.0.copyload23.i.i, -1412567125
  br i1 %cmp.i, label %do.end10.i, label %do.end15.i

do.end10.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #14
  br label %if.end22.i

do.end15.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i = lshr i32 %tmp.0.copyload23.i.i, 24
  %shr17.i = lshr i32 %tmp.0.copyload23.i.i, 16
  %and.i = and i32 %shr17.i, 255
  %shr18.i = lshr i32 %tmp.0.copyload23.i.i, 8
  %and19.i = and i32 %shr18.i, 255
  %and20.i = and i32 %tmp.0.copyload23.i.i, 255
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %shr.i, i32 noundef %and.i, i32 noundef %and19.i, i32 noundef %and20.i) #14
  br label %if.end22.i

if.end22.i:                                       ; preds = %do.end15.i, %do.end10.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len.i.i) #11
  %88 = ptrtoint ptr %actual_len.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %actual_len.i.i, align 4, !annotation !377
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %b0.i.i) #11
  %89 = call ptr @memcpy(ptr %b0.i.i, ptr @__const.ttusb_dec_boot_dsp.b0, i32 10)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i) #11
  %90 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 97, ptr %b1.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %idstring.i.i) #11
  %91 = getelementptr inbounds [21 x i8], ptr %idstring.i.i, i32 0, i32 20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry.i.i) #11
  %92 = ptrtoint ptr %fw_entry.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %fw_entry.i.i, align 4
  %93 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i50.i = icmp eq i32 %93, 0
  br i1 %tobool.not.i50.i, label %if.end22.i.if.end.i55.i_crit_edge, label %do.end.i52.i

if.end22.i.if.end.i55.i_crit_edge:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i55.i

do.end.i52.i:                                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.67) #14
  br label %if.end.i55.i

if.end.i55.i:                                     ; preds = %do.end.i52.i, %if.end22.i.if.end.i55.i_crit_edge
  %firmware_name.i.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 2
  %94 = ptrtoint ptr %firmware_name.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %firmware_name.i.i, align 8
  %96 = ptrtoint ptr %udev13 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %udev13, align 16
  %dev.i.i = getelementptr inbounds %struct.usb_device, ptr %97, i32 0, i32 15
  %call2.i53.i = call i32 @request_firmware(ptr noundef nonnull %fw_entry.i.i, ptr noundef %95, ptr noundef %dev.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i53.i)
  %tobool3.not.i54.i = icmp eq i32 %call2.i53.i, 0
  br i1 %tobool3.not.i54.i, label %if.end11.i.i, label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.end.i55.i
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %firmware_name.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %firmware_name.i.i, align 8
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67, ptr noundef %99) #14
  br label %ttusb_dec_boot_dsp.exit.thread.i

if.end11.i.i:                                     ; preds = %if.end.i55.i
  %100 = ptrtoint ptr %fw_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %fw_entry.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data.i.i, align 4
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %105)
  %cmp.i56.i = icmp ult i32 %105, 60
  br i1 %cmp.i56.i, label %do.end16.i.i, label %if.end19.i.i

do.end16.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call18.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.67, i32 noundef %105) #14
  %106 = ptrtoint ptr %fw_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %fw_entry.i.i, align 4
  call void @release_firmware(ptr noundef %107) #11
  br label %ttusb_dec_boot_dsp.exit.thread.i

if.end19.i.i:                                     ; preds = %if.end11.i.i
  %call20.i.i = call i32 @crc32_le(i32 noundef -1, ptr noundef %103, i32 noundef 56) #16
  %xor.i.i = xor i32 %call20.i.i, -1
  %arrayidx.i57.i = getelementptr i8, ptr %103, i32 56
  %108 = ptrtoint ptr %arrayidx.i57.i to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %tmp.0.copyload.i58.i = load i32, ptr %arrayidx.i57.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.0.copyload.i58.i, i32 %xor.i.i)
  %cmp21.not.i.i = icmp eq i32 %tmp.0.copyload.i58.i, %xor.i.i
  br i1 %cmp21.not.i.i, label %if.end28.i.i, label %do.end25.i.i

do.end25.i.i:                                     ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call27.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.67, i32 noundef %xor.i.i, i32 noundef %tmp.0.copyload.i58.i) #14
  %109 = ptrtoint ptr %fw_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %fw_entry.i.i, align 4
  call void @release_firmware(ptr noundef %110) #11
  br label %ttusb_dec_boot_dsp.exit.thread.i

if.end28.i.i:                                     ; preds = %if.end19.i.i
  %arrayidx29.i.i = getelementptr i8, ptr %103, i32 36
  %111 = call ptr @memcpy(ptr %idstring.i.i, ptr %arrayidx29.i.i, i32 20)
  %112 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %91, align 1
  %call36.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull %idstring.i.i) #14
  %113 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %105, ptr %b0.i.i, align 4
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.end28.i.i
  %len.addr.05.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %105, %if.end28.i.i ]
  %buf.addr.04.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %103, %if.end28.i.i ]
  %crc.addr.03.i.i.i = phi i16 [ %xor15.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ -1, %if.end28.i.i ]
  %dec.i.i.i = add i32 %len.addr.05.i.i.i, -1
  %incdec.ptr.i.i.i = getelementptr i8, ptr %buf.addr.04.i.i.i, i32 1
  %114 = ptrtoint ptr %buf.addr.04.i.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %buf.addr.04.i.i.i, align 1
  %conv.i.i.i = zext i8 %115 to i16
  %xor.i.i.i = xor i16 %crc.addr.03.i.i.i, %conv.i.i.i
  %116 = lshr i16 %xor.i.i.i, 4
  %117 = and i16 %116, 15
  %xor61.i.i.i = xor i16 %117, %xor.i.i.i
  %conv9.i.i.i = and i16 %xor61.i.i.i, 255
  %118 = shl nuw nsw i16 %conv9.i.i.i, 5
  %119 = shl nuw nsw i16 %conv9.i.i.i, 4
  %shl13.i.i.i = xor i16 %119, %xor61.i.i.i
  %xor15.i.i.i = xor i16 %shl13.i.i.i, %118
  %tobool.not.i.i.i122 = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i122, label %crc16.exit.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i.i

crc16.exit.i.i:                                   ; preds = %while.body.i.i.i
  %xor39.i.i = xor i16 %xor15.i.i.i, -1
  %arrayidx41.i.i = getelementptr inbounds [10 x i8], ptr %b0.i.i, i32 0, i32 6
  %120 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %xor39.i.i, ptr %arrayidx41.i.i, align 2
  %call43.i.i = call fastcc i32 @ttusb_dec_send_command(ptr noundef %call1.i.i.i, i8 noundef zeroext 65, i32 noundef 10, ptr noundef nonnull %b0.i.i, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i.i)
  %tobool44.not.i.i = icmp eq i32 %call43.i.i, 0
  br i1 %tobool44.not.i.i, label %if.end46.i.i, label %if.then45.i.i

if.then45.i.i:                                    ; preds = %crc16.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %121 = ptrtoint ptr %fw_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %fw_entry.i.i, align 4
  call void @release_firmware(ptr noundef %122) #11
  br label %ttusb_dec_boot_dsp.exit.thread.i

if.end46.i.i:                                     ; preds = %crc16.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %123 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %123, i32 noundef 3264, i32 noundef 4096) #17
  %cmp48.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp48.i.i, label %if.then50.i.i, label %if.end46.i.i.for.body.i.i_crit_edge

if.end46.i.i.for.body.i.i_crit_edge:              ; preds = %if.end46.i.i
  br label %for.body.i.i

if.then50.i.i:                                    ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %124 = ptrtoint ptr %fw_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %fw_entry.i.i, align 4
  call void @release_firmware(ptr noundef %125) #11
  br label %ttusb_dec_boot_dsp.exit.thread.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end46.i.i.for.body.i.i_crit_edge
  %i.0155.i.i = phi i32 [ %add86.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end46.i.i.for.body.i.i_crit_edge ]
  %j.0154.i.i = phi i32 [ %j.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end46.i.i.for.body.i.i_crit_edge ]
  %trans_count.0153.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end46.i.i.for.body.i.i_crit_edge ]
  %sub.i.i = sub i32 %105, %i.0155.i.i
  %126 = call i32 @llvm.smin.i32(i32 %sub.i.i, i32 60) #11
  %arrayidx58.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %j.0154.i.i
  %127 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -86, ptr %arrayidx58.i.i, align 1
  %inc.i.i = add i32 %trans_count.0153.i.i, 1
  %conv59.i.i = trunc i32 %trans_count.0153.i.i to i8
  %add60.i.i = add i32 %j.0154.i.i, 1
  %arrayidx61.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add60.i.i
  %128 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv59.i.i, ptr %arrayidx61.i.i, align 1
  %add62.i.i = add i32 %j.0154.i.i, 2
  %arrayidx63.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add62.i.i
  %129 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -16, ptr %arrayidx63.i.i, align 1
  %conv64.i.i = trunc i32 %126 to i8
  %add65.i.i = add i32 %j.0154.i.i, 3
  %arrayidx66.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add65.i.i
  %130 = ptrtoint ptr %arrayidx66.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv64.i.i, ptr %arrayidx66.i.i, align 1
  %add67.i.i = add i32 %j.0154.i.i, 4
  %arrayidx68.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add67.i.i
  %arrayidx69.i.i = getelementptr i8, ptr %103, i32 %i.0155.i.i
  %131 = call ptr @memcpy(ptr %arrayidx68.i.i, ptr %arrayidx69.i.i, i32 %126)
  %add70.i.i = add i32 %j.0154.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add70.i.i)
  %cmp71.i.i = icmp sgt i32 %add70.i.i, 4095
  br i1 %cmp71.i.i, label %if.then73.i.i, label %if.else.i.i

if.then73.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %132 = ptrtoint ptr %udev13 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %udev13, align 16
  %134 = ptrtoint ptr %command_pipe.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %command_pipe.i, align 8
  %call75.i.i = call i32 @usb_bulk_msg(ptr noundef %133, i32 noundef %135, ptr noundef nonnull %call7.i.i.i, i32 noundef 4096, ptr noundef nonnull %actual_len.i.i, i32 noundef 100) #11
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %sub.i.i)
  %cmp76.i.i = icmp slt i32 %sub.i.i, 60
  br i1 %cmp76.i.i, label %if.then78.i.i, label %if.else.i.i.for.inc.i.i_crit_edge

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then78.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %136 = ptrtoint ptr %udev13 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %udev13, align 16
  %138 = ptrtoint ptr %command_pipe.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %command_pipe.i, align 8
  %add82.i.i = add i32 %126, %add67.i.i
  %call83.i.i = call i32 @usb_bulk_msg(ptr noundef %137, i32 noundef %139, ptr noundef nonnull %call7.i.i.i, i32 noundef %add82.i.i, ptr noundef nonnull %actual_len.i.i, i32 noundef 100) #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then78.i.i, %if.else.i.i.for.inc.i.i_crit_edge, %if.then73.i.i
  %j.1.i.i = phi i32 [ 0, %if.then73.i.i ], [ %add70.i.i, %if.then78.i.i ], [ %add70.i.i, %if.else.i.i.for.inc.i.i_crit_edge ]
  %add86.i.i = add i32 %i.0155.i.i, 60
  %cmp52.i.i = icmp ugt i32 %105, %add86.i.i
  br i1 %cmp52.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %ttusb_dec_boot_dsp.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

ttusb_dec_boot_dsp.exit.thread.i:                 ; preds = %if.then50.i.i, %if.then45.i.i, %do.end25.i.i, %do.end16.i.i, %do.end7.i.i
  %retval.0.i59.ph.i = phi i32 [ -12, %if.then50.i.i ], [ %call43.i.i, %if.then45.i.i ], [ -2, %do.end25.i.i ], [ -2, %do.end16.i.i ], [ %call2.i53.i, %do.end7.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i.i) #11
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %idstring.i.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i) #11
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %b0.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len.i.i) #11
  br label %err_stb

ttusb_dec_boot_dsp.exit.i:                        ; preds = %for.inc.i.i
  %call88.i.i = call fastcc i32 @ttusb_dec_send_command(ptr noundef %call1.i.i.i, i8 noundef zeroext 67, i32 noundef 1, ptr noundef nonnull %b1.i.i, ptr noundef null, ptr noundef null) #11
  %140 = ptrtoint ptr %fw_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %fw_entry.i.i, align 4
  call void @release_firmware(ptr noundef %141) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i.i) #11
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %idstring.i.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i) #11
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %b0.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i.i)
  %tobool24.not.i = icmp eq i32 %call88.i.i, 0
  br i1 %tobool24.not.i, label %ttusb_dec_boot_dsp.exit.i.if.end21_crit_edge, label %ttusb_dec_boot_dsp.exit.i.err_stb_crit_edge

ttusb_dec_boot_dsp.exit.i.err_stb_crit_edge:      ; preds = %ttusb_dec_boot_dsp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_stb

ttusb_dec_boot_dsp.exit.i.if.end21_crit_edge:     ; preds = %ttusb_dec_boot_dsp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.else27.i:                                      ; preds = %if.end4.i
  %142 = zext i32 %tmp.0.copyload21.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %tmp.0.copyload21.i.i, label %do.end32.i [
    i32 458753, label %if.else27.i.sw.epilog.i_crit_edge
    i32 458760, label %if.else27.i.sw.epilog.i_crit_edge156
    i32 458764, label %if.else27.i.sw.epilog.i_crit_edge157
    i32 458761, label %if.else27.i.sw.bb28.i_crit_edge
    i32 458771, label %if.else27.i.sw.bb28.i_crit_edge158
    i32 458769, label %sw.bb29.i
  ]

if.else27.i.sw.bb28.i_crit_edge158:               ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb28.i

if.else27.i.sw.bb28.i_crit_edge:                  ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb28.i

if.else27.i.sw.epilog.i_crit_edge157:             ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.else27.i.sw.epilog.i_crit_edge156:             ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.else27.i.sw.epilog.i_crit_edge:                ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb28.i:                                        ; preds = %if.else27.i.sw.bb28.i_crit_edge, %if.else27.i.sw.bb28.i_crit_edge158
  br label %sw.epilog.i

sw.bb29.i:                                        ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

do.end32.i:                                       ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #13
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.40, i32 noundef %tmp.0.copyload21.i.i) #14
  br label %err_stb

sw.epilog.i:                                      ; preds = %sw.bb29.i, %sw.bb28.i, %if.else27.i.sw.epilog.i_crit_edge, %if.else27.i.sw.epilog.i_crit_edge156, %if.else27.i.sw.epilog.i_crit_edge157
  %.sink.i = phi i32 [ 1, %sw.bb29.i ], [ 0, %sw.bb28.i ], [ 2, %if.else27.i.sw.epilog.i_crit_edge ], [ 2, %if.else27.i.sw.epilog.i_crit_edge156 ], [ 2, %if.else27.i.sw.epilog.i_crit_edge157 ]
  %.str.16.sink.i = phi ptr [ @.str.16, %sw.bb29.i ], [ @.str.14, %sw.bb28.i ], [ @.str.18, %if.else27.i.sw.epilog.i_crit_edge ], [ @.str.18, %if.else27.i.sw.epilog.i_crit_edge156 ], [ @.str.18, %if.else27.i.sw.epilog.i_crit_edge157 ]
  %.str.17.sink.i = phi ptr [ @.str.17, %sw.bb29.i ], [ @.str.15, %sw.bb28.i ], [ @.str.19, %if.else27.i.sw.epilog.i_crit_edge ], [ @.str.19, %if.else27.i.sw.epilog.i_crit_edge156 ], [ @.str.19, %if.else27.i.sw.epilog.i_crit_edge157 ]
  %143 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %.sink.i, ptr %call1.i.i.i, align 4096
  %model_name6.i62.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 1
  %144 = ptrtoint ptr %model_name6.i62.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %.str.16.sink.i, ptr %model_name6.i62.i, align 4
  %firmware_name7.i63.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 2
  %145 = ptrtoint ptr %firmware_name7.i63.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %.str.17.sink.i, ptr %firmware_name7.i63.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24575999, i32 %tmp.0.copyload23.i.i)
  %cmp35.i = icmp ugt i32 %tmp.0.copyload23.i.i, 24575999
  br i1 %cmp35.i, label %if.then36.i, label %sw.epilog.i.if.end21_crit_edge

sw.epilog.i.if.end21_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then36.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %can_playback.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 3
  %146 = ptrtoint ptr %can_playback.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 1, ptr %can_playback.i, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then36.i, %sw.epilog.i.if.end21_crit_edge, %ttusb_dec_boot_dsp.exit.i.if.end21_crit_edge
  %147 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool.not.i124 = icmp eq i32 %147, 0
  br i1 %tobool.not.i124, label %if.end21.if.end.i129_crit_edge, label %do.end.i126

if.end21.if.end.i129_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i129

do.end.i126:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %call.i125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.80) #14
  br label %if.end.i129

if.end.i129:                                      ; preds = %do.end.i126, %if.end21.if.end.i129_crit_edge
  %adapter.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 4
  %model_name.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 1
  %148 = ptrtoint ptr %model_name.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %model_name.i, align 4
  %150 = ptrtoint ptr %udev13 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %udev13, align 16
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %151, i32 0, i32 15
  %call1.i = call i32 @dvb_register_adapter(ptr noundef %adapter.i, ptr noundef %149, ptr noundef null, ptr noundef %dev.i, ptr noundef nonnull @adapter_nr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i128 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i128, label %do.end5.i, label %if.end8.i

do.end5.i:                                        ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.80, i32 noundef %call1.i) #14
  br label %err_stb

if.end8.i:                                        ; preds = %if.end.i129
  %demux.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 6
  %152 = ptrtoint ptr %demux.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 5, ptr %demux.i, align 16
  %priv.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 6, i32 1
  %153 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call1.i.i.i, ptr %priv.i, align 4
  %filternum.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 6, i32 2
  %154 = ptrtoint ptr %filternum.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 31, ptr %filternum.i, align 8
  %feednum.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 6, i32 3
  %155 = ptrtoint ptr %feednum.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 31, ptr %feednum.i, align 4
  %start_feed.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 6, i32 4
  %156 = ptrtoint ptr %start_feed.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @ttusb_dec_start_feed, ptr %start_feed.i, align 64
  %stop_feed.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 6, i32 5
  %157 = ptrtoint ptr %stop_feed.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @ttusb_dec_stop_feed, ptr %stop_feed.i, align 4
  %write_to_decoder.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 6, i32 6
  %158 = ptrtoint ptr %write_to_decoder.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %write_to_decoder.i, align 8
  %call16.i = call i32 @dvb_dmx_init(ptr noundef %demux.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %do.end21.i, label %if.end26.i

do.end21.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.80, i32 noundef %call16.i) #14
  %call25.i130 = call i32 @dvb_unregister_adapter(ptr noundef %adapter.i) #11
  br label %err_stb

if.end26.i:                                       ; preds = %if.end8.i
  %dmxdev.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 5
  %filternum27.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 5, i32 4
  %159 = ptrtoint ptr %filternum27.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 32, ptr %filternum27.i, align 8
  %demux31.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 5, i32 3
  %160 = ptrtoint ptr %demux31.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %demux.i, ptr %demux31.i, align 4
  %capabilities33.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 5, i32 5
  %161 = ptrtoint ptr %capabilities33.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %capabilities33.i, align 4
  %call36.i = call i32 @dvb_dmxdev_init(ptr noundef %dmxdev.i, ptr noundef %adapter.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 0
  br i1 %cmp37.i, label %do.end41.i, label %if.end47.i

do.end41.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.80, i32 noundef %call36.i) #14
  call void @dvb_dmx_release(ptr noundef %demux.i) #11
  %call46.i = call i32 @dvb_unregister_adapter(ptr noundef %adapter.i) #11
  br label %err_stb

if.end47.i:                                       ; preds = %if.end26.i
  %frontend.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 7
  %source.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 7, i32 1
  %162 = ptrtoint ptr %source.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 1, ptr %source.i, align 8
  %add_frontend.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 6, i32 0, i32 10
  %163 = ptrtoint ptr %add_frontend.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %add_frontend.i, align 8
  %call53.i = call i32 %164(ptr noundef %demux.i, ptr noundef %frontend.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %do.end58.i, label %if.end65.i

do.end58.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #13
  %call60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.80, i32 noundef %call53.i) #14
  call void @dvb_dmxdev_release(ptr noundef %dmxdev.i) #11
  call void @dvb_dmx_release(ptr noundef %demux.i) #11
  %call64.i = call i32 @dvb_unregister_adapter(ptr noundef %adapter.i) #11
  br label %err_stb

if.end65.i:                                       ; preds = %if.end47.i
  %connect_frontend.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 6, i32 0, i32 13
  %165 = ptrtoint ptr %connect_frontend.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %connect_frontend.i, align 4
  %call71.i = call i32 %166(ptr noundef %demux.i, ptr noundef %frontend.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %cmp72.i = icmp slt i32 %call71.i, 0
  br i1 %cmp72.i, label %do.end76.i, label %if.end25

do.end76.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  %call78.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.80, i32 noundef %call71.i) #14
  %remove_frontend.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 6, i32 0, i32 11
  %167 = ptrtoint ptr %remove_frontend.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %remove_frontend.i, align 4
  %call84.i = call i32 %168(ptr noundef %demux.i, ptr noundef %frontend.i) #11
  call void @dvb_dmxdev_release(ptr noundef %dmxdev.i) #11
  call void @dvb_dmx_release(ptr noundef %demux.i) #11
  %call88.i = call i32 @dvb_unregister_adapter(ptr noundef %adapter.i) #11
  br label %err_stb

if.end25:                                         ; preds = %if.end65.i
  %dvb_net.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 8
  %call93.i = call i32 @dvb_net_init(ptr noundef %adapter.i, ptr noundef %dvb_net.i, ptr noundef %demux.i) #11
  %priv = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 4, i32 5
  %169 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call1.i.i.i, ptr %priv, align 16
  %170 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %idProduct, align 4
  %172 = zext i16 %171 to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values.177)
  switch i16 %171, label %if.end25.sw.epilog33_crit_edge [
    i16 4102, label %sw.bb28
    i16 4104, label %if.end25.sw.bb30_crit_edge
    i16 4105, label %if.end25.sw.bb30_crit_edge159
  ]

if.end25.sw.bb30_crit_edge159:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb30

if.end25.sw.bb30_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb30

if.end25.sw.epilog33_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog33

sw.bb28:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = call ptr @ttusbdecfe_dvbs_attach(ptr noundef nonnull @fe_config) #11
  br label %sw.epilog33.sink.split

sw.bb30:                                          ; preds = %if.end25.sw.bb30_crit_edge, %if.end25.sw.bb30_crit_edge159
  %call31 = call ptr @ttusbdecfe_dvbt_attach(ptr noundef nonnull @fe_config) #11
  br label %sw.epilog33.sink.split

sw.epilog33.sink.split:                           ; preds = %sw.bb30, %sw.bb28
  %call31.sink = phi ptr [ %call31, %sw.bb30 ], [ %call29, %sw.bb28 ]
  %fe32 = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 9
  %173 = ptrtoint ptr %fe32 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call31.sink, ptr %fe32, align 4
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %sw.epilog33.sink.split, %if.end25.sw.epilog33_crit_edge
  %fe34 = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 9
  %174 = ptrtoint ptr %fe34 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %fe34, align 4
  %cmp = icmp eq ptr %175, null
  br i1 %cmp, label %do.end39, label %if.else

do.end39:                                         ; preds = %sw.epilog33
  call void @__sanitizer_cov_trace_pc() #13
  %176 = ptrtoint ptr %udev13 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %udev13, align 16
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %177, i32 0, i32 16, i32 7
  %178 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %idVendor, align 8
  %180 = call i16 @llvm.bswap.i16(i16 %179)
  %conv42 = zext i16 %180 to i32
  %idProduct45 = getelementptr inbounds %struct.usb_device, ptr %177, i32 0, i32 16, i32 8
  %181 = ptrtoint ptr %idProduct45 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %idProduct45, align 2
  %183 = call i16 @llvm.bswap.i16(i16 %182)
  %conv46 = zext i16 %183 to i32
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv42, i32 noundef %conv46) #14
  br label %if.end68

if.else:                                          ; preds = %sw.epilog33
  %call50 = call i32 @dvb_register_frontend(ptr noundef %adapter.i, ptr noundef nonnull %175) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.else.if.end68_crit_edge, label %do.end55

if.else.if.end68_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

do.end55:                                         ; preds = %if.else
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #14
  %184 = ptrtoint ptr %fe34 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %fe34, align 4
  %release = getelementptr inbounds %struct.dvb_frontend, ptr %185, i32 0, i32 1, i32 3
  %186 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %release, align 4
  %tobool59.not = icmp eq ptr %187, null
  br i1 %tobool59.not, label %do.end55.if.end65_crit_edge, label %if.then60

do.end55.if.end65_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

if.then60:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #13
  call void %187(ptr noundef %185) #11
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %do.end55.if.end65_crit_edge
  %188 = ptrtoint ptr %fe34 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr null, ptr %fe34, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.end65, %if.else.if.end68_crit_edge, %do.end39
  %189 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool.not.i132 = icmp eq i32 %189, 0
  br i1 %tobool.not.i132, label %if.end68.ttusb_dec_init_v_pes.exit_crit_edge, label %do.end.i134

if.end68.ttusb_dec_init_v_pes.exit_crit_edge:     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_init_v_pes.exit

do.end.i134:                                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %call.i133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.143) #14
  br label %ttusb_dec_init_v_pes.exit

ttusb_dec_init_v_pes.exit:                        ; preds = %do.end.i134, %if.end68.ttusb_dec_init_v_pes.exit_crit_edge
  %v_pes.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 37
  %190 = ptrtoint ptr %v_pes.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %v_pes.i, align 4
  %arrayidx2.i = getelementptr %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 37, i32 1
  %191 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %arrayidx2.i, align 1
  %arrayidx4.i = getelementptr %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 37, i32 2
  %192 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 1, ptr %arrayidx4.i, align 2
  %arrayidx6.i = getelementptr %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 37, i32 3
  %193 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 -32, ptr %arrayidx6.i, align 1
  %filter_info_list.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 45
  %194 = ptrtoint ptr %filter_info_list.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store volatile ptr %filter_info_list.i, ptr %filter_info_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 45, i32 1
  %195 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %filter_info_list.i, ptr %prev.i.i, align 4
  %filter_info_list_lock.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 46
  call void @__raw_spin_lock_init(ptr noundef %filter_info_list_lock.i, ptr noundef nonnull @.str.144, ptr noundef nonnull @ttusb_dec_init_filters.__key, i16 noundef signext 3) #11
  %urb_frame_list_lock.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 42
  call void @__raw_spin_lock_init(ptr noundef %urb_frame_list_lock.i, ptr noundef nonnull @.str.145, ptr noundef nonnull @ttusb_dec_init_tasklet.__key, i16 noundef signext 3) #11
  %urb_frame_list.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 40
  %196 = ptrtoint ptr %urb_frame_list.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store volatile ptr %urb_frame_list.i, ptr %urb_frame_list.i, align 4
  %prev.i.i136 = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 40, i32 1
  %197 = ptrtoint ptr %prev.i.i136 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %urb_frame_list.i, ptr %prev.i.i136, align 8
  %urb_tasklet.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 41
  call void @tasklet_setup(ptr noundef %urb_tasklet.i, ptr noundef nonnull @ttusb_dec_process_urb_frame_list) #11
  %active = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 49
  %198 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 1, ptr %active, align 32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #11
  %199 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 5, ptr %b.i, align 1
  %interface1.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 18
  %200 = ptrtoint ptr %interface1.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %interface1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %201)
  %cmp.not.i = icmp eq i32 %201, 1
  br i1 %cmp.not.i, label %ttusb_dec_init_v_pes.exit.ttusb_dec_set_interface.exit_crit_edge, label %sw.bb2.i

ttusb_dec_init_v_pes.exit.ttusb_dec_set_interface.exit_crit_edge: ; preds = %ttusb_dec_init_v_pes.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_set_interface.exit

sw.bb2.i:                                         ; preds = %ttusb_dec_init_v_pes.exit
  %call3.i = call fastcc i32 @ttusb_dec_send_command(ptr noundef %call1.i.i.i, i8 noundef zeroext -128, i32 noundef 1, ptr noundef nonnull %b.i, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i137 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i137, label %if.end.i138, label %sw.bb2.i.ttusb_dec_set_interface.exit_crit_edge

sw.bb2.i.ttusb_dec_set_interface.exit_crit_edge:  ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_set_interface.exit

if.end.i138:                                      ; preds = %sw.bb2.i
  %202 = ptrtoint ptr %udev13 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %udev13, align 16
  %call6.i = call i32 @usb_set_interface(ptr noundef %203, i32 noundef 0, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool10.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end.i138.ttusb_dec_set_interface.exit_crit_edge

if.end.i138.ttusb_dec_set_interface.exit_crit_edge: ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_set_interface.exit

if.end12.i:                                       ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #13
  %204 = ptrtoint ptr %interface1.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 1, ptr %interface1.i, align 4
  br label %ttusb_dec_set_interface.exit

ttusb_dec_set_interface.exit:                     ; preds = %if.end12.i, %if.end.i138.ttusb_dec_set_interface.exit_crit_edge, %sw.bb2.i.ttusb_dec_set_interface.exit_crit_edge, %ttusb_dec_init_v_pes.exit.ttusb_dec_set_interface.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #11
  %205 = load i32, ptr @enable_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool70.not = icmp eq i32 %205, 0
  br i1 %tobool70.not, label %ttusb_dec_set_interface.exit.cleanup_crit_edge, label %if.then71

ttusb_dec_set_interface.exit.cleanup_crit_edge:   ; preds = %ttusb_dec_set_interface.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then71:                                        ; preds = %ttusb_dec_set_interface.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b.i139) #11
  %206 = ptrtoint ptr %b.i139 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 1, ptr %b.i139, align 2
  %207 = ptrtoint ptr %udev13 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %udev13, align 16
  %rc_phys.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 48
  %bus.i.i = getelementptr inbounds %struct.usb_device, ptr %208, i32 0, i32 12
  %209 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %bus.i.i, align 8
  %bus_name.i.i = getelementptr inbounds %struct.usb_bus, ptr %210, i32 0, i32 3
  %211 = ptrtoint ptr %bus_name.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %bus_name.i.i, align 4
  %devpath.i.i = getelementptr inbounds %struct.usb_device, ptr %208, i32 0, i32 1
  %call.i.i141 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %rc_phys.i, i32 noundef 64, ptr noundef nonnull @.str.171, ptr noundef %212, ptr noundef %devpath.i.i) #11
  %call3.i142 = call i32 @strlcat(ptr noundef %rc_phys.i, ptr noundef nonnull @.str.167, i32 noundef 64) #11
  %call4.i = call ptr @input_allocate_device() #11
  %tobool.not.i143 = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i143, label %if.then71.ttusb_init_rc.exit_crit_edge, label %if.end.i144

if.then71.ttusb_init_rc.exit_crit_edge:           ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_init_rc.exit

if.end.i144:                                      ; preds = %if.then71
  %213 = ptrtoint ptr %call4.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr @.str.168, ptr %call4.i, align 8
  %phys.i = getelementptr inbounds %struct.input_dev, ptr %call4.i, i32 0, i32 1
  %214 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %rc_phys.i, ptr %phys.i, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %call4.i, i32 0, i32 5
  %215 = ptrtoint ptr %evbit.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 2, ptr %evbit.i, align 8
  %keycodesize.i = getelementptr inbounds %struct.input_dev, ptr %call4.i, i32 0, i32 16
  %216 = ptrtoint ptr %keycodesize.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 2, ptr %keycodesize.i, align 8
  %keycodemax.i = getelementptr inbounds %struct.input_dev, ptr %call4.i, i32 0, i32 15
  %217 = ptrtoint ptr %keycodemax.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 26, ptr %keycodemax.i, align 4
  %keycode.i = getelementptr inbounds %struct.input_dev, ptr %call4.i, i32 0, i32 17
  %218 = ptrtoint ptr %keycode.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr @rc_keys, ptr %keycode.i, align 4
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %call4.i, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i144
  %i.01.i = phi i32 [ 0, %if.end.i144 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx7.i = getelementptr [26 x i16], ptr @rc_keys, i32 0, i32 %i.01.i
  %219 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %arrayidx7.i, align 2
  %conv.i = zext i16 %220 to i32
  call void @_set_bit(i32 noundef %conv.i, ptr noundef %keybit.i) #11
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 26
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %call9.i = call i32 @input_register_device(ptr noundef nonnull %call4.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i145 = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i145, label %if.end12.i147, label %if.then11.i

if.then11.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @input_free_device(ptr noundef nonnull %call4.i) #11
  br label %ttusb_init_rc.exit

if.end12.i147:                                    ; preds = %for.end.i
  %rc_input_dev.i = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 47
  %221 = ptrtoint ptr %rc_input_dev.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %call4.i, ptr %rc_input_dev.i, align 4
  %irq_urb.i146 = getelementptr inbounds %struct.ttusb_dec, ptr %call1.i.i.i, i32 0, i32 21
  %222 = ptrtoint ptr %irq_urb.i146 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %irq_urb.i146, align 16
  %call13.i = call i32 @usb_submit_urb(ptr noundef %223, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i147.if.end17.i_crit_edge, label %do.end.i149

if.end12.i147.if.end17.i_crit_edge:               ; preds = %if.end12.i147
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

do.end.i149:                                      ; preds = %if.end12.i147
  call void @__sanitizer_cov_trace_pc() #13
  %call16.i148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170) #14
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end.i149, %if.end12.i147.if.end17.i_crit_edge
  %call19.i = call fastcc i32 @ttusb_dec_send_command(ptr noundef %call1.i.i.i, i8 noundef zeroext -80, i32 noundef 2, ptr noundef nonnull %b.i139, ptr noundef null, ptr noundef null) #11
  br label %ttusb_init_rc.exit

ttusb_init_rc.exit:                               ; preds = %if.end17.i, %if.then11.i, %if.then71.ttusb_init_rc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b.i139) #11
  br label %cleanup

err_stb:                                          ; preds = %do.end76.i, %do.end58.i, %do.end41.i, %do.end21.i, %do.end5.i, %do.end32.i, %ttusb_dec_boot_dsp.exit.i.err_stb_crit_edge, %ttusb_dec_boot_dsp.exit.thread.i, %ttusb_dec_get_stb_state.exit.thread.i
  %result.0 = phi i32 [ %retval.0.i59.ph.i, %ttusb_dec_boot_dsp.exit.thread.i ], [ %retval.0.i.ph.i, %ttusb_dec_get_stb_state.exit.thread.i ], [ %call88.i.i, %ttusb_dec_boot_dsp.exit.i.err_stb_crit_edge ], [ -2, %do.end32.i ], [ %call71.i, %do.end76.i ], [ %call53.i, %do.end58.i ], [ %call36.i, %do.end41.i ], [ %call16.i, %do.end21.i ], [ %call1.i, %do.end5.i ]
  call fastcc void @ttusb_dec_exit_usb(ptr noundef nonnull %call1.i.i.i)
  br label %err_usb

err_usb:                                          ; preds = %err_stb, %if.then48.i, %if.then34.i, %if.then24.i.err_usb_crit_edge
  %result.1 = phi i32 [ %result.0, %err_stb ], [ -12, %if.then34.i ], [ -12, %if.then24.i.err_usb_crit_edge ], [ -12, %if.then48.i ]
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_usb, %ttusb_init_rc.exit, %ttusb_dec_set_interface.exit.cleanup_crit_edge, %do.end7
  %retval.0 = phi i32 [ %result.1, %err_usb ], [ -12, %do.end7 ], [ 0, %ttusb_init_rc.exit ], [ 0, %ttusb_dec_set_interface.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttusb_dec_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.173) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %active = getelementptr inbounds %struct.ttusb_dec, ptr %1, i32 0, i32 49
  %3 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %active, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %urb_tasklet.i = getelementptr inbounds %struct.ttusb_dec, ptr %1, i32 0, i32 41
  tail call void @tasklet_kill(ptr noundef %urb_tasklet.i) #11
  %urb_frame_list.i = getelementptr inbounds %struct.ttusb_dec, ptr %1, i32 0, i32 40
  %5 = ptrtoint ptr %urb_frame_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %urb_frame_list.i, align 4
  %cmp.not6.i = icmp eq ptr %6, %urb_frame_list.i
  br i1 %cmp.not6.i, label %if.then3.ttusb_dec_exit_tasklet.exit_crit_edge, label %if.then3.while.body.i_crit_edge

if.then3.while.body.i_crit_edge:                  ; preds = %if.then3
  br label %while.body.i

if.then3.ttusb_dec_exit_tasklet.exit_crit_edge:   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_exit_tasklet.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.then3.while.body.i_crit_edge
  %7 = phi ptr [ %17, %list_del.exit.i.while.body.i_crit_edge ], [ %6, %if.then3.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %7, i32 -900
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %add.ptr.i) #11
  %16 = ptrtoint ptr %urb_frame_list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %urb_frame_list.i, align 4
  %cmp.not.i = icmp eq ptr %17, %urb_frame_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.ttusb_dec_exit_tasklet.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

list_del.exit.i.ttusb_dec_exit_tasklet.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_exit_tasklet.exit

ttusb_dec_exit_tasklet.exit:                      ; preds = %list_del.exit.i.ttusb_dec_exit_tasklet.exit_crit_edge, %if.then3.ttusb_dec_exit_tasklet.exit_crit_edge
  %filter_info_list.i = getelementptr inbounds %struct.ttusb_dec, ptr %1, i32 0, i32 45
  %18 = ptrtoint ptr %filter_info_list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %filter_info_list.i, align 8
  %cmp.not5.i = icmp eq ptr %19, %filter_info_list.i
  br i1 %cmp.not5.i, label %ttusb_dec_exit_tasklet.exit.ttusb_dec_exit_filters.exit_crit_edge, label %ttusb_dec_exit_tasklet.exit.while.body.i18_crit_edge

ttusb_dec_exit_tasklet.exit.while.body.i18_crit_edge: ; preds = %ttusb_dec_exit_tasklet.exit
  br label %while.body.i18

ttusb_dec_exit_tasklet.exit.ttusb_dec_exit_filters.exit_crit_edge: ; preds = %ttusb_dec_exit_tasklet.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_exit_filters.exit

while.body.i18:                                   ; preds = %list_del.exit.i24.while.body.i18_crit_edge, %ttusb_dec_exit_tasklet.exit.while.body.i18_crit_edge
  %20 = phi ptr [ %30, %list_del.exit.i24.while.body.i18_crit_edge ], [ %19, %ttusb_dec_exit_tasklet.exit.while.body.i18_crit_edge ]
  %add.ptr.i16 = getelementptr i8, ptr %20, i32 -8
  %call.i.i.i17 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %20) #11
  br i1 %call.i.i.i17, label %if.end.i.i.i21, label %while.body.i18.list_del.exit.i24_crit_edge

while.body.i18.list_del.exit.i24_crit_edge:       ; preds = %while.body.i18
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i24

if.end.i.i.i21:                                   ; preds = %while.body.i18
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i19 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i19, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %prev1.i.i.i.i20 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i20, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit.i24

list_del.exit.i24:                                ; preds = %if.end.i.i.i21, %while.body.i18.list_del.exit.i24_crit_edge
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  %prev.i.i22 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i22, align 4
  tail call void @kfree(ptr noundef %add.ptr.i16) #11
  %29 = ptrtoint ptr %filter_info_list.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %filter_info_list.i, align 8
  %cmp.not.i23 = icmp eq ptr %30, %filter_info_list.i
  br i1 %cmp.not.i23, label %list_del.exit.i24.ttusb_dec_exit_filters.exit_crit_edge, label %list_del.exit.i24.while.body.i18_crit_edge

list_del.exit.i24.while.body.i18_crit_edge:       ; preds = %list_del.exit.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i18

list_del.exit.i24.ttusb_dec_exit_filters.exit_crit_edge: ; preds = %list_del.exit.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_exit_filters.exit

ttusb_dec_exit_filters.exit:                      ; preds = %list_del.exit.i24.ttusb_dec_exit_filters.exit_crit_edge, %ttusb_dec_exit_tasklet.exit.ttusb_dec_exit_filters.exit_crit_edge
  %31 = load i32, ptr @enable_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool4.not = icmp eq i32 %31, 0
  br i1 %tobool4.not, label %ttusb_dec_exit_filters.exit.if.end6_crit_edge, label %if.then5

ttusb_dec_exit_filters.exit.if.end6_crit_edge:    ; preds = %ttusb_dec_exit_filters.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %ttusb_dec_exit_filters.exit
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %if.then5.if.end.i_crit_edge, label %do.end.i

if.then5.if.end.i_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.174) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then5.if.end.i_crit_edge
  %rc_input_dev.i = getelementptr inbounds %struct.ttusb_dec, ptr %1, i32 0, i32 47
  %33 = ptrtoint ptr %rc_input_dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rc_input_dev.i, align 4
  %tobool1.not.i = icmp eq ptr %34, null
  br i1 %tobool1.not.i, label %if.end.i.if.end6_crit_edge, label %if.then2.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_unregister_device(ptr noundef nonnull %34) #11
  %35 = ptrtoint ptr %rc_input_dev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %rc_input_dev.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then2.i, %if.end.i.if.end6_crit_edge, %ttusb_dec_exit_filters.exit.if.end6_crit_edge
  tail call fastcc void @ttusb_dec_exit_usb(ptr noundef %1)
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i25 = icmp eq i32 %36, 0
  br i1 %tobool.not.i25, label %if.end6.if.end.i28_crit_edge, label %do.end.i27

if.end6.if.end.i28_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i28

do.end.i27:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %call.i26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.175) #14
  br label %if.end.i28

if.end.i28:                                       ; preds = %do.end.i27, %if.end6.if.end.i28_crit_edge
  %dvb_net.i = getelementptr inbounds %struct.ttusb_dec, ptr %1, i32 0, i32 8
  tail call void @dvb_net_release(ptr noundef %dvb_net.i) #11
  %demux.i = getelementptr inbounds %struct.ttusb_dec, ptr %1, i32 0, i32 6
  %close.i = getelementptr inbounds %struct.ttusb_dec, ptr %1, i32 0, i32 6, i32 0, i32 4
  %37 = ptrtoint ptr %close.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %close.i, align 8
  %call3.i = tail call i32 %38(ptr noundef %demux.i) #11
  %remove_frontend.i = getelementptr inbounds %struct.ttusb_dec, ptr %1, i32 0, i32 6, i32 0, i32 11
  %39 = ptrtoint ptr %remove_frontend.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %remove_frontend.i, align 4
  %frontend.i = getelementptr inbounds %struct.ttusb_dec, ptr %1, i32 0, i32 7
  %call8.i = tail call i32 %40(ptr noundef %demux.i, ptr noundef %frontend.i) #11
  %dmxdev.i = getelementptr inbounds %struct.ttusb_dec, ptr %1, i32 0, i32 5
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev.i) #11
  tail call void @dvb_dmx_release(ptr noundef %demux.i) #11
  %fe.i = getelementptr inbounds %struct.ttusb_dec, ptr %1, i32 0, i32 9
  %41 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fe.i, align 4
  %tobool10.not.i = icmp eq ptr %42, null
  br i1 %tobool10.not.i, label %if.end.i28.ttusb_dec_exit_dvb.exit_crit_edge, label %if.then11.i

if.end.i28.ttusb_dec_exit_dvb.exit_crit_edge:     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_exit_dvb.exit

if.then11.i:                                      ; preds = %if.end.i28
  %call13.i = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %42) #11
  %43 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fe.i, align 4
  %release.i = getelementptr inbounds %struct.dvb_frontend, ptr %44, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %release.i, align 4
  %tobool15.not.i = icmp eq ptr %46, null
  br i1 %tobool15.not.i, label %if.then11.i.ttusb_dec_exit_dvb.exit_crit_edge, label %if.then16.i

if.then11.i.ttusb_dec_exit_dvb.exit_crit_edge:    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_exit_dvb.exit

if.then16.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %46(ptr noundef %44) #11
  br label %ttusb_dec_exit_dvb.exit

ttusb_dec_exit_dvb.exit:                          ; preds = %if.then16.i, %if.then11.i.ttusb_dec_exit_dvb.exit_crit_edge, %if.end.i28.ttusb_dec_exit_dvb.exit_crit_edge
  %adapter.i = getelementptr inbounds %struct.ttusb_dec, ptr %1, i32 0, i32 4
  %call23.i = tail call i32 @dvb_unregister_adapter(ptr noundef %adapter.i) #11
  br label %if.end7

if.end7:                                          ; preds = %ttusb_dec_exit_dvb.exit, %if.end.if.end7_crit_edge
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ttusbdecfe_dvbs_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ttusbdecfe_dvbt_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ttusb_dec_exit_usb(ptr nocapture noundef %dec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.172) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %1 = load i32, ptr @enable_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then2:                                         ; preds = %if.end
  %interface = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 18
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then3, label %if.then2.if.end4_crit_edge

if.then2.if.end4_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %irq_urb = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 21
  %4 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_urb, align 8
  tail call void @usb_kill_urb(ptr noundef %5) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then2.if.end4_crit_edge
  %irq_urb5 = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 21
  %6 = ptrtoint ptr %irq_urb5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_urb5, align 8
  tail call void @usb_free_urb(ptr noundef %7) #11
  %udev = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 11
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 8
  %irq_buffer = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 20
  %10 = ptrtoint ptr %irq_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_buffer, align 4
  %irq_dma_handle = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 22
  %12 = ptrtoint ptr %irq_dma_handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_dma_handle, align 4
  tail call void @usb_free_coherent(ptr noundef %9, i32 noundef 8, ptr noundef %11, i32 noundef %13) #11
  br label %if.end6

if.end6:                                          ; preds = %if.end4, %if.end.if.end6_crit_edge
  %iso_stream_count = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 25
  %14 = ptrtoint ptr %iso_stream_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %iso_stream_count, align 4
  %arrayidx = getelementptr %struct.ttusb_dec, ptr %dec, i32 0, i32 24, i32 0
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %16) #11
  %arrayidx.1 = getelementptr %struct.ttusb_dec, ptr %dec, i32 0, i32 24, i32 1
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_kill_urb(ptr noundef %18) #11
  %arrayidx.2 = getelementptr %struct.ttusb_dec, ptr %dec, i32 0, i32 24, i32 2
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.2, align 4
  tail call void @usb_kill_urb(ptr noundef %20) #11
  %arrayidx.3 = getelementptr %struct.ttusb_dec, ptr %dec, i32 0, i32 24, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_kill_urb(ptr noundef %22) #11
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.end6.ttusb_dec_free_iso_urbs.exit_crit_edge, label %do.end.i

if.end6.ttusb_dec_free_iso_urbs.exit_crit_edge:   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_free_iso_urbs.exit

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.36) #14
  br label %ttusb_dec_free_iso_urbs.exit

ttusb_dec_free_iso_urbs.exit:                     ; preds = %do.end.i, %if.end6.ttusb_dec_free_iso_urbs.exit_crit_edge
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %25) #11
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_free_urb(ptr noundef %27) #11
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.2, align 4
  tail call void @usb_free_urb(ptr noundef %29) #11
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_free_urb(ptr noundef %31) #11
  %iso_buffer.i = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 23
  %32 = ptrtoint ptr %iso_buffer.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iso_buffer.i, align 8
  tail call void @kfree(ptr noundef %33) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttusb_dec_handle_irq(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %irq_buffer = getelementptr inbounds %struct.ttusb_dec, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %irq_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_buffer, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %7, label %sw.default [
    i32 0, label %sw.epilog
    i32 -104, label %entry.sw.bb_crit_edge
    i32 -2, label %entry.sw.bb_crit_edge67
    i32 -108, label %entry.sw.bb_crit_edge68
    i32 -62, label %entry.sw.bb_crit_edge69
  ]

entry.sw.bb_crit_edge69:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge68:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge67:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge67, %entry.sw.bb_crit_edge68, %entry.sw.bb_crit_edge69
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %do.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %7) #14
  br label %cleanup

sw.default:                                       ; preds = %entry
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  br i1 %tobool2.not, label %sw.default.exit_crit_edge, label %do.end6

sw.default.exit_crit_edge:                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

do.end6:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef %7) #14
  br label %exit

sw.epilog:                                        ; preds = %entry
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp = icmp eq i8 %12, 1
  br i1 %cmp, label %land.lhs.true, label %sw.epilog.exit_crit_edge

sw.epilog.exit_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

land.lhs.true:                                    ; preds = %sw.epilog
  %arrayidx14 = getelementptr i8, ptr %3, i32 2
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %14)
  %cmp16 = icmp eq i8 %14, 21
  br i1 %cmp16, label %if.then18, label %land.lhs.true.exit_crit_edge

land.lhs.true.exit_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.then18:                                        ; preds = %land.lhs.true
  %sub = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %sub)
  %cmp19 = icmp ult i32 %sub, 26
  br i1 %cmp19, label %if.then21, label %if.then18.exit_crit_edge

if.then18.exit_crit_edge:                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.then21:                                        ; preds = %if.then18
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool22.not = icmp eq i32 %15, 0
  br i1 %tobool22.not, label %if.then21.if.end29_crit_edge, label %do.end26

if.then21.if.end29_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

do.end26:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25, i32 noundef %conv) #14
  br label %if.end29

if.end29:                                         ; preds = %do.end26, %if.then21.if.end29_crit_edge
  %rc_input_dev = getelementptr inbounds %struct.ttusb_dec, ptr %1, i32 0, i32 47
  %16 = ptrtoint ptr %rc_input_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rc_input_dev, align 4
  %arrayidx31 = getelementptr [26 x i16], ptr @rc_keys, i32 0, i32 %sub
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx31, align 2
  %conv32 = zext i16 %19 to i32
  tail call void @input_event(ptr noundef %17, i32 noundef 1, i32 noundef %conv32, i32 noundef 1) #11
  %20 = ptrtoint ptr %rc_input_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rc_input_dev, align 4
  tail call void @input_event(ptr noundef %21, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %22 = ptrtoint ptr %rc_input_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rc_input_dev, align 4
  %24 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx31, align 2
  %conv37 = zext i16 %25 to i32
  tail call void @input_event(ptr noundef %23, i32 noundef 1, i32 noundef %conv37, i32 noundef 0) #11
  %26 = ptrtoint ptr %rc_input_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rc_input_dev, align 4
  tail call void @input_event(ptr noundef %27, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %exit

exit:                                             ; preds = %if.end29, %if.then18.exit_crit_edge, %land.lhs.true.exit_crit_edge, %sw.epilog.exit_crit_edge, %do.end6, %sw.default.exit_crit_edge
  %call41 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %exit.cleanup_crit_edge, label %do.end46

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end46:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.25, i32 noundef %call41) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %exit.cleanup_crit_edge, %do.end, %sw.bb.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ttusb_dec_setup_urbs(ptr noundef %dec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.37) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %udev = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 11
  %in_pipe = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 15
  %iso_buffer = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 23
  %arrayidx = getelementptr %struct.ttusb_dec, ptr %dec, i32 0, i32 24, i32 0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev, align 8
  %dev = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %dev, align 4
  %context = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 27
  %6 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dec, ptr %context, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 28
  %7 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ttusb_dec_process_urb, ptr %complete, align 4
  %8 = ptrtoint ptr %in_pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %in_pipe, align 8
  %pipe = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 10
  %10 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pipe, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 13
  %11 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %transfer_flags, align 4
  %interval = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 25
  %12 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %interval, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 24
  %13 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %number_of_packets, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 19
  %14 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3584, ptr %transfer_buffer_length, align 4
  %15 = ptrtoint ptr %iso_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iso_buffer, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 14
  %17 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %transfer_buffer, align 4
  %arrayidx4 = getelementptr %struct.urb, ptr %2, i32 0, i32 29, i32 0
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx4, align 4
  %length = getelementptr %struct.urb, ptr %2, i32 0, i32 29, i32 0, i32 1
  %19 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 896, ptr %length, align 4
  %arrayidx4.1 = getelementptr %struct.urb, ptr %2, i32 0, i32 29, i32 1
  %20 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 896, ptr %arrayidx4.1, align 4
  %length.1 = getelementptr %struct.urb, ptr %2, i32 0, i32 29, i32 1, i32 1
  %21 = ptrtoint ptr %length.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 896, ptr %length.1, align 4
  %arrayidx4.2 = getelementptr %struct.urb, ptr %2, i32 0, i32 29, i32 2
  %22 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1792, ptr %arrayidx4.2, align 4
  %length.2 = getelementptr %struct.urb, ptr %2, i32 0, i32 29, i32 2, i32 1
  %23 = ptrtoint ptr %length.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 896, ptr %length.2, align 4
  %arrayidx4.3 = getelementptr %struct.urb, ptr %2, i32 0, i32 29, i32 3
  %24 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2688, ptr %arrayidx4.3, align 4
  %length.3 = getelementptr %struct.urb, ptr %2, i32 0, i32 29, i32 3, i32 1
  %25 = ptrtoint ptr %length.3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 896, ptr %length.3, align 4
  %arrayidx.1 = getelementptr %struct.ttusb_dec, ptr %dec, i32 0, i32 24, i32 1
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.1, align 4
  %28 = load ptr, ptr %udev, align 8
  %dev.1 = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 8
  %29 = ptrtoint ptr %dev.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %dev.1, align 4
  %context.1 = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 27
  %30 = ptrtoint ptr %context.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dec, ptr %context.1, align 4
  %complete.1 = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 28
  %31 = ptrtoint ptr %complete.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ttusb_dec_process_urb, ptr %complete.1, align 4
  %32 = load i32, ptr %in_pipe, align 8
  %pipe.1 = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 10
  %33 = ptrtoint ptr %pipe.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %pipe.1, align 4
  %transfer_flags.1 = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 13
  %34 = ptrtoint ptr %transfer_flags.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %transfer_flags.1, align 4
  %interval.1 = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 25
  %35 = ptrtoint ptr %interval.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %interval.1, align 4
  %number_of_packets.1 = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 24
  %36 = ptrtoint ptr %number_of_packets.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %number_of_packets.1, align 4
  %transfer_buffer_length.1 = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 19
  %37 = ptrtoint ptr %transfer_buffer_length.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3584, ptr %transfer_buffer_length.1, align 4
  %38 = load ptr, ptr %iso_buffer, align 8
  %add.ptr.1 = getelementptr i8, ptr %38, i32 3584
  %transfer_buffer.1 = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 14
  %39 = ptrtoint ptr %transfer_buffer.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr.1, ptr %transfer_buffer.1, align 4
  %arrayidx4.136 = getelementptr %struct.urb, ptr %27, i32 0, i32 29, i32 0
  %40 = ptrtoint ptr %arrayidx4.136 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx4.136, align 4
  %length.137 = getelementptr %struct.urb, ptr %27, i32 0, i32 29, i32 0, i32 1
  %41 = ptrtoint ptr %length.137 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 896, ptr %length.137, align 4
  %arrayidx4.1.1 = getelementptr %struct.urb, ptr %27, i32 0, i32 29, i32 1
  %42 = ptrtoint ptr %arrayidx4.1.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 896, ptr %arrayidx4.1.1, align 4
  %length.1.1 = getelementptr %struct.urb, ptr %27, i32 0, i32 29, i32 1, i32 1
  %43 = ptrtoint ptr %length.1.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 896, ptr %length.1.1, align 4
  %arrayidx4.2.1 = getelementptr %struct.urb, ptr %27, i32 0, i32 29, i32 2
  %44 = ptrtoint ptr %arrayidx4.2.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1792, ptr %arrayidx4.2.1, align 4
  %length.2.1 = getelementptr %struct.urb, ptr %27, i32 0, i32 29, i32 2, i32 1
  %45 = ptrtoint ptr %length.2.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 896, ptr %length.2.1, align 4
  %arrayidx4.3.1 = getelementptr %struct.urb, ptr %27, i32 0, i32 29, i32 3
  %46 = ptrtoint ptr %arrayidx4.3.1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2688, ptr %arrayidx4.3.1, align 4
  %length.3.1 = getelementptr %struct.urb, ptr %27, i32 0, i32 29, i32 3, i32 1
  %47 = ptrtoint ptr %length.3.1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 896, ptr %length.3.1, align 4
  %arrayidx.2 = getelementptr %struct.ttusb_dec, ptr %dec, i32 0, i32 24, i32 2
  %48 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.2, align 4
  %50 = load ptr, ptr %udev, align 8
  %dev.2 = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 8
  %51 = ptrtoint ptr %dev.2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %dev.2, align 4
  %context.2 = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 27
  %52 = ptrtoint ptr %context.2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %dec, ptr %context.2, align 4
  %complete.2 = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 28
  %53 = ptrtoint ptr %complete.2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @ttusb_dec_process_urb, ptr %complete.2, align 4
  %54 = load i32, ptr %in_pipe, align 8
  %pipe.2 = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 10
  %55 = ptrtoint ptr %pipe.2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %pipe.2, align 4
  %transfer_flags.2 = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 13
  %56 = ptrtoint ptr %transfer_flags.2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %transfer_flags.2, align 4
  %interval.2 = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 25
  %57 = ptrtoint ptr %interval.2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %interval.2, align 4
  %number_of_packets.2 = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 24
  %58 = ptrtoint ptr %number_of_packets.2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4, ptr %number_of_packets.2, align 4
  %transfer_buffer_length.2 = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 19
  %59 = ptrtoint ptr %transfer_buffer_length.2 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 3584, ptr %transfer_buffer_length.2, align 4
  %60 = load ptr, ptr %iso_buffer, align 8
  %add.ptr.2 = getelementptr i8, ptr %60, i32 7168
  %transfer_buffer.2 = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 14
  %61 = ptrtoint ptr %transfer_buffer.2 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr.2, ptr %transfer_buffer.2, align 4
  %arrayidx4.238 = getelementptr %struct.urb, ptr %49, i32 0, i32 29, i32 0
  %62 = ptrtoint ptr %arrayidx4.238 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %arrayidx4.238, align 4
  %length.239 = getelementptr %struct.urb, ptr %49, i32 0, i32 29, i32 0, i32 1
  %63 = ptrtoint ptr %length.239 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 896, ptr %length.239, align 4
  %arrayidx4.1.2 = getelementptr %struct.urb, ptr %49, i32 0, i32 29, i32 1
  %64 = ptrtoint ptr %arrayidx4.1.2 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 896, ptr %arrayidx4.1.2, align 4
  %length.1.2 = getelementptr %struct.urb, ptr %49, i32 0, i32 29, i32 1, i32 1
  %65 = ptrtoint ptr %length.1.2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 896, ptr %length.1.2, align 4
  %arrayidx4.2.2 = getelementptr %struct.urb, ptr %49, i32 0, i32 29, i32 2
  %66 = ptrtoint ptr %arrayidx4.2.2 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1792, ptr %arrayidx4.2.2, align 4
  %length.2.2 = getelementptr %struct.urb, ptr %49, i32 0, i32 29, i32 2, i32 1
  %67 = ptrtoint ptr %length.2.2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 896, ptr %length.2.2, align 4
  %arrayidx4.3.2 = getelementptr %struct.urb, ptr %49, i32 0, i32 29, i32 3
  %68 = ptrtoint ptr %arrayidx4.3.2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2688, ptr %arrayidx4.3.2, align 4
  %length.3.2 = getelementptr %struct.urb, ptr %49, i32 0, i32 29, i32 3, i32 1
  %69 = ptrtoint ptr %length.3.2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 896, ptr %length.3.2, align 4
  %arrayidx.3 = getelementptr %struct.ttusb_dec, ptr %dec, i32 0, i32 24, i32 3
  %70 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.3, align 4
  %72 = load ptr, ptr %udev, align 8
  %dev.3 = getelementptr inbounds %struct.urb, ptr %71, i32 0, i32 8
  %73 = ptrtoint ptr %dev.3 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %dev.3, align 4
  %context.3 = getelementptr inbounds %struct.urb, ptr %71, i32 0, i32 27
  %74 = ptrtoint ptr %context.3 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %dec, ptr %context.3, align 4
  %complete.3 = getelementptr inbounds %struct.urb, ptr %71, i32 0, i32 28
  %75 = ptrtoint ptr %complete.3 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @ttusb_dec_process_urb, ptr %complete.3, align 4
  %76 = load i32, ptr %in_pipe, align 8
  %pipe.3 = getelementptr inbounds %struct.urb, ptr %71, i32 0, i32 10
  %77 = ptrtoint ptr %pipe.3 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %pipe.3, align 4
  %transfer_flags.3 = getelementptr inbounds %struct.urb, ptr %71, i32 0, i32 13
  %78 = ptrtoint ptr %transfer_flags.3 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2, ptr %transfer_flags.3, align 4
  %interval.3 = getelementptr inbounds %struct.urb, ptr %71, i32 0, i32 25
  %79 = ptrtoint ptr %interval.3 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %interval.3, align 4
  %number_of_packets.3 = getelementptr inbounds %struct.urb, ptr %71, i32 0, i32 24
  %80 = ptrtoint ptr %number_of_packets.3 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 4, ptr %number_of_packets.3, align 4
  %transfer_buffer_length.3 = getelementptr inbounds %struct.urb, ptr %71, i32 0, i32 19
  %81 = ptrtoint ptr %transfer_buffer_length.3 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 3584, ptr %transfer_buffer_length.3, align 4
  %82 = load ptr, ptr %iso_buffer, align 8
  %add.ptr.3 = getelementptr i8, ptr %82, i32 10752
  %transfer_buffer.3 = getelementptr inbounds %struct.urb, ptr %71, i32 0, i32 14
  %83 = ptrtoint ptr %transfer_buffer.3 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %add.ptr.3, ptr %transfer_buffer.3, align 4
  %arrayidx4.340 = getelementptr %struct.urb, ptr %71, i32 0, i32 29, i32 0
  %84 = ptrtoint ptr %arrayidx4.340 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %arrayidx4.340, align 4
  %length.341 = getelementptr %struct.urb, ptr %71, i32 0, i32 29, i32 0, i32 1
  %85 = ptrtoint ptr %length.341 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 896, ptr %length.341, align 4
  %arrayidx4.1.3 = getelementptr %struct.urb, ptr %71, i32 0, i32 29, i32 1
  %86 = ptrtoint ptr %arrayidx4.1.3 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 896, ptr %arrayidx4.1.3, align 4
  %length.1.3 = getelementptr %struct.urb, ptr %71, i32 0, i32 29, i32 1, i32 1
  %87 = ptrtoint ptr %length.1.3 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 896, ptr %length.1.3, align 4
  %arrayidx4.2.3 = getelementptr %struct.urb, ptr %71, i32 0, i32 29, i32 2
  %88 = ptrtoint ptr %arrayidx4.2.3 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1792, ptr %arrayidx4.2.3, align 4
  %length.2.3 = getelementptr %struct.urb, ptr %71, i32 0, i32 29, i32 2, i32 1
  %89 = ptrtoint ptr %length.2.3 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 896, ptr %length.2.3, align 4
  %arrayidx4.3.3 = getelementptr %struct.urb, ptr %71, i32 0, i32 29, i32 3
  %90 = ptrtoint ptr %arrayidx4.3.3 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 2688, ptr %arrayidx4.3.3, align 4
  %length.3.3 = getelementptr %struct.urb, ptr %71, i32 0, i32 29, i32 3, i32 1
  %91 = ptrtoint ptr %length.3.3 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 896, ptr %length.3.3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttusb_dec_process_urb(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %3, label %if.then15 [
    i32 0, label %for.cond.preheader
    i32 -2, label %entry.if.end26_crit_edge
  ]

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

for.cond.preheader:                               ; preds = %entry
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %urb_frame_list_lock = getelementptr inbounds %struct.ttusb_dec, ptr %1, i32 0, i32 42
  %urb_frame_list10 = getelementptr inbounds %struct.ttusb_dec, ptr %1, i32 0, i32 40
  %prev.i = getelementptr inbounds %struct.ttusb_dec, ptr %1, i32 0, i32 40, i32 1
  %state.i = getelementptr inbounds %struct.ttusb_dec, ptr %1, i32 0, i32 41, i32 1
  %urb_tasklet = getelementptr inbounds %struct.ttusb_dec, ptr %1, i32 0, i32 41
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.cond.preheader
  %i.047 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.047
  %5 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %transfer_buffer, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %actual_length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.047, i32 2
  %9 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual_length, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 2592, i32 noundef 908) #17
  %tobool1.not = icmp eq ptr %call7.i, null
  br i1 %tobool1.not, label %for.body.if.end_crit_edge, label %if.then2

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %6, i32 %8
  %12 = call ptr @memcpy(ptr %call7.i, ptr %add.ptr, i32 %10)
  %length3 = getelementptr inbounds %struct.urb_frame, ptr %call7.i, i32 0, i32 1
  %13 = ptrtoint ptr %length3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %length3, align 8
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %urb_frame_list_lock) #11
  %urb_frame_list = getelementptr inbounds %struct.urb_frame, ptr %call7.i, i32 0, i32 2
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %urb_frame_list, ptr noundef %15, ptr noundef %urb_frame_list10) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then2.list_add_tail.exit_crit_edge

if.then2.list_add_tail.exit_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %urb_frame_list, ptr %prev.i, align 4
  %17 = ptrtoint ptr %urb_frame_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %urb_frame_list10, ptr %urb_frame_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.urb_frame, ptr %call7.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 8
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %urb_frame_list, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then2.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %urb_frame_list_lock, i32 noundef %call7) #11
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %list_add_tail.exit.if.end_crit_edge

list_add_tail.exit.if.end_crit_edge:              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__tasklet_schedule(ptr noundef %urb_tasklet) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %list_add_tail.exit.if.end_crit_edge, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %if.end.if.end26_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then15:                                        ; preds = %entry
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool16.not = icmp eq i32 %20, 0
  br i1 %tobool16.not, label %if.then15.if.end26_crit_edge, label %do.end20

if.then15.if.end26_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

do.end20:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %3) #14
  br label %if.end26

if.end26:                                         ; preds = %do.end20, %if.then15.if.end26_crit_edge, %if.end.if.end26_crit_edge, %entry.if.end26_crit_edge
  %iso_stream_count = getelementptr inbounds %struct.ttusb_dec, ptr %1, i32 0, i32 25
  %21 = ptrtoint ptr %iso_stream_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iso_stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool27.not = icmp eq i32 %22, 0
  br i1 %tobool27.not, label %if.end26.if.end30_crit_edge, label %if.then28

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26.if.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ttusb_dec_send_command(ptr noundef %dec, i8 noundef zeroext %command, i32 noundef %param_length, ptr noundef readonly %params, ptr noundef writeonly %result_length, ptr noundef writeonly %cmd_result) unnamed_addr #2 align 64 {
entry:
  %actual_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len) #11
  %0 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual_len, align 4, !annotation !377
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.51) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 64) #17
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %usb_mutex = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 19
  %call5 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51) #14
  br label %err_free

if.end13:                                         ; preds = %if.end4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -86, ptr %call7.i.i, align 8
  %trans_count = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 12
  %4 = ptrtoint ptr %trans_count to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %trans_count, align 4
  %inc = add i8 %5, 1
  store i8 %inc, ptr %trans_count, align 4
  %arrayidx14 = getelementptr i8, ptr %call7.i.i, i32 1
  %6 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %inc, ptr %arrayidx14, align 1
  %arrayidx15 = getelementptr i8, ptr %call7.i.i, i32 2
  %7 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %command, ptr %arrayidx15, align 2
  %conv = trunc i32 %param_length to i8
  %arrayidx16 = getelementptr i8, ptr %call7.i.i, i32 3
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx16, align 1
  %tobool17.not = icmp eq ptr %params, null
  br i1 %tobool17.not, label %if.end13.if.end20_crit_edge, label %if.then18

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx19 = getelementptr i8, ptr %call7.i.i, i32 4
  %9 = call ptr @memcpy(ptr %arrayidx19, ptr %params, i32 %param_length)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end13.if.end20_crit_edge
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool21.not = icmp eq i32 %10, 0
  br i1 %tobool21.not, label %if.end20.if.end28_crit_edge, label %do.end25

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

do.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.51, i32 noundef %param_length, ptr noundef nonnull %call7.i.i) #14
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %if.end20.if.end28_crit_edge
  %udev = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 11
  %11 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev, align 8
  %command_pipe = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 13
  %13 = ptrtoint ptr %command_pipe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %command_pipe, align 8
  %call29 = call i32 @usb_bulk_msg(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %call7.i.i, i32 noundef 64, ptr noundef nonnull %actual_len, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end37, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.51, i32 noundef %call29) #14
  br label %err_mutex_unlock

if.end37:                                         ; preds = %if.end28
  %15 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udev, align 8
  %result_pipe = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 14
  %17 = ptrtoint ptr %result_pipe to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %result_pipe, align 4
  %call39 = call i32 @usb_bulk_msg(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %call7.i.i, i32 noundef 64, ptr noundef nonnull %actual_len, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.else, label %do.end44

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.51, i32 noundef %call39) #14
  br label %err_mutex_unlock

if.else:                                          ; preds = %if.end37
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool47.not = icmp eq i32 %19, 0
  br i1 %tobool47.not, label %if.else.if.end54_crit_edge, label %do.end51

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

do.end51:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %actual_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %actual_len, align 4
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.51, i32 noundef %21, ptr noundef nonnull %call7.i.i) #14
  br label %if.end54

if.end54:                                         ; preds = %do.end51, %if.else.if.end54_crit_edge
  %tobool55.not = icmp eq ptr %result_length, null
  br i1 %tobool55.not, label %if.end54.if.end59_crit_edge, label %if.then56

if.end54.if.end59_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx16, align 1
  %conv58 = zext i8 %23 to i32
  %24 = ptrtoint ptr %result_length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv58, ptr %result_length, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end54.if.end59_crit_edge
  %tobool60.not = icmp eq ptr %cmd_result, null
  br i1 %tobool60.not, label %if.end59.err_mutex_unlock_crit_edge, label %land.lhs.true

if.end59.err_mutex_unlock_crit_edge:              ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_mutex_unlock

land.lhs.true:                                    ; preds = %if.end59
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp.not = icmp eq i8 %26, 0
  br i1 %cmp.not, label %land.lhs.true.err_mutex_unlock_crit_edge, label %if.then64

land.lhs.true.err_mutex_unlock_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_mutex_unlock

if.then64:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %conv62 = zext i8 %26 to i32
  %arrayidx65 = getelementptr i8, ptr %call7.i.i, i32 4
  %27 = call ptr @memcpy(ptr %cmd_result, ptr %arrayidx65, i32 %conv62)
  br label %err_mutex_unlock

err_mutex_unlock:                                 ; preds = %if.then64, %land.lhs.true.err_mutex_unlock_crit_edge, %if.end59.err_mutex_unlock_crit_edge, %do.end44, %do.end34
  %result.0 = phi i32 [ %call29, %do.end34 ], [ %call39, %do.end44 ], [ 0, %if.then64 ], [ 0, %land.lhs.true.err_mutex_unlock_crit_edge ], [ 0, %if.end59.err_mutex_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %usb_mutex) #11
  br label %err_free

err_free:                                         ; preds = %err_mutex_unlock, %do.end10
  %result.1 = phi i32 [ %call5, %do.end10 ], [ %result.0, %err_mutex_unlock ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.1, %err_free ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusb_dec_start_feed(ptr nocapture noundef %dvbdmxfeed) #2 align 64 {
entry:
  %b0.i29 = alloca [29 x i8], align 2
  %c.i = alloca [60 x i8], align 1
  %c_length.i = alloca i32, align 4
  %b.i183.i = alloca [12 x i8], align 2
  %b.i154.i = alloca [12 x i8], align 2
  %b.i.i = alloca [12 x i8], align 2
  %b0.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.94) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %frontend = getelementptr inbounds %struct.dmx_demux, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %frontend, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end3.if.end11_crit_edge, label %do.end8

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

do.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pid, align 4
  %conv = zext i16 %7 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %conv) #14
  br label %if.end11

if.end11:                                         ; preds = %do.end8, %if.end3.if.end11_crit_edge
  %type = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 4
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end11
  %11 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %demux, align 4
  %priv.i = getelementptr inbounds %struct.dvb_demux, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #11
  %15 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 5, ptr %b0.i, align 1
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %sw.bb.if.end8.i_crit_edge, label %if.end.i

sw.bb.if.end8.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.end.i:                                         ; preds = %sw.bb
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.101) #14
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool1.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end8.i_crit_edge, label %do.end5.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #14
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end5.i, %if.end.i.if.end8.i_crit_edge, %sw.bb.if.end8.i_crit_edge
  %ts_type.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 10
  %17 = ptrtoint ptr %ts_type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ts_type.i, align 8
  %and.i = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %if.end8.i.if.end19.i_crit_edge, label %if.then10.i

if.end8.i.if.end19.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then10.i:                                      ; preds = %if.end8.i
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool11.not.i = icmp eq i32 %19, 0
  br i1 %tobool11.not.i, label %if.then10.i.if.end19.i_crit_edge, label %do.end15.i

if.then10.i.if.end19.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

do.end15.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #14
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end15.i, %if.then10.i.if.end19.i_crit_edge, %if.end8.i.if.end19.i_crit_edge
  %20 = ptrtoint ptr %ts_type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ts_type.i, align 8
  %and21.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end19.i.if.end32.i_crit_edge, label %if.then23.i

if.end19.i.if.end32.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.then23.i:                                      ; preds = %if.end19.i
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool24.not.i = icmp eq i32 %22, 0
  br i1 %tobool24.not.i, label %if.then23.i.if.end32.i_crit_edge, label %do.end28.i

if.then23.i.if.end32.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

do.end28.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #14
  br label %if.end32.i

if.end32.i:                                       ; preds = %do.end28.i, %if.then23.i.if.end32.i_crit_edge, %if.end19.i.if.end32.i_crit_edge
  %23 = ptrtoint ptr %ts_type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ts_type.i, align 8
  %and34.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end32.i.if.end45.i_crit_edge, label %if.then36.i

if.end32.i.if.end45.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i

if.then36.i:                                      ; preds = %if.end32.i
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool37.not.i = icmp eq i32 %25, 0
  br i1 %tobool37.not.i, label %if.then36.i.if.end53.i_crit_edge, label %do.end41.i

if.then36.i.if.end53.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i

do.end41.i:                                       ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #13
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #14
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end41.i, %if.end32.i.if.end45.i_crit_edge
  %.pr213.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr213.i)
  %tobool46.not.i = icmp eq i32 %.pr213.i, 0
  br i1 %tobool46.not.i, label %if.end45.i.if.end53.i_crit_edge, label %do.end50.i

if.end45.i.if.end53.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i

do.end50.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #14
  br label %if.end53.i

if.end53.i:                                       ; preds = %do.end50.i, %if.end45.i.if.end53.i_crit_edge, %if.then36.i.if.end53.i_crit_edge
  %pes_type.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 11
  %26 = ptrtoint ptr %pes_type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pes_type.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %27, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb66.i
    i32 2, label %sw.bb79.i
    i32 4, label %sw.bb91.i
    i32 20, label %sw.bb103.i
  ]

sw.bb.i:                                          ; preds = %if.end53.i
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool54.not.i = icmp eq i32 %29, 0
  br i1 %tobool54.not.i, label %sw.bb.i.if.end61.i_crit_edge, label %do.end58.i

sw.bb.i.if.end61.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61.i

do.end58.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %call60.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #14
  br label %if.end61.i

if.end61.i:                                       ; preds = %do.end58.i, %sw.bb.i.if.end61.i_crit_edge
  %pid.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %30 = ptrtoint ptr %pid.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %pid.i, align 4
  %arrayidx.i = getelementptr %struct.ttusb_dec, ptr %14, i32 0, i32 10, i32 4
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %arrayidx.i, align 8
  %33 = load i16, ptr %pid.i, align 4
  %arrayidx65.i = getelementptr %struct.ttusb_dec, ptr %14, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %arrayidx65.i, align 2
  %filter.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 8
  %35 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %filter.i, align 8
  %video_filter.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 44
  %37 = ptrtoint ptr %video_filter.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %video_filter.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %b.i.i) #11
  %38 = call ptr @memcpy(ptr %b.i.i, ptr @__const.ttusb_dec_set_pids.b, i32 12)
  %pid.i.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 10
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.i, align 8
  %41 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %pid.i.i, align 8
  %43 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx65.i, align 2
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i.i, label %if.end61.i.ttusb_dec_set_pids.exit.i_crit_edge, label %do.end.i.i

if.end61.i.ttusb_dec_set_pids.exit.i_crit_edge:   ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_set_pids.exit.i

do.end.i.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.135) #14
  br label %ttusb_dec_set_pids.exit.i

ttusb_dec_set_pids.exit.i:                        ; preds = %do.end.i.i, %if.end61.i.ttusb_dec_set_pids.exit.i_crit_edge
  %46 = ptrtoint ptr %b.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %40, ptr %b.i.i, align 2
  %arrayidx6.i.i = getelementptr inbounds [12 x i8], ptr %b.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %42, ptr %arrayidx6.i.i, align 2
  %arrayidx7.i.i = getelementptr inbounds [12 x i8], ptr %b.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %44, ptr %arrayidx7.i.i, align 2
  %call8.i.i = call fastcc i32 @ttusb_dec_send_command(ptr noundef %14, i8 noundef zeroext 80, i32 noundef 12, ptr noundef nonnull %b.i.i, ptr noundef null, ptr noundef null) #11
  %a_pes2ts.i.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 35
  %49 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %pid.i.i, align 8
  %51 = ptrtoint ptr %a_pes2ts.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 71, ptr %a_pes2ts.i.i, align 1
  %52 = lshr i16 %50, 8
  %conv2.i.i.i = trunc i16 %52 to i8
  %arrayidx3.i.i.i = getelementptr %struct.ttusb_dec, ptr %14, i32 0, i32 35, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv2.i.i.i, ptr %arrayidx3.i.i.i, align 1
  %conv5.i.i.i = trunc i16 %50 to i8
  %arrayidx6.i.i.i = getelementptr %struct.ttusb_dec, ptr %14, i32 0, i32 35, i32 0, i32 2
  %54 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv5.i.i.i, ptr %arrayidx6.i.i.i, align 1
  %cc.i.i.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 35, i32 1
  %55 = ptrtoint ptr %cc.i.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %cc.i.i.i, align 4
  %cb7.i.i.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 35, i32 2
  %56 = ptrtoint ptr %cb7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @ttusb_dec_audio_pes2ts_cb, ptr %cb7.i.i.i, align 4
  %priv8.i.i.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 35, i32 3
  %57 = ptrtoint ptr %priv8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %14, ptr %priv8.i.i.i, align 4
  %v_pes2ts.i.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 36
  %58 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx65.i, align 2
  %60 = ptrtoint ptr %v_pes2ts.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 71, ptr %v_pes2ts.i.i, align 1
  %61 = lshr i16 %59, 8
  %conv2.i24.i.i = trunc i16 %61 to i8
  %arrayidx3.i25.i.i = getelementptr %struct.ttusb_dec, ptr %14, i32 0, i32 36, i32 0, i32 1
  %62 = ptrtoint ptr %arrayidx3.i25.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv2.i24.i.i, ptr %arrayidx3.i25.i.i, align 1
  %conv5.i26.i.i = trunc i16 %59 to i8
  %arrayidx6.i27.i.i = getelementptr %struct.ttusb_dec, ptr %14, i32 0, i32 36, i32 0, i32 2
  %63 = ptrtoint ptr %arrayidx6.i27.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv5.i26.i.i, ptr %arrayidx6.i27.i.i, align 1
  %cc.i28.i.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 36, i32 1
  %64 = ptrtoint ptr %cc.i28.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %cc.i28.i.i, align 4
  %cb7.i29.i.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 36, i32 2
  %65 = ptrtoint ptr %cb7.i29.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @ttusb_dec_video_pes2ts_cb, ptr %cb7.i29.i.i, align 4
  %priv8.i30.i.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 36, i32 3
  %66 = ptrtoint ptr %priv8.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %14, ptr %priv8.i30.i.i, align 4
  %v_pes_length.i.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 38
  %67 = ptrtoint ptr %v_pes_length.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %v_pes_length.i.i, align 4
  %v_pes_postbytes.i.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 39
  %68 = ptrtoint ptr %v_pes_postbytes.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %v_pes_postbytes.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %b.i.i) #11
  br label %sw.epilog.i

sw.bb66.i:                                        ; preds = %if.end53.i
  %69 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool67.not.i = icmp eq i32 %69, 0
  br i1 %tobool67.not.i, label %sw.bb66.i.if.end74.i_crit_edge, label %do.end71.i

sw.bb66.i.if.end74.i_crit_edge:                   ; preds = %sw.bb66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74.i

do.end71.i:                                       ; preds = %sw.bb66.i
  call void @__sanitizer_cov_trace_pc() #13
  %call73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #14
  br label %if.end74.i

if.end74.i:                                       ; preds = %do.end71.i, %sw.bb66.i.if.end74.i_crit_edge
  %pid75.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %70 = ptrtoint ptr %pid75.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %pid75.i, align 4
  %pid76.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 10
  %72 = ptrtoint ptr %pid76.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %pid76.i, align 8
  %filter78.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 8
  %73 = ptrtoint ptr %filter78.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %filter78.i, align 8
  %audio_filter.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 43
  %75 = ptrtoint ptr %audio_filter.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %audio_filter.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %b.i154.i) #11
  %76 = call ptr @memcpy(ptr %b.i154.i, ptr @__const.ttusb_dec_set_pids.b, i32 12)
  %arrayidx.i156.i = getelementptr %struct.ttusb_dec, ptr %14, i32 0, i32 10, i32 4
  %77 = ptrtoint ptr %arrayidx.i156.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx.i156.i, align 8
  %arrayidx4.i157.i = getelementptr %struct.ttusb_dec, ptr %14, i32 0, i32 10, i32 1
  %79 = ptrtoint ptr %arrayidx4.i157.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx4.i157.i, align 2
  %81 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i158.i = icmp eq i32 %81, 0
  br i1 %tobool.not.i158.i, label %if.end74.i.ttusb_dec_set_pids.exit182.i_crit_edge, label %do.end.i160.i

if.end74.i.ttusb_dec_set_pids.exit182.i_crit_edge: ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_set_pids.exit182.i

do.end.i160.i:                                    ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i159.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.135) #14
  br label %ttusb_dec_set_pids.exit182.i

ttusb_dec_set_pids.exit182.i:                     ; preds = %do.end.i160.i, %if.end74.i.ttusb_dec_set_pids.exit182.i_crit_edge
  %82 = ptrtoint ptr %b.i154.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %78, ptr %b.i154.i, align 2
  %arrayidx6.i161.i = getelementptr inbounds [12 x i8], ptr %b.i154.i, i32 0, i32 2
  %83 = ptrtoint ptr %arrayidx6.i161.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %71, ptr %arrayidx6.i161.i, align 2
  %arrayidx7.i162.i = getelementptr inbounds [12 x i8], ptr %b.i154.i, i32 0, i32 4
  %84 = ptrtoint ptr %arrayidx7.i162.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %80, ptr %arrayidx7.i162.i, align 2
  %call8.i163.i = call fastcc i32 @ttusb_dec_send_command(ptr noundef %14, i8 noundef zeroext 80, i32 noundef 12, ptr noundef nonnull %b.i154.i, ptr noundef null, ptr noundef null) #11
  %a_pes2ts.i164.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 35
  %85 = ptrtoint ptr %pid76.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %pid76.i, align 8
  %87 = ptrtoint ptr %a_pes2ts.i164.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 71, ptr %a_pes2ts.i164.i, align 1
  %88 = lshr i16 %86, 8
  %conv2.i.i165.i = trunc i16 %88 to i8
  %arrayidx3.i.i166.i = getelementptr %struct.ttusb_dec, ptr %14, i32 0, i32 35, i32 0, i32 1
  %89 = ptrtoint ptr %arrayidx3.i.i166.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv2.i.i165.i, ptr %arrayidx3.i.i166.i, align 1
  %conv5.i.i167.i = trunc i16 %86 to i8
  %arrayidx6.i.i168.i = getelementptr %struct.ttusb_dec, ptr %14, i32 0, i32 35, i32 0, i32 2
  %90 = ptrtoint ptr %arrayidx6.i.i168.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv5.i.i167.i, ptr %arrayidx6.i.i168.i, align 1
  %cc.i.i169.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 35, i32 1
  %91 = ptrtoint ptr %cc.i.i169.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %cc.i.i169.i, align 4
  %cb7.i.i170.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 35, i32 2
  %92 = ptrtoint ptr %cb7.i.i170.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @ttusb_dec_audio_pes2ts_cb, ptr %cb7.i.i170.i, align 4
  %priv8.i.i171.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 35, i32 3
  %93 = ptrtoint ptr %priv8.i.i171.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %14, ptr %priv8.i.i171.i, align 4
  %v_pes2ts.i172.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 36
  %94 = ptrtoint ptr %arrayidx4.i157.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx4.i157.i, align 2
  %96 = ptrtoint ptr %v_pes2ts.i172.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 71, ptr %v_pes2ts.i172.i, align 1
  %97 = lshr i16 %95, 8
  %conv2.i24.i173.i = trunc i16 %97 to i8
  %arrayidx3.i25.i174.i = getelementptr %struct.ttusb_dec, ptr %14, i32 0, i32 36, i32 0, i32 1
  %98 = ptrtoint ptr %arrayidx3.i25.i174.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv2.i24.i173.i, ptr %arrayidx3.i25.i174.i, align 1
  %conv5.i26.i175.i = trunc i16 %95 to i8
  %arrayidx6.i27.i176.i = getelementptr %struct.ttusb_dec, ptr %14, i32 0, i32 36, i32 0, i32 2
  %99 = ptrtoint ptr %arrayidx6.i27.i176.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv5.i26.i175.i, ptr %arrayidx6.i27.i176.i, align 1
  %cc.i28.i177.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 36, i32 1
  %100 = ptrtoint ptr %cc.i28.i177.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %cc.i28.i177.i, align 4
  %cb7.i29.i178.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 36, i32 2
  %101 = ptrtoint ptr %cb7.i29.i178.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @ttusb_dec_video_pes2ts_cb, ptr %cb7.i29.i178.i, align 4
  %priv8.i30.i179.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 36, i32 3
  %102 = ptrtoint ptr %priv8.i30.i179.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %14, ptr %priv8.i30.i179.i, align 4
  %v_pes_length.i180.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 38
  %103 = ptrtoint ptr %v_pes_length.i180.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %v_pes_length.i180.i, align 4
  %v_pes_postbytes.i181.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 39
  %104 = ptrtoint ptr %v_pes_postbytes.i181.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %v_pes_postbytes.i181.i, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %b.i154.i) #11
  br label %sw.epilog.i

sw.bb79.i:                                        ; preds = %if.end53.i
  %pid80.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %105 = ptrtoint ptr %pid80.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %pid80.i, align 4
  %arrayidx82.i = getelementptr %struct.ttusb_dec, ptr %14, i32 0, i32 10, i32 2
  %107 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %arrayidx82.i, align 4
  %108 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool83.not.i = icmp eq i32 %108, 0
  br i1 %tobool83.not.i, label %sw.bb79.i.ttusb_dec_start_ts_feed.exit_crit_edge, label %do.end87.i

sw.bb79.i.ttusb_dec_start_ts_feed.exit_crit_edge: ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_start_ts_feed.exit

do.end87.i:                                       ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #13
  %call89.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124) #14
  br label %ttusb_dec_start_ts_feed.exit

sw.bb91.i:                                        ; preds = %if.end53.i
  %109 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool92.not.i = icmp eq i32 %109, 0
  br i1 %tobool92.not.i, label %sw.bb91.i.if.end99.i_crit_edge, label %do.end96.i

sw.bb91.i.if.end99.i_crit_edge:                   ; preds = %sw.bb91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99.i

do.end96.i:                                       ; preds = %sw.bb91.i
  call void @__sanitizer_cov_trace_pc() #13
  %call98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #14
  br label %if.end99.i

if.end99.i:                                       ; preds = %do.end96.i, %sw.bb91.i.if.end99.i_crit_edge
  %pid100.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %110 = ptrtoint ptr %pid100.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %pid100.i, align 4
  %arrayidx102.i = getelementptr %struct.ttusb_dec, ptr %14, i32 0, i32 10, i32 4
  %112 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %arrayidx102.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %b.i183.i) #11
  %113 = call ptr @memcpy(ptr %b.i183.i, ptr @__const.ttusb_dec_set_pids.b, i32 12)
  %pid.i184.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 10
  %114 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx102.i, align 8
  %116 = ptrtoint ptr %pid.i184.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %pid.i184.i, align 8
  %arrayidx4.i186.i = getelementptr %struct.ttusb_dec, ptr %14, i32 0, i32 10, i32 1
  %118 = ptrtoint ptr %arrayidx4.i186.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %arrayidx4.i186.i, align 2
  %120 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i187.i = icmp eq i32 %120, 0
  br i1 %tobool.not.i187.i, label %if.end99.i.ttusb_dec_set_pids.exit211.i_crit_edge, label %do.end.i189.i

if.end99.i.ttusb_dec_set_pids.exit211.i_crit_edge: ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_set_pids.exit211.i

do.end.i189.i:                                    ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i188.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.135) #14
  br label %ttusb_dec_set_pids.exit211.i

ttusb_dec_set_pids.exit211.i:                     ; preds = %do.end.i189.i, %if.end99.i.ttusb_dec_set_pids.exit211.i_crit_edge
  %121 = ptrtoint ptr %b.i183.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %115, ptr %b.i183.i, align 2
  %arrayidx6.i190.i = getelementptr inbounds [12 x i8], ptr %b.i183.i, i32 0, i32 2
  %122 = ptrtoint ptr %arrayidx6.i190.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %117, ptr %arrayidx6.i190.i, align 2
  %arrayidx7.i191.i = getelementptr inbounds [12 x i8], ptr %b.i183.i, i32 0, i32 4
  %123 = ptrtoint ptr %arrayidx7.i191.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %119, ptr %arrayidx7.i191.i, align 2
  %call8.i192.i = call fastcc i32 @ttusb_dec_send_command(ptr noundef %14, i8 noundef zeroext 80, i32 noundef 12, ptr noundef nonnull %b.i183.i, ptr noundef null, ptr noundef null) #11
  %a_pes2ts.i193.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 35
  %124 = ptrtoint ptr %pid.i184.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %pid.i184.i, align 8
  %126 = ptrtoint ptr %a_pes2ts.i193.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 71, ptr %a_pes2ts.i193.i, align 1
  %127 = lshr i16 %125, 8
  %conv2.i.i194.i = trunc i16 %127 to i8
  %arrayidx3.i.i195.i = getelementptr %struct.ttusb_dec, ptr %14, i32 0, i32 35, i32 0, i32 1
  %128 = ptrtoint ptr %arrayidx3.i.i195.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv2.i.i194.i, ptr %arrayidx3.i.i195.i, align 1
  %conv5.i.i196.i = trunc i16 %125 to i8
  %arrayidx6.i.i197.i = getelementptr %struct.ttusb_dec, ptr %14, i32 0, i32 35, i32 0, i32 2
  %129 = ptrtoint ptr %arrayidx6.i.i197.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv5.i.i196.i, ptr %arrayidx6.i.i197.i, align 1
  %cc.i.i198.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 35, i32 1
  %130 = ptrtoint ptr %cc.i.i198.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %cc.i.i198.i, align 4
  %cb7.i.i199.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 35, i32 2
  %131 = ptrtoint ptr %cb7.i.i199.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @ttusb_dec_audio_pes2ts_cb, ptr %cb7.i.i199.i, align 4
  %priv8.i.i200.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 35, i32 3
  %132 = ptrtoint ptr %priv8.i.i200.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %14, ptr %priv8.i.i200.i, align 4
  %v_pes2ts.i201.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 36
  %133 = ptrtoint ptr %arrayidx4.i186.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %arrayidx4.i186.i, align 2
  %135 = ptrtoint ptr %v_pes2ts.i201.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 71, ptr %v_pes2ts.i201.i, align 1
  %136 = lshr i16 %134, 8
  %conv2.i24.i202.i = trunc i16 %136 to i8
  %arrayidx3.i25.i203.i = getelementptr %struct.ttusb_dec, ptr %14, i32 0, i32 36, i32 0, i32 1
  %137 = ptrtoint ptr %arrayidx3.i25.i203.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv2.i24.i202.i, ptr %arrayidx3.i25.i203.i, align 1
  %conv5.i26.i204.i = trunc i16 %134 to i8
  %arrayidx6.i27.i205.i = getelementptr %struct.ttusb_dec, ptr %14, i32 0, i32 36, i32 0, i32 2
  %138 = ptrtoint ptr %arrayidx6.i27.i205.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv5.i26.i204.i, ptr %arrayidx6.i27.i205.i, align 1
  %cc.i28.i206.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 36, i32 1
  %139 = ptrtoint ptr %cc.i28.i206.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %cc.i28.i206.i, align 4
  %cb7.i29.i207.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 36, i32 2
  %140 = ptrtoint ptr %cb7.i29.i207.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @ttusb_dec_video_pes2ts_cb, ptr %cb7.i29.i207.i, align 4
  %priv8.i30.i208.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 36, i32 3
  %141 = ptrtoint ptr %priv8.i30.i208.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %14, ptr %priv8.i30.i208.i, align 4
  %v_pes_length.i209.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 38
  %142 = ptrtoint ptr %v_pes_length.i209.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %v_pes_length.i209.i, align 4
  %v_pes_postbytes.i210.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 39
  %143 = ptrtoint ptr %v_pes_postbytes.i210.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %v_pes_postbytes.i210.i, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %b.i183.i) #11
  br label %sw.epilog.i

sw.bb103.i:                                       ; preds = %if.end53.i
  %144 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool104.not.i = icmp eq i32 %144, 0
  br i1 %tobool104.not.i, label %sw.bb103.i.ttusb_dec_start_ts_feed.exit_crit_edge, label %do.end108.i

sw.bb103.i.ttusb_dec_start_ts_feed.exit_crit_edge: ; preds = %sw.bb103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_start_ts_feed.exit

do.end108.i:                                      ; preds = %sw.bb103.i
  call void @__sanitizer_cov_trace_pc() #13
  %call110.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130) #14
  br label %ttusb_dec_start_ts_feed.exit

sw.default.i:                                     ; preds = %if.end53.i
  %145 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool112.not.i = icmp eq i32 %145, 0
  br i1 %tobool112.not.i, label %sw.default.i.ttusb_dec_start_ts_feed.exit_crit_edge, label %do.end116.i

sw.default.i.ttusb_dec_start_ts_feed.exit_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_start_ts_feed.exit

do.end116.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #13
  %call119.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %27) #14
  br label %ttusb_dec_start_ts_feed.exit

sw.epilog.i:                                      ; preds = %ttusb_dec_set_pids.exit211.i, %ttusb_dec_set_pids.exit182.i, %ttusb_dec_set_pids.exit.i
  %call121.i = call fastcc i32 @ttusb_dec_send_command(ptr noundef %14, i8 noundef zeroext -128, i32 noundef 1, ptr noundef nonnull %b0.i, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121.i)
  %tobool122.not.i = icmp eq i32 %call121.i, 0
  br i1 %tobool122.not.i, label %if.end124.i, label %sw.epilog.i.ttusb_dec_start_ts_feed.exit_crit_edge

sw.epilog.i.ttusb_dec_start_ts_feed.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_start_ts_feed.exit

if.end124.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %pva_stream_count.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 33
  %146 = ptrtoint ptr %pva_stream_count.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %pva_stream_count.i, align 4
  %inc.i = add i32 %147, 1
  store i32 %inc.i, ptr %pva_stream_count.i, align 4
  %call125.i = call fastcc i32 @ttusb_dec_start_iso_xfer(ptr noundef %14) #11
  br label %ttusb_dec_start_ts_feed.exit

ttusb_dec_start_ts_feed.exit:                     ; preds = %if.end124.i, %sw.epilog.i.ttusb_dec_start_ts_feed.exit_crit_edge, %do.end116.i, %sw.default.i.ttusb_dec_start_ts_feed.exit_crit_edge, %do.end108.i, %sw.bb103.i.ttusb_dec_start_ts_feed.exit_crit_edge, %do.end87.i, %sw.bb79.i.ttusb_dec_start_ts_feed.exit_crit_edge
  %retval.0.i = phi i32 [ %call125.i, %if.end124.i ], [ -38, %do.end87.i ], [ -38, %sw.bb79.i.ttusb_dec_start_ts_feed.exit_crit_edge ], [ -38, %do.end108.i ], [ -38, %sw.bb103.i.ttusb_dec_start_ts_feed.exit_crit_edge ], [ -22, %do.end116.i ], [ -22, %sw.default.i.ttusb_dec_start_ts_feed.exit_crit_edge ], [ %call121.i, %sw.epilog.i.ttusb_dec_start_ts_feed.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #11
  br label %cleanup

sw.bb13:                                          ; preds = %if.end11
  %148 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %demux, align 4
  %priv.i31 = getelementptr inbounds %struct.dvb_demux, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %priv.i31 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %priv.i31, align 4
  call void @llvm.lifetime.start.p0(i64 29, ptr nonnull %b0.i29) #11
  %152 = call ptr @memcpy(ptr %b0.i29, ptr @__const.ttusb_dec_start_sec_feed.b0, i32 29)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %c.i) #11
  %153 = call ptr @memset(ptr %c.i, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c_length.i) #11
  %154 = ptrtoint ptr %c_length.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 -1, ptr %c_length.i, align 4, !annotation !377
  %155 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool.not.i32 = icmp eq i32 %155, 0
  br i1 %tobool.not.i32, label %sw.bb13.if.end.i36_crit_edge, label %do.end.i

sw.bb13.if.end.i36_crit_edge:                     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i36

do.end.i:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  %call.i33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.140) #14
  br label %if.end.i36

if.end.i36:                                       ; preds = %do.end.i, %sw.bb13.if.end.i36_crit_edge
  %pid1.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %156 = ptrtoint ptr %pid1.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %pid1.i, align 4
  %158 = ptrtoint ptr %b0.i29 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %157, ptr %b0.i29, align 2
  %arrayidx2.i = getelementptr inbounds [29 x i8], ptr %b0.i29, i32 0, i32 4
  %159 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 1, ptr %arrayidx2.i, align 2
  %arrayidx3.i = getelementptr inbounds [29 x i8], ptr %b0.i29, i32 0, i32 5
  %filter.i34 = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 8
  %160 = ptrtoint ptr %filter.i34 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %filter.i34, align 8
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %161, align 4
  %164 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %arrayidx3.i, align 1
  %call7.i35 = call fastcc i32 @ttusb_dec_send_command(ptr noundef %151, i8 noundef zeroext 96, i32 noundef 29, ptr noundef nonnull %b0.i29, ptr noundef nonnull %c_length.i, ptr noundef nonnull %c.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i35)
  %tobool8.not.i = icmp eq i32 %call7.i35, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end.i36.ttusb_dec_start_sec_feed.exit_crit_edge

if.end.i36.ttusb_dec_start_sec_feed.exit_crit_edge: ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_start_sec_feed.exit

if.then9.i:                                       ; preds = %if.end.i36
  %165 = ptrtoint ptr %c_length.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %c_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %166)
  %cmp.i = icmp eq i32 %166, 2
  br i1 %cmp.i, label %if.then10.i37, label %if.then9.i.ttusb_dec_start_sec_feed.exit_crit_edge

if.then9.i.ttusb_dec_start_sec_feed.exit_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_start_sec_feed.exit

if.then10.i37:                                    ; preds = %if.then9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %167 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %167, i32 noundef 2592, i32 noundef 16) #17
  %tobool12.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not.i, label %if.then10.i37.ttusb_dec_start_sec_feed.exit_crit_edge, label %if.end14.i

if.then10.i37.ttusb_dec_start_sec_feed.exit_crit_edge: ; preds = %if.then10.i37
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_start_sec_feed.exit

if.end14.i:                                       ; preds = %if.then10.i37
  %arrayidx15.i = getelementptr inbounds [60 x i8], ptr %c.i, i32 0, i32 1
  %168 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx15.i, align 1
  %170 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %call7.i.i, align 8
  %171 = ptrtoint ptr %filter.i34 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %filter.i34, align 8
  %filter17.i = getelementptr inbounds %struct.filter_info, ptr %call7.i.i, i32 0, i32 1
  %173 = ptrtoint ptr %filter17.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %172, ptr %filter17.i, align 4
  %filter_info_list_lock.i = getelementptr inbounds %struct.ttusb_dec, ptr %151, i32 0, i32 46
  %call23.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %filter_info_list_lock.i) #11
  %filter_info_list.i = getelementptr inbounds %struct.filter_info, ptr %call7.i.i, i32 0, i32 2
  %filter_info_list28.i = getelementptr inbounds %struct.ttusb_dec, ptr %151, i32 0, i32 45
  %prev.i.i = getelementptr inbounds %struct.ttusb_dec, ptr %151, i32 0, i32 45, i32 1
  %174 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %filter_info_list.i, ptr noundef %175, ptr noundef %filter_info_list28.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end14.i.list_add_tail.exit.i_crit_edge

if.end14.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %176 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %filter_info_list.i, ptr %prev.i.i, align 4
  %177 = ptrtoint ptr %filter_info_list.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %filter_info_list28.i, ptr %filter_info_list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.filter_info, ptr %call7.i.i, i32 0, i32 2, i32 1
  %178 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %175, ptr %prev3.i.i.i, align 4
  %179 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile ptr %filter_info_list.i, ptr %175, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end14.i.list_add_tail.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %filter_info_list_lock.i, i32 noundef %call23.i) #11
  %priv30.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 3
  %180 = ptrtoint ptr %priv30.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %call7.i.i, ptr %priv30.i, align 8
  %filter_stream_count.i = getelementptr inbounds %struct.ttusb_dec, ptr %151, i32 0, i32 34
  %181 = ptrtoint ptr %filter_stream_count.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %filter_stream_count.i, align 8
  %inc.i38 = add i32 %182, 1
  store i32 %inc.i38, ptr %filter_stream_count.i, align 8
  %call31.i = call fastcc i32 @ttusb_dec_start_iso_xfer(ptr noundef %151) #11
  br label %ttusb_dec_start_sec_feed.exit

ttusb_dec_start_sec_feed.exit:                    ; preds = %list_add_tail.exit.i, %if.then10.i37.ttusb_dec_start_sec_feed.exit_crit_edge, %if.then9.i.ttusb_dec_start_sec_feed.exit_crit_edge, %if.end.i36.ttusb_dec_start_sec_feed.exit_crit_edge
  %retval.0.i39 = phi i32 [ %call31.i, %list_add_tail.exit.i ], [ -12, %if.then10.i37.ttusb_dec_start_sec_feed.exit_crit_edge ], [ -11, %if.then9.i.ttusb_dec_start_sec_feed.exit_crit_edge ], [ %call7.i35, %if.end.i36.ttusb_dec_start_sec_feed.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c_length.i) #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %c.i) #11
  call void @llvm.lifetime.end.p0(i64 29, ptr nonnull %b0.i29) #11
  br label %cleanup

sw.default:                                       ; preds = %if.end11
  %183 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool15.not = icmp eq i32 %183, 0
  br i1 %tobool15.not, label %sw.default.cleanup_crit_edge, label %do.end19

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end19:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i32 noundef %9) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %sw.default.cleanup_crit_edge, %ttusb_dec_start_sec_feed.exit, %ttusb_dec_start_ts_feed.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i39, %ttusb_dec_start_sec_feed.exit ], [ %retval.0.i, %ttusb_dec_start_ts_feed.exit ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %do.end19 ], [ -22, %sw.default.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusb_dec_stop_feed(ptr nocapture noundef readonly %dvbdmxfeed) #2 align 64 {
entry:
  %b0.i6 = alloca [2 x i8], align 2
  %b0.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.141) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %type = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 4
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %2, label %if.end.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %demux.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %4 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %demux.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_demux, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #11
  %8 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %b0.i, align 1
  %call.i = call fastcc i32 @ttusb_dec_send_command(ptr noundef %7, i8 noundef zeroext -127, i32 noundef 1, ptr noundef nonnull %b0.i, ptr noundef null, ptr noundef null) #11
  %pva_stream_count.i = getelementptr inbounds %struct.ttusb_dec, ptr %7, i32 0, i32 33
  %9 = ptrtoint ptr %pva_stream_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pva_stream_count.i, align 4
  %dec1.i = add i32 %10, -1
  store i32 %dec1.i, ptr %pva_stream_count.i, align 4
  call fastcc void @ttusb_dec_stop_iso_xfer(ptr noundef %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #11
  br label %return

sw.bb2:                                           ; preds = %if.end
  %demux.i7 = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %11 = ptrtoint ptr %demux.i7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %demux.i7, align 4
  %priv.i8 = getelementptr inbounds %struct.dvb_demux, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %priv.i8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i8, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i6) #11
  %15 = ptrtoint ptr %b0.i6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %b0.i6, align 2
  %priv1.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 3
  %16 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv1.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  %arrayidx.i = getelementptr inbounds [2 x i8], ptr %b0.i6, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx.i, align 1
  %filter_info_list_lock.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 46
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %filter_info_list_lock.i) #11
  %filter_info_list.i = getelementptr inbounds %struct.filter_info, ptr %17, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %filter_info_list.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %sw.bb2.ttusb_dec_stop_sec_feed.exit_crit_edge

sw.bb2.ttusb_dec_stop_sec_feed.exit_crit_edge:    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_stop_sec_feed.exit

if.end.i.i.i:                                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.filter_info, ptr %17, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %filter_info_list.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %filter_info_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %ttusb_dec_stop_sec_feed.exit

ttusb_dec_stop_sec_feed.exit:                     ; preds = %if.end.i.i.i, %sw.bb2.ttusb_dec_stop_sec_feed.exit_crit_edge
  %27 = ptrtoint ptr %filter_info_list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %filter_info_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.filter_info, ptr %17, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %filter_info_list_lock.i, i32 noundef %call3.i) #11
  tail call void @kfree(ptr noundef %17) #11
  %call7.i = call fastcc i32 @ttusb_dec_send_command(ptr noundef %14, i8 noundef zeroext 98, i32 noundef 2, ptr noundef nonnull %b0.i6, ptr noundef null, ptr noundef null) #11
  %filter_stream_count.i = getelementptr inbounds %struct.ttusb_dec, ptr %14, i32 0, i32 34
  %29 = ptrtoint ptr %filter_stream_count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %filter_stream_count.i, align 8
  %dec8.i = add i32 %30, -1
  store i32 %dec8.i, ptr %filter_stream_count.i, align 8
  call fastcc void @ttusb_dec_stop_iso_xfer(ptr noundef %14) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i6) #11
  br label %return

return:                                           ; preds = %ttusb_dec_stop_sec_feed.exit, %sw.bb, %if.end.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_net_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ttusb_dec_start_iso_xfer(ptr noundef %dec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.136) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %iso_mutex = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 26
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %iso_mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %iso_stream_count = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 25
  %1 = ptrtoint ptr %iso_stream_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %iso_stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool5.not = icmp eq i32 %2, 0
  br i1 %tobool5.not, label %if.then6, label %if.end4.if.end21_crit_edge

if.end4.if.end21_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then6:                                         ; preds = %if.end4
  tail call fastcc void @ttusb_dec_setup_urbs(ptr noundef %dec)
  %packet_state = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 29
  %3 = ptrtoint ptr %packet_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %packet_state, align 4
  %v_pes_postbytes = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 39
  %4 = ptrtoint ptr %v_pes_postbytes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %v_pes_postbytes, align 8
  %next_packet_id = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 32
  %5 = ptrtoint ptr %next_packet_id to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %next_packet_id, align 8
  %arrayidx = getelementptr %struct.ttusb_dec, ptr %dec, i32 0, i32 24, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call7 = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.inc, label %do.end12

do.end12:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.136, i32 noundef 0, i32 noundef %call7) #14
  br label %cleanup.sink.split

while.body.preheader:                             ; preds = %for.inc.2.while.body.preheader_crit_edge, %for.inc.1.while.body.preheader_crit_edge, %for.inc.while.body.preheader_crit_edge
  %i.044.lcssa.ph = phi i32 [ 3, %for.inc.2.while.body.preheader_crit_edge ], [ 2, %for.inc.1.while.body.preheader_crit_edge ], [ 1, %for.inc.while.body.preheader_crit_edge ]
  %call7.lcssa.ph = phi i32 [ %call7.3, %for.inc.2.while.body.preheader_crit_edge ], [ %call7.2, %for.inc.1.while.body.preheader_crit_edge ], [ %call7.1, %for.inc.while.body.preheader_crit_edge ]
  %call1451 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.136, i32 noundef %i.044.lcssa.ph, i32 noundef %call7.lcssa.ph) #14
  %sub = add nsw i32 %i.044.lcssa.ph, -1
  %arrayidx17 = getelementptr %struct.ttusb_dec, ptr %dec, i32 0, i32 24, i32 %sub
  %8 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx17, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool15.not = icmp eq i32 %sub, 0
  br i1 %tobool15.not, label %while.body.preheader.cleanup.sink.split_crit_edge, label %while.body.1

while.body.preheader.cleanup.sink.split_crit_edge: ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

while.body.1:                                     ; preds = %while.body.preheader
  %sub.1 = add nsw i32 %i.044.lcssa.ph, -2
  %arrayidx17.1 = getelementptr %struct.ttusb_dec, ptr %dec, i32 0, i32 24, i32 %sub.1
  %10 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx17.1, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.1)
  %tobool15.not.1 = icmp eq i32 %sub.1, 0
  br i1 %tobool15.not.1, label %while.body.1.cleanup.sink.split_crit_edge, label %while.body.2

while.body.1.cleanup.sink.split_crit_edge:        ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #13
  %sub.2 = add nsw i32 %i.044.lcssa.ph, -3
  %arrayidx17.2 = getelementptr %struct.ttusb_dec, ptr %dec, i32 0, i32 24, i32 %sub.2
  %12 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx17.2, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #11
  br label %cleanup.sink.split

for.inc:                                          ; preds = %if.then6
  %arrayidx.1 = getelementptr %struct.ttusb_dec, ptr %dec, i32 0, i32 24, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  %call7.1 = tail call i32 @usb_submit_urb(ptr noundef %15, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1)
  %tobool8.not.1 = icmp eq i32 %call7.1, 0
  br i1 %tobool8.not.1, label %for.inc.1, label %for.inc.while.body.preheader_crit_edge

for.inc.while.body.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.preheader

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.ttusb_dec, ptr %dec, i32 0, i32 24, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2, align 4
  %call7.2 = tail call i32 @usb_submit_urb(ptr noundef %17, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2)
  %tobool8.not.2 = icmp eq i32 %call7.2, 0
  br i1 %tobool8.not.2, label %for.inc.2, label %for.inc.1.while.body.preheader_crit_edge

for.inc.1.while.body.preheader_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.preheader

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.ttusb_dec, ptr %dec, i32 0, i32 24, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.3, align 4
  %call7.3 = tail call i32 @usb_submit_urb(ptr noundef %19, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.3)
  %tobool8.not.3 = icmp eq i32 %call7.3, 0
  br i1 %tobool8.not.3, label %for.inc.2.if.end21_crit_edge, label %for.inc.2.while.body.preheader_crit_edge

for.inc.2.while.body.preheader_crit_edge:         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.preheader

for.inc.2.if.end21_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.end21:                                         ; preds = %for.inc.2.if.end21_crit_edge, %if.end4.if.end21_crit_edge
  %20 = ptrtoint ptr %iso_stream_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iso_stream_count, align 4
  %inc23 = add i32 %21, 1
  store i32 %inc23, ptr %iso_stream_count, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end21, %while.body.2, %while.body.1.cleanup.sink.split_crit_edge, %while.body.preheader.cleanup.sink.split_crit_edge, %do.end12
  %retval.0.ph = phi i32 [ 0, %if.end21 ], [ %call7, %do.end12 ], [ %call7.lcssa.ph, %while.body.2 ], [ %call7.lcssa.ph, %while.body.1.cleanup.sink.split_crit_edge ], [ %call7.lcssa.ph, %while.body.preheader.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %iso_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusb_dec_audio_pes2ts_cb(ptr nocapture noundef readonly %priv, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_filter = getelementptr inbounds %struct.ttusb_dec, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %audio_filter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %audio_filter, align 8
  %feed = getelementptr inbounds %struct.dvb_demux_filter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %feed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %feed, align 4
  %cb = getelementptr inbounds %struct.dvb_demux_feed, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb, align 8
  %call = tail call i32 %5(ptr noundef %data, i32 noundef 188, ptr noundef null, i32 noundef 0, ptr noundef %3, ptr noundef null) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusb_dec_video_pes2ts_cb(ptr nocapture noundef readonly %priv, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %video_filter = getelementptr inbounds %struct.ttusb_dec, ptr %priv, i32 0, i32 44
  %0 = ptrtoint ptr %video_filter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %video_filter, align 4
  %feed = getelementptr inbounds %struct.dvb_demux_filter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %feed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %feed, align 4
  %cb = getelementptr inbounds %struct.dvb_demux_feed, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb, align 8
  %call = tail call i32 %5(ptr noundef %data, i32 noundef 188, ptr noundef null, i32 noundef 0, ptr noundef %3, ptr noundef null) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ttusb_dec_stop_iso_xfer(ptr noundef %dec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.142) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %iso_mutex = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 26
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %iso_mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %iso_stream_count = getelementptr inbounds %struct.ttusb_dec, ptr %dec, i32 0, i32 25
  %1 = ptrtoint ptr %iso_stream_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %iso_stream_count, align 4
  %dec5 = add i32 %2, -1
  store i32 %dec5, ptr %iso_stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec5)
  %tobool7.not = icmp eq i32 %dec5, 0
  br i1 %tobool7.not, label %for.body.preheader, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

for.body.preheader:                               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.ttusb_dec, ptr %dec, i32 0, i32 24, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %4) #11
  %arrayidx.1 = getelementptr %struct.ttusb_dec, ptr %dec, i32 0, i32 24, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_kill_urb(ptr noundef %6) #11
  %arrayidx.2 = getelementptr %struct.ttusb_dec, ptr %dec, i32 0, i32 24, i32 2
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.2, align 4
  tail call void @usb_kill_urb(ptr noundef %8) #11
  %arrayidx.3 = getelementptr %struct.ttusb_dec, ptr %dec, i32 0, i32 24, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_kill_urb(ptr noundef %10) #11
  br label %if.end9

if.end9:                                          ; preds = %for.body.preheader, %if.end4.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %iso_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fe_send_command(ptr nocapture noundef readonly %fe, i8 noundef zeroext %command, i32 noundef %param_length, ptr noundef %params, ptr noundef %result_length, ptr noundef %cmd_result) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call = tail call fastcc i32 @ttusb_dec_send_command(ptr noundef %3, i8 noundef zeroext %command, i32 noundef %param_length, ptr noundef %params, ptr noundef %result_length, ptr noundef %cmd_result)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttusb_dec_process_urb_frame_list(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -15132
  %urb_frame_list_lock = getelementptr i8, ptr %t, i32 24
  %call329 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %urb_frame_list_lock) #11
  %urb_frame_list = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %urb_frame_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %urb_frame_list, align 4
  %cmp7.not30 = icmp eq ptr %1, %urb_frame_list
  br i1 %cmp7.not30, label %entry.if.else_crit_edge, label %if.then.lr.ph

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then.lr.ph:                                    ; preds = %entry
  %packet_state.i = getelementptr i8, ptr %t, i32 -6600
  %packet_length147.i = getelementptr i8, ptr %t, i32 -6596
  %packet_type150.i = getelementptr i8, ptr %t, i32 -6604
  %packet_payload_length154.i = getelementptr i8, ptr %t, i32 -6592
  %packet17.i.i = getelementptr i8, ptr %t, i32 -12752
  %next_packet_id.i.i = getelementptr i8, ptr %t, i32 -6588
  %filter_stream_count.i.i = getelementptr i8, ptr %t, i32 -6580
  %arrayidx.i101.i.i = getelementptr i8, ptr %t, i32 -12751
  %filter_info_list_lock.i.i.i = getelementptr i8, ptr %t, i32 84
  %filter_info_list.i.i.i = getelementptr i8, ptr %t, i32 76
  %arrayidx17.i.i.i = getelementptr i8, ptr %t, i32 -12750
  %pva_stream_count.i.i = getelementptr i8, ptr %t, i32 -6584
  %audio_filter.i.i.i = getelementptr i8, ptr %t, i32 68
  %a_pes2ts.i.i.i = getelementptr i8, ptr %t, i32 -6576
  %arrayidx176.i.i.i = getelementptr i8, ptr %t, i32 -12744
  %arrayidx178.i.i.i = getelementptr i8, ptr %t, i32 -12747
  %arrayidx3.i308.i.i.i = getelementptr i8, ptr %t, i32 -6575
  %cc.i311.i.i.i = getelementptr i8, ptr %t, i32 -6388
  %arrayidx11.i312.i.i.i = getelementptr i8, ptr %t, i32 -6573
  %add.ptr.i313.i.i.i = getelementptr i8, ptr %t, i32 -6572
  %cb.i314.i.i.i = getelementptr i8, ptr %t, i32 -6384
  %priv.i315.i.i.i = getelementptr i8, ptr %t, i32 -6380
  %arrayidx33.i338.i.i.i = getelementptr i8, ptr %t, i32 -6571
  %add.ptr37.i342.i.i.i = getelementptr i8, ptr %t, i32 -6570
  %video_filter.i.i.i = getelementptr i8, ptr %t, i32 72
  %v_pes_postbytes.i.i.i = getelementptr i8, ptr %t, i32 -12
  %v_pes.i.i.i = getelementptr i8, ptr %t, i32 -6176
  %v_pes_length.i.i.i = getelementptr i8, ptr %t, i32 -16
  %arrayidx26.i.i.i = getelementptr i8, ptr %t, i32 -12740
  %v_pes2ts.i.i.i = getelementptr i8, ptr %t, i32 -6376
  %arrayidx3.i.i.i.i = getelementptr i8, ptr %t, i32 -6375
  %cc.i.i.i.i = getelementptr i8, ptr %t, i32 -6188
  %arrayidx11.i.i.i.i = getelementptr i8, ptr %t, i32 -6373
  %add.ptr.i.i.i.i = getelementptr i8, ptr %t, i32 -6372
  %cb.i.i.i.i = getelementptr i8, ptr %t, i32 -6184
  %priv.i.i.i.i = getelementptr i8, ptr %t, i32 -6180
  %arrayidx33.i.i.i.i = getelementptr i8, ptr %t, i32 -6371
  %add.ptr37.i.i.i.i = getelementptr i8, ptr %t, i32 -6370
  %arrayidx101.i.i.i = getelementptr i8, ptr %t, i32 -6169
  %arrayidx39.i.i.i = getelementptr i8, ptr %t, i32 -6168
  %arrayidx46.i.i.i = getelementptr i8, ptr %t, i32 -6167
  %arrayidx50.i.i.i = getelementptr i8, ptr %t, i32 -12743
  %arrayidx57.i.i.i = getelementptr i8, ptr %t, i32 -6166
  %arrayidx63.i.i.i = getelementptr i8, ptr %t, i32 -12742
  %arrayidx70.i.i.i = getelementptr i8, ptr %t, i32 -6165
  %arrayidx75.i.i.i = getelementptr i8, ptr %t, i32 -12741
  %arrayidx82.i.i.i = getelementptr i8, ptr %t, i32 -6164
  %arrayidx90.i.i.i = getelementptr i8, ptr %t, i32 -6163
  %arrayidx92.i.i.i = getelementptr i8, ptr %t, i32 -6162
  %arrayidx147.i.i.i = getelementptr i8, ptr %t, i32 -6170
  %arrayidx154.i.i.i = getelementptr i8, ptr %t, i32 -6172
  %arrayidx111.i = getelementptr i8, ptr %t, i32 -12749
  %arrayidx116.i = getelementptr i8, ptr %t, i32 -12748
  %arrayidx92.i = getelementptr i8, ptr %t, i32 -12746
  %arrayidx95.i = getelementptr i8, ptr %t, i32 -12745
  br label %if.then

if.then:                                          ; preds = %ttusb_dec_process_urb_frame.exit.if.then_crit_edge, %if.then.lr.ph
  %2 = phi ptr [ %1, %if.then.lr.ph ], [ %296, %ttusb_dec_process_urb_frame.exit.if.then_crit_edge ]
  %call331 = phi i32 [ %call329, %if.then.lr.ph ], [ %call3, %ttusb_dec_process_urb_frame.exit.if.then_crit_edge ]
  %add.ptr11 = getelementptr i8, ptr %2, i32 -900
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %urb_frame_list_lock, i32 noundef %call331) #11
  %length = getelementptr i8, ptr %2, i32 -4
  %11 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length, align 4
  %rem.i.i = srem i32 %12, 2
  %sub.i.i = sub i32 %12, %rem.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool.not11.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not11.i.i, label %list_del.exit.swap_bytes.exit.i_crit_edge, label %list_del.exit.do.body.i.i_crit_edge

list_del.exit.do.body.i.i_crit_edge:              ; preds = %list_del.exit
  br label %do.body.i.i

list_del.exit.swap_bytes.exit.i_crit_edge:        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %swap_bytes.exit.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %list_del.exit.do.body.i.i_crit_edge
  %b.addr.013.i.i = phi ptr [ %add.ptr2.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %add.ptr11, %list_del.exit.do.body.i.i_crit_edge ]
  %length.addr.012.i.i = phi i32 [ %sub3.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %sub.i.i, %list_del.exit.do.body.i.i_crit_edge ]
  %13 = ptrtoint ptr %b.addr.013.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %b.addr.013.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %b.addr.013.i.i, i32 1
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr.i.i, align 1
  store i8 %16, ptr %b.addr.013.i.i, align 1
  store i8 %14, ptr %add.ptr.i.i, align 1
  %add.ptr2.i.i = getelementptr i8, ptr %b.addr.013.i.i, i32 2
  %sub3.i.i = add i32 %length.addr.012.i.i, -2
  %tobool.not.i.i = icmp eq i32 %sub3.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.swap_bytes.exit.i_crit_edge, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

do.body.i.i.swap_bytes.exit.i_crit_edge:          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %swap_bytes.exit.i

swap_bytes.exit.i:                                ; preds = %do.body.i.i.swap_bytes.exit.i_crit_edge, %list_del.exit.swap_bytes.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not260.i = icmp eq i32 %12, 0
  br i1 %tobool.not260.i, label %swap_bytes.exit.i.ttusb_dec_process_urb_frame.exit_crit_edge, label %swap_bytes.exit.i.while.body.i_crit_edge

swap_bytes.exit.i.while.body.i_crit_edge:         ; preds = %swap_bytes.exit.i
  br label %while.body.i

swap_bytes.exit.i.ttusb_dec_process_urb_frame.exit_crit_edge: ; preds = %swap_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_process_urb_frame.exit

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %swap_bytes.exit.i.while.body.i_crit_edge
  %b.addr.0262.i = phi ptr [ %b.addr.2.i, %sw.epilog.i.while.body.i_crit_edge ], [ %add.ptr11, %swap_bytes.exit.i.while.body.i_crit_edge ]
  %length.addr.0261.i = phi i32 [ %length.addr.2.i, %sw.epilog.i.while.body.i_crit_edge ], [ %12, %swap_bytes.exit.i.while.body.i_crit_edge ]
  %17 = ptrtoint ptr %packet_state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %packet_state.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %18, label %do.end169.i [
    i32 0, label %while.body.i.sw.bb.i_crit_edge
    i32 1, label %while.body.i.sw.bb.i_crit_edge57
    i32 2, label %while.body.i.sw.bb.i_crit_edge58
    i32 3, label %sw.bb5.i
    i32 4, label %sw.bb22.i
    i32 5, label %sw.bb75.i
    i32 6, label %sw.bb123.i
    i32 7, label %sw.bb144.i
  ]

while.body.i.sw.bb.i_crit_edge58:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

while.body.i.sw.bb.i_crit_edge57:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

while.body.i.sw.bb.i_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %while.body.i.sw.bb.i_crit_edge, %while.body.i.sw.bb.i_crit_edge57, %while.body.i.sw.bb.i_crit_edge58
  %incdec.ptr.i = getelementptr i8, ptr %b.addr.0262.i, i32 1
  %20 = ptrtoint ptr %b.addr.0262.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %b.addr.0262.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %21)
  %cmp.i = icmp eq i8 %21, -86
  %inc.i = add nuw nsw i32 %18, 1
  %spec.select257.i = select i1 %cmp.i, i32 %inc.i, i32 0
  %22 = ptrtoint ptr %packet_state.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select257.i, ptr %packet_state.i, align 4
  %dec4.i = add i32 %length.addr.0261.i, -1
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %while.body.i
  %23 = ptrtoint ptr %b.addr.0262.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b.addr.0262.i, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.184)
  switch i8 %24, label %if.then16.i [
    i8 0, label %if.then9.i
    i8 -86, label %sw.bb5.i.if.end19.i_crit_edge
  ]

sw.bb5.i.if.end19.i_crit_edge:                    ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then9.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %packet_state.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %packet_state.i, align 4
  %27 = ptrtoint ptr %packet_length147.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %packet_length147.i, align 8
  br label %if.end19.i

if.then16.i:                                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %packet_state.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %packet_state.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %if.then9.i, %sw.bb5.i.if.end19.i_crit_edge
  %incdec.ptr20.i = getelementptr i8, ptr %b.addr.0262.i, i32 1
  %dec21.i = add i32 %length.addr.0261.i, -1
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %while.body.i
  %incdec.ptr23.i = getelementptr i8, ptr %b.addr.0262.i, i32 1
  %29 = ptrtoint ptr %b.addr.0262.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %b.addr.0262.i, align 1
  %31 = ptrtoint ptr %packet_length147.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %packet_length147.i, align 8
  %inc25.i = add i32 %32, 1
  store i32 %inc25.i, ptr %packet_length147.i, align 8
  %arrayidx.i = getelementptr %struct.ttusb_dec, ptr %add.ptr, i32 0, i32 27, i32 %32
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %30, ptr %arrayidx.i, align 1
  %34 = load i32, ptr %packet_length147.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp27.i = icmp eq i32 %34, 2
  br i1 %cmp27.i, label %if.then29.i, label %sw.bb22.i.if.end73.i_crit_edge

sw.bb22.i.if.end73.i_crit_edge:                   ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73.i

if.then29.i:                                      ; preds = %sw.bb22.i
  %35 = ptrtoint ptr %packet17.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %packet17.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %36)
  %cmp33.i = icmp eq i8 %36, 65
  br i1 %cmp33.i, label %land.lhs.true.i, label %if.else43.i

land.lhs.true.i:                                  ; preds = %if.then29.i
  %37 = ptrtoint ptr %arrayidx.i101.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i101.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 86, i8 %38)
  %cmp38.i = icmp eq i8 %38, 86
  br i1 %cmp38.i, label %if.then40.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then40.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %packet_type150.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %packet_type150.i, align 8
  %40 = ptrtoint ptr %packet_state.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %packet_state.i, align 4
  %inc42.i = add i32 %41, 1
  br label %if.end73.sink.split.i

if.else43.i:                                      ; preds = %if.then29.i
  %conv46.i = zext i8 %36 to i32
  %42 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.185)
  switch i8 %36, label %if.else43.i.do.end.i_crit_edge [
    i8 83, label %if.then49.i
    i8 0, label %if.then59.i
  ]

if.else43.i.do.end.i_crit_edge:                   ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then49.i:                                      ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %packet_type150.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %packet_type150.i, align 8
  %44 = ptrtoint ptr %packet_state.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %packet_state.i, align 4
  %inc52.i = add i32 %45, 1
  br label %if.end73.sink.split.i

if.then59.i:                                      ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %packet_type150.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %packet_type150.i, align 8
  %47 = ptrtoint ptr %packet_payload_length154.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %packet_payload_length154.i, align 4
  br label %if.end73.sink.split.i

do.end.i:                                         ; preds = %if.else43.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge
  %conv46255.i = phi i32 [ %conv46.i, %if.else43.i.do.end.i_crit_edge ], [ 65, %land.lhs.true.i.do.end.i_crit_edge ]
  %48 = ptrtoint ptr %arrayidx.i101.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i101.i.i, align 1
  %conv68.i = zext i8 %49 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.147, i32 noundef %conv46255.i, i32 noundef %conv68.i) #14
  br label %if.end73.sink.split.i

if.end73.sink.split.i:                            ; preds = %do.end.i, %if.then59.i, %if.then49.i, %if.then40.i
  %inc42.sink.i = phi i32 [ %inc42.i, %if.then40.i ], [ 7, %if.then59.i ], [ 0, %do.end.i ], [ %inc52.i, %if.then49.i ]
  %50 = ptrtoint ptr %packet_state.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %inc42.sink.i, ptr %packet_state.i, align 4
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.end73.sink.split.i, %sw.bb22.i.if.end73.i_crit_edge
  %dec74.i = add i32 %length.addr.0261.i, -1
  br label %sw.epilog.i

sw.bb75.i:                                        ; preds = %while.body.i
  %incdec.ptr76.i = getelementptr i8, ptr %b.addr.0262.i, i32 1
  %51 = ptrtoint ptr %b.addr.0262.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %b.addr.0262.i, align 1
  %53 = ptrtoint ptr %packet_length147.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %packet_length147.i, align 8
  %inc79.i = add i32 %54, 1
  store i32 %inc79.i, ptr %packet_length147.i, align 8
  %arrayidx80.i = getelementptr %struct.ttusb_dec, ptr %add.ptr, i32 0, i32 27, i32 %54
  %55 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %52, ptr %arrayidx80.i, align 1
  %56 = ptrtoint ptr %packet_type150.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %packet_type150.i, align 8
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %57, label %sw.bb75.i.if.end121.i_crit_edge [
    i32 0, label %land.lhs.true84.i
    i32 1, label %land.lhs.true103.i
  ]

sw.bb75.i.if.end121.i_crit_edge:                  ; preds = %sw.bb75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121.i

land.lhs.true84.i:                                ; preds = %sw.bb75.i
  %59 = ptrtoint ptr %packet_length147.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %packet_length147.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %60)
  %cmp86.i = icmp eq i32 %60, 8
  br i1 %cmp86.i, label %if.then88.i, label %land.lhs.true84.i.if.end121.i_crit_edge

land.lhs.true84.i.if.end121.i_crit_edge:          ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121.i

if.then88.i:                                      ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %packet_state.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %packet_state.i, align 4
  %inc90.i = add i32 %62, 1
  store i32 %inc90.i, ptr %packet_state.i, align 4
  %63 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx92.i, align 2
  %conv93.i = zext i8 %64 to i32
  %shl.i = shl nuw nsw i32 %conv93.i, 8
  %add.i = or i32 %shl.i, 8
  %65 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx95.i, align 1
  %conv96.i = zext i8 %66 to i32
  %add97.i = add nuw nsw i32 %add.i, %conv96.i
  br label %if.end121.sink.split.i

land.lhs.true103.i:                               ; preds = %sw.bb75.i
  %67 = ptrtoint ptr %packet_length147.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %packet_length147.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %68)
  %cmp105.i = icmp eq i32 %68, 5
  br i1 %cmp105.i, label %if.then107.i, label %land.lhs.true103.i.if.end121.i_crit_edge

land.lhs.true103.i.if.end121.i_crit_edge:         ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121.i

if.then107.i:                                     ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %packet_state.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %packet_state.i, align 4
  %inc109.i = add i32 %70, 1
  store i32 %inc109.i, ptr %packet_state.i, align 4
  %71 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx111.i, align 1
  %73 = and i8 %72, 15
  %and.i = zext i8 %73 to i32
  %shl113.i = shl nuw nsw i32 %and.i, 8
  %74 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx116.i, align 4
  %conv117.i = zext i8 %75 to i32
  %add114.i = add nuw nsw i32 %conv117.i, 5
  %add118.i = add nuw nsw i32 %add114.i, %shl113.i
  br label %if.end121.sink.split.i

if.end121.sink.split.i:                           ; preds = %if.then107.i, %if.then88.i
  %add118.sink.i = phi i32 [ %add118.i, %if.then107.i ], [ %add97.i, %if.then88.i ]
  %76 = ptrtoint ptr %packet_payload_length154.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add118.sink.i, ptr %packet_payload_length154.i, align 4
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.end121.sink.split.i, %land.lhs.true103.i.if.end121.i_crit_edge, %land.lhs.true84.i.if.end121.i_crit_edge, %sw.bb75.i.if.end121.i_crit_edge
  %dec122.i = add i32 %length.addr.0261.i, -1
  br label %sw.epilog.i

sw.bb123.i:                                       ; preds = %while.body.i
  %77 = ptrtoint ptr %packet_payload_length154.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %packet_payload_length154.i, align 4
  %79 = ptrtoint ptr %packet_length147.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %packet_length147.i, align 8
  %sub.i = sub i32 %78, %80
  call void @__sanitizer_cov_trace_cmp4(i32 %length.addr.0261.i, i32 %sub.i)
  %cmp126.not.i = icmp slt i32 %length.addr.0261.i, %sub.i
  br i1 %cmp126.not.i, label %sw.epilog.thread.i, label %if.then128.i

if.then128.i:                                     ; preds = %sw.bb123.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %packet17.i.i, i32 %80
  %81 = call ptr @memcpy(ptr %add.ptr.i, ptr %b.addr.0262.i, i32 %sub.i)
  %82 = ptrtoint ptr %packet_length147.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %packet_length147.i, align 8
  %add132.i = add i32 %83, %sub.i
  store i32 %add132.i, ptr %packet_length147.i, align 8
  %add.ptr133.i = getelementptr i8, ptr %b.addr.0262.i, i32 %sub.i
  %sub134.i = sub i32 %length.addr.0261.i, %sub.i
  %84 = ptrtoint ptr %packet_state.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %packet_state.i, align 4
  %inc136.i = add i32 %85, 1
  store i32 %inc136.i, ptr %packet_state.i, align 4
  br label %sw.epilog.i

sw.epilog.thread.i:                               ; preds = %sw.bb123.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx140.i = getelementptr %struct.ttusb_dec, ptr %add.ptr, i32 0, i32 27, i32 %80
  %86 = call ptr @memcpy(ptr %arrayidx140.i, ptr %b.addr.0262.i, i32 %length.addr.0261.i)
  %87 = ptrtoint ptr %packet_length147.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %packet_length147.i, align 8
  %add142.i = add i32 %88, %length.addr.0261.i
  store i32 %add142.i, ptr %packet_length147.i, align 8
  br label %ttusb_dec_process_urb_frame.exit

sw.bb144.i:                                       ; preds = %while.body.i
  %incdec.ptr145.i = getelementptr i8, ptr %b.addr.0262.i, i32 1
  %89 = ptrtoint ptr %b.addr.0262.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %b.addr.0262.i, align 1
  %91 = ptrtoint ptr %packet_length147.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %packet_length147.i, align 8
  %inc148.i = add i32 %92, 1
  store i32 %inc148.i, ptr %packet_length147.i, align 8
  %arrayidx149.i = getelementptr %struct.ttusb_dec, ptr %add.ptr, i32 0, i32 27, i32 %92
  %93 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %90, ptr %arrayidx149.i, align 1
  %94 = ptrtoint ptr %packet_type150.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %packet_type150.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %95)
  %cmp151.i = icmp eq i32 %95, 1
  br i1 %cmp151.i, label %land.lhs.true153.i, label %sw.bb144.i.if.end158.i_crit_edge

sw.bb144.i.if.end158.i_crit_edge:                 ; preds = %sw.bb144.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158.i

land.lhs.true153.i:                               ; preds = %sw.bb144.i
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %packet_payload_length154.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %packet_payload_length154.i, align 4
  %98 = and i32 %97, 1
  %99 = or i32 %98, 4
  br label %if.end158.i

if.end158.i:                                      ; preds = %land.lhs.true153.i, %sw.bb144.i.if.end158.i_crit_edge
  %tail.0.i = phi i32 [ 4, %sw.bb144.i.if.end158.i_crit_edge ], [ %99, %land.lhs.true153.i ]
  %100 = ptrtoint ptr %packet_length147.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %packet_length147.i, align 8
  %102 = ptrtoint ptr %packet_payload_length154.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %packet_payload_length154.i, align 4
  %add161.i = add i32 %103, %tail.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %add161.i)
  %cmp162.i = icmp eq i32 %101, %add161.i
  br i1 %cmp162.i, label %if.then164.i, label %if.end158.i.if.end166.i_crit_edge

if.end158.i.if.end166.i_crit_edge:                ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end166.i

if.then164.i:                                     ; preds = %if.end158.i
  %104 = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not.i252.i = icmp eq i32 %104, 0
  br i1 %tobool.not.i252.i, label %for.cond.preheader.i.i, label %do.end.i.i

for.cond.preheader.i.i:                           ; preds = %if.then164.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp108.i.i = icmp sgt i32 %101, 0
  br i1 %cmp108.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.if.end16.i.i_crit_edge

for.cond.preheader.i.i.if.end16.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.then164.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152) #14
  br label %ttusb_dec_process_packet.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.0110.i.i = phi i32 [ %add8.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %csum.0109.i.i = phi i16 [ %xor.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ttusb_dec, ptr %add.ptr, i32 0, i32 27, i32 %i.0110.i.i
  %105 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %106 to i16
  %shl.i.i = shl nuw i16 %conv.i.i, 8
  %add.i.i = or i32 %i.0110.i.i, 1
  %arrayidx3.i.i = getelementptr %struct.ttusb_dec, ptr %add.ptr, i32 0, i32 27, i32 %add.i.i
  %107 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %108 to i16
  %add5.i.i = or i16 %shl.i.i, %conv4.i.i
  %xor.i.i = xor i16 %add5.i.i, %csum.0109.i.i
  %add8.i.i = add i32 %i.0110.i.i, 2
  %cmp.i.i = icmp slt i32 %add8.i.i, %101
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor.i.i)
  %tobool9.not.i.i = icmp eq i16 %xor.i.i, 0
  br i1 %tobool9.not.i.i, label %for.end.i.i.if.end16.i.i_crit_edge, label %do.end13.i.i

for.end.i.i.if.end16.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i.i

do.end13.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call15.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.152) #14
  br label %ttusb_dec_process_packet.exit.i

if.end16.i.i:                                     ; preds = %for.end.i.i.if.end16.i.i_crit_edge, %for.cond.preheader.i.i.if.end16.i.i_crit_edge
  %sub.i253.i = add i32 %101, -4
  %arrayidx19.i.i = getelementptr %struct.ttusb_dec, ptr %add.ptr, i32 0, i32 27, i32 %sub.i253.i
  %109 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx19.i.i, align 1
  %conv20.i.i = zext i8 %110 to i32
  %shl21.i.i = shl nuw nsw i32 %conv20.i.i, 8
  %sub25.i.i = add i32 %101, -3
  %arrayidx26.i.i = getelementptr %struct.ttusb_dec, ptr %add.ptr, i32 0, i32 27, i32 %sub25.i.i
  %111 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx26.i.i, align 1
  %conv27.i.i = zext i8 %112 to i32
  %add29.i.i = or i32 %shl21.i.i, %conv27.i.i
  %113 = ptrtoint ptr %next_packet_id.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %next_packet_id.i.i, align 8
  %conv32.i.i = zext i16 %114 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add29.i.i, i32 %conv32.i.i)
  %cmp33.not.i.i = icmp eq i32 %add29.i.i, %conv32.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool37.not.i.i = icmp eq i16 %114, 0
  %or.cond.i.i = or i1 %tobool37.not.i.i, %cmp33.not.i.i
  br i1 %or.cond.i.i, label %if.end16.i.i.if.end48.i.i_crit_edge, label %do.end41.i.i

if.end16.i.i.if.end48.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.i.i

do.end41.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub45.i.i = add nsw i32 %conv32.i.i, -1
  %call47.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.152, i32 noundef %sub45.i.i, i32 noundef %add29.i.i) #14
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %do.end41.i.i, %if.end16.i.i.if.end48.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add29.i.i)
  %cmp50.i.i = icmp eq i32 %add29.i.i, 65535
  %115 = trunc i32 %add29.i.i to i16
  %conv56.i.i = add i16 %115, 1
  %storemerge.i.i = select i1 %cmp50.i.i, i16 -32768, i16 %conv56.i.i
  %116 = ptrtoint ptr %next_packet_id.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %storemerge.i.i, ptr %next_packet_id.i.i, align 8
  %117 = ptrtoint ptr %packet_type150.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %packet_type150.i, align 8
  %119 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %118, label %if.end48.i.i.ttusb_dec_process_packet.exit.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb63.i.i
  ]

if.end48.i.i.ttusb_dec_process_packet.exit.i_crit_edge: ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_process_packet.exit.i

sw.bb.i.i:                                        ; preds = %if.end48.i.i
  %120 = ptrtoint ptr %pva_stream_count.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %pva_stream_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool59.not.i.i = icmp eq i32 %121, 0
  br i1 %tobool59.not.i.i, label %sw.bb.i.i.ttusb_dec_process_packet.exit.i_crit_edge, label %if.then60.i.i

sw.bb.i.i.ttusb_dec_process_packet.exit.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_process_packet.exit.i

if.then60.i.i:                                    ; preds = %sw.bb.i.i
  %122 = ptrtoint ptr %packet_payload_length154.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %packet_payload_length154.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %123)
  %cmp.i.i.i = icmp slt i32 %123, 8
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then60.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.160) #14
  br label %ttusb_dec_process_packet.exit.i

if.end.i.i.i:                                     ; preds = %if.then60.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6152, i32 %123)
  %cmp1.i.i.i = icmp ugt i32 %123, 6152
  br i1 %cmp1.i.i.i, label %do.end4.i.i.i, label %if.end7.i.i.i

do.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.160) #14
  br label %ttusb_dec_process_packet.exit.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i
  %124 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx17.i.i.i, align 1
  %126 = zext i8 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.188)
  switch i8 %125, label %do.end183.i.i.i [
    i8 1, label %sw.bb.i.i.i
    i8 2, label %sw.bb166.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.end7.i.i.i
  %127 = ptrtoint ptr %arrayidx178.i.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx178.i.i.i, align 1
  %conv9.i.i.i = zext i8 %128 to i32
  %and.i.i.i = and i32 %conv9.i.i.i, 3
  %and12.i.i.i = lshr i32 %conv9.i.i.i, 2
  %129 = and i32 %and12.i.i.i, 3
  %130 = load i32, ptr @output_pva, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool.not.i.i.i = icmp eq i32 %130, 0
  br i1 %tobool.not.i.i.i, label %if.end18.i.i.i, label %if.then13.i.i.i

if.then13.i.i.i:                                  ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %131 = ptrtoint ptr %video_filter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %video_filter.i.i.i, align 4
  %feed.i.i.i = getelementptr inbounds %struct.dvb_demux_filter, ptr %132, i32 0, i32 5
  %133 = ptrtoint ptr %feed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %feed.i.i.i, align 4
  %cb.i.i.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cb.i.i.i, align 8
  %call17.i.i.i = tail call i32 %136(ptr noundef %packet17.i.i, i32 noundef %123, ptr noundef null, i32 noundef 0, ptr noundef %134, ptr noundef null) #11
  br label %ttusb_dec_process_packet.exit.i

if.end18.i.i.i:                                   ; preds = %sw.bb.i.i.i
  %137 = ptrtoint ptr %v_pes_postbytes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %v_pes_postbytes.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp19.i.i.i = icmp sgt i32 %138, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %and.i.i.i)
  %cmp22.i.i.i = icmp eq i32 %138, %and.i.i.i
  %or.cond.i.i.i = select i1 %cmp19.i.i.i, i1 %cmp22.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.then24.i.i.i, label %if.end18.i.i.i.if.end30.i.i.i_crit_edge

if.end18.i.i.i.if.end30.i.i.i_crit_edge:          ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i.i.i

if.then24.i.i.i:                                  ; preds = %if.end18.i.i.i
  %139 = ptrtoint ptr %v_pes_length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %v_pes_length.i.i.i, align 4
  %arrayidx25.i.i.i = getelementptr %struct.ttusb_dec, ptr %add.ptr, i32 0, i32 37, i32 %140
  %141 = call ptr @memcpy(ptr %arrayidx25.i.i.i, ptr %arrayidx26.i.i.i, i32 %and.i.i.i)
  %142 = load i32, ptr %v_pes_length.i.i.i, align 4
  %add.i.i.i = add i32 %142, %and.i.i.i
  %143 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx3.i.i.i.i, align 1
  %.sink.i.i.i.i = or i8 %144, 64
  store i8 %.sink.i.i.i.i, ptr %arrayidx3.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 183, i32 %add.i.i.i)
  %cmp4.i.i.i.i = icmp sgt i32 %add.i.i.i, 183
  br i1 %cmp4.i.i.i.i, label %if.then24.i.i.i.while.body.i.i.i.i_crit_edge, label %if.then24.i.i.i.while.end.i.i.i.i_crit_edge

if.then24.i.i.i.while.end.i.i.i.i_crit_edge:      ; preds = %if.then24.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i.i.i

if.then24.i.i.i.while.body.i.i.i.i_crit_edge:     ; preds = %if.then24.i.i.i
  br label %while.body.i.i.i.i

while.body.i.i.i.i:                               ; preds = %if.end14.i.i.i.i.while.body.i.i.i.i_crit_edge, %if.then24.i.i.i.while.body.i.i.i.i_crit_edge
  %len.addr.06.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.end14.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %add.i.i.i, %if.then24.i.i.i.while.body.i.i.i.i_crit_edge ]
  %pes.addr.05.i.i.i.i = phi ptr [ %add.ptr15.i.i.i.i, %if.end14.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %v_pes.i.i.i, %if.then24.i.i.i.while.body.i.i.i.i_crit_edge ]
  %145 = ptrtoint ptr %cc.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %cc.i.i.i.i, align 4
  %inc.i.i.i.i = add i8 %146, 1
  store i8 %inc.i.i.i.i, ptr %cc.i.i.i.i, align 4
  %147 = and i8 %146, 15
  %148 = or i8 %147, 16
  %149 = ptrtoint ptr %arrayidx11.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %arrayidx11.i.i.i.i, align 1
  %150 = call ptr @memcpy(ptr %add.ptr.i.i.i.i, ptr %pes.addr.05.i.i.i.i, i32 184)
  %151 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cb.i.i.i.i, align 4
  %153 = ptrtoint ptr %priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %priv.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %152(ptr noundef %154, ptr noundef %v_pes2ts.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool12.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool12.not.i.i.i.i, label %if.end14.i.i.i.i, label %while.body.i.i.i.i.if.end30.i.i.i_crit_edge

while.body.i.i.i.i.if.end30.i.i.i_crit_edge:      ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i.i.i

if.end14.i.i.i.i:                                 ; preds = %while.body.i.i.i.i
  %sub.i.i.i.i = add nsw i32 %len.addr.06.i.i.i.i, -184
  %add.ptr15.i.i.i.i = getelementptr i8, ptr %pes.addr.05.i.i.i.i, i32 184
  %155 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx3.i.i.i.i, align 1
  %157 = and i8 %156, -65
  store i8 %157, ptr %arrayidx3.i.i.i.i, align 1
  %cmp.i.i.i.i = icmp sgt i32 %len.addr.06.i.i.i.i, 367
  br i1 %cmp.i.i.i.i, label %if.end14.i.i.i.i.while.body.i.i.i.i_crit_edge, label %if.end14.i.i.i.i.while.end.i.i.i.i_crit_edge

if.end14.i.i.i.i.while.end.i.i.i.i_crit_edge:     ; preds = %if.end14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i.i.i

if.end14.i.i.i.i.while.body.i.i.i.i_crit_edge:    ; preds = %if.end14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i.i.i

while.end.i.i.i.i:                                ; preds = %if.end14.i.i.i.i.while.end.i.i.i.i_crit_edge, %if.then24.i.i.i.while.end.i.i.i.i_crit_edge
  %pes.addr.0.lcssa.i.i.i.i = phi ptr [ %v_pes.i.i.i, %if.then24.i.i.i.while.end.i.i.i.i_crit_edge ], [ %add.ptr15.i.i.i.i, %if.end14.i.i.i.i.while.end.i.i.i.i_crit_edge ]
  %len.addr.0.lcssa.i.i.i.i = phi i32 [ %add.i.i.i, %if.then24.i.i.i.while.end.i.i.i.i_crit_edge ], [ %sub.i.i.i.i, %if.end14.i.i.i.i.while.end.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.lcssa.i.i.i.i)
  %tobool20.not.i.i.i.i = icmp eq i32 %len.addr.0.lcssa.i.i.i.i, 0
  br i1 %tobool20.not.i.i.i.i, label %while.end.i.i.i.i.if.end30.i.i.i_crit_edge, label %if.end22.i.i.i.i

while.end.i.i.i.i.if.end30.i.i.i_crit_edge:       ; preds = %while.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i.i.i

if.end22.i.i.i.i:                                 ; preds = %while.end.i.i.i.i
  %158 = ptrtoint ptr %cc.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %cc.i.i.i.i, align 4
  %inc24.i.i.i.i = add i8 %159, 1
  store i8 %inc24.i.i.i.i, ptr %cc.i.i.i.i, align 4
  %160 = and i8 %159, 15
  %161 = or i8 %160, 48
  %162 = ptrtoint ptr %arrayidx11.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %arrayidx11.i.i.i.i, align 1
  %sub30.i.i.i.i = sub i32 183, %len.addr.0.lcssa.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 183, i32 %len.addr.0.lcssa.i.i.i.i)
  %tobool31.not.i.i.i.i = icmp eq i32 %len.addr.0.lcssa.i.i.i.i, 183
  br i1 %tobool31.not.i.i.i.i, label %if.end22.i.i.i.i.if.end40.i.i.i.i_crit_edge, label %if.then32.i.i.i.i

if.end22.i.i.i.i.if.end40.i.i.i.i_crit_edge:      ; preds = %if.end22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i.i.i.i

if.then32.i.i.i.i:                                ; preds = %if.end22.i.i.i.i
  %163 = ptrtoint ptr %arrayidx33.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %arrayidx33.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 182, i32 %len.addr.0.lcssa.i.i.i.i)
  %tobool35.not.i.i.i.i = icmp eq i32 %len.addr.0.lcssa.i.i.i.i, 182
  br i1 %tobool35.not.i.i.i.i, label %if.then32.i.i.i.i.if.end40.i.i.i.i_crit_edge, label %if.then36.i.i.i.i

if.then32.i.i.i.i.if.end40.i.i.i.i_crit_edge:     ; preds = %if.then32.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i.i.i.i

if.then36.i.i.i.i:                                ; preds = %if.then32.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub34.i.i.i.i = sub i32 182, %len.addr.0.lcssa.i.i.i.i
  %164 = call ptr @memset(ptr %add.ptr37.i.i.i.i, i32 255, i32 %sub34.i.i.i.i)
  br label %if.end40.i.i.i.i

if.end40.i.i.i.i:                                 ; preds = %if.then36.i.i.i.i, %if.then32.i.i.i.i.if.end40.i.i.i.i_crit_edge, %if.end22.i.i.i.i.if.end40.i.i.i.i_crit_edge
  %conv41.i.i.i.i = trunc i32 %sub30.i.i.i.i to i8
  %165 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv41.i.i.i.i, ptr %add.ptr.i.i.i.i, align 1
  %add.ptr44.i.i.i.i = getelementptr i8, ptr %arrayidx33.i.i.i.i, i32 %sub30.i.i.i.i
  %166 = call ptr @memcpy(ptr %add.ptr44.i.i.i.i, ptr %pes.addr.0.lcssa.i.i.i.i, i32 %len.addr.0.lcssa.i.i.i.i)
  %167 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %cb.i.i.i.i, align 4
  %169 = ptrtoint ptr %priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %priv.i.i.i.i, align 4
  %call47.i.i.i.i = tail call i32 %168(ptr noundef %170, ptr noundef %v_pes2ts.i.i.i) #11
  br label %if.end30.i.i.i

if.end30.i.i.i:                                   ; preds = %if.end40.i.i.i.i, %while.end.i.i.i.i.if.end30.i.i.i_crit_edge, %while.body.i.i.i.i.if.end30.i.i.i_crit_edge, %if.end18.i.i.i.if.end30.i.i.i_crit_edge
  %171 = ptrtoint ptr %arrayidx178.i.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx178.i.i.i, align 1
  %173 = and i8 %172, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool34.not.i.i.i = icmp eq i8 %173, 0
  br i1 %tobool34.not.i.i.i, label %if.else.i.i.i, label %if.then35.i.i.i

if.then35.i.i.i:                                  ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %174 = ptrtoint ptr %arrayidx101.i.i.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 -128, ptr %arrayidx101.i.i.i, align 1
  %175 = ptrtoint ptr %arrayidx39.i.i.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 5, ptr %arrayidx39.i.i.i, align 4
  %176 = ptrtoint ptr %arrayidx176.i.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx176.i.i.i, align 1
  %178 = lshr i8 %177, 5
  %179 = or i8 %178, 33
  %180 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %arrayidx46.i.i.i, align 1
  %181 = ptrtoint ptr %arrayidx50.i.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx50.i.i.i, align 1
  %or54260.i.i.i = tail call i8 @llvm.fshl.i8(i8 %177, i8 %182, i8 2) #11
  %183 = ptrtoint ptr %arrayidx57.i.i.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %or54260.i.i.i, ptr %arrayidx57.i.i.i, align 2
  %184 = ptrtoint ptr %arrayidx63.i.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx63.i.i.i, align 1
  %186 = tail call i8 @llvm.fshl.i8(i8 %182, i8 %185, i8 2) #11
  %or67261.i.i.i = or i8 %186, 1
  %187 = ptrtoint ptr %arrayidx70.i.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %or67261.i.i.i, ptr %arrayidx70.i.i.i, align 1
  %188 = ptrtoint ptr %arrayidx75.i.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx75.i.i.i, align 1
  %or79262.i.i.i = tail call i8 @llvm.fshl.i8(i8 %185, i8 %189, i8 1) #11
  %190 = ptrtoint ptr %arrayidx82.i.i.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %or79262.i.i.i, ptr %arrayidx82.i.i.i, align 4
  %191 = shl i8 %189, 1
  %192 = or i8 %191, 1
  %193 = ptrtoint ptr %arrayidx90.i.i.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %192, ptr %arrayidx90.i.i.i, align 1
  %add93.i.i.i = or i32 %and.i.i.i, 12
  %arrayidx94.i.i.i = getelementptr i8, ptr %packet17.i.i, i32 %add93.i.i.i
  %sub.i.i.i = add i32 %123, -12
  %sub95.i.i.i = sub i32 %sub.i.i.i, %and.i.i.i
  %194 = call ptr @memcpy(ptr %arrayidx92.i.i.i, ptr %arrayidx94.i.i.i, i32 %sub95.i.i.i)
  %sub97.i.i.i = add i32 %123, 2
  %sub98.i.i.i = sub i32 %sub97.i.i.i, %and.i.i.i
  br label %if.end111.i.i.i

if.else.i.i.i:                                    ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %195 = ptrtoint ptr %arrayidx101.i.i.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %arrayidx101.i.i.i, align 1
  %196 = ptrtoint ptr %arrayidx39.i.i.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 0, ptr %arrayidx39.i.i.i, align 4
  %sub107.i.i.i = add i32 %123, -8
  %197 = call ptr @memcpy(ptr %arrayidx46.i.i.i, ptr %arrayidx176.i.i.i, i32 %sub107.i.i.i)
  %sub109.i.i.i = add i32 %123, 1
  br label %if.end111.i.i.i

if.end111.i.i.i:                                  ; preds = %if.else.i.i.i, %if.then35.i.i.i
  %sub98.sink.i.i.i = phi i32 [ %sub109.i.i.i, %if.else.i.i.i ], [ %sub98.i.i.i, %if.then35.i.i.i ]
  %198 = ptrtoint ptr %v_pes_length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %sub98.sink.i.i.i, ptr %v_pes_length.i.i.i, align 4
  %199 = ptrtoint ptr %v_pes_postbytes.i.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %129, ptr %v_pes_postbytes.i.i.i, align 8
  %200 = ptrtoint ptr %arrayidx39.i.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx39.i.i.i, align 4
  %conv116.i.i.i = zext i8 %201 to i32
  %add117.i.i.i = add nuw nsw i32 %conv116.i.i.i, 9
  %arrayidx118.i.i.i = getelementptr %struct.ttusb_dec, ptr %add.ptr, i32 0, i32 37, i32 %add117.i.i.i
  %202 = ptrtoint ptr %arrayidx118.i.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx118.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %cmp120.i.i.i = icmp eq i8 %203, 0
  br i1 %cmp120.i.i.i, label %land.lhs.true122.i.i.i, label %if.end111.i.i.i.if.else145.i.i.i_crit_edge

if.end111.i.i.i.if.else145.i.i.i_crit_edge:       ; preds = %if.end111.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else145.i.i.i

land.lhs.true122.i.i.i:                           ; preds = %if.end111.i.i.i
  %add127.i.i.i = add nuw nsw i32 %conv116.i.i.i, 10
  %arrayidx128.i.i.i = getelementptr %struct.ttusb_dec, ptr %add.ptr, i32 0, i32 37, i32 %add127.i.i.i
  %204 = ptrtoint ptr %arrayidx128.i.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx128.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %cmp130.i.i.i = icmp eq i8 %205, 0
  br i1 %cmp130.i.i.i, label %land.lhs.true132.i.i.i, label %land.lhs.true122.i.i.i.if.else145.i.i.i_crit_edge

land.lhs.true122.i.i.i.if.else145.i.i.i_crit_edge: ; preds = %land.lhs.true122.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else145.i.i.i

land.lhs.true132.i.i.i:                           ; preds = %land.lhs.true122.i.i.i
  %add137.i.i.i = add nuw nsw i32 %conv116.i.i.i, 11
  %arrayidx138.i.i.i = getelementptr %struct.ttusb_dec, ptr %add.ptr, i32 0, i32 37, i32 %add137.i.i.i
  %206 = ptrtoint ptr %arrayidx138.i.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx138.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %207)
  %cmp140.i.i.i = icmp eq i8 %207, 1
  br i1 %cmp140.i.i.i, label %land.lhs.true132.i.i.i.if.end148.i.i.i_crit_edge, label %land.lhs.true132.i.i.i.if.else145.i.i.i_crit_edge

land.lhs.true132.i.i.i.if.else145.i.i.i_crit_edge: ; preds = %land.lhs.true132.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else145.i.i.i

land.lhs.true132.i.i.i.if.end148.i.i.i_crit_edge: ; preds = %land.lhs.true132.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148.i.i.i

if.else145.i.i.i:                                 ; preds = %land.lhs.true132.i.i.i.if.else145.i.i.i_crit_edge, %land.lhs.true122.i.i.i.if.else145.i.i.i_crit_edge, %if.end111.i.i.i.if.else145.i.i.i_crit_edge
  br label %if.end148.i.i.i

if.end148.i.i.i:                                  ; preds = %if.else145.i.i.i, %land.lhs.true132.i.i.i.if.end148.i.i.i_crit_edge
  %.sink.i.i.i = phi i8 [ -128, %if.else145.i.i.i ], [ -124, %land.lhs.true132.i.i.i.if.end148.i.i.i_crit_edge ]
  %208 = ptrtoint ptr %arrayidx147.i.i.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %.sink.i.i.i, ptr %arrayidx147.i.i.i, align 2
  %sub150.i.i.i = add nuw nsw i32 %129, 65530
  %add151.i.i.i = add i32 %sub150.i.i.i, %sub98.sink.i.i.i
  %conv152.i.i.i = trunc i32 %add151.i.i.i to i16
  %209 = ptrtoint ptr %arrayidx154.i.i.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %conv152.i.i.i, ptr %arrayidx154.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp155.i.i.i = icmp eq i32 %129, 0
  br i1 %cmp155.i.i.i, label %if.then157.i.i.i, label %if.end148.i.i.i.ttusb_dec_process_packet.exit.i_crit_edge

if.end148.i.i.i.ttusb_dec_process_packet.exit.i_crit_edge: ; preds = %if.end148.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_process_packet.exit.i

if.then157.i.i.i:                                 ; preds = %if.end148.i.i.i
  %210 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx3.i.i.i.i, align 1
  %.sink.i264.i.i.i = or i8 %211, 64
  store i8 %.sink.i264.i.i.i, ptr %arrayidx3.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 183, i32 %sub98.sink.i.i.i)
  %cmp4.i265.i.i.i = icmp sgt i32 %sub98.sink.i.i.i, 183
  br i1 %cmp4.i265.i.i.i, label %if.then157.i.i.i.while.body.i278.i.i.i_crit_edge, label %if.then157.i.i.i.while.end.i286.i.i.i_crit_edge

if.then157.i.i.i.while.end.i286.i.i.i_crit_edge:  ; preds = %if.then157.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i286.i.i.i

if.then157.i.i.i.while.body.i278.i.i.i_crit_edge: ; preds = %if.then157.i.i.i
  br label %while.body.i278.i.i.i

while.body.i278.i.i.i:                            ; preds = %if.end14.i282.i.i.i.while.body.i278.i.i.i_crit_edge, %if.then157.i.i.i.while.body.i278.i.i.i_crit_edge
  %len.addr.06.i273.i.i.i = phi i32 [ %sub.i279.i.i.i, %if.end14.i282.i.i.i.while.body.i278.i.i.i_crit_edge ], [ %sub98.sink.i.i.i, %if.then157.i.i.i.while.body.i278.i.i.i_crit_edge ]
  %pes.addr.05.i274.i.i.i = phi ptr [ %add.ptr15.i280.i.i.i, %if.end14.i282.i.i.i.while.body.i278.i.i.i_crit_edge ], [ %v_pes.i.i.i, %if.then157.i.i.i.while.body.i278.i.i.i_crit_edge ]
  %212 = ptrtoint ptr %cc.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %cc.i.i.i.i, align 4
  %inc.i275.i.i.i = add i8 %213, 1
  store i8 %inc.i275.i.i.i, ptr %cc.i.i.i.i, align 4
  %214 = and i8 %213, 15
  %215 = or i8 %214, 16
  %216 = ptrtoint ptr %arrayidx11.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %215, ptr %arrayidx11.i.i.i.i, align 1
  %217 = call ptr @memcpy(ptr %add.ptr.i.i.i.i, ptr %pes.addr.05.i274.i.i.i, i32 184)
  %218 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %cb.i.i.i.i, align 4
  %220 = ptrtoint ptr %priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %priv.i.i.i.i, align 4
  %call.i276.i.i.i = tail call i32 %219(ptr noundef %221, ptr noundef %v_pes2ts.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276.i.i.i)
  %tobool12.not.i277.i.i.i = icmp eq i32 %call.i276.i.i.i, 0
  br i1 %tobool12.not.i277.i.i.i, label %if.end14.i282.i.i.i, label %while.body.i278.i.i.i.ttusb_dec_process_packet.exit.i_crit_edge

while.body.i278.i.i.i.ttusb_dec_process_packet.exit.i_crit_edge: ; preds = %while.body.i278.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_process_packet.exit.i

if.end14.i282.i.i.i:                              ; preds = %while.body.i278.i.i.i
  %sub.i279.i.i.i = add nsw i32 %len.addr.06.i273.i.i.i, -184
  %add.ptr15.i280.i.i.i = getelementptr i8, ptr %pes.addr.05.i274.i.i.i, i32 184
  %222 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx3.i.i.i.i, align 1
  %224 = and i8 %223, -65
  store i8 %224, ptr %arrayidx3.i.i.i.i, align 1
  %cmp.i281.i.i.i = icmp sgt i32 %len.addr.06.i273.i.i.i, 367
  br i1 %cmp.i281.i.i.i, label %if.end14.i282.i.i.i.while.body.i278.i.i.i_crit_edge, label %if.end14.i282.i.i.i.while.end.i286.i.i.i_crit_edge

if.end14.i282.i.i.i.while.end.i286.i.i.i_crit_edge: ; preds = %if.end14.i282.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i286.i.i.i

if.end14.i282.i.i.i.while.body.i278.i.i.i_crit_edge: ; preds = %if.end14.i282.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i278.i.i.i

while.end.i286.i.i.i:                             ; preds = %if.end14.i282.i.i.i.while.end.i286.i.i.i_crit_edge, %if.then157.i.i.i.while.end.i286.i.i.i_crit_edge
  %pes.addr.0.lcssa.i283.i.i.i = phi ptr [ %v_pes.i.i.i, %if.then157.i.i.i.while.end.i286.i.i.i_crit_edge ], [ %add.ptr15.i280.i.i.i, %if.end14.i282.i.i.i.while.end.i286.i.i.i_crit_edge ]
  %len.addr.0.lcssa.i284.i.i.i = phi i32 [ %sub98.sink.i.i.i, %if.then157.i.i.i.while.end.i286.i.i.i_crit_edge ], [ %sub.i279.i.i.i, %if.end14.i282.i.i.i.while.end.i286.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.lcssa.i284.i.i.i)
  %tobool20.not.i285.i.i.i = icmp eq i32 %len.addr.0.lcssa.i284.i.i.i, 0
  br i1 %tobool20.not.i285.i.i.i, label %while.end.i286.i.i.i.ttusb_dec_process_packet.exit.i_crit_edge, label %if.end22.i292.i.i.i

while.end.i286.i.i.i.ttusb_dec_process_packet.exit.i_crit_edge: ; preds = %while.end.i286.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_process_packet.exit.i

if.end22.i292.i.i.i:                              ; preds = %while.end.i286.i.i.i
  %225 = ptrtoint ptr %cc.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %cc.i.i.i.i, align 4
  %inc24.i288.i.i.i = add i8 %226, 1
  store i8 %inc24.i288.i.i.i, ptr %cc.i.i.i.i, align 4
  %227 = and i8 %226, 15
  %228 = or i8 %227, 48
  %229 = ptrtoint ptr %arrayidx11.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %228, ptr %arrayidx11.i.i.i.i, align 1
  %sub30.i290.i.i.i = sub i32 183, %len.addr.0.lcssa.i284.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 183, i32 %len.addr.0.lcssa.i284.i.i.i)
  %tobool31.not.i291.i.i.i = icmp eq i32 %len.addr.0.lcssa.i284.i.i.i, 183
  br i1 %tobool31.not.i291.i.i.i, label %if.end22.i292.i.i.i.if.end40.i306.i.i.i_crit_edge, label %if.then32.i295.i.i.i

if.end22.i292.i.i.i.if.end40.i306.i.i.i_crit_edge: ; preds = %if.end22.i292.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i306.i.i.i

if.then32.i295.i.i.i:                             ; preds = %if.end22.i292.i.i.i
  %230 = ptrtoint ptr %arrayidx33.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 0, ptr %arrayidx33.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 182, i32 %len.addr.0.lcssa.i284.i.i.i)
  %tobool35.not.i294.i.i.i = icmp eq i32 %len.addr.0.lcssa.i284.i.i.i, 182
  br i1 %tobool35.not.i294.i.i.i, label %if.then32.i295.i.i.i.if.end40.i306.i.i.i_crit_edge, label %if.then36.i298.i.i.i

if.then32.i295.i.i.i.if.end40.i306.i.i.i_crit_edge: ; preds = %if.then32.i295.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i306.i.i.i

if.then36.i298.i.i.i:                             ; preds = %if.then32.i295.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub34.i296.i.i.i = sub i32 182, %len.addr.0.lcssa.i284.i.i.i
  %231 = call ptr @memset(ptr %add.ptr37.i.i.i.i, i32 255, i32 %sub34.i296.i.i.i)
  br label %if.end40.i306.i.i.i

if.end40.i306.i.i.i:                              ; preds = %if.then36.i298.i.i.i, %if.then32.i295.i.i.i.if.end40.i306.i.i.i_crit_edge, %if.end22.i292.i.i.i.if.end40.i306.i.i.i_crit_edge
  %conv41.i299.i.i.i = trunc i32 %sub30.i290.i.i.i to i8
  %232 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %conv41.i299.i.i.i, ptr %add.ptr.i.i.i.i, align 1
  %add.ptr44.i302.i.i.i = getelementptr i8, ptr %arrayidx33.i.i.i.i, i32 %sub30.i290.i.i.i
  %233 = call ptr @memcpy(ptr %add.ptr44.i302.i.i.i, ptr %pes.addr.0.lcssa.i283.i.i.i, i32 %len.addr.0.lcssa.i284.i.i.i)
  %234 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %cb.i.i.i.i, align 4
  %236 = ptrtoint ptr %priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %priv.i.i.i.i, align 4
  %call47.i305.i.i.i = tail call i32 %235(ptr noundef %237, ptr noundef %v_pes2ts.i.i.i) #11
  br label %ttusb_dec_process_packet.exit.i

sw.bb166.i.i.i:                                   ; preds = %if.end7.i.i.i
  %238 = load i32, ptr @output_pva, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool167.not.i.i.i = icmp eq i32 %238, 0
  br i1 %tobool167.not.i.i.i, label %if.end175.i.i.i, label %if.then168.i.i.i

if.then168.i.i.i:                                 ; preds = %sw.bb166.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %239 = ptrtoint ptr %audio_filter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %audio_filter.i.i.i, align 8
  %feed169.i.i.i = getelementptr inbounds %struct.dvb_demux_filter, ptr %240, i32 0, i32 5
  %241 = ptrtoint ptr %feed169.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %feed169.i.i.i, align 4
  %cb170.i.i.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %cb170.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %cb170.i.i.i, align 8
  %call174.i.i.i = tail call i32 %244(ptr noundef %packet17.i.i, i32 noundef %123, ptr noundef null, i32 noundef 0, ptr noundef %242, ptr noundef null) #11
  br label %ttusb_dec_process_packet.exit.i

if.end175.i.i.i:                                  ; preds = %sw.bb166.i.i.i
  %sub177.i.i.i = add nsw i32 %123, -8
  %245 = ptrtoint ptr %arrayidx178.i.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx178.i.i.i, align 1
  %247 = ptrtoint ptr %arrayidx3.i308.i.i.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %arrayidx3.i308.i.i.i, align 1
  %249 = and i8 %248, -65
  %250 = shl i8 %246, 2
  %251 = and i8 %250, 64
  %.sink.i309.i.i.i = or i8 %249, %251
  store i8 %.sink.i309.i.i.i, ptr %arrayidx3.i308.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 183, i32 %sub177.i.i.i)
  %cmp4.i310.i.i.i = icmp ugt i32 %sub177.i.i.i, 183
  br i1 %cmp4.i310.i.i.i, label %if.end175.i.i.i.while.body.i323.i.i.i_crit_edge, label %if.end175.i.i.i.while.end.i331.i.i.i_crit_edge

if.end175.i.i.i.while.end.i331.i.i.i_crit_edge:   ; preds = %if.end175.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i331.i.i.i

if.end175.i.i.i.while.body.i323.i.i.i_crit_edge:  ; preds = %if.end175.i.i.i
  br label %while.body.i323.i.i.i

while.body.i323.i.i.i:                            ; preds = %if.end14.i327.i.i.i.while.body.i323.i.i.i_crit_edge, %if.end175.i.i.i.while.body.i323.i.i.i_crit_edge
  %len.addr.06.i318.i.i.i = phi i32 [ %sub.i324.i.i.i, %if.end14.i327.i.i.i.while.body.i323.i.i.i_crit_edge ], [ %sub177.i.i.i, %if.end175.i.i.i.while.body.i323.i.i.i_crit_edge ]
  %pes.addr.05.i319.i.i.i = phi ptr [ %add.ptr15.i325.i.i.i, %if.end14.i327.i.i.i.while.body.i323.i.i.i_crit_edge ], [ %arrayidx176.i.i.i, %if.end175.i.i.i.while.body.i323.i.i.i_crit_edge ]
  %252 = ptrtoint ptr %cc.i311.i.i.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %cc.i311.i.i.i, align 4
  %inc.i320.i.i.i = add i8 %253, 1
  store i8 %inc.i320.i.i.i, ptr %cc.i311.i.i.i, align 4
  %254 = and i8 %253, 15
  %255 = or i8 %254, 16
  %256 = ptrtoint ptr %arrayidx11.i312.i.i.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %255, ptr %arrayidx11.i312.i.i.i, align 1
  %257 = call ptr @memcpy(ptr %add.ptr.i313.i.i.i, ptr %pes.addr.05.i319.i.i.i, i32 184)
  %258 = ptrtoint ptr %cb.i314.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %cb.i314.i.i.i, align 4
  %260 = ptrtoint ptr %priv.i315.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %priv.i315.i.i.i, align 4
  %call.i321.i.i.i = tail call i32 %259(ptr noundef %261, ptr noundef %a_pes2ts.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i321.i.i.i)
  %tobool12.not.i322.i.i.i = icmp eq i32 %call.i321.i.i.i, 0
  br i1 %tobool12.not.i322.i.i.i, label %if.end14.i327.i.i.i, label %while.body.i323.i.i.i.ttusb_dec_process_packet.exit.i_crit_edge

while.body.i323.i.i.i.ttusb_dec_process_packet.exit.i_crit_edge: ; preds = %while.body.i323.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_process_packet.exit.i

if.end14.i327.i.i.i:                              ; preds = %while.body.i323.i.i.i
  %sub.i324.i.i.i = add nsw i32 %len.addr.06.i318.i.i.i, -184
  %add.ptr15.i325.i.i.i = getelementptr i8, ptr %pes.addr.05.i319.i.i.i, i32 184
  %262 = ptrtoint ptr %arrayidx3.i308.i.i.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx3.i308.i.i.i, align 1
  %264 = and i8 %263, -65
  store i8 %264, ptr %arrayidx3.i308.i.i.i, align 1
  %cmp.i326.i.i.i = icmp sgt i32 %len.addr.06.i318.i.i.i, 367
  br i1 %cmp.i326.i.i.i, label %if.end14.i327.i.i.i.while.body.i323.i.i.i_crit_edge, label %if.end14.i327.i.i.i.while.end.i331.i.i.i_crit_edge

if.end14.i327.i.i.i.while.end.i331.i.i.i_crit_edge: ; preds = %if.end14.i327.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i331.i.i.i

if.end14.i327.i.i.i.while.body.i323.i.i.i_crit_edge: ; preds = %if.end14.i327.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i323.i.i.i

while.end.i331.i.i.i:                             ; preds = %if.end14.i327.i.i.i.while.end.i331.i.i.i_crit_edge, %if.end175.i.i.i.while.end.i331.i.i.i_crit_edge
  %pes.addr.0.lcssa.i328.i.i.i = phi ptr [ %arrayidx176.i.i.i, %if.end175.i.i.i.while.end.i331.i.i.i_crit_edge ], [ %add.ptr15.i325.i.i.i, %if.end14.i327.i.i.i.while.end.i331.i.i.i_crit_edge ]
  %len.addr.0.lcssa.i329.i.i.i = phi i32 [ %sub177.i.i.i, %if.end175.i.i.i.while.end.i331.i.i.i_crit_edge ], [ %sub.i324.i.i.i, %if.end14.i327.i.i.i.while.end.i331.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.lcssa.i329.i.i.i)
  %tobool20.not.i330.i.i.i = icmp eq i32 %len.addr.0.lcssa.i329.i.i.i, 0
  br i1 %tobool20.not.i330.i.i.i, label %while.end.i331.i.i.i.ttusb_dec_process_packet.exit.i_crit_edge, label %if.end22.i337.i.i.i

while.end.i331.i.i.i.ttusb_dec_process_packet.exit.i_crit_edge: ; preds = %while.end.i331.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_process_packet.exit.i

if.end22.i337.i.i.i:                              ; preds = %while.end.i331.i.i.i
  %265 = ptrtoint ptr %cc.i311.i.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %cc.i311.i.i.i, align 4
  %inc24.i333.i.i.i = add i8 %266, 1
  store i8 %inc24.i333.i.i.i, ptr %cc.i311.i.i.i, align 4
  %267 = and i8 %266, 15
  %268 = or i8 %267, 48
  %269 = ptrtoint ptr %arrayidx11.i312.i.i.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 %268, ptr %arrayidx11.i312.i.i.i, align 1
  %sub30.i335.i.i.i = sub i32 183, %len.addr.0.lcssa.i329.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 183, i32 %len.addr.0.lcssa.i329.i.i.i)
  %tobool31.not.i336.i.i.i = icmp eq i32 %len.addr.0.lcssa.i329.i.i.i, 183
  br i1 %tobool31.not.i336.i.i.i, label %if.end22.i337.i.i.i.if.end40.i351.i.i.i_crit_edge, label %if.then32.i340.i.i.i

if.end22.i337.i.i.i.if.end40.i351.i.i.i_crit_edge: ; preds = %if.end22.i337.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i351.i.i.i

if.then32.i340.i.i.i:                             ; preds = %if.end22.i337.i.i.i
  %270 = ptrtoint ptr %arrayidx33.i338.i.i.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 0, ptr %arrayidx33.i338.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 182, i32 %len.addr.0.lcssa.i329.i.i.i)
  %tobool35.not.i339.i.i.i = icmp eq i32 %len.addr.0.lcssa.i329.i.i.i, 182
  br i1 %tobool35.not.i339.i.i.i, label %if.then32.i340.i.i.i.if.end40.i351.i.i.i_crit_edge, label %if.then36.i343.i.i.i

if.then32.i340.i.i.i.if.end40.i351.i.i.i_crit_edge: ; preds = %if.then32.i340.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i351.i.i.i

if.then36.i343.i.i.i:                             ; preds = %if.then32.i340.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub34.i341.i.i.i = sub i32 182, %len.addr.0.lcssa.i329.i.i.i
  %271 = call ptr @memset(ptr %add.ptr37.i342.i.i.i, i32 255, i32 %sub34.i341.i.i.i)
  br label %if.end40.i351.i.i.i

if.end40.i351.i.i.i:                              ; preds = %if.then36.i343.i.i.i, %if.then32.i340.i.i.i.if.end40.i351.i.i.i_crit_edge, %if.end22.i337.i.i.i.if.end40.i351.i.i.i_crit_edge
  %conv41.i344.i.i.i = trunc i32 %sub30.i335.i.i.i to i8
  %272 = ptrtoint ptr %add.ptr.i313.i.i.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %conv41.i344.i.i.i, ptr %add.ptr.i313.i.i.i, align 1
  %add.ptr44.i347.i.i.i = getelementptr i8, ptr %arrayidx33.i338.i.i.i, i32 %sub30.i335.i.i.i
  %273 = call ptr @memcpy(ptr %add.ptr44.i347.i.i.i, ptr %pes.addr.0.lcssa.i328.i.i.i, i32 %len.addr.0.lcssa.i329.i.i.i)
  %274 = ptrtoint ptr %cb.i314.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %cb.i314.i.i.i, align 4
  %276 = ptrtoint ptr %priv.i315.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %priv.i315.i.i.i, align 4
  %call47.i350.i.i.i = tail call i32 %275(ptr noundef %277, ptr noundef %a_pes2ts.i.i.i) #11
  br label %ttusb_dec_process_packet.exit.i

do.end183.i.i.i:                                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i = zext i8 %125 to i32
  %call187.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.160, i32 noundef %conv.i.i.i) #14
  br label %ttusb_dec_process_packet.exit.i

sw.bb63.i.i:                                      ; preds = %if.end48.i.i
  %278 = ptrtoint ptr %filter_stream_count.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %filter_stream_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %tobool64.not.i.i = icmp eq i32 %279, 0
  br i1 %tobool64.not.i.i, label %sw.bb63.i.i.ttusb_dec_process_packet.exit.i_crit_edge, label %if.then65.i.i

sw.bb63.i.i.ttusb_dec_process_packet.exit.i_crit_edge: ; preds = %sw.bb63.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_process_packet.exit.i

if.then65.i.i:                                    ; preds = %sw.bb63.i.i
  %280 = ptrtoint ptr %packet_payload_length154.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %packet_payload_length154.i, align 4
  %282 = ptrtoint ptr %arrayidx.i101.i.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx.i101.i.i, align 1
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %filter_info_list_lock.i.i.i) #11
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.then65.i.i
  %item.0.in.i.i.i = phi ptr [ %filter_info_list.i.i.i, %if.then65.i.i ], [ %item.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %284 = ptrtoint ptr %item.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %item.0.i.i.i = load ptr, ptr %item.0.in.i.i.i, align 4
  %cmp6.not.i.i.i = icmp eq ptr %item.0.i.i.i, %filter_info_list.i.i.i
  br i1 %cmp6.not.i.i.i, label %for.end.thread.i.i.i, label %for.body.i.i.i

for.end.thread.i.i.i:                             ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %filter_info_list_lock.i.i.i, i32 noundef %call2.i.i.i) #11
  br label %ttusb_dec_process_packet.exit.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %item.0.i.i.i, i32 -8
  %285 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %add.ptr.i.i.i, align 4
  %cmp11.i.i.i = icmp eq i8 %286, %283
  br i1 %cmp11.i.i.i, label %for.end.i.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i
  %filter13.i.i.i = getelementptr i8, ptr %item.0.i.i.i, i32 -4
  %287 = ptrtoint ptr %filter13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %filter13.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %filter_info_list_lock.i.i.i, i32 noundef %call2.i.i.i) #11
  %tobool.not.i102.i.i = icmp eq ptr %288, null
  br i1 %tobool.not.i102.i.i, label %for.end.i.i.i.ttusb_dec_process_packet.exit.i_crit_edge, label %if.then16.i.i.i

for.end.i.i.i.ttusb_dec_process_packet.exit.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_process_packet.exit.i

if.then16.i.i.i:                                  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %feed.i103.i.i = getelementptr inbounds %struct.dvb_demux_filter, ptr %288, i32 0, i32 5
  %289 = ptrtoint ptr %feed.i103.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %feed.i103.i.i, align 4
  %cb.i104.i.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %290, i32 0, i32 1
  %291 = ptrtoint ptr %cb.i104.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %cb.i104.i.i, align 8
  %sub.i105.i.i = add i32 %281, -2
  %call19.i.i.i = tail call i32 %292(ptr noundef %arrayidx17.i.i.i, i32 noundef %sub.i105.i.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %288, ptr noundef null) #11
  br label %ttusb_dec_process_packet.exit.i

ttusb_dec_process_packet.exit.i:                  ; preds = %if.then16.i.i.i, %for.end.i.i.i.ttusb_dec_process_packet.exit.i_crit_edge, %for.end.thread.i.i.i, %sw.bb63.i.i.ttusb_dec_process_packet.exit.i_crit_edge, %do.end183.i.i.i, %if.end40.i351.i.i.i, %while.end.i331.i.i.i.ttusb_dec_process_packet.exit.i_crit_edge, %while.body.i323.i.i.i.ttusb_dec_process_packet.exit.i_crit_edge, %if.then168.i.i.i, %if.end40.i306.i.i.i, %while.end.i286.i.i.i.ttusb_dec_process_packet.exit.i_crit_edge, %while.body.i278.i.i.i.ttusb_dec_process_packet.exit.i_crit_edge, %if.end148.i.i.i.ttusb_dec_process_packet.exit.i_crit_edge, %if.then13.i.i.i, %do.end4.i.i.i, %do.end.i.i.i, %sw.bb.i.i.ttusb_dec_process_packet.exit.i_crit_edge, %if.end48.i.i.ttusb_dec_process_packet.exit.i_crit_edge, %do.end13.i.i, %do.end.i.i
  %293 = ptrtoint ptr %packet_state.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 0, ptr %packet_state.i, align 4
  br label %if.end166.i

if.end166.i:                                      ; preds = %ttusb_dec_process_packet.exit.i, %if.end158.i.if.end166.i_crit_edge
  %dec167.i = add i32 %length.addr.0261.i, -1
  br label %sw.epilog.i

do.end169.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call171.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.147) #14
  %294 = ptrtoint ptr %packet_state.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 0, ptr %packet_state.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end169.i, %if.end166.i, %if.then128.i, %if.end121.i, %if.end73.i, %if.end19.i, %sw.bb.i
  %length.addr.2.i = phi i32 [ %length.addr.0261.i, %do.end169.i ], [ %dec167.i, %if.end166.i ], [ %dec122.i, %if.end121.i ], [ %dec74.i, %if.end73.i ], [ %dec21.i, %if.end19.i ], [ %dec4.i, %sw.bb.i ], [ %sub134.i, %if.then128.i ]
  %b.addr.2.i = phi ptr [ %b.addr.0262.i, %do.end169.i ], [ %incdec.ptr145.i, %if.end166.i ], [ %incdec.ptr76.i, %if.end121.i ], [ %incdec.ptr23.i, %if.end73.i ], [ %incdec.ptr20.i, %if.end19.i ], [ %incdec.ptr.i, %sw.bb.i ], [ %add.ptr133.i, %if.then128.i ]
  %tobool.not.i = icmp eq i32 %length.addr.2.i, 0
  br i1 %tobool.not.i, label %sw.epilog.i.ttusb_dec_process_urb_frame.exit_crit_edge, label %sw.epilog.i.while.body.i_crit_edge

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

sw.epilog.i.ttusb_dec_process_urb_frame.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttusb_dec_process_urb_frame.exit

ttusb_dec_process_urb_frame.exit:                 ; preds = %sw.epilog.i.ttusb_dec_process_urb_frame.exit_crit_edge, %sw.epilog.thread.i, %swap_bytes.exit.i.ttusb_dec_process_urb_frame.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr11) #11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %urb_frame_list_lock) #11
  %295 = ptrtoint ptr %urb_frame_list to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %urb_frame_list, align 4
  %cmp7.not = icmp eq ptr %296, %urb_frame_list
  br i1 %cmp7.not, label %ttusb_dec_process_urb_frame.exit.if.else_crit_edge, label %ttusb_dec_process_urb_frame.exit.if.then_crit_edge

ttusb_dec_process_urb_frame.exit.if.then_crit_edge: ; preds = %ttusb_dec_process_urb_frame.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

ttusb_dec_process_urb_frame.exit.if.else_crit_edge: ; preds = %ttusb_dec_process_urb_frame.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.else:                                          ; preds = %ttusb_dec_process_urb_frame.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %call3.lcssa = phi i32 [ %call329, %entry.if.else_crit_edge ], [ %call3, %ttusb_dec_process_urb_frame.exit.if.else_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %urb_frame_list_lock, i32 noundef %call3.lcssa) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_net_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 173)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 173)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !19, !21, !22, !24, !26, !28, !29, !31, !33, !35, !36, !37, !38, !39, !40, !41, !42, !44, !46, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !82, !83, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !296, !297, !298, !300, !301, !303, !304, !306, !307, !308, !309, !311, !312, !313, !315, !316, !317, !318, !320, !321, !322, !324, !325, !326, !328, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !343, !345, !346, !347, !348, !350, !352, !353, !354, !356, !357, !358, !360, !361, !362, !364, !365, !366}
!llvm.module.flags = !{!368, !369, !370, !371, !372, !373, !374, !375}
!llvm.ident = !{!376}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype388, !1, !"__UNIQUE_ID_debugtype388", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug389, !4, !"__UNIQUE_ID_debug389", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 34, i32 1}
!5 = !{ptr @__param_output_pva, !6, !"__param_output_pva", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 35, i32 1}
!7 = !{ptr @__UNIQUE_ID_output_pvatype390, !6, !"__UNIQUE_ID_output_pvatype390", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_output_pva391, !9, !"__UNIQUE_ID_output_pva391", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 36, i32 1}
!10 = !{ptr @__param_enable_rc, !11, !"__param_enable_rc", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 37, i32 1}
!12 = !{ptr @__UNIQUE_ID_enable_rctype392, !11, !"__UNIQUE_ID_enable_rctype392", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_enable_rc393, !14, !"__UNIQUE_ID_enable_rc393", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 38, i32 1}
!15 = !{ptr @__param_adapter_nr, !16, !"__param_adapter_nr", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 40, i32 1}
!17 = !{ptr @__UNIQUE_ID_adapter_nrtype394, !16, !"__UNIQUE_ID_adapter_nrtype394", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_adapter_nr395, !16, !"__UNIQUE_ID_adapter_nr395", i1 false, i1 false}
!19 = !{ptr @__initcall__kmod_ttusb_dec__396_1782_ttusb_dec_driver_init6, !20, !"__initcall__kmod_ttusb_dec__396_1782_ttusb_dec_driver_init6", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1782, i32 1}
!21 = !{ptr @__exitcall_ttusb_dec_driver_exit, !20, !"__exitcall_ttusb_dec_driver_exit", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_author397, !23, !"__UNIQUE_ID_author397", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1784, i32 1}
!24 = !{ptr @__UNIQUE_ID_description398, !25, !"__UNIQUE_ID_description398", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1785, i32 1}
!26 = !{ptr @__UNIQUE_ID_file399, !27, !"__UNIQUE_ID_file399", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1786, i32 1}
!28 = !{ptr @__UNIQUE_ID_license400, !27, !"__UNIQUE_ID_license400", i1 false, i1 false}
!29 = !{ptr @debug, !30, !"debug", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 29, i32 12}
!31 = !{ptr @output_pva, !32, !"output_pva", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 30, i32 12}
!33 = !{ptr @enable_rc, !34, !"enable_rc", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 31, i32 12}
!35 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!36 = !{ptr @__param_str_output_pva, !6, !"__param_str_output_pva", i1 false, i1 false}
!37 = !{ptr @__param_str_enable_rc, !11, !"__param_str_enable_rc", i1 false, i1 false}
!38 = !{ptr @__param_str_adapter_nr, !16, !"__param_str_adapter_nr", i1 false, i1 false}
!39 = !{ptr @__param_arr_adapter_nr, !16, !"__param_arr_adapter_nr", i1 false, i1 false}
!40 = !{ptr @adapter_nr, !16, !"adapter_nr", i1 false, i1 false}
!41 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.1, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1776, i32 11}
!44 = !{ptr @ttusb_dec_driver, !45, !"ttusb_dec_driver", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1775, i32 26}
!46 = !{ptr @.str.2, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1643, i32 2}
!48 = !{ptr @.str.3, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.4, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ttusb_dec_probe._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @ttusb_dec_probe._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.6, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1648, i32 3}
!54 = !{ptr @ttusb_dec_probe._entry.5, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ttusb_dec_probe._entry_ptr.7, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.9, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1693, i32 3}
!58 = !{ptr @ttusb_dec_probe._entry.8, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ttusb_dec_probe._entry_ptr.10, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.12, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1698, i32 4}
!62 = !{ptr @ttusb_dec_probe._entry.11, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ttusb_dec_probe._entry_ptr.13, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1751, i32 21}
!66 = !{ptr @.str.15, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1752, i32 24}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1756, i32 21}
!70 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1757, i32 24}
!72 = !{ptr @.str.18, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1761, i32 21}
!74 = !{ptr @.str.19, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1762, i32 24}
!76 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1261, i32 2}
!78 = !{ptr @ttusb_dec_init_usb._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ttusb_dec_init_usb._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @ttusb_dec_init_usb.__key, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1263, i32 2}
!82 = !{ptr @.str.21, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @ttusb_dec_init_usb.__key.22, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1264, i32 2}
!85 = !{ptr @.str.23, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 263, i32 4}
!88 = !{ptr @.str.25, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @ttusb_dec_handle_irq._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @ttusb_dec_handle_irq._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.27, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 267, i32 4}
!93 = !{ptr @ttusb_dec_handle_irq._entry.26, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @ttusb_dec_handle_irq._entry_ptr.28, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.30, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 286, i32 4}
!97 = !{ptr @ttusb_dec_handle_irq._entry.29, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @ttusb_dec_handle_irq._entry_ptr.31, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 297, i32 3}
!101 = !{ptr @ttusb_dec_handle_irq._entry.32, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @ttusb_dec_handle_irq._entry_ptr.34, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @rc_keys, !104, !"rc_keys", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 168, i32 12}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1178, i32 2}
!107 = !{ptr @ttusb_dec_alloc_iso_urbs._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @ttusb_dec_alloc_iso_urbs._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.36, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1167, i32 2}
!111 = !{ptr @ttusb_dec_free_iso_urbs._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ttusb_dec_free_iso_urbs._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.37, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 843, i32 2}
!115 = !{ptr @ttusb_dec_setup_urbs._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @ttusb_dec_setup_urbs._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.38, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 831, i32 4}
!119 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @ttusb_dec_process_urb._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @ttusb_dec_process_urb._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.40, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1412, i32 2}
!124 = !{ptr @ttusb_dec_init_stb._entry, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @ttusb_dec_init_stb._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.42, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1420, i32 4}
!128 = !{ptr @ttusb_dec_init_stb._entry.41, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @ttusb_dec_init_stb._entry_ptr.43, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.45, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1422, i32 4}
!132 = !{ptr @ttusb_dec_init_stb._entry.44, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @ttusb_dec_init_stb._entry_ptr.46, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.48, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1446, i32 4}
!136 = !{ptr @ttusb_dec_init_stb._entry.47, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @ttusb_dec_init_stb._entry_ptr.49, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.50, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 389, i32 2}
!140 = !{ptr @ttusb_dec_get_stb_state._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @ttusb_dec_get_stb_state._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.51, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 321, i32 2}
!144 = !{ptr @ttusb_dec_send_command._entry, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @ttusb_dec_send_command._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.53, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 329, i32 3}
!148 = !{ptr @ttusb_dec_send_command._entry.52, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @ttusb_dec_send_command._entry_ptr.54, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.56, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 342, i32 3}
!152 = !{ptr @ttusb_dec_send_command._entry.55, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @ttusb_dec_send_command._entry_ptr.57, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.59, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 350, i32 3}
!156 = !{ptr @ttusb_dec_send_command._entry.58, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @ttusb_dec_send_command._entry_ptr.60, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.62, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 359, i32 3}
!160 = !{ptr @ttusb_dec_send_command._entry.61, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @ttusb_dec_send_command._entry_ptr.63, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.65, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 364, i32 4}
!164 = !{ptr @ttusb_dec_send_command._entry.64, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @ttusb_dec_send_command._entry_ptr.66, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.67, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1317, i32 2}
!168 = !{ptr @ttusb_dec_boot_dsp._entry, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @ttusb_dec_boot_dsp._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.69, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1321, i32 3}
!172 = !{ptr @ttusb_dec_boot_dsp._entry.68, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @ttusb_dec_boot_dsp._entry_ptr.70, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1330, i32 3}
!176 = !{ptr @ttusb_dec_boot_dsp._entry.71, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @ttusb_dec_boot_dsp._entry_ptr.73, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.75, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1343, i32 3}
!180 = !{ptr @ttusb_dec_boot_dsp._entry.74, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @ttusb_dec_boot_dsp._entry_ptr.76, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.78, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1350, i32 2}
!184 = !{ptr @ttusb_dec_boot_dsp._entry.77, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @ttusb_dec_boot_dsp._entry_ptr.79, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.80, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1460, i32 2}
!188 = !{ptr @ttusb_dec_init_dvb._entry, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @ttusb_dec_init_dvb._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.82, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1466, i32 3}
!192 = !{ptr @ttusb_dec_init_dvb._entry.81, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @ttusb_dec_init_dvb._entry_ptr.83, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.85, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1482, i32 3}
!196 = !{ptr @ttusb_dec_init_dvb._entry.84, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @ttusb_dec_init_dvb._entry_ptr.86, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.88, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1495, i32 3}
!200 = !{ptr @ttusb_dec_init_dvb._entry.87, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @ttusb_dec_init_dvb._entry_ptr.89, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @ttusb_dec_init_dvb._entry.90, !203, !"_entry", i1 false, i1 false}
!203 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1508, i32 3}
!204 = !{ptr @ttusb_dec_init_dvb._entry_ptr.91, !203, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @ttusb_dec_init_dvb._entry.92, !206, !"_entry", i1 false, i1 false}
!206 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1520, i32 3}
!207 = !{ptr @ttusb_dec_init_dvb._entry_ptr.93, !206, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.94, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1091, i32 2}
!210 = !{ptr @ttusb_dec_start_feed._entry, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @ttusb_dec_start_feed._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.96, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1096, i32 2}
!214 = !{ptr @ttusb_dec_start_feed._entry.95, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @ttusb_dec_start_feed._entry_ptr.97, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.99, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1107, i32 3}
!218 = !{ptr @ttusb_dec_start_feed._entry.98, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @ttusb_dec_start_feed._entry_ptr.100, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.101, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 971, i32 2}
!222 = !{ptr @ttusb_dec_start_ts_feed._entry, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @ttusb_dec_start_ts_feed._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.103, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 973, i32 2}
!226 = !{ptr @ttusb_dec_start_ts_feed._entry.102, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @ttusb_dec_start_ts_feed._entry_ptr.104, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.106, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 976, i32 3}
!230 = !{ptr @ttusb_dec_start_ts_feed._entry.105, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @ttusb_dec_start_ts_feed._entry_ptr.107, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.109, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 979, i32 3}
!234 = !{ptr @ttusb_dec_start_ts_feed._entry.108, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @ttusb_dec_start_ts_feed._entry_ptr.110, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.112, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 982, i32 3}
!238 = !{ptr @ttusb_dec_start_ts_feed._entry.111, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @ttusb_dec_start_ts_feed._entry_ptr.113, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.115, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 984, i32 2}
!242 = !{ptr @ttusb_dec_start_ts_feed._entry.114, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @ttusb_dec_start_ts_feed._entry_ptr.116, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.118, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 989, i32 3}
!246 = !{ptr @ttusb_dec_start_ts_feed._entry.117, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @ttusb_dec_start_ts_feed._entry_ptr.119, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.121, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 997, i32 3}
!250 = !{ptr @ttusb_dec_start_ts_feed._entry.120, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @ttusb_dec_start_ts_feed._entry_ptr.122, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.124, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1005, i32 3}
!254 = !{ptr @ttusb_dec_start_ts_feed._entry.123, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @ttusb_dec_start_ts_feed._entry_ptr.125, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.127, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1009, i32 3}
!258 = !{ptr @ttusb_dec_start_ts_feed._entry.126, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @ttusb_dec_start_ts_feed._entry_ptr.128, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.130, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1015, i32 3}
!262 = !{ptr @ttusb_dec_start_ts_feed._entry.129, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @ttusb_dec_start_ts_feed._entry_ptr.131, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.133, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1019, i32 3}
!266 = !{ptr @ttusb_dec_start_ts_feed._entry.132, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @ttusb_dec_start_ts_feed._entry_ptr.134, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.135, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 444, i32 2}
!270 = !{ptr @ttusb_dec_set_pids._entry, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @ttusb_dec_set_pids._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.136, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 928, i32 2}
!274 = !{ptr @ttusb_dec_start_iso_xfer._entry, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @ttusb_dec_start_iso_xfer._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.138, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 943, i32 5}
!278 = !{ptr @ttusb_dec_start_iso_xfer._entry.137, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @ttusb_dec_start_iso_xfer._entry_ptr.139, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.140, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1051, i32 2}
!282 = !{ptr @ttusb_dec_start_sec_feed._entry, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @ttusb_dec_start_sec_feed._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.141, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1150, i32 2}
!286 = !{ptr @ttusb_dec_stop_feed._entry, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @ttusb_dec_stop_feed._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.142, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 873, i32 2}
!290 = !{ptr @ttusb_dec_stop_iso_xfer._entry, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @ttusb_dec_stop_iso_xfer._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @fe_config, !293, !"fe_config", i1 false, i1 false}
!293 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1632, i32 39}
!294 = !{ptr @.str.143, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1249, i32 2}
!296 = !{ptr @ttusb_dec_init_v_pes._entry, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @ttusb_dec_init_v_pes._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @ttusb_dec_init_filters.__key, !299, !"__key", i1 false, i1 false}
!299 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1609, i32 2}
!300 = !{ptr @.str.144, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @ttusb_dec_init_tasklet.__key, !302, !"__key", i1 false, i1 false}
!302 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1203, i32 2}
!303 = !{ptr @.str.145, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @.str.146, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 690, i32 6}
!306 = !{ptr @.str.147, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @ttusb_dec_process_urb_frame._entry, !305, !"_entry", i1 false, i1 false}
!308 = !{ptr @ttusb_dec_process_urb_frame._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.149, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 762, i32 4}
!311 = !{ptr @ttusb_dec_process_urb_frame._entry.148, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @ttusb_dec_process_urb_frame._entry_ptr.150, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.151, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 590, i32 3}
!315 = !{ptr @.str.152, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @ttusb_dec_process_packet._entry, !314, !"_entry", i1 false, i1 false}
!317 = !{ptr @ttusb_dec_process_packet._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.154, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 598, i32 3}
!320 = !{ptr @ttusb_dec_process_packet._entry.153, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @ttusb_dec_process_packet._entry_ptr.155, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.157, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 606, i32 3}
!324 = !{ptr @ttusb_dec_process_packet._entry.156, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @ttusb_dec_process_packet._entry_ptr.158, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.159, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 463, i32 3}
!328 = !{ptr @.str.160, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @ttusb_dec_process_pva._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @ttusb_dec_process_pva._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.162, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 468, i32 3}
!333 = !{ptr @ttusb_dec_process_pva._entry.161, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @ttusb_dec_process_pva._entry_ptr.163, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.165, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 551, i32 3}
!337 = !{ptr @ttusb_dec_process_pva._entry.164, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @ttusb_dec_process_pva._entry_ptr.166, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.167, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1216, i32 24}
!341 = !{ptr @.str.168, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1222, i32 20}
!343 = !{ptr @.str.169, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1240, i32 3}
!345 = !{ptr @.str.170, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @ttusb_init_rc._entry, !344, !"_entry", i1 false, i1 false}
!347 = !{ptr @ttusb_init_rc._entry_ptr, !344, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.171, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../include/linux/usb.h", i32 912, i32 31}
!350 = !{ptr @.str.172, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1568, i32 2}
!352 = !{ptr @ttusb_dec_exit_usb._entry, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @ttusb_dec_exit_usb._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.173, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1730, i32 2}
!356 = !{ptr @ttusb_dec_disconnect._entry, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @ttusb_dec_disconnect._entry_ptr, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.174, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1555, i32 2}
!360 = !{ptr @ttusb_dec_exit_rc._entry, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @ttusb_dec_exit_rc._entry_ptr, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.175, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1538, i32 2}
!364 = !{ptr @ttusb_dec_exit_dvb._entry, !363, !"_entry", i1 false, i1 false}
!365 = !{ptr @ttusb_dec_exit_dvb._entry_ptr, !363, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @ttusb_dec_table, !367, !"ttusb_dec_table", i1 false, i1 false}
!367 = !{!"../drivers/media/usb/ttusb-dec/ttusb_dec.c", i32 1767, i32 35}
!368 = !{i32 1, !"wchar_size", i32 2}
!369 = !{i32 1, !"min_enum_size", i32 4}
!370 = !{i32 8, !"branch-target-enforcement", i32 0}
!371 = !{i32 8, !"sign-return-address", i32 0}
!372 = !{i32 8, !"sign-return-address-all", i32 0}
!373 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!374 = !{i32 7, !"uwtable", i32 1}
!375 = !{i32 7, !"frame-pointer", i32 2}
!376 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!377 = !{!"auto-init"}
