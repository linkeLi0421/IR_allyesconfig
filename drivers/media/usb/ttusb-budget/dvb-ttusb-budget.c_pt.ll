; ModuleID = '/llk/IR_all_yes/drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c_pt.bc'
source_filename = "../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stv0299_config = type { i8, ptr, i32, i8, i32, ptr, ptr }
%struct.tda8083_config = type { i8 }
%struct.ves1820_config = type { i8, i32, i8 }
%struct.stv0297_config = type { i8, ptr, i8 }
%struct.cx22700_config = type { i8 }
%struct.tda1004x_config = type { i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ttusb = type { %struct.dvb_demux, %struct.dmxdev, %struct.dvb_net, %struct.mutex, %struct.mutex, %struct.dvb_adapter, ptr, %struct.i2c_adapter, i32, i32, i32, i32, i32, ptr, [4 x ptr], i32, i32, i32, i8, i32, i32, i32, i8, [264 x i8], i32, i32, i32, i32, [40 x i8], [32 x i8], i32, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.dvb_demux_feed = type { %union.anon.124, %union.anon.125, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.124 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.125 = type { ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__param_str_debug = internal constant [23 x i8] c"dvb_ttusb_budget.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype388 = internal constant [36 x i8] c"dvb_ttusb_budget.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug389 = internal constant [65 x i8] c"dvb_ttusb_budget.parm=debug:Turn on/off debugging (default:off).\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [28 x i8] c"dvb_ttusb_budget.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype390 = internal constant [52 x i8] c"dvb_ttusb_budget.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr391 = internal constant [53 x i8] c"dvb_ttusb_budget.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_ttusb_budget__392_1763_ttusb_driver_init6 = internal global ptr @ttusb_driver_init, section ".initcall6.init", align 4
@ttusb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @ttusb_probe, ptr @ttusb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ttusb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ttusb_driver_exit = internal global ptr @ttusb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author393 = internal constant [65 x i8] c"dvb_ttusb_budget.author=Holger Waechtler <holger@convergence.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description394 = internal constant [46 x i8] c"dvb_ttusb_budget.description=TTUSB DVB Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file395 = internal constant [70 x i8] c"dvb_ttusb_budget.file=drivers/media/usb/ttusb-budget/dvb-ttusb-budget\00", section ".modinfo", align 1
@__UNIQUE_ID_license396 = internal constant [29 x i8] c"dvb_ttusb_budget.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware397 = internal constant [55 x i8] c"dvb_ttusb_budget.firmware=ttusb-budget/dspbootcode.bin\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dvb_ttusb_budget\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttusb\00", [26 x i8] zeroinitializer }, align 32
@ttusb_table = internal constant { [4 x %struct.usb_device_id], [32 x i8] } { [4 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2888, i16 4099, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2888, i16 4100, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2888, i16 4101, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ttusb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017dvb_ttusb_budget: %s: TTUSB DVB connected\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ttusb_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c\00", [46 x i8] zeroinitializer }, align 32
@ttusb_probe._entry_ptr = internal global ptr @ttusb_probe._entry, section ".printk_index", align 4
@ttusb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ttusb->semi2c\00", [17 x i8] zeroinitializer }, align 32
@ttusb_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ttusb->semusb\00", [17 x i8] zeroinitializer }, align 32
@ttusb_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017dvb_ttusb_budget: %s: ttusb_alloc_iso_urbs - failed\0A\00", [41 x i8] zeroinitializer }, align 32
@ttusb_probe._entry_ptr.10 = internal global ptr @ttusb_probe._entry.8, section ".printk_index", align 4
@ttusb_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013dvb_ttusb_budget: ttusb_init_controller: error\0A\00", [46 x i8] zeroinitializer }, align 32
@ttusb_probe._entry_ptr.13 = internal global ptr @ttusb_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Technotrend/Hauppauge Nova-USB\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TTUSB DEC\00", [22 x i8] zeroinitializer }, align 32
@ttusb_dec_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @master_xfer, ptr null, ptr null, ptr null, ptr @functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ttusb_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013dvb_ttusb_budget: dvb_dmx_init failed (errno = %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@ttusb_probe._entry_ptr.18 = internal global ptr @ttusb_probe._entry.16, section ".printk_index", align 4
@ttusb_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 1689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013dvb_ttusb_budget: dvb_dmxdev_init failed (errno = %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@ttusb_probe._entry_ptr.21 = internal global ptr @ttusb_probe._entry.19, section ".printk_index", align 4
@ttusb_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 1695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013dvb_ttusb_budget: dvb_net_init failed!\0A\00", [54 x i8] zeroinitializer }, align 32
@ttusb_probe._entry_ptr.24 = internal global ptr @ttusb_probe._entry.22, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ttusb_init_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017dvb_ttusb_budget: %s: stc-version: %c%c%c%c%c\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ttusb_init_controller\00", [42 x i8] zeroinitializer }, align 32
@ttusb_init_controller._entry_ptr = internal global ptr @ttusb_init_controller._entry, section ".printk_index", align 4
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"V 0.0\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"V 1.1\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"V 2.1\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"V 2.2\00", [26 x i8] zeroinitializer }, align 32
@ttusb_init_controller._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.26, ptr @.str.4, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013dvb_ttusb_budget: unknown STC version %c%c%c%c%c, please report!\0A\00", [60 x i8] zeroinitializer }, align 32
@ttusb_init_controller._entry_ptr.33 = internal global ptr @ttusb_init_controller._entry.31, section ".printk_index", align 4
@ttusb_init_controller._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.26, ptr @.str.4, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016dvb_ttusb_budget: dsp-version: %c%c%c\0A\00", [55 x i8] zeroinitializer }, align 32
@ttusb_init_controller._entry_ptr.36 = internal global ptr @ttusb_init_controller._entry.34, section ".printk_index", align 4
@ttusb_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017dvb_ttusb_budget: %s: > %*ph\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ttusb_cmd\00", [22 x i8] zeroinitializer }, align 32
@ttusb_cmd._entry_ptr = internal global ptr @ttusb_cmd._entry, section ".printk_index", align 4
@ttusb_cmd._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.4, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017dvb_ttusb_budget: %s: usb_bulk_msg(send) failed, err == %i!\0A\00", [33 x i8] zeroinitializer }, align 32
@ttusb_cmd._entry_ptr.41 = internal global ptr @ttusb_cmd._entry.39, section ".printk_index", align 4
@ttusb_cmd._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.4, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017dvb_ttusb_budget: %s: only wrote %d of %d bytes\0A\00", [45 x i8] zeroinitializer }, align 32
@ttusb_cmd._entry_ptr.44 = internal global ptr @ttusb_cmd._entry.42, section ".printk_index", align 4
@ttusb_cmd._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.4, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013dvb_ttusb_budget: cmd xter failed, receive error %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ttusb_cmd._entry_ptr.47 = internal global ptr @ttusb_cmd._entry.45, section ".printk_index", align 4
@ttusb_cmd._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017dvb_ttusb_budget: %s: < %*ph\0A\00", [32 x i8] zeroinitializer }, align 32
@ttusb_cmd._entry_ptr.50 = internal global ptr @ttusb_cmd._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ttusb-budget/dspbootcode.bin\00", [35 x i8] zeroinitializer }, align 32
@ttusb_boot_dsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013dvb_ttusb_budget: failed to request firmware\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ttusb_boot_dsp\00", [17 x i8] zeroinitializer }, align 32
@ttusb_boot_dsp._entry_ptr = internal global ptr @ttusb_boot_dsp._entry, section ".printk_index", align 4
@ttusb_boot_dsp._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.4, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017dvb_ttusb_budget: %s: usb_bulk_msg() failed, return value %i!\0A\00", [63 x i8] zeroinitializer }, align 32
@ttusb_boot_dsp._entry_ptr.56 = internal global ptr @ttusb_boot_dsp._entry.54, section ".printk_index", align 4
@master_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017dvb_ttusb_budget: %s: i == %i\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"master_xfer\00", [20 x i8] zeroinitializer }, align 32
@master_xfer._entry_ptr = internal global ptr @master_xfer._entry, section ".printk_index", align 4
@ttusb_i2c_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\017dvb_ttusb_budget: %s: usb_bulk_msg(recv) failed, err == %i, id == %02x, b == \00", [48 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ttusb_i2c_msg\00", [18 x i8] zeroinitializer }, align 32
@ttusb_i2c_msg._entry_ptr = internal global ptr @ttusb_i2c_msg._entry, section ".printk_index", align 4
@ttusb_start_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.4, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017dvb_ttusb_budget: %s: ttusb_start_feed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ttusb_start_feed\00", [47 x i8] zeroinitializer }, align 32
@ttusb_start_feed._entry_ptr = internal global ptr @ttusb_start_feed._entry, section ".printk_index", align 4
@ttusb_start_iso_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.4, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013dvb_ttusb_budget: iso xfer already running!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ttusb_start_iso_xfer\00", [43 x i8] zeroinitializer }, align 32
@ttusb_start_iso_xfer._entry_ptr = internal global ptr @ttusb_start_iso_xfer._entry, section ".printk_index", align 4
@ttusb_start_iso_xfer._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.4, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013dvb_ttusb_budget: failed urb submission (%i: err = %i)!\0A\00", [37 x i8] zeroinitializer }, align 32
@ttusb_start_iso_xfer._entry_ptr.67 = internal global ptr @ttusb_start_iso_xfer._entry.65, section ".printk_index", align 4
@numpkt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lastj = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ttusb_iso_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\017dvb_ttusb_budget: %s: frames/s: %lu (ts: %d, stuff %d, sec: %d, invalid: %d, all: %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ttusb_iso_irq\00", [18 x i8] zeroinitializer }, align 32
@ttusb_iso_irq._entry_ptr = internal global ptr @ttusb_iso_irq._entry, section ".printk_index", align 4
@numts = internal global { i32, [28 x i8] } zeroinitializer, align 32
@numstuff = internal global { i32, [28 x i8] } zeroinitializer, align 32
@numsec = internal global { i32, [28 x i8] } zeroinitializer, align 32
@numinvalid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ttusb_process_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.4, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013dvb_ttusb_budget: too much work\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ttusb_process_frame\00", [44 x i8] zeroinitializer }, align 32
@ttusb_process_frame._entry_ptr = internal global ptr @ttusb_process_frame._entry, section ".printk_index", align 4
@ttusb_process_frame._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.4, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016dvb_ttusb_budget: lost sync.\0A\00", [32 x i8] zeroinitializer }, align 32
@ttusb_process_frame._entry_ptr.74 = internal global ptr @ttusb_process_frame._entry.72, section ".printk_index", align 4
@ttusb_process_frame._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.4, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017dvb_ttusb_budget: %s: invalid state: first byte is %x\0A\00", [39 x i8] zeroinitializer }, align 32
@ttusb_process_frame._entry_ptr.77 = internal global ptr @ttusb_process_frame._entry.75, section ".printk_index", align 4
@ttusb_process_muxpack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.4, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014dvb_ttusb_budget: muxpack has invalid len %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ttusb_process_muxpack\00", [42 x i8] zeroinitializer }, align 32
@ttusb_process_muxpack._entry_ptr = internal global ptr @ttusb_process_muxpack._entry, section ".printk_index", align 4
@ttusb_process_muxpack._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.4, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014dvb_ttusb_budget: muxpack with incorrect checksum, ignoring\0A\00", [33 x i8] zeroinitializer }, align 32
@ttusb_process_muxpack._entry_ptr.82 = internal global ptr @ttusb_process_muxpack._entry.80, section ".printk_index", align 4
@ttusb_process_muxpack._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.4, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014dvb_ttusb_budget: cc discontinuity (%d frames missing)\0A\00", [38 x i8] zeroinitializer }, align 32
@ttusb_process_muxpack._entry_ptr.85 = internal global ptr @ttusb_process_muxpack._entry.83, section ".printk_index", align 4
@ttusb_process_muxpack._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.79, ptr @.str.4, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013dvb_ttusb_budget: illegal muxpack type %02x\0A\00", [49 x i8] zeroinitializer }, align 32
@ttusb_process_muxpack._entry_ptr.88 = internal global ptr @ttusb_process_muxpack._entry.86, section ".printk_index", align 4
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0299_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0299_attach\00", [42 x i8] zeroinitializer }, align 32
@alps_stv0299_config = internal global { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @alps_bsru6_inittab, i32 88000000, i8 -104, i32 100, ptr @alps_stv0299_set_symbol_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@frontend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.4, i32 1523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0299_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"frontend_init\00", [18 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr = internal global ptr @frontend_init._entry, section ".printk_index", align 4
@alps_bsbe1_inittab = internal global { [78 x i8], [50 x i8] } { [78 x i8] c"\01\15\020\03\00\04}\055\06@\07\00\08@\09\00\0CQ\0D\82\0E#\10?\11\84\12\B9\15\C9\16\00\17\00\18\00\19\00\1A\00\1FP \00!\00\22\00#\00(\00)\1E*\14+\0F,\09-\05.\011\1F2\193\FC4\93\0F\92\FF\FF", [50 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lnbp21_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:lnbp21_attach\00", [43 x i8] zeroinitializer }, align 32
@frontend_init._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.92, ptr @.str.4, i32 1529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol lnbp21_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.97 = internal global ptr @frontend_init._entry.95, section ".printk_index", align 4
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda8083_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tda8083_attach\00", [42 x i8] zeroinitializer }, align 32
@ttusb_novas_grundig_29504_491_config = internal global { %struct.tda8083_config, [31 x i8] } { %struct.tda8083_config { i8 104 }, [31 x i8] zeroinitializer }, align 32
@frontend_init._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.92, ptr @.str.4, i32 1537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tda8083_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.102 = internal global ptr @frontend_init._entry.100, section ".printk_index", align 4
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ves1820_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:ves1820_attach\00", [42 x i8] zeroinitializer }, align 32
@alps_tdbe2_config = internal global { %struct.ves1820_config, [20 x i8] } { %struct.ves1820_config { i8 9, i32 57840000, i8 -64 }, [20 x i8] zeroinitializer }, align 32
@frontend_init._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.92, ptr @.str.4, i32 1546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol ves1820_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.107 = internal global ptr @frontend_init._entry.105, section ".printk_index", align 4
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0297_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0297_attach\00", [42 x i8] zeroinitializer }, align 32
@dvbc_philips_tdm1316l_config = internal global { %struct.stv0297_config, [20 x i8] } { %struct.stv0297_config { i8 28, ptr @dvbc_philips_tdm1316l_inittab, i8 0 }, [20 x i8] zeroinitializer }, align 32
@frontend_init._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.92, ptr @.str.4, i32 1552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0297_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.112 = internal global ptr @frontend_init._entry.110, section ".printk_index", align 4
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx22700_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:cx22700_attach\00", [42 x i8] zeroinitializer }, align 32
@alps_tdmb7_config = internal global { %struct.cx22700_config, [31 x i8] } { %struct.cx22700_config { i8 67 }, [31 x i8] zeroinitializer }, align 32
@frontend_init._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.92, ptr @.str.4, i32 1561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol cx22700_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.117 = internal global ptr @frontend_init._entry.115, section ".printk_index", align 4
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10046_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10046_attach\00", [41 x i8] zeroinitializer }, align 32
@philips_tdm1316l_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @philips_tdm1316l_request_firmware }, [32 x i8] zeroinitializer }, align 32
@frontend_init._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.92, ptr @.str.4, i32 1568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10046_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.122 = internal global ptr @frontend_init._entry.120, section ".printk_index", align 4
@frontend_init._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.92, ptr @.str.4, i32 1580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013dvb_ttusb_budget: no frontend driver found for device [%04x:%04x]\0A\00", [59 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.125 = internal global ptr @frontend_init._entry.123, section ".printk_index", align 4
@frontend_init._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.92, ptr @.str.4, i32 1583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013dvb_ttusb_budget: Frontend registration failed!\0A\00", [45 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.128 = internal global ptr @frontend_init._entry.126, section ".printk_index", align 4
@alps_bsru6_inittab = internal global { [78 x i8], [50 x i8] } { [78 x i8] c"\01\15\020\03\00\04}\055\06@\07\00\08@\09\00\0CQ\0D\82\0E#\10?\11\84\12\B9\15\C9\16\00\17\00\18\00\19\00\1A\00\1FP \00!\00\22\00#\00(\00)\1E*\14+\0F,\09-\05.\011\1F2\193\FC4\93\0FR\FF\FF", [50 x i8] zeroinitializer }, align 32
@ttusb_update_lnb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.129, ptr @.str.4, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ttusb_update_lnb\00", [47 x i8] zeroinitializer }, align 32
@ttusb_update_lnb._entry_ptr = internal global ptr @ttusb_update_lnb._entry, section ".printk_index", align 4
@dvbc_philips_tdm1316l_inittab = internal global { [198 x i8], [58 x i8] } { [198 x i8] c"\80!\80 \81\01\81\00\00\09\01i\03\00\04\00\07\00\08\00 \00!@\22\00#\00$@%\880\FF1\002\FF3\004P5\7F6\007 8\00@\1CA\FFB)C D\FFE\00F\00I\04J\FFK\7FR0U\AEVGW\E1X:Z\1E[4`\00c\00d\00e\00f\00g\00h\00i\00j\02k\00p\FFq\00r\00s\00t\0C\80\00\81\00\82\00\83\00\84\04\85\80\86$\87x\88\00\89\00\90\01\91\01\A0\00\A1\00\A2\00\B0\91\B1\0B\C0K\C1\00\C2\00\D0\00\D1\00\D2\00\D3\00\D4\00\D5\00\DE\00\DF\00a8b\0AS\13Y\08U\00V@W\08X=\88\10\A0\00\A0\00\A0\00\A0\04\FF\FF", [58 x i8] zeroinitializer }, align 32
@dvbc_philips_tdm1316l_tuner_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.4, i32 1392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013dvb_ttusb_budget: dvbc_philips_tdm1316l_pll_set Error 1\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dvbc_philips_tdm1316l_tuner_set_params\00", [57 x i8] zeroinitializer }, align 32
@dvbc_philips_tdm1316l_tuner_set_params._entry_ptr = internal global ptr @dvbc_philips_tdm1316l_tuner_set_params._entry, section ".printk_index", align 4
@dvbc_philips_tdm1316l_tuner_set_params._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.4, i32 1401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013dvb_ttusb_budget: dvbc_philips_tdm1316l_pll_set Error 2\0A\00", [37 x i8] zeroinitializer }, align 32
@dvbc_philips_tdm1316l_tuner_set_params._entry_ptr.134 = internal global ptr @dvbc_philips_tdm1316l_tuner_set_params._entry.132, section ".printk_index", align 4
@philips_tdm1316l_tuner_init.td1316_init = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\0B\F5\85\AB", [28 x i8] zeroinitializer }, align 32
@philips_tdm1316l_tuner_init.disable_mc44BC374c = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\1Dt\A0h", [28 x i8] zeroinitializer }, align 32
@__const.philips_tdm1316l_tuner_init.tuner_msg = private unnamed_addr constant { i16, i16, i16, [2 x i8], ptr } { i16 96, i16 0, i16 4, [2 x i8] zeroinitializer, ptr @philips_tdm1316l_tuner_init.td1316_init }, align 4
@ttusb_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.4, i32 1744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017dvb_ttusb_budget: %s: TTUSB DVB disconnected\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ttusb_disconnect\00", [47 x i8] zeroinitializer }, align 32
@ttusb_disconnect._entry_ptr = internal global ptr @ttusb_disconnect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 4099, i64 4100, i64 4101]
@__sancov_gen_cov_switch_values.137 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 20]
@__sancov_gen_cov_switch_values.138 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 71]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 71]
@__sancov_gen_cov_switch_values.141 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@___asan_gen_.142 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 59, i32 12 }
@___asan_gen_.145 = private unnamed_addr constant [13 x i8] c"ttusb_driver\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1756, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 63, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1763, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1757, i32 16 }
@___asan_gen_.157 = private unnamed_addr constant [12 x i8] c"ttusb_table\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1747, i32 35 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1603, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1615, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1619, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1625, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1632, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1637, i32 11 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1648, i32 32 }
@___asan_gen_.202 = private unnamed_addr constant [15 x i8] c"ttusb_dec_algo\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1592, i32 35 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1677, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1688, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1695, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 420, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 423, i32 30 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 424, i32 30 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 425, i32 30 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 426, i32 30 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 427, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 441, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 150, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 157, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 162, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 171, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 177, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 283, i32 30 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 286, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 326, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 266, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 221, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 863, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 797, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 831, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant [7 x i8] c"numpkt\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 528, i32 12 }
@___asan_gen_.352 = private unnamed_addr constant [6 x i8] c"lastj\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 529, i32 22 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 729, i32 5 }
@___asan_gen_.364 = private unnamed_addr constant [6 x i8] c"numts\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 528, i32 20 }
@___asan_gen_.367 = private unnamed_addr constant [9 x i8] c"numstuff\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 528, i32 27 }
@___asan_gen_.370 = private unnamed_addr constant [7 x i8] c"numsec\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 528, i32 37 }
@___asan_gen_.373 = private unnamed_addr constant [11 x i8] c"numinvalid\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 528, i32 45 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 605, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 619, i32 6 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 675, i32 7 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 538, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 546, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 554, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 595, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant [20 x i8] c"alps_stv0299_config\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1264, i32 30 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1523, i32 15 }
@___asan_gen_.442 = private unnamed_addr constant [19 x i8] c"alps_bsbe1_inittab\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1114, i32 11 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1529, i32 5 }
@___asan_gen_.463 = private unnamed_addr constant [37 x i8] c"ttusb_novas_grundig_29504_491_config\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1299, i32 30 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1537, i32 15 }
@___asan_gen_.478 = private unnamed_addr constant [18 x i8] c"alps_tdbe2_config\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1328, i32 30 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1546, i32 15 }
@___asan_gen_.493 = private unnamed_addr constant [29 x i8] c"dvbc_philips_tdm1316l_config\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1512, i32 30 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1552, i32 15 }
@___asan_gen_.508 = private unnamed_addr constant [18 x i8] c"alps_tdmb7_config\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 991, i32 30 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1561, i32 15 }
@___asan_gen_.523 = private unnamed_addr constant [24 x i8] c"philips_tdm1316l_config\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1106, i32 31 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1568, i32 15 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1578, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1583, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant [19 x i8] c"alps_bsru6_inittab\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1156, i32 11 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 480, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant [30 x i8] c"dvbc_philips_tdm1316l_inittab\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1410, i32 11 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1392, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1401, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant [12 x i8] c"td1316_init\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1002, i32 12 }
@___asan_gen_.574 = private unnamed_addr constant [19 x i8] c"disable_mc44BC374c\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1003, i32 12 }
@___asan_gen_.577 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.583 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.584 = private constant [53 x i8] c"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1744, i32 2 }
@llvm.compiler.used = appending global [204 x ptr] [ptr @__UNIQUE_ID_adapter_nr391, ptr @__UNIQUE_ID_adapter_nrtype390, ptr @__UNIQUE_ID_author393, ptr @__UNIQUE_ID_debug389, ptr @__UNIQUE_ID_debugtype388, ptr @__UNIQUE_ID_description394, ptr @__UNIQUE_ID_file395, ptr @__UNIQUE_ID_firmware397, ptr @__UNIQUE_ID_license396, ptr @__exitcall_ttusb_driver_exit, ptr @__initcall__kmod_dvb_ttusb_budget__392_1763_ttusb_driver_init6, ptr @__param_adapter_nr, ptr @__param_debug, ptr @dvbc_philips_tdm1316l_tuner_set_params._entry, ptr @dvbc_philips_tdm1316l_tuner_set_params._entry.132, ptr @dvbc_philips_tdm1316l_tuner_set_params._entry_ptr, ptr @dvbc_philips_tdm1316l_tuner_set_params._entry_ptr.134, ptr @frontend_init._entry, ptr @frontend_init._entry.100, ptr @frontend_init._entry.105, ptr @frontend_init._entry.110, ptr @frontend_init._entry.115, ptr @frontend_init._entry.120, ptr @frontend_init._entry.123, ptr @frontend_init._entry.126, ptr @frontend_init._entry.95, ptr @frontend_init._entry_ptr, ptr @frontend_init._entry_ptr.102, ptr @frontend_init._entry_ptr.107, ptr @frontend_init._entry_ptr.112, ptr @frontend_init._entry_ptr.117, ptr @frontend_init._entry_ptr.122, ptr @frontend_init._entry_ptr.125, ptr @frontend_init._entry_ptr.128, ptr @frontend_init._entry_ptr.97, ptr @master_xfer._entry, ptr @master_xfer._entry_ptr, ptr @ttusb_boot_dsp._entry, ptr @ttusb_boot_dsp._entry.54, ptr @ttusb_boot_dsp._entry_ptr, ptr @ttusb_boot_dsp._entry_ptr.56, ptr @ttusb_cmd._entry, ptr @ttusb_cmd._entry.39, ptr @ttusb_cmd._entry.42, ptr @ttusb_cmd._entry.45, ptr @ttusb_cmd._entry.48, ptr @ttusb_cmd._entry_ptr, ptr @ttusb_cmd._entry_ptr.41, ptr @ttusb_cmd._entry_ptr.44, ptr @ttusb_cmd._entry_ptr.47, ptr @ttusb_cmd._entry_ptr.50, ptr @ttusb_disconnect._entry, ptr @ttusb_disconnect._entry_ptr, ptr @ttusb_driver_exit, ptr @ttusb_i2c_msg._entry, ptr @ttusb_i2c_msg._entry_ptr, ptr @ttusb_init_controller._entry, ptr @ttusb_init_controller._entry.31, ptr @ttusb_init_controller._entry.34, ptr @ttusb_init_controller._entry_ptr, ptr @ttusb_init_controller._entry_ptr.33, ptr @ttusb_init_controller._entry_ptr.36, ptr @ttusb_iso_irq._entry, ptr @ttusb_iso_irq._entry_ptr, ptr @ttusb_probe._entry, ptr @ttusb_probe._entry.11, ptr @ttusb_probe._entry.16, ptr @ttusb_probe._entry.19, ptr @ttusb_probe._entry.22, ptr @ttusb_probe._entry.8, ptr @ttusb_probe._entry_ptr, ptr @ttusb_probe._entry_ptr.10, ptr @ttusb_probe._entry_ptr.13, ptr @ttusb_probe._entry_ptr.18, ptr @ttusb_probe._entry_ptr.21, ptr @ttusb_probe._entry_ptr.24, ptr @ttusb_process_frame._entry, ptr @ttusb_process_frame._entry.72, ptr @ttusb_process_frame._entry.75, ptr @ttusb_process_frame._entry_ptr, ptr @ttusb_process_frame._entry_ptr.74, ptr @ttusb_process_frame._entry_ptr.77, ptr @ttusb_process_muxpack._entry, ptr @ttusb_process_muxpack._entry.80, ptr @ttusb_process_muxpack._entry.83, ptr @ttusb_process_muxpack._entry.86, ptr @ttusb_process_muxpack._entry_ptr, ptr @ttusb_process_muxpack._entry_ptr.82, ptr @ttusb_process_muxpack._entry_ptr.85, ptr @ttusb_process_muxpack._entry_ptr.88, ptr @ttusb_start_feed._entry, ptr @ttusb_start_feed._entry_ptr, ptr @ttusb_start_iso_xfer._entry, ptr @ttusb_start_iso_xfer._entry.65, ptr @ttusb_start_iso_xfer._entry_ptr, ptr @ttusb_start_iso_xfer._entry_ptr.67, ptr @ttusb_update_lnb._entry, ptr @ttusb_update_lnb._entry_ptr, ptr @debug, ptr @ttusb_driver, ptr @adapter_nr, ptr @.str, ptr @.str.1, ptr @ttusb_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ttusb_probe.__key, ptr @.str.5, ptr @ttusb_probe.__key.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @ttusb_dec_algo, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @numpkt, ptr @lastj, ptr @.str.68, ptr @.str.69, ptr @numts, ptr @numstuff, ptr @numsec, ptr @numinvalid, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @alps_stv0299_config, ptr @.str.91, ptr @.str.92, ptr @alps_bsbe1_inittab, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @ttusb_novas_grundig_29504_491_config, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @alps_tdbe2_config, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @dvbc_philips_tdm1316l_config, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @alps_tdmb7_config, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @philips_tdm1316l_config, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @alps_bsru6_inittab, ptr @.str.129, ptr @dvbc_philips_tdm1316l_inittab, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @philips_tdm1316l_tuner_init.td1316_init, ptr @philips_tdm1316l_tuner_init.disable_mc44BC374c, ptr @.str.135, ptr @.str.136], section "llvm.metadata"
@0 = internal global [148 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_dec_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_init_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_init_controller._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_init_controller._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_cmd._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_cmd._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_cmd._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_cmd._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_boot_dsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_boot_dsp._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @master_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_i2c_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_start_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_start_iso_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_start_iso_xfer._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numpkt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lastj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_iso_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numts to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numstuff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numsec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numinvalid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_process_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_process_frame._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_process_frame._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_process_muxpack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_process_muxpack._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_process_muxpack._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_process_muxpack._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_stv0299_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_bsbe1_inittab to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_novas_grundig_29504_491_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_tdbe2_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbc_philips_tdm1316l_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_tdmb7_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_tdm1316l_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_bsru6_inittab to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_update_lnb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbc_philips_tdm1316l_inittab to i32), i32 198, i32 256, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbc_philips_tdm1316l_tuner_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbc_philips_tdm1316l_tuner_set_params._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_tdm1316l_tuner_init.td1316_init to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_tdm1316l_tuner_init.disable_mc44BC374c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ttusb_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ttusb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @ttusb_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusb_probe(ptr nocapture noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %b.i.i198 = alloca i8, align 1
  %pwm.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %fw.i.i = alloca ptr, align 4
  %b.i.i = alloca [40 x i8], align 1
  %b0.i = alloca [5 x i8], align 1
  %b1.i = alloca [5 x i8], align 1
  %b2.i = alloca [5 x i8], align 1
  %b3.i = alloca [9 x i8], align 1
  %get_version.i = alloca [9 x i8], align 1
  %get_dsp_version.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 -128
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.not = icmp eq i8 %6, 1
  br i1 %cmp.not, label %if.end7, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 4040) #14
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %dev = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %dev, align 8
  %c = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 18
  %9 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %c, align 4
  %mux_state = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 21
  %10 = ptrtoint ptr %mux_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mux_state, align 8
  %semi2c = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %semi2c, ptr noundef nonnull @.str.5, ptr noundef nonnull @ttusb_probe.__key) #10
  tail call void @mutex_lock_nested(ptr noundef %semi2c, i32 noundef 0) #10
  %semusb = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %semusb, ptr noundef nonnull @.str.7, ptr noundef nonnull @ttusb_probe.__key.6) #10
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @usb_set_interface(ptr noundef %12, i32 noundef 1, i32 noundef 1) #10
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i = shl i32 %16, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %bulk_out_pipe.i = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %bulk_out_pipe.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i, ptr %bulk_out_pipe.i, align 8
  %18 = load i32, ptr %14, align 8
  %shl.i1.i = shl i32 %18, 8
  %or6.i = or i32 %shl.i1.i, -1073708928
  %bulk_in_pipe.i = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 11
  %19 = ptrtoint ptr %bulk_in_pipe.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or6.i, ptr %bulk_in_pipe.i, align 4
  %20 = load i32, ptr %14, align 8
  %shl.i3.i = shl i32 %20, 8
  %or10.i = or i32 %shl.i3.i, 65664
  %isoc_in_pipe.i = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 12
  %21 = ptrtoint ptr %isoc_in_pipe.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or10.i, ptr %isoc_in_pipe.i, align 8
  %call1.i.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 14592, i32 noundef 3520, i32 noundef 2) #15
  %iso_buffer.i = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 13
  %22 = ptrtoint ptr %iso_buffer.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call1.i.i.i.i.i, ptr %iso_buffer.i, align 4
  %tobool.not.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end11.do.body24_crit_edge, label %for.body.preheader.i

if.end11.do.body24_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24

for.body.preheader.i:                             ; preds = %if.end11
  %call2.i = tail call ptr @usb_alloc_urb(i32 noundef 4, i32 noundef 2592) #10
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %for.body.preheader.i.if.then4.i_crit_edge, label %if.end5.i

for.body.preheader.i.if.then4.i_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.end5.2.i.if.then4.i_crit_edge, %if.end5.1.i.if.then4.i_crit_edge, %if.end5.i.if.then4.i_crit_edge, %for.body.preheader.i.if.then4.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.ttusb, ptr %call7.i.i, i32 0, i32 14, i32 0
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 8
  tail call void @usb_free_urb(ptr noundef %24) #10
  %arrayidx.1.i.i = getelementptr %struct.ttusb, ptr %call7.i.i, i32 0, i32 14, i32 1
  %25 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.1.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %26) #10
  %arrayidx.2.i.i = getelementptr %struct.ttusb, ptr %call7.i.i, i32 0, i32 14, i32 2
  %27 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.2.i.i, align 8
  tail call void @usb_free_urb(ptr noundef %28) #10
  %arrayidx.3.i.i = getelementptr %struct.ttusb, ptr %call7.i.i, i32 0, i32 14, i32 3
  %29 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.3.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %30) #10
  %31 = ptrtoint ptr %iso_buffer.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iso_buffer.i, align 4
  tail call void @kfree(ptr noundef %32) #10
  br label %do.body24

if.end5.i:                                        ; preds = %for.body.preheader.i
  %arrayidx.i = getelementptr %struct.ttusb, ptr %call7.i.i, i32 0, i32 14, i32 0
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call2.i, ptr %arrayidx.i, align 8
  %call2.1.i = tail call ptr @usb_alloc_urb(i32 noundef 4, i32 noundef 2592) #10
  %tobool3.not.1.i = icmp eq ptr %call2.1.i, null
  br i1 %tobool3.not.1.i, label %if.end5.i.if.then4.i_crit_edge, label %if.end5.1.i

if.end5.i.if.then4.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4.i

if.end5.1.i:                                      ; preds = %if.end5.i
  %arrayidx.1.i = getelementptr %struct.ttusb, ptr %call7.i.i, i32 0, i32 14, i32 1
  %34 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call2.1.i, ptr %arrayidx.1.i, align 4
  %call2.2.i = tail call ptr @usb_alloc_urb(i32 noundef 4, i32 noundef 2592) #10
  %tobool3.not.2.i = icmp eq ptr %call2.2.i, null
  br i1 %tobool3.not.2.i, label %if.end5.1.i.if.then4.i_crit_edge, label %if.end5.2.i

if.end5.1.i.if.then4.i_crit_edge:                 ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4.i

if.end5.2.i:                                      ; preds = %if.end5.1.i
  %arrayidx.2.i = getelementptr %struct.ttusb, ptr %call7.i.i, i32 0, i32 14, i32 2
  %35 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call2.2.i, ptr %arrayidx.2.i, align 8
  %call2.3.i = tail call ptr @usb_alloc_urb(i32 noundef 4, i32 noundef 2592) #10
  %tobool3.not.3.i = icmp eq ptr %call2.3.i, null
  br i1 %tobool3.not.3.i, label %if.end5.2.i.if.then4.i_crit_edge, label %if.end36

if.end5.2.i.if.then4.i_crit_edge:                 ; preds = %if.end5.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4.i

do.body24:                                        ; preds = %if.then4.i, %if.end11.do.body24_crit_edge
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool25.not = icmp eq i32 %36, 0
  br i1 %tobool25.not, label %do.body24.do.end34_crit_edge, label %do.end29

do.body24.do.end34_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34

do.end29:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3) #13
  br label %do.end34

do.end34:                                         ; preds = %do.end29, %do.body24.do.end34_crit_edge
  tail call void @mutex_unlock(ptr noundef %semi2c) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end36:                                         ; preds = %if.end5.2.i
  %arrayidx.3.i = getelementptr %struct.ttusb, ptr %call7.i.i, i32 0, i32 14, i32 3
  %37 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call2.3.i, ptr %arrayidx.3.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %b0.i) #10
  %38 = getelementptr inbounds [5 x i8], ptr %b0.i, i32 0, i32 1
  %39 = getelementptr inbounds [5 x i8], ptr %b0.i, i32 0, i32 2
  %40 = getelementptr inbounds [5 x i8], ptr %b0.i, i32 0, i32 3
  %41 = getelementptr inbounds [5 x i8], ptr %b0.i, i32 0, i32 4
  %42 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -86, ptr %b0.i, align 1
  %43 = ptrtoint ptr %c to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %c, align 4
  %inc.i = add i8 %44, 1
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %inc.i, ptr %38, align 1
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 21, ptr %39, align 1
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %40, align 1
  %48 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %b1.i) #10
  %49 = getelementptr inbounds [5 x i8], ptr %b1.i, i32 0, i32 1
  %50 = getelementptr inbounds [5 x i8], ptr %b1.i, i32 0, i32 2
  %51 = getelementptr inbounds [5 x i8], ptr %b1.i, i32 0, i32 3
  %52 = getelementptr inbounds [5 x i8], ptr %b1.i, i32 0, i32 4
  %53 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -86, ptr %b1.i, align 1
  %inc7.i = add i8 %44, 2
  %54 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %inc7.i, ptr %49, align 1
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 21, ptr %50, align 1
  %56 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %51, align 1
  %57 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %52, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %b2.i) #10
  %58 = getelementptr inbounds [5 x i8], ptr %b2.i, i32 0, i32 1
  %59 = getelementptr inbounds [5 x i8], ptr %b2.i, i32 0, i32 2
  %60 = getelementptr inbounds [5 x i8], ptr %b2.i, i32 0, i32 3
  %61 = getelementptr inbounds [5 x i8], ptr %b2.i, i32 0, i32 4
  %62 = ptrtoint ptr %b2.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -86, ptr %b2.i, align 1
  %inc14.i = add i8 %44, 3
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %inc14.i, ptr %58, align 1
  %64 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 50, ptr %59, align 1
  %65 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %60, align 1
  %66 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %61, align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %b3.i) #10
  %67 = getelementptr inbounds [9 x i8], ptr %b3.i, i32 0, i32 1
  %68 = getelementptr inbounds [9 x i8], ptr %b3.i, i32 0, i32 2
  %69 = getelementptr inbounds [9 x i8], ptr %b3.i, i32 0, i32 3
  %70 = getelementptr inbounds [9 x i8], ptr %b3.i, i32 0, i32 4
  %71 = getelementptr inbounds [9 x i8], ptr %b3.i, i32 0, i32 5
  %72 = getelementptr inbounds [9 x i8], ptr %b3.i, i32 0, i32 6
  %73 = getelementptr inbounds [9 x i8], ptr %b3.i, i32 0, i32 7
  %74 = getelementptr inbounds [9 x i8], ptr %b3.i, i32 0, i32 8
  %75 = ptrtoint ptr %b3.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -86, ptr %b3.i, align 1
  %inc21.i = add i8 %44, 4
  %76 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %inc21.i, ptr %67, align 1
  %77 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 49, ptr %68, align 1
  %78 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 5, ptr %69, align 1
  %79 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 16, ptr %70, align 1
  %80 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 2, ptr %71, align 1
  %81 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %72, align 1
  %82 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %73, align 1
  %83 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 30, ptr %74, align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %get_version.i) #10
  %84 = getelementptr inbounds [9 x i8], ptr %get_version.i, i32 0, i32 1
  %85 = getelementptr inbounds [9 x i8], ptr %get_version.i, i32 0, i32 2
  %86 = getelementptr inbounds [9 x i8], ptr %get_version.i, i32 0, i32 3
  %87 = getelementptr inbounds [9 x i8], ptr %get_version.i, i32 0, i32 4
  %88 = getelementptr inbounds [9 x i8], ptr %get_version.i, i32 0, i32 5
  %89 = getelementptr inbounds [9 x i8], ptr %get_version.i, i32 0, i32 6
  %90 = getelementptr inbounds [9 x i8], ptr %get_version.i, i32 0, i32 7
  %91 = getelementptr inbounds [9 x i8], ptr %get_version.i, i32 0, i32 8
  %92 = ptrtoint ptr %get_version.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -86, ptr %get_version.i, align 1
  %inc32.i = add i8 %44, 5
  %93 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %inc32.i, ptr %84, align 1
  %94 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 23, ptr %85, align 1
  %95 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 5, ptr %86, align 1
  %96 = call ptr @memset(ptr %87, i32 0, i32 5)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %get_dsp_version.i) #10
  %97 = getelementptr inbounds [32 x i8], ptr %get_dsp_version.i, i32 0, i32 1
  %98 = getelementptr inbounds [32 x i8], ptr %get_dsp_version.i, i32 0, i32 2
  %99 = getelementptr inbounds [32 x i8], ptr %get_dsp_version.i, i32 0, i32 3
  %100 = getelementptr inbounds [32 x i8], ptr %get_dsp_version.i, i32 0, i32 4
  %101 = getelementptr inbounds [32 x i8], ptr %get_dsp_version.i, i32 0, i32 5
  %102 = getelementptr inbounds [32 x i8], ptr %get_dsp_version.i, i32 0, i32 6
  %103 = call ptr @memset(ptr %100, i32 0, i32 28)
  %104 = ptrtoint ptr %get_dsp_version.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -86, ptr %get_dsp_version.i, align 1
  %inc43.i = add i8 %44, 6
  %105 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %inc43.i, ptr %c, align 4
  %106 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %inc43.i, ptr %97, align 1
  %107 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 38, ptr %98, align 1
  %108 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 28, ptr %99, align 1
  %call.i189 = call fastcc i32 @ttusb_cmd(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %b0.i, i32 noundef 5, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool.not.i190 = icmp eq i32 %call.i189, 0
  br i1 %tobool.not.i190, label %if.end.i, label %if.end36.do.end42_crit_edge

if.end36.do.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

if.end.i:                                         ; preds = %if.end36
  %call52.i = call fastcc i32 @ttusb_cmd(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %b1.i, i32 noundef 5, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.end55.i, label %if.end.i.do.end42_crit_edge

if.end.i.do.end42_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

if.end55.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i.i) #10
  %109 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i.i, align 4, !annotation !296
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %b.i.i) #10
  %110 = getelementptr inbounds i8, ptr %b.i.i, i32 1
  %111 = call ptr @memset(ptr %110, i32 255, i32 39)
  %112 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev, align 8
  %dev1.i.i = getelementptr inbounds %struct.usb_device, ptr %113, i32 0, i32 15
  %call.i.i = call i32 @request_firmware(ptr noundef nonnull %fw.i.i, ptr noundef nonnull @.str.51, ptr noundef %dev1.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #13
  br label %ttusb_boot_dsp.exit.i

if.end.i.i:                                       ; preds = %if.end55.i
  %114 = ptrtoint ptr %b.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 -86, ptr %b.i.i, align 1
  %arrayidx3.i.i = getelementptr inbounds [40 x i8], ptr %b.i.i, i32 0, i32 2
  %115 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 19, ptr %arrayidx3.i.i, align 1
  %arrayidx4.i.i = getelementptr inbounds [40 x i8], ptr %b.i.i, i32 0, i32 3
  %116 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 28, ptr %arrayidx4.i.i, align 1
  %117 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %fw.i.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp4.not.i.i = icmp eq i32 %120, 0
  br i1 %cmp4.not.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %arrayidx5.i.i = getelementptr inbounds [40 x i8], ptr %b.i.i, i32 0, i32 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %add.i.i = add i32 %i.05.i.i, 28
  %121 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %fw.i.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %122, align 4
  %cmp.i.i = icmp ult i32 %add.i.i, %124
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.for.end.i.i_crit_edge

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %125 = phi ptr [ %118, %for.body.lr.ph.i.i ], [ %122, %for.cond.i.i.for.body.i.i_crit_edge ]
  %i.05.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %data.i.i, align 4
  %arrayidx6.i.i = getelementptr i8, ptr %127, i32 %i.05.i.i
  %128 = call ptr @memcpy(ptr %arrayidx5.i.i, ptr %arrayidx6.i.i, i32 28)
  %129 = ptrtoint ptr %c to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %c, align 4
  %inc.i.i = add i8 %130, 1
  store i8 %inc.i.i, ptr %c, align 4
  %131 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %inc.i.i, ptr %110, align 1
  %call8.i.i = call fastcc i32 @ttusb_cmd(ptr noundef %call7.i.i, ptr noundef nonnull %b.i.i, i32 noundef 32, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %for.cond.i.i, label %for.body.i.i.done.thread.i.i_crit_edge

for.body.i.i.done.thread.i.i_crit_edge:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.thread.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  %132 = ptrtoint ptr %c to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %c, align 4
  %inc13.i.i = add i8 %133, 1
  store i8 %inc13.i.i, ptr %c, align 4
  %134 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %inc13.i.i, ptr %110, align 1
  %135 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 19, ptr %arrayidx3.i.i, align 1
  %136 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %arrayidx4.i.i, align 1
  %call18.i.i = call fastcc i32 @ttusb_cmd(ptr noundef %call7.i.i, ptr noundef nonnull %b.i.i, i32 noundef 4, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %tobool19.not.i.i = icmp eq i32 %call18.i.i, 0
  br i1 %tobool19.not.i.i, label %done.i.i, label %for.end.i.i.done.thread.i.i_crit_edge

for.end.i.i.done.thread.i.i_crit_edge:            ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.thread.i.i

done.thread.i.i:                                  ; preds = %for.end.i.i.done.thread.i.i_crit_edge, %for.body.i.i.done.thread.i.i_crit_edge
  %err.0.ph.i.i = phi i32 [ %call18.i.i, %for.end.i.i.done.thread.i.i_crit_edge ], [ %call8.i.i, %for.body.i.i.done.thread.i.i_crit_edge ]
  %137 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %fw.i.i, align 4
  call void @release_firmware(ptr noundef %138) #10
  br label %do.body31.i.i

done.i.i:                                         ; preds = %for.end.i.i
  %139 = ptrtoint ptr %c to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %c, align 4
  %inc23.i.i = add i8 %140, 1
  store i8 %inc23.i.i, ptr %c, align 4
  %141 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %inc23.i.i, ptr %110, align 1
  %142 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 20, ptr %arrayidx3.i.i, align 1
  %143 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %arrayidx4.i.i, align 1
  %call28.i.i = call fastcc i32 @ttusb_cmd(ptr noundef %call7.i.i, ptr noundef nonnull %b.i.i, i32 noundef 4, i32 noundef 0) #10
  %144 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %fw.i.i, align 4
  call void @release_firmware(ptr noundef %145) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %done.i.i.ttusb_boot_dsp.exit.i_crit_edge, label %done.i.i.do.body31.i.i_crit_edge

done.i.i.do.body31.i.i_crit_edge:                 ; preds = %done.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31.i.i

done.i.i.ttusb_boot_dsp.exit.i_crit_edge:         ; preds = %done.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ttusb_boot_dsp.exit.i

do.body31.i.i:                                    ; preds = %done.i.i.do.body31.i.i_crit_edge, %done.thread.i.i
  %err.03.i.i = phi i32 [ %err.0.ph.i.i, %done.thread.i.i ], [ %call28.i.i, %done.i.i.do.body31.i.i_crit_edge ]
  %146 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool32.not.i.i = icmp eq i32 %146, 0
  br i1 %tobool32.not.i.i, label %do.body31.i.i.ttusb_boot_dsp.exit.i_crit_edge, label %do.end36.i.i

do.body31.i.i.ttusb_boot_dsp.exit.i_crit_edge:    ; preds = %do.body31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ttusb_boot_dsp.exit.i

do.end36.i.i:                                     ; preds = %do.body31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call38.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef %err.03.i.i) #13
  br label %ttusb_boot_dsp.exit.i

ttusb_boot_dsp.exit.i:                            ; preds = %do.end36.i.i, %do.body31.i.i.ttusb_boot_dsp.exit.i_crit_edge, %done.i.i.ttusb_boot_dsp.exit.i_crit_edge, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %b.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #10
  %call58.i = call fastcc i32 @ttusb_cmd(ptr noundef %call7.i.i, ptr noundef nonnull %b2.i, i32 noundef 5, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end61.i, label %ttusb_boot_dsp.exit.i.do.end42_crit_edge

ttusb_boot_dsp.exit.i.do.end42_crit_edge:         ; preds = %ttusb_boot_dsp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

if.end61.i:                                       ; preds = %ttusb_boot_dsp.exit.i
  %call63.i = call fastcc i32 @ttusb_cmd(ptr noundef %call7.i.i, ptr noundef nonnull %b3.i, i32 noundef 9, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.end66.i, label %if.end61.i.do.end42_crit_edge

if.end61.i.do.end42_crit_edge:                    ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

if.end66.i:                                       ; preds = %if.end61.i
  %call68.i = call fastcc i32 @ttusb_cmd(ptr noundef %call7.i.i, ptr noundef nonnull %get_version.i, i32 noundef 9, i32 noundef 9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %do.body.i, label %if.end66.i.do.end42_crit_edge

if.end66.i.do.end42_crit_edge:                    ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

do.body.i:                                        ; preds = %if.end66.i
  %147 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool72.not.i = icmp eq i32 %147, 0
  br i1 %tobool72.not.i, label %do.body.i.do.end86.i_crit_edge, label %do.end.i

do.body.i.do.end86.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end86.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %87, align 1
  %conv.i = zext i8 %149 to i32
  %150 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %88, align 1
  %conv76.i = zext i8 %151 to i32
  %152 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %89, align 1
  %conv78.i = zext i8 %153 to i32
  %154 = ptrtoint ptr %90 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %90, align 1
  %conv80.i = zext i8 %155 to i32
  %156 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %91, align 1
  %conv82.i = zext i8 %157 to i32
  %call83.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %conv.i, i32 noundef %conv76.i, i32 noundef %conv78.i, i32 noundef %conv80.i, i32 noundef %conv82.i) #13
  br label %do.end86.i

do.end86.i:                                       ; preds = %do.end.i, %do.body.i.do.end86.i_crit_edge
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(5) %87, ptr noundef nonnull dereferenceable(5) @.str.27, i32 5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool89.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool89.not.i, label %do.end86.i.if.end120.i_crit_edge, label %land.lhs.true.i

do.end86.i.if.end120.i_crit_edge:                 ; preds = %do.end86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120.i

land.lhs.true.i:                                  ; preds = %do.end86.i
  %bcmp167.i = call i32 @bcmp(ptr noundef dereferenceable(5) %87, ptr noundef nonnull dereferenceable(5) @.str.28, i32 5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp167.i)
  %tobool93.not.i = icmp eq i32 %bcmp167.i, 0
  br i1 %tobool93.not.i, label %land.lhs.true.i.if.end120.i_crit_edge, label %land.lhs.true94.i

land.lhs.true.i.if.end120.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120.i

land.lhs.true94.i:                                ; preds = %land.lhs.true.i
  %bcmp168.i = call i32 @bcmp(ptr noundef dereferenceable(5) %87, ptr noundef nonnull dereferenceable(5) @.str.29, i32 5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp168.i)
  %tobool98.not.i = icmp eq i32 %bcmp168.i, 0
  br i1 %tobool98.not.i, label %land.lhs.true94.i.if.end120.i_crit_edge, label %land.lhs.true99.i

land.lhs.true94.i.if.end120.i_crit_edge:          ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120.i

land.lhs.true99.i:                                ; preds = %land.lhs.true94.i
  %bcmp169.i = call i32 @bcmp(ptr noundef dereferenceable(5) %87, ptr noundef nonnull dereferenceable(5) @.str.30, i32 5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp169.i)
  %tobool103.not.i = icmp eq i32 %bcmp169.i, 0
  br i1 %tobool103.not.i, label %land.lhs.true99.i.if.end120.i_crit_edge, label %do.end107.i

land.lhs.true99.i.if.end120.i_crit_edge:          ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120.i

do.end107.i:                                      ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #12
  %158 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %87, align 1
  %conv110.i = zext i8 %159 to i32
  %160 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %88, align 1
  %conv112.i = zext i8 %161 to i32
  %162 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %89, align 1
  %conv114.i = zext i8 %163 to i32
  %164 = ptrtoint ptr %90 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %90, align 1
  %conv116.i = zext i8 %165 to i32
  %166 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %91, align 1
  %conv118.i = zext i8 %167 to i32
  %call119.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv110.i, i32 noundef %conv112.i, i32 noundef %conv114.i, i32 noundef %conv116.i, i32 noundef %conv118.i) #13
  br label %if.end120.i

if.end120.i:                                      ; preds = %do.end107.i, %land.lhs.true99.i.if.end120.i_crit_edge, %land.lhs.true94.i.if.end120.i_crit_edge, %land.lhs.true.i.if.end120.i_crit_edge, %do.end86.i.if.end120.i_crit_edge
  %168 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %89, align 1
  %conv122.i = zext i8 %169 to i32
  %sub.i = shl nuw nsw i32 %conv122.i, 4
  %shl.i = add nsw i32 %sub.i, -768
  %170 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %91, align 1
  %conv124.i = zext i8 %171 to i32
  %sub125.i = add nsw i32 %conv124.i, -48
  %or.i191 = or i32 %shl.i, %sub125.i
  %revision.i = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 30
  %172 = ptrtoint ptr %revision.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %or.i191, ptr %revision.i, align 8
  %call127.i = call fastcc i32 @ttusb_cmd(ptr noundef %call7.i.i, ptr noundef nonnull %get_dsp_version.i, i32 noundef 32, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127.i)
  %tobool128.not.i = icmp eq i32 %call127.i, 0
  br i1 %tobool128.not.i, label %ttusb_init_controller.exit, label %if.end120.i.do.end42_crit_edge

if.end120.i.do.end42_crit_edge:                   ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

ttusb_init_controller.exit:                       ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #12
  %173 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %100, align 1
  %conv136.i = zext i8 %174 to i32
  %175 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %101, align 1
  %conv138.i = zext i8 %176 to i32
  %177 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %102, align 1
  %conv140.i = zext i8 %178 to i32
  %call141.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv136.i, i32 noundef %conv138.i, i32 noundef %conv140.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %get_dsp_version.i) #10
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %get_version.i) #10
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %b3.i) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %b2.i) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %b1.i) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %b0.i) #10
  br label %if.end45

do.end42:                                         ; preds = %if.end120.i.do.end42_crit_edge, %if.end66.i.do.end42_crit_edge, %if.end61.i.do.end42_crit_edge, %ttusb_boot_dsp.exit.i.do.end42_crit_edge, %if.end.i.do.end42_crit_edge, %if.end36.do.end42_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %get_dsp_version.i) #10
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %get_version.i) #10
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %b3.i) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %b2.i) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %b1.i) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %b0.i) #10
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %if.end45

if.end45:                                         ; preds = %do.end42, %ttusb_init_controller.exit
  call void @mutex_unlock(ptr noundef %semi2c) #10
  %adapter = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 5
  %call48 = call i32 @dvb_register_adapter(ptr noundef %adapter, ptr noundef nonnull @.str.14, ptr noundef null, ptr noundef %2, ptr noundef nonnull @adapter_nr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %179 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %arrayidx.i, align 8
  call void @usb_free_urb(ptr noundef %180) #10
  %181 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx.1.i, align 4
  call void @usb_free_urb(ptr noundef %182) #10
  %183 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx.2.i, align 8
  call void @usb_free_urb(ptr noundef %184) #10
  %185 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx.3.i, align 4
  call void @usb_free_urb(ptr noundef %186) #10
  %187 = ptrtoint ptr %iso_buffer.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %iso_buffer.i, align 4
  call void @kfree(ptr noundef %188) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end52:                                         ; preds = %if.end45
  %priv = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 5, i32 5
  %189 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %call7.i.i, ptr %priv, align 8
  %i2c_adap = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 7
  %190 = call ptr @memset(ptr %i2c_adap, i32 0, i32 1360)
  %name = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 7, i32 12
  %call55 = call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.15, i32 noundef 48) #10
  %driver_data.i.i = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 7, i32 9, i32 8
  %191 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %algo = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 7, i32 2
  %192 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @ttusb_dec_algo, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 7, i32 3
  %193 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr null, ptr %algo_data, align 4
  %parent = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 7, i32 9, i32 1
  %194 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %2, ptr %parent, align 8
  %call63 = call i32 @i2c_add_adapter(ptr noundef %i2c_adap) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end52.err_unregister_adapter_crit_edge

if.end52.err_unregister_adapter_crit_edge:        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unregister_adapter

if.end66:                                         ; preds = %if.end52
  %195 = call ptr @memset(ptr %call7.i.i, i32 0, i32 624)
  %196 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 5, ptr %call7.i.i, align 8
  %filternum = getelementptr inbounds %struct.dvb_demux, ptr %call7.i.i, i32 0, i32 2
  %197 = ptrtoint ptr %filternum to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 32, ptr %filternum, align 8
  %feednum = getelementptr inbounds %struct.dvb_demux, ptr %call7.i.i, i32 0, i32 3
  %198 = ptrtoint ptr %feednum to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 32, ptr %feednum, align 4
  %start_feed = getelementptr inbounds %struct.dvb_demux, ptr %call7.i.i, i32 0, i32 4
  %199 = ptrtoint ptr %start_feed to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr @ttusb_start_feed, ptr %start_feed, align 8
  %stop_feed = getelementptr inbounds %struct.dvb_demux, ptr %call7.i.i, i32 0, i32 5
  %200 = ptrtoint ptr %stop_feed to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr @ttusb_stop_feed, ptr %stop_feed, align 4
  %call76 = call i32 @dvb_dmx_init(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %do.end82, label %if.end85

do.end82:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call76) #13
  br label %err_i2c_del_adapter

if.end85:                                         ; preds = %if.end66
  %201 = ptrtoint ptr %filternum to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %filternum, align 8
  %dmxdev = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 1
  %filternum88 = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 1, i32 4
  %203 = ptrtoint ptr %filternum88 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %filternum88, align 8
  %demux = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 1, i32 3
  %204 = ptrtoint ptr %demux to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %call7.i.i, ptr %demux, align 4
  %capabilities93 = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 1, i32 5
  %205 = ptrtoint ptr %capabilities93 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 0, ptr %capabilities93, align 4
  %call96 = call i32 @dvb_dmxdev_init(ptr noundef %dmxdev, ptr noundef %adapter) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %do.end102, label %if.end105

do.end102:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call96) #13
  br label %err_release_dmx

if.end105:                                        ; preds = %if.end85
  %dvbnet = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 2
  %call109 = call i32 @dvb_net_init(ptr noundef %adapter, ptr noundef %dvbnet, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end117, label %do.end114

do.end114:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #13
  call void @dvb_dmxdev_release(ptr noundef %dmxdev) #10
  br label %err_release_dmx

if.end117:                                        ; preds = %if.end105
  %driver_data.i.i197 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %206 = ptrtoint ptr %driver_data.i.i197 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %call7.i.i, ptr %driver_data.i.i197, align 4
  %207 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev, align 8
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %208, i32 0, i32 16, i32 8
  %209 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %idProduct.i, align 2
  %211 = call i16 @llvm.bswap.i16(i16 %210) #10
  %212 = zext i16 %211 to i64
  call void @__sanitizer_cov_trace_switch(i64 %212, ptr @__sancov_gen_cov_switch_values)
  switch i16 %211, label %if.end117.sw.epilog.i_crit_edge [
    i16 4099, label %sw.bb.i
    i16 4100, label %sw.bb89.i
    i16 4101, label %sw.bb163.i
  ]

if.end117.sw.epilog.i_crit_edge:                  ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end117
  %call.i200 = call ptr @__symbol_get(ptr noundef nonnull @.str.89) #10
  %tobool.not.i201 = icmp eq ptr %call.i200, null
  br i1 %tobool.not.i201, label %cond.end.i, label %sw.bb.i.if.then.i_crit_edge

sw.bb.i.if.then.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

cond.end.i:                                       ; preds = %sw.bb.i
  %call1.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.90) #10
  %call2.i202 = call ptr @__symbol_get(ptr noundef nonnull @.str.89) #10
  %tobool3.not.i203 = icmp eq ptr %call2.i202, null
  br i1 %tobool3.not.i203, label %do.end.i204, label %cond.end.i.if.then.i_crit_edge

cond.end.i.if.then.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %cond.end.i.if.then.i_crit_edge, %sw.bb.i.if.then.i_crit_edge
  %cond323.i = phi ptr [ %call2.i202, %cond.end.i.if.then.i_crit_edge ], [ %call.i200, %sw.bb.i.if.then.i_crit_edge ]
  %call4.i = call ptr %cond323.i(ptr noundef nonnull @alps_stv0299_config, ptr noundef %i2c_adap) #10
  %cmp.i = icmp eq ptr %call4.i, null
  br i1 %cmp.i, label %if.then6.i, label %if.then13.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__symbol_put(ptr noundef nonnull @.str.89) #10
  br label %if.end49.i

do.end.i204:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #13
  br label %if.end49.i

if.then13.i:                                      ; preds = %if.then.i
  %fe.i = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 31
  %213 = ptrtoint ptr %fe.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %call4.i, ptr %fe.i, align 4
  %set_params.i = getelementptr inbounds %struct.dvb_frontend, ptr %call4.i, i32 0, i32 1, i32 32, i32 6
  %214 = ptrtoint ptr %set_params.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @philips_tsa5059_tuner_set_params, ptr %set_params.i, align 4
  %revision.i205 = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 30
  %215 = ptrtoint ptr %revision.i205 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %revision.i205, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %216)
  %cmp15.i = icmp eq i32 %216, 34
  br i1 %cmp15.i, label %if.then17.i, label %if.else45.i

if.then17.i:                                      ; preds = %if.then13.i
  store ptr @alps_bsbe1_inittab, ptr getelementptr inbounds (%struct.stv0299_config, ptr @alps_stv0299_config, i32 0, i32 1), align 4
  %call20.i = call ptr @__symbol_get(ptr noundef nonnull @.str.93) #10
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %cond.end26.i, label %if.then17.i.if.then29.i_crit_edge

if.then17.i.if.then29.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29.i

cond.end26.i:                                     ; preds = %if.then17.i
  %call24.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.94) #10
  %call25.i = call ptr @__symbol_get(ptr noundef nonnull @.str.93) #10
  %tobool28.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool28.not.i, label %do.end40.i, label %cond.end26.i.if.then29.i_crit_edge

cond.end26.i.if.then29.i_crit_edge:               ; preds = %cond.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29.i

if.then29.i:                                      ; preds = %cond.end26.i.if.then29.i_crit_edge, %if.then17.i.if.then29.i_crit_edge
  %cond27330.i = phi ptr [ %call25.i, %cond.end26.i.if.then29.i_crit_edge ], [ %call20.i, %if.then17.i.if.then29.i_crit_edge ]
  %217 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %fe.i, align 4
  %call32.i = call ptr %cond27330.i(ptr noundef %218, ptr noundef %i2c_adap, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %cmp33.i = icmp eq ptr %call32.i, null
  br i1 %cmp33.i, label %if.then35.i, label %if.then29.i.sw.epilog.i_crit_edge

if.then29.i.sw.epilog.i_crit_edge:                ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then35.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__symbol_put(ptr noundef nonnull @.str.93) #10
  br label %sw.epilog.i

do.end40.i:                                       ; preds = %cond.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #13
  br label %sw.epilog.i

if.else45.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  %219 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %fe.i, align 4
  %set_voltage.i = getelementptr inbounds %struct.dvb_frontend, ptr %220, i32 0, i32 1, i32 25
  %221 = ptrtoint ptr %set_voltage.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr @ttusb_set_voltage, ptr %set_voltage.i, align 4
  br label %sw.epilog.i

if.end49.i:                                       ; preds = %do.end.i204, %if.then6.i
  %fe325.i = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 31
  %222 = ptrtoint ptr %fe325.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr null, ptr %fe325.i, align 4
  %call52.i206 = call ptr @__symbol_get(ptr noundef nonnull @.str.98) #10
  %tobool53.not.i207 = icmp eq ptr %call52.i206, null
  br i1 %tobool53.not.i207, label %cond.end58.i, label %if.end49.i.if.then61.i_crit_edge

if.end49.i.if.then61.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61.i

cond.end58.i:                                     ; preds = %if.end49.i
  %call56.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.99) #10
  %call57.i = call ptr @__symbol_get(ptr noundef nonnull @.str.98) #10
  %tobool60.not.i = icmp eq ptr %call57.i, null
  br i1 %tobool60.not.i, label %do.end71.i, label %cond.end58.i.if.then61.i_crit_edge

cond.end58.i.if.then61.i_crit_edge:               ; preds = %cond.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61.i

if.then61.i:                                      ; preds = %cond.end58.i.if.then61.i_crit_edge, %if.end49.i.if.then61.i_crit_edge
  %cond59333.i = phi ptr [ %call57.i, %cond.end58.i.if.then61.i_crit_edge ], [ %call52.i206, %if.end49.i.if.then61.i_crit_edge ]
  %call63.i208 = call ptr %cond59333.i(ptr noundef nonnull @ttusb_novas_grundig_29504_491_config, ptr noundef %i2c_adap) #10
  %cmp64.i = icmp eq ptr %call63.i208, null
  br i1 %cmp64.i, label %if.then66.i, label %if.then80.i

if.then66.i:                                      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__symbol_put(ptr noundef nonnull @.str.98) #10
  br label %if.end74.thread.i

do.end71.i:                                       ; preds = %cond.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  %call73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101) #13
  br label %if.end74.thread.i

if.end74.thread.i:                                ; preds = %do.end71.i, %if.then66.i
  %223 = ptrtoint ptr %fe325.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr null, ptr %fe325.i, align 4
  br label %sw.epilog.i

if.then80.i:                                      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #12
  %224 = ptrtoint ptr %fe325.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %call63.i208, ptr %fe325.i, align 4
  %set_params84.i = getelementptr inbounds %struct.dvb_frontend, ptr %call63.i208, i32 0, i32 1, i32 32, i32 6
  %225 = ptrtoint ptr %set_params84.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr @ttusb_novas_grundig_29504_491_tuner_set_params, ptr %set_params84.i, align 4
  %226 = load ptr, ptr %fe325.i, align 4
  %set_voltage87.i = getelementptr inbounds %struct.dvb_frontend, ptr %226, i32 0, i32 1, i32 25
  %227 = ptrtoint ptr %set_voltage87.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr @ttusb_set_voltage, ptr %set_voltage87.i, align 4
  br label %sw.epilog.i

sw.bb89.i:                                        ; preds = %if.end117
  %call92.i = call ptr @__symbol_get(ptr noundef nonnull @.str.103) #10
  %tobool93.not.i209 = icmp eq ptr %call92.i, null
  br i1 %tobool93.not.i209, label %cond.end98.i, label %sw.bb89.i.if.then101.i_crit_edge

sw.bb89.i.if.then101.i_crit_edge:                 ; preds = %sw.bb89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then101.i

cond.end98.i:                                     ; preds = %sw.bb89.i
  %call96.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.104) #10
  %call97.i = call ptr @__symbol_get(ptr noundef nonnull @.str.103) #10
  %tobool100.not.i = icmp eq ptr %call97.i, null
  br i1 %tobool100.not.i, label %do.end112.i, label %cond.end98.i.if.then101.i_crit_edge

cond.end98.i.if.then101.i_crit_edge:              ; preds = %cond.end98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then101.i

if.then101.i:                                     ; preds = %cond.end98.i.if.then101.i_crit_edge, %sw.bb89.i.if.then101.i_crit_edge
  %cond99338.i = phi ptr [ %call97.i, %cond.end98.i.if.then101.i_crit_edge ], [ %call92.i, %sw.bb89.i.if.then101.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i.i198) #10
  %228 = ptrtoint ptr %b.i.i198 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 -1, ptr %b.i.i198, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwm.i.i) #10
  %229 = ptrtoint ptr %pwm.i.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 -1, ptr %pwm.i.i, align 1, !annotation !296
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #10
  %230 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %231 = call ptr @memset(ptr %230, i32 255, i32 16)
  %232 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 80, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %233 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 0, ptr %flags.i.i, align 2
  %234 = ptrtoint ptr %230 to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 1, ptr %230, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %235 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %b.i.i198, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %236 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 80, ptr %arrayinit.element.i.i, align 4
  %flags2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %237 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 1, ptr %flags2.i.i, align 2
  %len3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %238 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 1, ptr %len3.i.i, align 4
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %239 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %pwm.i.i, ptr %buf4.i.i, align 4
  %call.i.i210 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg.i.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i210)
  %cmp.not.i.i = icmp eq i32 %call.i.i210, 2
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.then101.i.if.then.i.i_crit_edge

if.then101.i.if.then.i.i_crit_edge:               ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.then101.i
  %240 = ptrtoint ptr %pwm.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %pwm.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %241)
  %cmp5.i.i = icmp eq i8 %241, -1
  br i1 %cmp5.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.read_pwm.exit.i_crit_edge

lor.lhs.false.i.i.read_pwm.exit.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_pwm.exit.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.then101.i.if.then.i.i_crit_edge
  %242 = ptrtoint ptr %pwm.i.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 72, ptr %pwm.i.i, align 1
  br label %read_pwm.exit.i

read_pwm.exit.i:                                  ; preds = %if.then.i.i, %lor.lhs.false.i.i.read_pwm.exit.i_crit_edge
  %243 = ptrtoint ptr %pwm.i.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %pwm.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwm.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i.i198) #10
  %call104.i = call ptr %cond99338.i(ptr noundef nonnull @alps_tdbe2_config, ptr noundef %i2c_adap, i8 noundef zeroext %244) #10
  %cmp105.i = icmp eq ptr %call104.i, null
  br i1 %cmp105.i, label %if.then107.i, label %if.then121.i

if.then107.i:                                     ; preds = %read_pwm.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__symbol_put(ptr noundef nonnull @.str.103) #10
  br label %if.end126.i

do.end112.i:                                      ; preds = %cond.end98.i
  call void @__sanitizer_cov_trace_pc() #12
  %call114.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #13
  br label %if.end126.i

if.then121.i:                                     ; preds = %read_pwm.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %fe117.i = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 31
  %245 = ptrtoint ptr %fe117.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %call104.i, ptr %fe117.i, align 4
  %set_params125.i = getelementptr inbounds %struct.dvb_frontend, ptr %call104.i, i32 0, i32 1, i32 32, i32 6
  %246 = ptrtoint ptr %set_params125.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr @alps_tdbe2_tuner_set_params, ptr %set_params125.i, align 4
  br label %sw.epilog.i

if.end126.i:                                      ; preds = %do.end112.i, %if.then107.i
  %fe117340.i = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 31
  %247 = ptrtoint ptr %fe117340.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr null, ptr %fe117340.i, align 4
  %call129.i = call ptr @__symbol_get(ptr noundef nonnull @.str.108) #10
  %tobool130.not.i = icmp eq ptr %call129.i, null
  br i1 %tobool130.not.i, label %cond.end135.i, label %if.end126.i.if.then138.i_crit_edge

if.end126.i.if.then138.i_crit_edge:               ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then138.i

cond.end135.i:                                    ; preds = %if.end126.i
  %call133.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.109) #10
  %call134.i = call ptr @__symbol_get(ptr noundef nonnull @.str.108) #10
  %tobool137.not.i = icmp eq ptr %call134.i, null
  br i1 %tobool137.not.i, label %do.end148.i, label %cond.end135.i.if.then138.i_crit_edge

cond.end135.i.if.then138.i_crit_edge:             ; preds = %cond.end135.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then138.i

if.then138.i:                                     ; preds = %cond.end135.i.if.then138.i_crit_edge, %if.end126.i.if.then138.i_crit_edge
  %cond136345.i = phi ptr [ %call134.i, %cond.end135.i.if.then138.i_crit_edge ], [ %call129.i, %if.end126.i.if.then138.i_crit_edge ]
  %call140.i = call ptr %cond136345.i(ptr noundef nonnull @dvbc_philips_tdm1316l_config, ptr noundef %i2c_adap) #10
  %cmp141.i = icmp eq ptr %call140.i, null
  br i1 %cmp141.i, label %if.then143.i, label %if.then157.i

if.then143.i:                                     ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__symbol_put(ptr noundef nonnull @.str.108) #10
  br label %if.end151.thread.i

do.end148.i:                                      ; preds = %cond.end135.i
  call void @__sanitizer_cov_trace_pc() #12
  %call150.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #13
  br label %if.end151.thread.i

if.end151.thread.i:                               ; preds = %do.end148.i, %if.then143.i
  %248 = ptrtoint ptr %fe117340.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr null, ptr %fe117340.i, align 4
  br label %sw.epilog.i

if.then157.i:                                     ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #12
  %249 = ptrtoint ptr %fe117340.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %call140.i, ptr %fe117340.i, align 4
  %set_params161.i = getelementptr inbounds %struct.dvb_frontend, ptr %call140.i, i32 0, i32 1, i32 32, i32 6
  %250 = ptrtoint ptr %set_params161.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr @dvbc_philips_tdm1316l_tuner_set_params, ptr %set_params161.i, align 4
  br label %sw.epilog.i

sw.bb163.i:                                       ; preds = %if.end117
  %call166.i = call ptr @__symbol_get(ptr noundef nonnull @.str.113) #10
  %tobool167.not.i = icmp eq ptr %call166.i, null
  br i1 %tobool167.not.i, label %cond.end172.i, label %sw.bb163.i.if.then175.i_crit_edge

sw.bb163.i.if.then175.i_crit_edge:                ; preds = %sw.bb163.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then175.i

cond.end172.i:                                    ; preds = %sw.bb163.i
  %call170.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.114) #10
  %call171.i = call ptr @__symbol_get(ptr noundef nonnull @.str.113) #10
  %tobool174.not.i = icmp eq ptr %call171.i, null
  br i1 %tobool174.not.i, label %do.end185.i, label %cond.end172.i.if.then175.i_crit_edge

cond.end172.i.if.then175.i_crit_edge:             ; preds = %cond.end172.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then175.i

if.then175.i:                                     ; preds = %cond.end172.i.if.then175.i_crit_edge, %sw.bb163.i.if.then175.i_crit_edge
  %cond173350.i = phi ptr [ %call171.i, %cond.end172.i.if.then175.i_crit_edge ], [ %call166.i, %sw.bb163.i.if.then175.i_crit_edge ]
  %call177.i = call ptr %cond173350.i(ptr noundef nonnull @alps_tdmb7_config, ptr noundef %i2c_adap) #10
  %cmp178.i = icmp eq ptr %call177.i, null
  br i1 %cmp178.i, label %if.then180.i, label %if.then194.i

if.then180.i:                                     ; preds = %if.then175.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__symbol_put(ptr noundef nonnull @.str.113) #10
  br label %if.end199.i

do.end185.i:                                      ; preds = %cond.end172.i
  call void @__sanitizer_cov_trace_pc() #12
  %call187.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #13
  br label %if.end199.i

if.then194.i:                                     ; preds = %if.then175.i
  call void @__sanitizer_cov_trace_pc() #12
  %fe190.i = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 31
  %251 = ptrtoint ptr %fe190.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %call177.i, ptr %fe190.i, align 4
  %set_params198.i = getelementptr inbounds %struct.dvb_frontend, ptr %call177.i, i32 0, i32 1, i32 32, i32 6
  %252 = ptrtoint ptr %set_params198.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr @alps_tdmb7_tuner_set_params, ptr %set_params198.i, align 4
  br label %sw.epilog.i

if.end199.i:                                      ; preds = %do.end185.i, %if.then180.i
  %fe190352.i = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 31
  %253 = ptrtoint ptr %fe190352.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr null, ptr %fe190352.i, align 4
  %call202.i = call ptr @__symbol_get(ptr noundef nonnull @.str.118) #10
  %tobool203.not.i = icmp eq ptr %call202.i, null
  br i1 %tobool203.not.i, label %cond.end208.i, label %if.end199.i.if.then211.i_crit_edge

if.end199.i.if.then211.i_crit_edge:               ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then211.i

cond.end208.i:                                    ; preds = %if.end199.i
  %call206.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.119) #10
  %call207.i = call ptr @__symbol_get(ptr noundef nonnull @.str.118) #10
  %tobool210.not.i = icmp eq ptr %call207.i, null
  br i1 %tobool210.not.i, label %do.end221.i, label %cond.end208.i.if.then211.i_crit_edge

cond.end208.i.if.then211.i_crit_edge:             ; preds = %cond.end208.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then211.i

if.then211.i:                                     ; preds = %cond.end208.i.if.then211.i_crit_edge, %if.end199.i.if.then211.i_crit_edge
  %cond209357.i = phi ptr [ %call207.i, %cond.end208.i.if.then211.i_crit_edge ], [ %call202.i, %if.end199.i.if.then211.i_crit_edge ]
  %call213.i = call ptr %cond209357.i(ptr noundef nonnull @philips_tdm1316l_config, ptr noundef %i2c_adap) #10
  %cmp214.i = icmp eq ptr %call213.i, null
  br i1 %cmp214.i, label %if.then216.i, label %if.then230.i

if.then216.i:                                     ; preds = %if.then211.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__symbol_put(ptr noundef nonnull @.str.118) #10
  br label %if.end224.thread.i

do.end221.i:                                      ; preds = %cond.end208.i
  call void @__sanitizer_cov_trace_pc() #12
  %call223.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #13
  br label %if.end224.thread.i

if.end224.thread.i:                               ; preds = %do.end221.i, %if.then216.i
  %254 = ptrtoint ptr %fe190352.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr null, ptr %fe190352.i, align 4
  br label %sw.epilog.i

if.then230.i:                                     ; preds = %if.then211.i
  call void @__sanitizer_cov_trace_pc() #12
  %255 = ptrtoint ptr %fe190352.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %call213.i, ptr %fe190352.i, align 4
  %init.i = getelementptr inbounds %struct.dvb_frontend, ptr %call213.i, i32 0, i32 1, i32 32, i32 2
  %256 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr @philips_tdm1316l_tuner_init, ptr %init.i, align 4
  %257 = load ptr, ptr %fe190352.i, align 4
  %set_params237.i = getelementptr inbounds %struct.dvb_frontend, ptr %257, i32 0, i32 1, i32 32, i32 6
  %258 = ptrtoint ptr %set_params237.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr @philips_tdm1316l_tuner_set_params, ptr %set_params237.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then230.i, %if.end224.thread.i, %if.then194.i, %if.then157.i, %if.end151.thread.i, %if.then121.i, %if.then80.i, %if.end74.thread.i, %if.else45.i, %do.end40.i, %if.then35.i, %if.then29.i.sw.epilog.i_crit_edge, %if.end117.sw.epilog.i_crit_edge
  %fe239.i = getelementptr inbounds %struct.ttusb, ptr %call7.i.i, i32 0, i32 31
  %259 = ptrtoint ptr %fe239.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %fe239.i, align 4
  %cmp240.i = icmp eq ptr %260, null
  br i1 %cmp240.i, label %do.end245.i, label %if.else255.i

do.end245.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %261 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %dev, align 8
  %idVendor.i = getelementptr inbounds %struct.usb_device, ptr %262, i32 0, i32 16, i32 7
  %263 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %idVendor.i, align 8
  %265 = call i16 @llvm.bswap.i16(i16 %264) #10
  %conv249.i = zext i16 %265 to i32
  %idProduct252.i = getelementptr inbounds %struct.usb_device, ptr %262, i32 0, i32 16, i32 8
  %266 = ptrtoint ptr %idProduct252.i to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %idProduct252.i, align 2
  %268 = call i16 @llvm.bswap.i16(i16 %267) #10
  %conv253.i = zext i16 %268 to i32
  %call254.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %conv249.i, i32 noundef %conv253.i) #13
  br label %cleanup

if.else255.i:                                     ; preds = %sw.epilog.i
  %call257.i = call i32 @dvb_register_frontend(ptr noundef %adapter, ptr noundef nonnull %260) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call257.i)
  %tobool258.not.i = icmp eq i32 %call257.i, 0
  br i1 %tobool258.not.i, label %if.else255.i.cleanup_crit_edge, label %do.end262.i

if.else255.i.cleanup_crit_edge:                   ; preds = %if.else255.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end262.i:                                      ; preds = %if.else255.i
  call void @__sanitizer_cov_trace_pc() #12
  %call264.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #13
  %269 = ptrtoint ptr %fe239.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %fe239.i, align 4
  call void @dvb_frontend_detach(ptr noundef %270) #10
  %271 = ptrtoint ptr %fe239.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr null, ptr %fe239.i, align 4
  br label %cleanup

err_release_dmx:                                  ; preds = %do.end114, %do.end102
  call void @dvb_dmx_release(ptr noundef nonnull %call7.i.i) #10
  br label %err_i2c_del_adapter

err_i2c_del_adapter:                              ; preds = %err_release_dmx, %do.end82
  call void @i2c_del_adapter(ptr noundef %i2c_adap) #10
  br label %err_unregister_adapter

err_unregister_adapter:                           ; preds = %err_i2c_del_adapter, %if.end52.err_unregister_adapter_crit_edge
  %result.2 = phi i32 [ %call63, %if.end52.err_unregister_adapter_crit_edge ], [ -19, %err_i2c_del_adapter ]
  %call122 = call i32 @dvb_unregister_adapter(ptr noundef %adapter) #10
  %272 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %arrayidx.i, align 8
  call void @usb_free_urb(ptr noundef %273) #10
  %274 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %arrayidx.1.i, align 4
  call void @usb_free_urb(ptr noundef %275) #10
  %276 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %arrayidx.2.i, align 8
  call void @usb_free_urb(ptr noundef %277) #10
  %278 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %arrayidx.3.i, align 4
  call void @usb_free_urb(ptr noundef %279) #10
  %280 = ptrtoint ptr %iso_buffer.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %iso_buffer.i, align 4
  call void @kfree(ptr noundef %281) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_unregister_adapter, %do.end262.i, %if.else255.i.cleanup_crit_edge, %do.end245.i, %if.then51, %do.end34, %if.end7.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end34 ], [ %call48, %if.then51 ], [ %result.2, %err_unregister_adapter ], [ -19, %do.end3.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ 0, %do.end245.i ], [ 0, %if.else255.i.cleanup_crit_edge ], [ 0, %do.end262.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttusb_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %disconnecting = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %disconnecting to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %disconnecting, align 8
  %arrayidx.i = getelementptr %struct.ttusb, ptr %1, i32 0, i32 14, i32 0
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %4) #10
  %arrayidx.1.i = getelementptr %struct.ttusb, ptr %1, i32 0, i32 14, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @usb_kill_urb(ptr noundef %6) #10
  %arrayidx.2.i = getelementptr %struct.ttusb, ptr %1, i32 0, i32 14, i32 2
  %7 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.2.i, align 4
  tail call void @usb_kill_urb(ptr noundef %8) #10
  %arrayidx.3.i = getelementptr %struct.ttusb, ptr %1, i32 0, i32 14, i32 3
  %9 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.3.i, align 4
  tail call void @usb_kill_urb(ptr noundef %10) #10
  %iso_streaming.i = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %iso_streaming.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %iso_streaming.i, align 4
  %close = getelementptr inbounds %struct.dmx_demux, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %close, align 8
  %call3 = tail call i32 %13(ptr noundef %1) #10
  %dvbnet = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 2
  tail call void @dvb_net_release(ptr noundef %dvbnet) #10
  %dmxdev = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 1
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #10
  tail call void @dvb_dmx_release(ptr noundef %1) #10
  %fe = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 31
  %14 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fe, align 4
  %cmp.not = icmp eq ptr %15, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %15) #10
  %16 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fe, align 4
  tail call void @dvb_frontend_detach(ptr noundef %17) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_adap = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 7
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #10
  %adapter = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 5
  %call8 = tail call i32 @dvb_unregister_adapter(ptr noundef %adapter) #10
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_free_urb(ptr noundef %19) #10
  %20 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @usb_free_urb(ptr noundef %21) #10
  %22 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.2.i, align 4
  tail call void @usb_free_urb(ptr noundef %23) #10
  %24 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.3.i, align 4
  tail call void @usb_free_urb(ptr noundef %25) #10
  %iso_buffer.i = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %iso_buffer.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iso_buffer.i, align 4
  tail call void @kfree(ptr noundef %27) #10
  tail call void @kfree(ptr noundef %1) #10
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %if.end.do.end14_crit_edge, label %do.end

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.136) #13
  br label %do.end14

do.end14:                                         ; preds = %do.end, %if.end.do.end14_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusb_start_feed(ptr nocapture noundef readonly %dvbdmxfeed) #2 align 64 {
entry:
  %b.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %type = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp ult i32 %4, 2
  br i1 %switch, label %sw.epilog, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then5, label %sw.epilog.if.end8_crit_edge

sw.epilog.if.end8_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %sw.epilog
  %pes_type = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 11
  %5 = ptrtoint ptr %pes_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pes_type, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %6, label %if.then5.cleanup_crit_edge [
    i32 1, label %if.then5.if.end8_crit_edge
    i32 0, label %if.then5.if.end8_crit_edge24
    i32 2, label %if.then5.if.end8_crit_edge25
    i32 4, label %if.then5.if.end8_crit_edge26
    i32 20, label %if.then5.if.end8_crit_edge27
  ]

if.then5.if.end8_crit_edge27:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5.if.end8_crit_edge26:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5.if.end8_crit_edge25:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5.if.end8_crit_edge24:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.then5.if.end8_crit_edge, %if.then5.if.end8_crit_edge24, %if.then5.if.end8_crit_edge25, %if.then5.if.end8_crit_edge26, %if.then5.if.end8_crit_edge27, %sw.epilog.if.end8_crit_edge
  %index = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 16
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 8
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pid, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b.i) #10
  %12 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 1
  %13 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 2
  %14 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 3
  %15 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 4
  %16 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 5
  %17 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 6
  %18 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 7
  %19 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -86, ptr %b.i, align 1
  %c.i = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 18
  %20 = ptrtoint ptr %c.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %c.i, align 4
  %inc.i = add i8 %21, 1
  store i8 %inc.i, ptr %c.i, align 4
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %inc.i, ptr %12, align 1
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 34, ptr %13, align 1
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 4, ptr %14, align 1
  %conv.i = trunc i32 %9 to i8
  %25 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.i, ptr %15, align 1
  %26 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %16, align 1
  %27 = lshr i16 %11, 8
  %conv7.i = trunc i16 %27 to i8
  %28 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv7.i, ptr %17, align 1
  %conv10.i = trunc i16 %11 to i8
  %29 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv10.i, ptr %18, align 1
  %call.i = call fastcc i32 @ttusb_cmd(ptr noundef %1, ptr noundef nonnull %b.i, i32 noundef 8, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.i) #10
  %running_feed_count = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 15
  %30 = ptrtoint ptr %running_feed_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %running_feed_count, align 8
  %inc = add i32 %31, 1
  store i32 %inc, ptr %running_feed_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp10 = icmp eq i32 %31, 0
  br i1 %cmp10, label %if.then12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12:                                        ; preds = %if.end8
  %iso_streaming.i = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %iso_streaming.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iso_streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %call.i23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then12
  %cc.i = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 27
  %34 = ptrtoint ptr %cc.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %cc.i, align 4
  %insync.i = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 26
  %35 = ptrtoint ptr %insync.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %insync.i, align 8
  %mux_state.i = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 21
  %36 = ptrtoint ptr %mux_state.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %mux_state.i, align 8
  %dev.i = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 6
  %isoc_in_pipe.i = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 12
  %iso_buffer.i = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 13
  %arrayidx.i = getelementptr %struct.ttusb, ptr %1, i32 0, i32 14, i32 0
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 8
  %dev1.i = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 8
  %41 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %dev1.i, align 4
  %context.i = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 27
  %42 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %1, ptr %context.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 28
  %43 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @ttusb_iso_irq, ptr %complete.i, align 4
  %44 = ptrtoint ptr %isoc_in_pipe.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %isoc_in_pipe.i, align 8
  %pipe.i = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 10
  %46 = ptrtoint ptr %pipe.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %pipe.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 13
  %47 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %transfer_flags.i, align 4
  %interval.i = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 25
  %48 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %interval.i, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 24
  %49 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4, ptr %number_of_packets.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 19
  %50 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3648, ptr %transfer_buffer_length.i, align 4
  %51 = ptrtoint ptr %iso_buffer.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %iso_buffer.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 14
  %53 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %transfer_buffer.i, align 4
  %arrayidx5.i = getelementptr %struct.urb, ptr %38, i32 0, i32 29, i32 0
  %54 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %arrayidx5.i, align 4
  %length.i = getelementptr %struct.urb, ptr %38, i32 0, i32 29, i32 0, i32 1
  %55 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 912, ptr %length.i, align 4
  %arrayidx5.1.i = getelementptr %struct.urb, ptr %38, i32 0, i32 29, i32 1
  %56 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 912, ptr %arrayidx5.1.i, align 4
  %length.1.i = getelementptr %struct.urb, ptr %38, i32 0, i32 29, i32 1, i32 1
  %57 = ptrtoint ptr %length.1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 912, ptr %length.1.i, align 4
  %arrayidx5.2.i = getelementptr %struct.urb, ptr %38, i32 0, i32 29, i32 2
  %58 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1824, ptr %arrayidx5.2.i, align 4
  %length.2.i = getelementptr %struct.urb, ptr %38, i32 0, i32 29, i32 2, i32 1
  %59 = ptrtoint ptr %length.2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 912, ptr %length.2.i, align 4
  %arrayidx5.3.i = getelementptr %struct.urb, ptr %38, i32 0, i32 29, i32 3
  %60 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2736, ptr %arrayidx5.3.i, align 4
  %length.3.i = getelementptr %struct.urb, ptr %38, i32 0, i32 29, i32 3, i32 1
  %61 = ptrtoint ptr %length.3.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 912, ptr %length.3.i, align 4
  %arrayidx.1.i = getelementptr %struct.ttusb, ptr %1, i32 0, i32 14, i32 1
  %62 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.1.i, align 4
  %64 = load ptr, ptr %dev.i, align 8
  %dev1.1.i = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 8
  %65 = ptrtoint ptr %dev1.1.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %dev1.1.i, align 4
  %context.1.i = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 27
  %66 = ptrtoint ptr %context.1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %1, ptr %context.1.i, align 4
  %complete.1.i = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 28
  %67 = ptrtoint ptr %complete.1.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @ttusb_iso_irq, ptr %complete.1.i, align 4
  %68 = load i32, ptr %isoc_in_pipe.i, align 8
  %pipe.1.i = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 10
  %69 = ptrtoint ptr %pipe.1.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %pipe.1.i, align 4
  %transfer_flags.1.i = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 13
  %70 = ptrtoint ptr %transfer_flags.1.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %transfer_flags.1.i, align 4
  %interval.1.i = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 25
  %71 = ptrtoint ptr %interval.1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %interval.1.i, align 4
  %number_of_packets.1.i = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 24
  %72 = ptrtoint ptr %number_of_packets.1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 4, ptr %number_of_packets.1.i, align 4
  %transfer_buffer_length.1.i = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 19
  %73 = ptrtoint ptr %transfer_buffer_length.1.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 3648, ptr %transfer_buffer_length.1.i, align 4
  %74 = load ptr, ptr %iso_buffer.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %74, i32 3648
  %transfer_buffer.1.i = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 14
  %75 = ptrtoint ptr %transfer_buffer.1.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr.1.i, ptr %transfer_buffer.1.i, align 4
  %arrayidx5.19.i = getelementptr %struct.urb, ptr %63, i32 0, i32 29, i32 0
  %76 = ptrtoint ptr %arrayidx5.19.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %arrayidx5.19.i, align 4
  %length.110.i = getelementptr %struct.urb, ptr %63, i32 0, i32 29, i32 0, i32 1
  %77 = ptrtoint ptr %length.110.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 912, ptr %length.110.i, align 4
  %arrayidx5.1.1.i = getelementptr %struct.urb, ptr %63, i32 0, i32 29, i32 1
  %78 = ptrtoint ptr %arrayidx5.1.1.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 912, ptr %arrayidx5.1.1.i, align 4
  %length.1.1.i = getelementptr %struct.urb, ptr %63, i32 0, i32 29, i32 1, i32 1
  %79 = ptrtoint ptr %length.1.1.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 912, ptr %length.1.1.i, align 4
  %arrayidx5.2.1.i = getelementptr %struct.urb, ptr %63, i32 0, i32 29, i32 2
  %80 = ptrtoint ptr %arrayidx5.2.1.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1824, ptr %arrayidx5.2.1.i, align 4
  %length.2.1.i = getelementptr %struct.urb, ptr %63, i32 0, i32 29, i32 2, i32 1
  %81 = ptrtoint ptr %length.2.1.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 912, ptr %length.2.1.i, align 4
  %arrayidx5.3.1.i = getelementptr %struct.urb, ptr %63, i32 0, i32 29, i32 3
  %82 = ptrtoint ptr %arrayidx5.3.1.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 2736, ptr %arrayidx5.3.1.i, align 4
  %length.3.1.i = getelementptr %struct.urb, ptr %63, i32 0, i32 29, i32 3, i32 1
  %83 = ptrtoint ptr %length.3.1.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 912, ptr %length.3.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.ttusb, ptr %1, i32 0, i32 14, i32 2
  %84 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.2.i, align 4
  %86 = load ptr, ptr %dev.i, align 8
  %dev1.2.i = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 8
  %87 = ptrtoint ptr %dev1.2.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %dev1.2.i, align 4
  %context.2.i = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 27
  %88 = ptrtoint ptr %context.2.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %1, ptr %context.2.i, align 4
  %complete.2.i = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 28
  %89 = ptrtoint ptr %complete.2.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @ttusb_iso_irq, ptr %complete.2.i, align 4
  %90 = load i32, ptr %isoc_in_pipe.i, align 8
  %pipe.2.i = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 10
  %91 = ptrtoint ptr %pipe.2.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %pipe.2.i, align 4
  %transfer_flags.2.i = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 13
  %92 = ptrtoint ptr %transfer_flags.2.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2, ptr %transfer_flags.2.i, align 4
  %interval.2.i = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 25
  %93 = ptrtoint ptr %interval.2.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %interval.2.i, align 4
  %number_of_packets.2.i = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 24
  %94 = ptrtoint ptr %number_of_packets.2.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 4, ptr %number_of_packets.2.i, align 4
  %transfer_buffer_length.2.i = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 19
  %95 = ptrtoint ptr %transfer_buffer_length.2.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 3648, ptr %transfer_buffer_length.2.i, align 4
  %96 = load ptr, ptr %iso_buffer.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %96, i32 7296
  %transfer_buffer.2.i = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 14
  %97 = ptrtoint ptr %transfer_buffer.2.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %add.ptr.2.i, ptr %transfer_buffer.2.i, align 4
  %arrayidx5.211.i = getelementptr %struct.urb, ptr %85, i32 0, i32 29, i32 0
  %98 = ptrtoint ptr %arrayidx5.211.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %arrayidx5.211.i, align 4
  %length.212.i = getelementptr %struct.urb, ptr %85, i32 0, i32 29, i32 0, i32 1
  %99 = ptrtoint ptr %length.212.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 912, ptr %length.212.i, align 4
  %arrayidx5.1.2.i = getelementptr %struct.urb, ptr %85, i32 0, i32 29, i32 1
  %100 = ptrtoint ptr %arrayidx5.1.2.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 912, ptr %arrayidx5.1.2.i, align 4
  %length.1.2.i = getelementptr %struct.urb, ptr %85, i32 0, i32 29, i32 1, i32 1
  %101 = ptrtoint ptr %length.1.2.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 912, ptr %length.1.2.i, align 4
  %arrayidx5.2.2.i = getelementptr %struct.urb, ptr %85, i32 0, i32 29, i32 2
  %102 = ptrtoint ptr %arrayidx5.2.2.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1824, ptr %arrayidx5.2.2.i, align 4
  %length.2.2.i = getelementptr %struct.urb, ptr %85, i32 0, i32 29, i32 2, i32 1
  %103 = ptrtoint ptr %length.2.2.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 912, ptr %length.2.2.i, align 4
  %arrayidx5.3.2.i = getelementptr %struct.urb, ptr %85, i32 0, i32 29, i32 3
  %104 = ptrtoint ptr %arrayidx5.3.2.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 2736, ptr %arrayidx5.3.2.i, align 4
  %length.3.2.i = getelementptr %struct.urb, ptr %85, i32 0, i32 29, i32 3, i32 1
  %105 = ptrtoint ptr %length.3.2.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 912, ptr %length.3.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.ttusb, ptr %1, i32 0, i32 14, i32 3
  %106 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.3.i, align 4
  %108 = load ptr, ptr %dev.i, align 8
  %dev1.3.i = getelementptr inbounds %struct.urb, ptr %107, i32 0, i32 8
  %109 = ptrtoint ptr %dev1.3.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %108, ptr %dev1.3.i, align 4
  %context.3.i = getelementptr inbounds %struct.urb, ptr %107, i32 0, i32 27
  %110 = ptrtoint ptr %context.3.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %1, ptr %context.3.i, align 4
  %complete.3.i = getelementptr inbounds %struct.urb, ptr %107, i32 0, i32 28
  %111 = ptrtoint ptr %complete.3.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @ttusb_iso_irq, ptr %complete.3.i, align 4
  %112 = load i32, ptr %isoc_in_pipe.i, align 8
  %pipe.3.i = getelementptr inbounds %struct.urb, ptr %107, i32 0, i32 10
  %113 = ptrtoint ptr %pipe.3.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %pipe.3.i, align 4
  %transfer_flags.3.i = getelementptr inbounds %struct.urb, ptr %107, i32 0, i32 13
  %114 = ptrtoint ptr %transfer_flags.3.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 2, ptr %transfer_flags.3.i, align 4
  %interval.3.i = getelementptr inbounds %struct.urb, ptr %107, i32 0, i32 25
  %115 = ptrtoint ptr %interval.3.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %interval.3.i, align 4
  %number_of_packets.3.i = getelementptr inbounds %struct.urb, ptr %107, i32 0, i32 24
  %116 = ptrtoint ptr %number_of_packets.3.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 4, ptr %number_of_packets.3.i, align 4
  %transfer_buffer_length.3.i = getelementptr inbounds %struct.urb, ptr %107, i32 0, i32 19
  %117 = ptrtoint ptr %transfer_buffer_length.3.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 3648, ptr %transfer_buffer_length.3.i, align 4
  %118 = load ptr, ptr %iso_buffer.i, align 4
  %add.ptr.3.i = getelementptr i8, ptr %118, i32 10944
  %transfer_buffer.3.i = getelementptr inbounds %struct.urb, ptr %107, i32 0, i32 14
  %119 = ptrtoint ptr %transfer_buffer.3.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %add.ptr.3.i, ptr %transfer_buffer.3.i, align 4
  %arrayidx5.313.i = getelementptr %struct.urb, ptr %107, i32 0, i32 29, i32 0
  %120 = ptrtoint ptr %arrayidx5.313.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %arrayidx5.313.i, align 4
  %length.314.i = getelementptr %struct.urb, ptr %107, i32 0, i32 29, i32 0, i32 1
  %121 = ptrtoint ptr %length.314.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 912, ptr %length.314.i, align 4
  %arrayidx5.1.3.i = getelementptr %struct.urb, ptr %107, i32 0, i32 29, i32 1
  %122 = ptrtoint ptr %arrayidx5.1.3.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 912, ptr %arrayidx5.1.3.i, align 4
  %length.1.3.i = getelementptr %struct.urb, ptr %107, i32 0, i32 29, i32 1, i32 1
  %123 = ptrtoint ptr %length.1.3.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 912, ptr %length.1.3.i, align 4
  %arrayidx5.2.3.i = getelementptr %struct.urb, ptr %107, i32 0, i32 29, i32 2
  %124 = ptrtoint ptr %arrayidx5.2.3.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1824, ptr %arrayidx5.2.3.i, align 4
  %length.2.3.i = getelementptr %struct.urb, ptr %107, i32 0, i32 29, i32 2, i32 1
  %125 = ptrtoint ptr %length.2.3.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 912, ptr %length.2.3.i, align 4
  %arrayidx5.3.3.i = getelementptr %struct.urb, ptr %107, i32 0, i32 29, i32 3
  %126 = ptrtoint ptr %arrayidx5.3.3.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 2736, ptr %arrayidx5.3.3.i, align 4
  %length.3.3.i = getelementptr %struct.urb, ptr %107, i32 0, i32 29, i32 3, i32 1
  %127 = ptrtoint ptr %length.3.3.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 912, ptr %length.3.3.i, align 4
  %128 = load ptr, ptr %arrayidx.i, align 4
  %call17.i = call i32 @usb_submit_urb(ptr noundef %128, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %for.inc26.i, label %if.end.i.if.then19.i_crit_edge

if.end.i.if.then19.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.i

if.then19.i:                                      ; preds = %for.inc26.2.i.if.then19.i_crit_edge, %for.inc26.1.i.if.then19.i_crit_edge, %for.inc26.i.if.then19.i_crit_edge, %if.end.i.if.then19.i_crit_edge
  %i.16.lcssa.i = phi i32 [ 0, %if.end.i.if.then19.i_crit_edge ], [ 1, %for.inc26.i.if.then19.i_crit_edge ], [ 2, %for.inc26.1.i.if.then19.i_crit_edge ], [ 3, %for.inc26.2.i.if.then19.i_crit_edge ]
  %call17.lcssa.i = phi i32 [ %call17.i, %if.end.i.if.then19.i_crit_edge ], [ %call17.1.i, %for.inc26.i.if.then19.i_crit_edge ], [ %call17.2.i, %for.inc26.1.i.if.then19.i_crit_edge ], [ %call17.3.i, %for.inc26.2.i.if.then19.i_crit_edge ]
  %129 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i, align 4
  call void @usb_kill_urb(ptr noundef %130) #10
  %131 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx.1.i, align 4
  call void @usb_kill_urb(ptr noundef %132) #10
  %133 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx.2.i, align 4
  call void @usb_kill_urb(ptr noundef %134) #10
  %135 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.3.i, align 4
  call void @usb_kill_urb(ptr noundef %136) #10
  %137 = ptrtoint ptr %iso_streaming.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %iso_streaming.i, align 4
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %i.16.lcssa.i, i32 noundef %call17.lcssa.i) #13
  br label %cleanup

for.inc26.i:                                      ; preds = %if.end.i
  %138 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx.1.i, align 4
  %call17.1.i = call i32 @usb_submit_urb(ptr noundef %139, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.1.i)
  %tobool18.not.1.i = icmp eq i32 %call17.1.i, 0
  br i1 %tobool18.not.1.i, label %for.inc26.1.i, label %for.inc26.i.if.then19.i_crit_edge

for.inc26.i.if.then19.i_crit_edge:                ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.i

for.inc26.1.i:                                    ; preds = %for.inc26.i
  %140 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx.2.i, align 4
  %call17.2.i = call i32 @usb_submit_urb(ptr noundef %141, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.2.i)
  %tobool18.not.2.i = icmp eq i32 %call17.2.i, 0
  br i1 %tobool18.not.2.i, label %for.inc26.2.i, label %for.inc26.1.i.if.then19.i_crit_edge

for.inc26.1.i.if.then19.i_crit_edge:              ; preds = %for.inc26.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.i

for.inc26.2.i:                                    ; preds = %for.inc26.1.i
  %142 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx.3.i, align 4
  %call17.3.i = call i32 @usb_submit_urb(ptr noundef %143, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.3.i)
  %tobool18.not.3.i = icmp eq i32 %call17.3.i, 0
  br i1 %tobool18.not.3.i, label %for.inc26.3.i, label %for.inc26.2.i.if.then19.i_crit_edge

for.inc26.2.i.if.then19.i_crit_edge:              ; preds = %for.inc26.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.i

for.inc26.3.i:                                    ; preds = %for.inc26.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %iso_streaming.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1, ptr %iso_streaming.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.inc26.3.i, %if.then19.i, %do.end.i, %if.end8.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end3.cleanup_crit_edge ], [ -22, %if.then5.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %if.then19.i ], [ 0, %for.inc26.3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusb_stop_feed(ptr nocapture noundef readonly %dvbdmxfeed) #2 align 64 {
entry:
  %b.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %index = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 16
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %b.i) #10
  %4 = getelementptr inbounds [5 x i8], ptr %b.i, i32 0, i32 1
  %5 = getelementptr inbounds [5 x i8], ptr %b.i, i32 0, i32 2
  %6 = getelementptr inbounds [5 x i8], ptr %b.i, i32 0, i32 3
  %7 = getelementptr inbounds [5 x i8], ptr %b.i, i32 0, i32 4
  %8 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -86, ptr %b.i, align 1
  %c.i = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %c.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %c.i, align 4
  %inc.i = add i8 %10, 1
  store i8 %inc.i, ptr %c.i, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %inc.i, ptr %4, align 1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 35, ptr %5, align 1
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %6, align 1
  %conv.i = trunc i32 %3 to i8
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %7, align 1
  %call.i = call fastcc i32 @ttusb_cmd(ptr noundef %1, ptr noundef nonnull %b.i, i32 noundef 5, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %b.i) #10
  %running_feed_count = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %running_feed_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %running_feed_count, align 8
  %dec = add i32 %16, -1
  store i32 %dec, ptr %running_feed_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.ttusb, ptr %1, i32 0, i32 14, i32 0
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  call void @usb_kill_urb(ptr noundef %18) #10
  %arrayidx.1.i = getelementptr %struct.ttusb, ptr %1, i32 0, i32 14, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.1.i, align 4
  call void @usb_kill_urb(ptr noundef %20) #10
  %arrayidx.2.i = getelementptr %struct.ttusb, ptr %1, i32 0, i32 14, i32 2
  %21 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.2.i, align 4
  call void @usb_kill_urb(ptr noundef %22) #10
  %arrayidx.3.i = getelementptr %struct.ttusb, ptr %1, i32 0, i32 14, i32 3
  %23 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.3.i, align 4
  call void @usb_kill_urb(ptr noundef %24) #10
  %iso_streaming.i = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %iso_streaming.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %iso_streaming.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_net_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ttusb_cmd(ptr noundef %ttusb, ptr noundef %data, i32 noundef %len, i32 noundef %len_result) unnamed_addr #2 align 64 {
entry:
  %actual_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len) #10
  %0 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual_len, align 4, !annotation !296
  %semusb = getelementptr inbounds %struct.ttusb, ptr %ttusb, i32 0, i32 4
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %semusb, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp1 = icmp sgt i32 %1, 2
  br i1 %cmp1, label %do.end, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %len, ptr noundef %data) #13
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end.if.end9_crit_edge
  %send_buf = getelementptr inbounds %struct.ttusb, ptr %ttusb, i32 0, i32 28
  %2 = call ptr @memcpy(ptr %data, ptr %send_buf, i32 %len)
  %dev = getelementptr inbounds %struct.ttusb, ptr %ttusb, i32 0, i32 6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %bulk_out_pipe = getelementptr inbounds %struct.ttusb, ptr %ttusb, i32 0, i32 10
  %5 = ptrtoint ptr %bulk_out_pipe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bulk_out_pipe, align 8
  %call12 = call i32 @usb_bulk_msg(ptr noundef %4, i32 noundef %6, ptr noundef %send_buf, i32 noundef %len, ptr noundef nonnull %actual_len, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end26, label %do.body15

do.body15:                                        ; preds = %if.end9
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool16.not = icmp eq i32 %7, 0
  br i1 %tobool16.not, label %do.body15.err76_crit_edge, label %do.end20

do.body15.err76_crit_edge:                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %err76

do.end20:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, i32 noundef %call12) #13
  br label %err76

if.end26:                                         ; preds = %if.end9
  %8 = ptrtoint ptr %actual_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %len)
  %cmp27.not = icmp eq i32 %9, %len
  br i1 %cmp27.not, label %if.end40, label %if.then28

if.then28:                                        ; preds = %if.end26
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool30.not = icmp eq i32 %10, 0
  br i1 %tobool30.not, label %if.then28.err76_crit_edge, label %do.end34

if.then28.err76_crit_edge:                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %err76

do.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.38, i32 noundef %9, i32 noundef %len) #13
  br label %err76

if.end40:                                         ; preds = %if.end26
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %bulk_in_pipe = getelementptr inbounds %struct.ttusb, ptr %ttusb, i32 0, i32 11
  %13 = ptrtoint ptr %bulk_in_pipe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bulk_in_pipe, align 4
  %last_result = getelementptr inbounds %struct.ttusb, ptr %ttusb, i32 0, i32 29
  %call43 = call i32 @usb_bulk_msg(ptr noundef %12, i32 noundef %14, ptr noundef %last_result, i32 noundef 32, ptr noundef nonnull %actual_len, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %if.end51, label %do.end48

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %call43) #13
  br label %err76

if.end51:                                         ; preds = %if.end40
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp52 = icmp sgt i32 %15, 2
  br i1 %cmp52, label %do.end60, label %if.end51.if.end68_crit_edge

if.end51.if.end68_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

do.end60:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.ttusb, ptr %ttusb, i32 0, i32 29, i32 3
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %17 to i32
  %add = add nuw nsw i32 %conv, 4
  %18 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %actual_len, align 4
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.38, i32 noundef %add, ptr noundef %last_result) #13
  br label %if.end68

if.end68:                                         ; preds = %do.end60, %if.end51.if.end68_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len_result)
  %tobool69.not = icmp eq i32 %len_result, 0
  br i1 %tobool69.not, label %if.end68.err76_crit_edge, label %if.then70

if.end68.err76_crit_edge:                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %err76

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %19 = call ptr @memcpy(ptr %send_buf, ptr %last_result, i32 %len_result)
  br label %err76

err76:                                            ; preds = %if.then70, %if.end68.err76_crit_edge, %do.end48, %do.end34, %if.then28.err76_crit_edge, %do.end20, %do.body15.err76_crit_edge
  %err.0 = phi i32 [ %call12, %do.end20 ], [ %call12, %do.body15.err76_crit_edge ], [ -5, %do.end34 ], [ -5, %if.then28.err76_crit_edge ], [ %call43, %do.end48 ], [ 0, %if.then70 ], [ 0, %if.end68.err76_crit_edge ]
  call void @mutex_unlock(ptr noundef %semusb) #10
  br label %cleanup

cleanup:                                          ; preds = %err76, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err76 ], [ -11, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @master_xfer(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  %b.i = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %semi2c = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %semi2c, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup48_crit_edge, label %while.cond.preheader

entry.cleanup48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup48

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp291 = icmp sgt i32 %num, 0
  br i1 %cmp291, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %2 = getelementptr inbounds i8, ptr %b.i, i32 7
  %c.i = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 18
  %arrayidx5.i = getelementptr inbounds [40 x i8], ptr %b.i, i32 0, i32 1
  %arrayidx6.i = getelementptr inbounds [40 x i8], ptr %b.i, i32 0, i32 2
  %arrayidx9.i = getelementptr inbounds [40 x i8], ptr %b.i, i32 0, i32 3
  %arrayidx12.i = getelementptr inbounds [40 x i8], ptr %b.i, i32 0, i32 4
  %arrayidx13.i = getelementptr inbounds [40 x i8], ptr %b.i, i32 0, i32 5
  %arrayidx14.i = getelementptr inbounds [40 x i8], ptr %b.i, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %i.092 = phi i32 [ 0, %while.body.lr.ph ], [ %add41, %cleanup.while.body_crit_edge ]
  %add = add nsw i32 %i.092, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp3 = icmp slt i32 %add, %num
  br i1 %cmp3, label %land.lhs.true, label %while.body.if.else_crit_edge

while.body.if.else_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx6 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.092
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx6, align 4
  %conv8 = trunc i16 %7 to i8
  %len = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.092, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len, align 4
  %conv11 = trunc i16 %9 to i8
  %buf14 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 3
  %10 = ptrtoint ptr %buf14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf14, align 4
  %len17 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 2
  %12 = ptrtoint ptr %len17 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %len17, align 4
  %conv18 = trunc i16 %13 to i8
  br label %if.end27

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %while.body.if.else_crit_edge
  %arrayidx19 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.092
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx19, align 4
  %conv21 = trunc i16 %15 to i8
  %len25 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.092, i32 2
  %16 = ptrtoint ptr %len25 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %len25, align 4
  %conv26 = trunc i16 %17 to i8
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then5
  %inc.0 = phi i32 [ 2, %if.then5 ], [ 1, %if.else ]
  %addr.0 = phi i8 [ %conv8, %if.then5 ], [ %conv21, %if.else ]
  %snd_len.0 = phi i8 [ %conv11, %if.then5 ], [ %conv26, %if.else ]
  %rcv_len.0 = phi i8 [ %conv18, %if.then5 ], [ 0, %if.else ]
  %rcv_buf.0 = phi ptr [ %11, %if.then5 ], [ null, %if.else ]
  %snd_buf.0.in = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.092, i32 3
  %18 = ptrtoint ptr %snd_buf.0.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %snd_buf.0 = load ptr, ptr %snd_buf.0.in, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %b.i) #10
  %19 = call ptr @memset(ptr %2, i32 255, i32 33)
  %20 = ptrtoint ptr %c.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %c.i, align 4
  %inc.i = add i8 %21, 1
  store i8 %inc.i, ptr %c.i, align 4
  %conv.i = zext i8 %snd_len.0 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %snd_len.0)
  %cmp.i = icmp ugt i8 %snd_len.0, 33
  br i1 %cmp.i, label %if.end27.ttusb_i2c_msg.exit.thread_crit_edge, label %lor.lhs.false.i

if.end27.ttusb_i2c_msg.exit.thread_crit_edge:     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %ttusb_i2c_msg.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end27
  %conv2.i = zext i8 %rcv_len.0 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %rcv_len.0)
  %cmp3.i = icmp ugt i8 %rcv_len.0, 25
  br i1 %cmp3.i, label %lor.lhs.false.i.ttusb_i2c_msg.exit.thread_crit_edge, label %if.end.i

lor.lhs.false.i.ttusb_i2c_msg.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ttusb_i2c_msg.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %22 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -86, ptr %b.i, align 1
  %23 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %inc.i, ptr %arrayidx5.i, align 1
  %24 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 49, ptr %arrayidx6.i, align 1
  %add.i = add nuw nsw i8 %snd_len.0, 3
  %25 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %add.i, ptr %arrayidx9.i, align 1
  %shl.i = shl i8 %addr.0, 1
  %26 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %shl.i, ptr %arrayidx12.i, align 1
  %27 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %snd_len.0, ptr %arrayidx13.i, align 1
  %28 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %rcv_len.0, ptr %arrayidx14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %snd_len.0)
  %cmp16103.not.i = icmp eq i8 %snd_len.0, 0
  br i1 %cmp16103.not.i, label %if.end.i.for.end.i_crit_edge, label %for.body.preheader.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = call ptr @memcpy(ptr %2, ptr %snd_buf.0, i32 %conv.i)
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.preheader.i, %if.end.i.for.end.i_crit_edge
  %add23.i = add nuw nsw i32 %conv.i, 7
  %call.i = call fastcc i32 @ttusb_cmd(ptr noundef %1, ptr noundef nonnull %b.i, i32 noundef %add23.i, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end25.i, label %for.end.i.ttusb_i2c_msg.exit.thread_crit_edge

for.end.i.ttusb_i2c_msg.exit.thread_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ttusb_i2c_msg.exit.thread

if.end25.i:                                       ; preds = %for.end.i
  %30 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx13.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %snd_len.0)
  %cmp29.not.i = icmp eq i8 %31, %snd_len.0
  br i1 %cmp29.not.i, label %lor.lhs.false31.i, label %if.end25.i.ttusb_i2c_msg.exit.thread_crit_edge

if.end25.i.ttusb_i2c_msg.exit.thread_crit_edge:   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ttusb_i2c_msg.exit.thread

lor.lhs.false31.i:                                ; preds = %if.end25.i
  %32 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx14.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %rcv_len.0)
  %cmp35.not.i = icmp eq i8 %33, %rcv_len.0
  br i1 %cmp35.not.i, label %if.end38.i, label %lor.lhs.false31.i.ttusb_i2c_msg.exit.thread_crit_edge

lor.lhs.false31.i.ttusb_i2c_msg.exit.thread_crit_edge: ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ttusb_i2c_msg.exit.thread

if.end38.i:                                       ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rcv_len.0)
  %cmp40.not.i = icmp eq i8 %rcv_len.0, 0
  br i1 %cmp40.not.i, label %ttusb_i2c_msg.exit, label %lor.lhs.false44.i

lor.lhs.false44.i:                                ; preds = %if.end38.i
  %34 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %b.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %35)
  %cmp47.not.i = icmp eq i8 %35, 85
  br i1 %cmp47.not.i, label %lor.lhs.false49.i, label %lor.lhs.false44.i.do.body.i_crit_edge

lor.lhs.false44.i.do.body.i_crit_edge:            ; preds = %lor.lhs.false44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

lor.lhs.false49.i:                                ; preds = %lor.lhs.false44.i
  %36 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %inc.i)
  %cmp53.not.i = icmp eq i8 %37, %inc.i
  br i1 %cmp53.not.i, label %ttusb_i2c_msg.exit.thread79, label %lor.lhs.false49.i.do.body.i_crit_edge

lor.lhs.false49.i.do.body.i_crit_edge:            ; preds = %lor.lhs.false49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

ttusb_i2c_msg.exit.thread79:                      ; preds = %lor.lhs.false49.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = call ptr @memcpy(ptr %rcv_buf.0, ptr %2, i32 %conv2.i)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %b.i) #10
  br label %cleanup

do.body.i:                                        ; preds = %lor.lhs.false49.i.do.body.i_crit_edge, %lor.lhs.false44.i.do.body.i_crit_edge
  %39 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool56.not.i = icmp eq i32 %39, 0
  br i1 %tobool56.not.i, label %ttusb_i2c_msg.exit.thread.thread, label %do.end.i

ttusb_i2c_msg.exit.thread.thread:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %b.i) #10
  br label %while.end

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv59.i = zext i8 %inc.i to i32
  %call60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef 0, i32 noundef %conv59.i) #13
  br label %ttusb_i2c_msg.exit.thread

ttusb_i2c_msg.exit.thread:                        ; preds = %do.end.i, %lor.lhs.false31.i.ttusb_i2c_msg.exit.thread_crit_edge, %if.end25.i.ttusb_i2c_msg.exit.thread_crit_edge, %for.end.i.ttusb_i2c_msg.exit.thread_crit_edge, %lor.lhs.false.i.ttusb_i2c_msg.exit.thread_crit_edge, %if.end27.ttusb_i2c_msg.exit.thread_crit_edge
  %.pr = load i32, ptr @debug, align 4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %b.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool33.not = icmp eq i32 %.pr, 0
  br i1 %tobool33.not, label %ttusb_i2c_msg.exit.thread.while.end_crit_edge, label %do.end

ttusb_i2c_msg.exit.thread.while.end_crit_edge:    ; preds = %ttusb_i2c_msg.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

ttusb_i2c_msg.exit:                               ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %b.i) #10
  br label %cleanup

do.end:                                           ; preds = %ttusb_i2c_msg.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef %i.092) #13
  br label %while.end

cleanup:                                          ; preds = %ttusb_i2c_msg.exit, %ttusb_i2c_msg.exit.thread79
  %add41 = add i32 %inc.0, %i.092
  %cmp2 = icmp slt i32 %add41, %num
  br i1 %cmp2, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %do.end, %ttusb_i2c_msg.exit.thread.while.end_crit_edge, %ttusb_i2c_msg.exit.thread.thread, %while.cond.preheader.while.end_crit_edge
  %i.088 = phi i32 [ %i.092, %ttusb_i2c_msg.exit.thread.while.end_crit_edge ], [ %i.092, %do.end ], [ 0, %while.cond.preheader.while.end_crit_edge ], [ %i.092, %ttusb_i2c_msg.exit.thread.thread ], [ %add41, %cleanup.while.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %semi2c) #10
  br label %cleanup48

cleanup48:                                        ; preds = %while.end, %entry.cleanup48_crit_edge
  %retval.0 = phi i32 [ %i.088, %while.end ], [ -11, %entry.cleanup48_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @functionality(ptr nocapture noundef readnone %adapter) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttusb_iso_irq(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %iso_streaming = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %iso_streaming to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iso_streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %for.cond.preheader, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

for.cond.preheader:                               ; preds = %if.end
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %6 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp36 = icmp sgt i32 %7, 0
  br i1 %cmp36, label %for.body.lr.ph, label %for.cond.preheader.if.end19_crit_edge

for.cond.preheader.if.end19_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %mux_state.i = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 21
  %muxpack_len24.i = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 25
  %muxpack_ptr25.i = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 24
  %muxpack.i = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 23
  %arrayidx62.i = getelementptr %struct.ttusb, ptr %1, i32 0, i32 23, i32 1
  %cc23.i.i = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 27
  %mux_npacks154.i = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 22
  %insync18.i = getelementptr inbounds %struct.ttusb, ptr %1, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %ttusb_process_frame.exit.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc18, %ttusb_process_frame.exit.for.body_crit_edge ]
  %8 = load i32, ptr @numpkt, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr @numpkt, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %10 = load i32, ptr @lastj, align 4
  %add.neg = add i32 %9, -100
  %sub = sub i32 %add.neg, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp3 = icmp sgt i32 %sub, -1
  br i1 %cmp3, label %do.body, label %for.body.if.end15_crit_edge

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

do.body:                                          ; preds = %for.body
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %do.body.do.end14_crit_edge, label %do.end

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %mul = mul i32 %inc, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub8 = sub i32 %12, %10
  %div = udiv i32 %mul, %sub8
  %13 = load i32, ptr @numts, align 4
  %14 = load i32, ptr @numstuff, align 4
  %15 = load i32, ptr @numsec, align 4
  %16 = load i32, ptr @numinvalid, align 4
  %add9 = add i32 %14, %13
  %add10 = add i32 %add9, %15
  %add11 = add i32 %add10, %16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef %div, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %add11) #13
  br label %do.end14

do.end14:                                         ; preds = %do.end, %do.body.do.end14_crit_edge
  store i32 0, ptr @numinvalid, align 4
  store i32 0, ptr @numsec, align 4
  store i32 0, ptr @numstuff, align 4
  store i32 0, ptr @numts, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  store i32 %17, ptr @lastj, align 4
  store i32 0, ptr @numpkt, align 4
  br label %if.end15

if.end15:                                         ; preds = %do.end14, %for.body.if.end15_crit_edge
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.037
  %18 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transfer_buffer, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %actual_length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.037, i32 2
  %22 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %actual_length, align 4
  store i32 0, ptr %actual_length, align 4
  %status17 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.037, i32 3
  %24 = ptrtoint ptr %status17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %status17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not224.i = icmp eq i32 %23, 0
  br i1 %tobool.not224.i, label %if.end15.ttusb_process_frame.exit_crit_edge, label %while.body.lr.ph.i

if.end15.ttusb_process_frame.exit_crit_edge:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %ttusb_process_frame.exit

while.body.lr.ph.i:                               ; preds = %if.end15
  %add.ptr = getelementptr i8, ptr %19, i32 %21
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %data.addr.0227.i = phi ptr [ %add.ptr, %while.body.lr.ph.i ], [ %data.addr.1.i, %sw.epilog.i.while.body.i_crit_edge ]
  %len.addr.0226.i = phi i32 [ %23, %while.body.lr.ph.i ], [ %len.addr.1.i, %sw.epilog.i.while.body.i_crit_edge ]
  %maxwork.0225.i = phi i32 [ 1024, %while.body.lr.ph.i ], [ %dec.i, %sw.epilog.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %maxwork.0225.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxwork.0225.i)
  %tobool1.not.i = icmp eq i32 %maxwork.0225.i, 0
  br i1 %tobool1.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #13
  br label %ttusb_process_frame.exit

if.end.i:                                         ; preds = %while.body.i
  %25 = ptrtoint ptr %mux_state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mux_state.i, align 8
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %26, label %do.body161.i [
    i32 0, label %if.end.i.sw.bb.i_crit_edge
    i32 1, label %if.end.i.sw.bb.i_crit_edge38
    i32 2, label %if.end.i.sw.bb.i_crit_edge39
    i32 3, label %sw.bb17.i
    i32 4, label %sw.bb23.i
  ]

if.end.i.sw.bb.i_crit_edge39:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge38:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge38, %if.end.i.sw.bb.i_crit_edge39
  %dec2.i = add i32 %len.addr.0226.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %data.addr.0227.i, i32 1
  %28 = ptrtoint ptr %data.addr.0227.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %data.addr.0227.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %29)
  %cmp.i = icmp eq i8 %29, -86
  br i1 %cmp.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add nuw nsw i32 %26, 1
  %30 = ptrtoint ptr %mux_state.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %inc.i, ptr %mux_state.i, align 8
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb.i
  %31 = ptrtoint ptr %mux_state.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %mux_state.i, align 8
  %32 = ptrtoint ptr %insync18.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %insync18.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool7.not.i = icmp eq i32 %33, 0
  br i1 %tobool7.not.i, label %if.else.i.sw.epilog.i_crit_edge, label %do.end11.i

if.else.i.sw.epilog.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

do.end11.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #13
  %34 = ptrtoint ptr %insync18.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %insync18.i, align 8
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %insync18.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %insync18.i, align 8
  %dec19.i = add i32 %len.addr.0226.i, -1
  %incdec.ptr20.i = getelementptr i8, ptr %data.addr.0227.i, i32 1
  %36 = ptrtoint ptr %data.addr.0227.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %data.addr.0227.i, align 1
  %38 = ptrtoint ptr %mux_npacks154.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %mux_npacks154.i, align 4
  %39 = ptrtoint ptr %mux_state.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %mux_state.i, align 8
  %40 = ptrtoint ptr %muxpack_ptr25.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %muxpack_ptr25.i, align 8
  %41 = ptrtoint ptr %muxpack_len24.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %muxpack_len24.i, align 4
  br label %sw.epilog.i

sw.bb23.i:                                        ; preds = %if.end.i
  %42 = ptrtoint ptr %muxpack_len24.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %muxpack_len24.i, align 4
  %44 = ptrtoint ptr %muxpack_ptr25.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %muxpack_ptr25.i, align 8
  %sub.i = sub i32 %43, %45
  %46 = tail call i32 @llvm.smin.i32(i32 %len.addr.0226.i, i32 %sub.i) #10
  %add.ptr.i = getelementptr i8, ptr %muxpack.i, i32 %45
  %47 = call ptr @memcpy(ptr %add.ptr.i, ptr %data.addr.0227.i, i32 %46)
  %48 = ptrtoint ptr %muxpack_ptr25.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %muxpack_ptr25.i, align 8
  %add.i = add i32 %49, %46
  store i32 %add.i, ptr %muxpack_ptr25.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 264, i32 %add.i)
  %cmp37.i = icmp sgt i32 %add.i, 264
  br i1 %cmp37.i, label %do.body42.i, label %do.end50.i, !prof !297

do.body42.i:                                      ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 646, 0\0A.popsection", ""() #10, !srcloc !298
  unreachable

do.end50.i:                                       ; preds = %sw.bb23.i
  %add.ptr51.i = getelementptr i8, ptr %data.addr.0227.i, i32 %46
  %sub52.i = sub i32 %len.addr.0226.i, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i)
  %cmp54.i = icmp eq i32 %add.i, 2
  br i1 %cmp54.i, label %if.then56.i, label %do.end50.i.if.end140.i_crit_edge

do.end50.i.if.end140.i_crit_edge:                 ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140.i

if.then56.i:                                      ; preds = %do.end50.i
  %50 = ptrtoint ptr %muxpack.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %muxpack.i, align 1
  %conv58.i = zext i8 %51 to i32
  %and.i = and i32 %conv58.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool59.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool59.not.i, label %if.else100.i, label %if.then60.i

if.then60.i:                                      ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx62.i, align 1
  %conv63.i = zext i8 %53 to i32
  %54 = and i8 %51, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool70.not.i = icmp eq i8 %54, 0
  %spec.select.v.i = select i1 %tobool70.not.i, i32 2, i32 3
  %spec.select.i = add nuw nsw i32 %spec.select.v.i, %conv63.i
  %55 = lshr i8 %51, 5
  %.lobit223.i = xor i8 %53, %55
  %xor222.i = and i8 %.lobit223.i, 1
  %56 = zext i8 %xor222.i to i32
  %spec.select = add nuw nsw i32 %spec.select.i, %56
  %add99.i = add nuw nsw i32 %spec.select, 4
  %57 = ptrtoint ptr %muxpack_len24.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add99.i, ptr %muxpack_len24.i, align 4
  br label %if.end140.i

if.else100.i:                                     ; preds = %if.then56.i
  %58 = zext i8 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %51, label %do.body122.i [
    i8 71, label %if.then106.i
    i8 0, label %if.then114.i
  ]

if.then106.i:                                     ; preds = %if.else100.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %muxpack_len24.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 192, ptr %muxpack_len24.i, align 4
  br label %if.end140.i

if.then114.i:                                     ; preds = %if.else100.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx62.i, align 1
  %conv117.i = zext i8 %61 to i32
  %add119.i = add nuw nsw i32 %conv117.i, 6
  %62 = ptrtoint ptr %muxpack_len24.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add119.i, ptr %muxpack_len24.i, align 4
  br label %if.end140.i

do.body122.i:                                     ; preds = %if.else100.i
  %63 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool123.not.i = icmp eq i32 %63, 0
  br i1 %tobool123.not.i, label %do.body122.i.do.end135.i_crit_edge, label %do.end127.i

do.body122.i.do.end135.i_crit_edge:               ; preds = %do.body122.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end135.i

do.end127.i:                                      ; preds = %do.body122.i
  call void @__sanitizer_cov_trace_pc() #12
  %call132.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.71, i32 noundef %conv58.i) #13
  br label %do.end135.i

do.end135.i:                                      ; preds = %do.end127.i, %do.body122.i.do.end135.i_crit_edge
  %64 = ptrtoint ptr %mux_state.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %mux_state.i, align 8
  br label %if.end140.i

if.end140.i:                                      ; preds = %do.end135.i, %if.then114.i, %if.then106.i, %if.then60.i, %do.end50.i.if.end140.i_crit_edge
  %65 = ptrtoint ptr %muxpack_ptr25.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %muxpack_ptr25.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp142.i = icmp sgt i32 %66, 1
  br i1 %cmp142.i, label %land.lhs.true.i, label %if.end140.i.sw.epilog.i_crit_edge

if.end140.i.sw.epilog.i_crit_edge:                ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

land.lhs.true.i:                                  ; preds = %if.end140.i
  %67 = ptrtoint ptr %muxpack_len24.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %muxpack_len24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp146.i = icmp eq i32 %66, %68
  br i1 %cmp146.i, label %if.then148.i, label %land.lhs.true.i.sw.epilog.i_crit_edge

land.lhs.true.i.sw.epilog.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then148.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp.i.i = icmp ugt i32 %66, 3
  %and.i.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.cond.i.i = and i1 %cmp.i.i, %tobool.not.i.i
  br i1 %or.cond.i.i, label %if.then148.i.for.body.i.i_crit_edge, label %do.end.i.i

if.then148.i.for.body.i.i_crit_edge:              ; preds = %if.then148.i
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %66) #13
  %69 = load i32, ptr @numinvalid, align 4
  %inc.i.i = add i32 %69, 1
  store i32 %inc.i.i, ptr @numinvalid, align 4
  br label %ttusb_process_muxpack.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then148.i.for.body.i.i_crit_edge
  %csum.0103.i.i = phi i16 [ %xor99.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then148.i.for.body.i.i_crit_edge ]
  %i.0102.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then148.i.for.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %muxpack.i, i32 %i.0102.i.i
  %70 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %add.ptr.i.i, align 2
  %72 = tail call i16 @llvm.bswap.i16(i16 %71) #10
  %xor99.i.i = xor i16 %72, %csum.0103.i.i
  %add.i.i = add i32 %i.0102.i.i, 2
  %cmp1.i.i = icmp slt i32 %add.i.i, %66
  br i1 %cmp1.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor99.i.i)
  %phi.cmp.i.i = icmp eq i16 %xor99.i.i, 0
  br i1 %phi.cmp.i.i, label %if.end13.i.i, label %do.end9.i.i

do.end9.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #13
  %73 = load i32, ptr @numinvalid, align 4
  %inc12.i.i = add i32 %73, 1
  store i32 %inc12.i.i, ptr @numinvalid, align 4
  br label %ttusb_process_muxpack.exit.i

if.end13.i.i:                                     ; preds = %for.end.i.i
  %sub.i.i = add i32 %66, -4
  %arrayidx.i.i = getelementptr i8, ptr %muxpack.i, i32 %sub.i.i
  %74 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.i.i, align 1
  %conv14.i.i = zext i8 %75 to i32
  %shl.i.i = shl nuw nsw i32 %conv14.i.i, 8
  %sub15.i.i = add i32 %66, -3
  %arrayidx16.i.i = getelementptr i8, ptr %muxpack.i, i32 %sub15.i.i
  %76 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx16.i.i, align 1
  %conv17.i.i = zext i8 %77 to i32
  %shl.masked.i.i = and i32 %shl.i.i, 32512
  %and20.i.i = or i32 %shl.masked.i.i, %conv17.i.i
  %78 = ptrtoint ptr %cc23.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cc23.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and20.i.i, i32 %79)
  %cmp24.not.i.i = icmp eq i32 %and20.i.i, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %79)
  %cmp27.not.i.i = icmp eq i32 %79, -1
  %or.cond100.i.i = or i1 %cmp27.not.i.i, %cmp24.not.i.i
  br i1 %or.cond100.i.i, label %if.end13.i.i.if.end39.i.i_crit_edge, label %do.end32.i.i

if.end13.i.i.if.end39.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i.i

do.end32.i.i:                                     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub36.i.i = sub i32 %and20.i.i, %79
  %and37.i.i = and i32 %sub36.i.i, 32767
  %call38.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %and37.i.i) #13
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %do.end32.i.i, %if.end13.i.i.if.end39.i.i_crit_edge
  %add41.i.i = add nuw nsw i32 %and20.i.i, 1
  %and42.i.i = and i32 %add41.i.i, 32767
  %80 = ptrtoint ptr %cc23.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and42.i.i, ptr %cc23.i.i, align 4
  %81 = ptrtoint ptr %muxpack.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %muxpack.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %82)
  %tobool47.not.i.i = icmp sgt i8 %82, -1
  br i1 %tobool47.not.i.i, label %if.else.i.i, label %if.then48.i.i

if.then48.i.i:                                    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %83 = load i32, ptr @numsec, align 4
  %inc49.i.i = add i32 %83, 1
  store i32 %inc49.i.i, ptr @numsec, align 4
  br label %ttusb_process_muxpack.exit.i

if.else.i.i:                                      ; preds = %if.end39.i.i
  %84 = zext i8 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.140)
  switch i8 %82, label %if.then61.i.i [
    i8 71, label %if.then54.i.i
    i8 0, label %if.else70.i.i
  ]

if.then54.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %85 = load i32, ptr @numts, align 4
  %inc55.i.i = add i32 %85, 1
  store i32 %inc55.i.i, ptr @numts, align 4
  tail call void @dvb_dmx_swfilter_packets(ptr noundef %1, ptr noundef %muxpack.i, i32 noundef 1) #10
  br label %ttusb_process_muxpack.exit.i

if.then61.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %86 = load i32, ptr @numinvalid, align 4
  %inc62.i.i = add i32 %86, 1
  store i32 %inc62.i.i, ptr @numinvalid, align 4
  %conv68.i.i = zext i8 %82 to i32
  %call69.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %conv68.i.i) #13
  br label %ttusb_process_muxpack.exit.i

if.else70.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %87 = load i32, ptr @numstuff, align 4
  %inc71.i.i = add i32 %87, 1
  store i32 %inc71.i.i, ptr @numstuff, align 4
  br label %ttusb_process_muxpack.exit.i

ttusb_process_muxpack.exit.i:                     ; preds = %if.else70.i.i, %if.then61.i.i, %if.then54.i.i, %if.then48.i.i, %do.end9.i.i, %do.end.i.i
  %88 = ptrtoint ptr %muxpack_ptr25.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %muxpack_ptr25.i, align 8
  %89 = ptrtoint ptr %muxpack_len24.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 2, ptr %muxpack_len24.i, align 4
  %90 = ptrtoint ptr %mux_npacks154.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %mux_npacks154.i, align 4
  %dec155.i = add i8 %91, -1
  store i8 %dec155.i, ptr %mux_npacks154.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool156.not.i = icmp eq i8 %91, 0
  br i1 %tobool156.not.i, label %if.then157.i, label %ttusb_process_muxpack.exit.i.sw.epilog.i_crit_edge

ttusb_process_muxpack.exit.i.sw.epilog.i_crit_edge: ; preds = %ttusb_process_muxpack.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then157.i:                                     ; preds = %ttusb_process_muxpack.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %mux_state.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %mux_state.i, align 8
  br label %sw.epilog.i

do.body161.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 709, 0\0A.popsection", ""() #10, !srcloc !299
  unreachable

sw.epilog.i:                                      ; preds = %if.then157.i, %ttusb_process_muxpack.exit.i.sw.epilog.i_crit_edge, %land.lhs.true.i.sw.epilog.i_crit_edge, %if.end140.i.sw.epilog.i_crit_edge, %sw.bb17.i, %do.end11.i, %if.else.i.sw.epilog.i_crit_edge, %if.then4.i
  %len.addr.1.i = phi i32 [ %dec19.i, %sw.bb17.i ], [ %dec2.i, %if.then4.i ], [ %dec2.i, %do.end11.i ], [ %dec2.i, %if.else.i.sw.epilog.i_crit_edge ], [ %sub52.i, %if.end140.i.sw.epilog.i_crit_edge ], [ %sub52.i, %land.lhs.true.i.sw.epilog.i_crit_edge ], [ %sub52.i, %ttusb_process_muxpack.exit.i.sw.epilog.i_crit_edge ], [ %sub52.i, %if.then157.i ]
  %data.addr.1.i = phi ptr [ %incdec.ptr20.i, %sw.bb17.i ], [ %incdec.ptr.i, %if.then4.i ], [ %incdec.ptr.i, %do.end11.i ], [ %incdec.ptr.i, %if.else.i.sw.epilog.i_crit_edge ], [ %add.ptr51.i, %if.end140.i.sw.epilog.i_crit_edge ], [ %add.ptr51.i, %land.lhs.true.i.sw.epilog.i_crit_edge ], [ %add.ptr51.i, %ttusb_process_muxpack.exit.i.sw.epilog.i_crit_edge ], [ %add.ptr51.i, %if.then157.i ]
  %tobool.not.i = icmp eq i32 %len.addr.1.i, 0
  br i1 %tobool.not.i, label %sw.epilog.i.ttusb_process_frame.exit_crit_edge, label %sw.epilog.i.while.body.i_crit_edge

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

sw.epilog.i.ttusb_process_frame.exit_crit_edge:   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ttusb_process_frame.exit

ttusb_process_frame.exit:                         ; preds = %sw.epilog.i.ttusb_process_frame.exit_crit_edge, %do.end.i, %if.end15.ttusb_process_frame.exit_crit_edge
  %inc18 = add nuw nsw i32 %i.037, 1
  %93 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %number_of_packets, align 4
  %cmp = icmp slt i32 %inc18, %94
  br i1 %cmp, label %ttusb_process_frame.exit.for.body_crit_edge, label %ttusb_process_frame.exit.if.end19_crit_edge

ttusb_process_frame.exit.if.end19_crit_edge:      ; preds = %ttusb_process_frame.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

ttusb_process_frame.exit.for.body_crit_edge:      ; preds = %ttusb_process_frame.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end19:                                         ; preds = %ttusb_process_frame.exit.if.end19_crit_edge, %for.cond.preheader.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %call20 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter_packets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_tsa5059_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #10
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #10
  %5 = getelementptr inbounds i8, ptr %msg, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 97, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 4, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf, ptr %buf1, align 4
  %11 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dtv_property_cache, align 4
  %13 = add i32 %12, -2150001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1200001, i32 %13)
  %14 = icmp ult i32 %13, -1200001
  br i1 %14, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %16 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %add = add nuw nsw i32 %12, 124
  %div5 = udiv i32 %add, 125
  %shr = lshr i32 %div5, 8
  %17 = trunc i32 %shr to i8
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %buf, align 1
  %conv7 = trunc i32 %div5 to i8
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv7, ptr %16, align 1
  %and9 = lshr i32 %div5, 10
  %20 = trunc i32 %and9 to i8
  %21 = and i8 %20, 96
  %conv12 = or i8 %21, -124
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv12, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1530000, i32 %12)
  %cmp16 = icmp ugt i32 %12, 1530000
  %spec.store.select = select i1 %cmp16, i8 -64, i8 -60
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %spec.store.select, ptr %4, align 1
  %revision = getelementptr inbounds %struct.ttusb, ptr %3, i32 0, i32 30
  %24 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %revision, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %25)
  %cmp21 = icmp eq i32 %25, 34
  br i1 %cmp21, label %if.then23, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %26 = or i8 %spec.store.select, 32
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %4, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end.if.end28_crit_edge
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %28 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %if.end28.if.end32_crit_edge, label %if.then29

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then29:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %call = call i32 %29(ptr noundef %fe, i32 noundef 1) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end28.if.end32_crit_edge
  %i2c_adap = getelementptr inbounds %struct.ttusb, ptr %3, i32 0, i32 7
  %call33 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call33)
  %cmp34.not = icmp eq i32 %call33, 1
  %. = select i1 %cmp34.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %if.end32 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusb_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #2 align 64 {
entry:
  %b.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %voltage1 = getelementptr inbounds %struct.ttusb, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %voltage1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %voltage, ptr %voltage1, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %b.i) #10
  %5 = getelementptr inbounds [9 x i8], ptr %b.i, i32 0, i32 1
  %6 = getelementptr inbounds [9 x i8], ptr %b.i, i32 0, i32 2
  %7 = getelementptr inbounds [9 x i8], ptr %b.i, i32 0, i32 3
  %8 = getelementptr inbounds [9 x i8], ptr %b.i, i32 0, i32 4
  %9 = getelementptr inbounds [9 x i8], ptr %b.i, i32 0, i32 5
  %10 = getelementptr inbounds [9 x i8], ptr %b.i, i32 0, i32 6
  %11 = getelementptr inbounds [9 x i8], ptr %b.i, i32 0, i32 7
  %12 = getelementptr inbounds [9 x i8], ptr %b.i, i32 0, i32 8
  %13 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -86, ptr %b.i, align 1
  %c.i = getelementptr inbounds %struct.ttusb, ptr %3, i32 0, i32 18
  %14 = ptrtoint ptr %c.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %c.i, align 4
  %inc.i = add i8 %15, 1
  store i8 %inc.i, ptr %c.i, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %inc.i, ptr %5, align 1
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 22, ptr %6, align 1
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 5, ptr %7, align 1
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %voltage)
  %cmp.i = icmp ne i32 %voltage, 1
  %conv.i = zext i1 %cmp.i to i8
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i, ptr %9, align 1
  %tone.i = getelementptr inbounds %struct.ttusb, ptr %3, i32 0, i32 19
  %21 = ptrtoint ptr %tone.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tone.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp6.i = icmp eq i32 %22, 0
  %conv9.i = zext i1 %cmp6.i to i8
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv9.i, ptr %10, align 1
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %11, align 1
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %12, align 1
  %call.i = call fastcc i32 @ttusb_cmd(ptr noundef %3, ptr noundef nonnull %b.i, i32 noundef 9, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.ttusb_update_lnb.exit_crit_edge, label %do.body.i

entry.ttusb_update_lnb.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ttusb_update_lnb.exit

do.body.i:                                        ; preds = %entry
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool12.not.i = icmp eq i32 %26, 0
  br i1 %tobool12.not.i, label %do.body.i.ttusb_update_lnb.exit_crit_edge, label %do.end.i

do.body.i.ttusb_update_lnb.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ttusb_update_lnb.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.129, i32 noundef %call.i) #13
  br label %ttusb_update_lnb.exit

ttusb_update_lnb.exit:                            ; preds = %do.end.i, %do.body.i.ttusb_update_lnb.exit_crit_edge, %entry.ttusb_update_lnb.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %b.i) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusb_novas_grundig_29504_491_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #10
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #10
  %7 = getelementptr inbounds i8, ptr %msg, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 97, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf1, align 4
  %13 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dtv_property_cache, align 4
  %div2 = udiv i32 %14, 125
  %shr = lshr i32 %div2, 8
  %15 = trunc i32 %shr to i8
  %conv = and i8 %15, 127
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %buf, align 1
  %conv4 = trunc i32 %div2 to i8
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv4, ptr %4, align 1
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -114, ptr %5, align 1
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %6, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %20 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = call i32 %21(ptr noundef %fe, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_adap = getelementptr inbounds %struct.ttusb, ptr %3, i32 0, i32 7
  %call10 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 1
  %. = select i1 %cmp.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #10
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_tdbe2_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %data = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #10
  %4 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #10
  %7 = getelementptr inbounds i8, ptr %msg, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 98, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data, ptr %buf, align 4
  %13 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dtv_property_cache, align 4
  %add1 = add i32 %14, 35968750
  %div2 = udiv i32 %add1, 62500
  %shr = lshr i32 %div2, 8
  %15 = trunc i32 %shr to i8
  %conv = and i8 %15, 127
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %data, align 1
  %conv4 = trunc i32 %div2 to i8
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv4, ptr %4, align 1
  %shr6 = lshr i32 %div2, 10
  %18 = trunc i32 %shr6 to i8
  %19 = and i8 %18, 96
  %conv8 = or i8 %19, -123
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 174000000, i32 %14)
  %cmp = icmp ult i32 %14, 174000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 470000000, i32 %14)
  %cmp13 = icmp ult i32 %14, 470000000
  %phi.cast = select i1 %cmp13, i8 -124, i8 -127
  %cond15 = select i1 %cmp, i8 -120, i8 %phi.cast
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %cond15, ptr %6, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = call i32 %23(ptr noundef %fe, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_adap = getelementptr inbounds %struct.ttusb, ptr %3, i32 0, i32 7
  %call20 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 1
  %. = select i1 %cmp21.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #10
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbc_philips_tdm1316l_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %tuner_buf = alloca [5 x i8], align 1
  %tuner_msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %tuner_buf) #10
  %4 = getelementptr inbounds [5 x i8], ptr %tuner_buf, i32 0, i32 1
  %5 = getelementptr inbounds [5 x i8], ptr %tuner_buf, i32 0, i32 2
  %6 = getelementptr inbounds [5 x i8], ptr %tuner_buf, i32 0, i32 3
  %7 = getelementptr inbounds [5 x i8], ptr %tuner_buf, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tuner_msg) #10
  %8 = getelementptr inbounds i8, ptr %tuner_msg, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4
  %10 = ptrtoint ptr %tuner_msg to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 96, ptr %tuner_msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 5, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 3
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tuner_buf, ptr %buf, align 4
  %14 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 87000000, i32 %15)
  %cmp = icmp slt i32 %15, 87000000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 130000000, i32 %15)
  %cmp1 = icmp ult i32 %15, 130000000
  br i1 %cmp1, label %if.else.if.end36_crit_edge, label %if.else3

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 160000000, i32 %15)
  %cmp4 = icmp ult i32 %15, 160000000
  br i1 %cmp4, label %if.else3.if.end36_crit_edge, label %if.else6

if.else3.if.end36_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %15)
  %cmp7 = icmp ult i32 %15, 200000000
  br i1 %cmp7, label %if.else6.if.end36_crit_edge, label %if.else9

if.else6.if.end36_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.else9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 290000000, i32 %15)
  %cmp10 = icmp ult i32 %15, 290000000
  br i1 %cmp10, label %if.else9.if.end36_crit_edge, label %if.else12

if.else9.if.end36_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.else12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_const_cmp4(i32 420000000, i32 %15)
  %cmp13 = icmp ult i32 %15, 420000000
  br i1 %cmp13, label %if.else12.if.end36_crit_edge, label %if.else15

if.else12.if.end36_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.else15:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_const_cmp4(i32 480000000, i32 %15)
  %cmp16 = icmp ult i32 %15, 480000000
  br i1 %cmp16, label %if.else15.if.end36_crit_edge, label %if.else18

if.else15.if.end36_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.else18:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_const_cmp4(i32 620000000, i32 %15)
  %cmp19 = icmp ult i32 %15, 620000000
  br i1 %cmp19, label %if.else18.if.end36_crit_edge, label %if.else21

if.else18.if.end36_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.else21:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_const_cmp4(i32 830000000, i32 %15)
  %cmp22 = icmp ult i32 %15, 830000000
  br i1 %cmp22, label %if.else21.if.end36_crit_edge, label %if.else24

if.else21.if.end36_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.else24:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_const_cmp4(i32 895000000, i32 %15)
  %cmp25 = icmp ult i32 %15, 895000000
  br i1 %cmp25, label %if.else24.if.end36_crit_edge, label %if.else24.cleanup_crit_edge

if.else24.cleanup_crit_edge:                      ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else24.if.end36_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end36:                                         ; preds = %if.else24.if.end36_crit_edge, %if.else21.if.end36_crit_edge, %if.else18.if.end36_crit_edge, %if.else15.if.end36_crit_edge, %if.else12.if.end36_crit_edge, %if.else9.if.end36_crit_edge, %if.else6.if.end36_crit_edge, %if.else3.if.end36_crit_edge, %if.else.if.end36_crit_edge
  %band.0 = phi i8 [ 1, %if.else.if.end36_crit_edge ], [ 1, %if.else3.if.end36_crit_edge ], [ 1, %if.else6.if.end36_crit_edge ], [ 2, %if.else9.if.end36_crit_edge ], [ 2, %if.else12.if.end36_crit_edge ], [ 2, %if.else15.if.end36_crit_edge ], [ 4, %if.else18.if.end36_crit_edge ], [ 4, %if.else21.if.end36_crit_edge ], [ 4, %if.else24.if.end36_crit_edge ]
  %cp.0 = phi i8 [ 104, %if.else.if.end36_crit_edge ], [ -88, %if.else3.if.end36_crit_edge ], [ -56, %if.else6.if.end36_crit_edge ], [ 104, %if.else9.if.end36_crit_edge ], [ -88, %if.else12.if.end36_crit_edge ], [ -56, %if.else15.if.end36_crit_edge ], [ 104, %if.else18.if.end36_crit_edge ], [ -88, %if.else21.if.end36_crit_edge ], [ -24, %if.else24.if.end36_crit_edge ]
  %add = add nuw nsw i32 %15, 36125000
  %div = udiv i32 %add, 62500
  %16 = lshr i32 %div, 8
  %conv = trunc i32 %16 to i8
  %17 = ptrtoint ptr %tuner_buf to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %tuner_buf, align 1
  %conv38 = trunc i32 %div to i8
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv38, ptr %4, align 1
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -56, ptr %5, align 1
  %or45 = or i8 %cp.0, %band.0
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %or45, ptr %6, align 1
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -128, ptr %7, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end36.if.end52_crit_edge, label %if.then49

if.end36.if.end52_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then49:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %call = call i32 %23(ptr noundef %fe, i32 noundef 1) #10
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end36.if.end52_crit_edge
  %i2c_adap = getelementptr inbounds %struct.ttusb, ptr %3, i32 0, i32 7
  %call53 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %tuner_msg, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call53)
  %cmp54.not = icmp eq i32 %call53, 1
  br i1 %cmp54.not, label %if.end58, label %do.end

do.end:                                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130) #13
  br label %cleanup

if.end58:                                         ; preds = %if.end52
  call void @msleep(i32 noundef 50) #10
  %24 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool61.not = icmp eq ptr %25, null
  br i1 %tobool61.not, label %if.end58.if.end66_crit_edge, label %if.then62

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %call65 = call i32 %25(ptr noundef %fe, i32 noundef 1) #10
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.end58.if.end66_crit_edge
  %call68 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %tuner_msg, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call68)
  %cmp69.not = icmp eq i32 %call68, 1
  br i1 %cmp69.not, label %if.end77, label %do.end74

do.end74:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #13
  br label %cleanup

if.end77:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  call void @msleep(i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %do.end74, %do.end, %if.else24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end74 ], [ 0, %if.end77 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tuner_msg) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %tuner_buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_tdmb7_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %data = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #10
  %4 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #10
  %7 = getelementptr inbounds i8, ptr %msg, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 97, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data, ptr %buf, align 4
  %13 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dtv_property_cache, align 4
  %add = add i32 %14, 36166667
  %div1 = udiv i32 %add, 166667
  %shr = lshr i32 %div1, 8
  %conv = trunc i32 %shr to i8
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %data, align 1
  %conv3 = trunc i32 %div1 to i8
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3, ptr %4, align 1
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -123, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 592000000, i32 %14)
  %cmp = icmp ult i32 %14, 592000000
  %conv11 = select i1 %cmp, i8 64, i8 -128
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv11, ptr %6, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %19 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = call i32 %20(ptr noundef %fe, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_adap = getelementptr inbounds %struct.ttusb, ptr %3, i32 0, i32 7
  %call15 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 1
  %. = select i1 %cmp16.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #10
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_tdm1316l_tuner_init(ptr noundef %fe) #2 align 64 {
entry:
  %tuner_msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tuner_msg) #10
  %4 = call ptr @memcpy(ptr %tuner_msg, ptr @__const.philips_tdm1316l_tuner_init.tuner_msg, i32 12)
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %5 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %6(ptr noundef %fe, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_adap = getelementptr inbounds %struct.ttusb, ptr %3, i32 0, i32 7
  %call3 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %tuner_msg, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 1
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @msleep(i32 noundef 1) #10
  %7 = ptrtoint ptr %tuner_msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 101, ptr %tuner_msg, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @philips_tdm1316l_tuner_init.disable_mc44BC374c, ptr %buf, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 4, ptr %len, align 4
  %10 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.end5.if.end13_crit_edge, label %if.then9

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = call i32 %11(ptr noundef %fe, i32 noundef 1) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end5.if.end13_crit_edge
  %call15 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %tuner_msg, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 1
  br i1 %cmp16.not, label %if.end13.cleanup_crit_edge, label %if.then17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %tuner_msg, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.end.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tuner_msg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_tdm1316l_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %buf.i122 = alloca [2 x i8], align 1
  %buf.i116 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  %tuner_buf = alloca [4 x i8], align 4
  %tuner_msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tuner_buf) #10
  %4 = getelementptr inbounds [4 x i8], ptr %tuner_buf, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %tuner_buf, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %tuner_buf, i32 0, i32 3
  %7 = ptrtoint ptr %tuner_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %tuner_buf, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tuner_msg) #10
  %8 = getelementptr inbounds i8, ptr %tuner_msg, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4
  %10 = ptrtoint ptr %tuner_msg to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 96, ptr %tuner_msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 3
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tuner_buf, ptr %buf, align 4
  %14 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dtv_property_cache, align 4
  %add = add i32 %15, 36130000
  call void @__sanitizer_cov_trace_const_cmp4(i32 87000000, i32 %add)
  %cmp = icmp slt i32 %add, 87000000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 130000000, i32 %add)
  %cmp1 = icmp ult i32 %add, 130000000
  br i1 %cmp1, label %if.else.if.end56_crit_edge, label %if.else3

if.else.if.end56_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 160000000, i32 %add)
  %cmp4 = icmp ult i32 %add, 160000000
  br i1 %cmp4, label %if.else3.if.end56_crit_edge, label %if.else6

if.else3.if.end56_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %add)
  %cmp7 = icmp ult i32 %add, 200000000
  br i1 %cmp7, label %if.else40, label %if.else9

if.else9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 290000000, i32 %add)
  %cmp10 = icmp ult i32 %add, 290000000
  br i1 %cmp10, label %if.else9.if.end56_crit_edge, label %if.else12

if.else9.if.end56_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.else12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_const_cmp4(i32 420000000, i32 %add)
  %cmp13 = icmp ult i32 %add, 420000000
  br i1 %cmp13, label %if.else12.if.end56_crit_edge, label %if.else15

if.else12.if.end56_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.else15:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_const_cmp4(i32 480000000, i32 %add)
  %cmp16 = icmp ult i32 %add, 480000000
  br i1 %cmp16, label %if.else15.if.end56_crit_edge, label %if.else18

if.else15.if.end56_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.else18:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_const_cmp4(i32 620000000, i32 %add)
  %cmp19 = icmp ult i32 %add, 620000000
  br i1 %cmp19, label %if.else44, label %if.else21

if.else21:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_const_cmp4(i32 830000000, i32 %add)
  %cmp22 = icmp ult i32 %add, 830000000
  br i1 %cmp22, label %if.else21.if.else48_crit_edge, label %if.else24

if.else21.if.else48_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else48

if.else24:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_const_cmp4(i32 895000000, i32 %add)
  %cmp25 = icmp ult i32 %add, 895000000
  br i1 %cmp25, label %if.else24.if.else48_crit_edge, label %if.else24.cleanup_crit_edge

if.else24.cleanup_crit_edge:                      ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else24.if.else48_crit_edge:                    ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else48

if.else40:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 159000000, i32 %15)
  %cmp42 = icmp ult i32 %15, 159000000
  %spec.select = select i1 %cmp42, i8 1, i8 2
  br label %if.end56

if.else44:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_const_cmp4(i32 444000000, i32 %15)
  %cmp46 = icmp ult i32 %15, 444000000
  br i1 %cmp46, label %if.else44.if.end56_crit_edge, label %if.else44.if.else48_crit_edge

if.else44.if.else48_crit_edge:                    ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else48

if.else44.if.end56_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.else48:                                        ; preds = %if.else44.if.else48_crit_edge, %if.else24.if.else48_crit_edge, %if.else21.if.else48_crit_edge
  %cp.0.ph147 = phi i8 [ 96, %if.else44.if.else48_crit_edge ], [ -96, %if.else21.if.else48_crit_edge ], [ -32, %if.else24.if.else48_crit_edge ]
  br label %if.end56

if.end56:                                         ; preds = %if.else48, %if.else44.if.end56_crit_edge, %if.else40, %if.else15.if.end56_crit_edge, %if.else12.if.end56_crit_edge, %if.else9.if.end56_crit_edge, %if.else3.if.end56_crit_edge, %if.else.if.end56_crit_edge
  %cp.0131 = phi i8 [ 96, %if.else44.if.end56_crit_edge ], [ %cp.0.ph147, %if.else48 ], [ -96, %if.else3.if.end56_crit_edge ], [ 96, %if.else.if.end56_crit_edge ], [ 96, %if.else9.if.end56_crit_edge ], [ -96, %if.else12.if.end56_crit_edge ], [ -64, %if.else15.if.end56_crit_edge ], [ -64, %if.else40 ]
  %band.0 = phi i8 [ 2, %if.else44.if.end56_crit_edge ], [ 4, %if.else48 ], [ 1, %if.else3.if.end56_crit_edge ], [ 1, %if.else.if.end56_crit_edge ], [ 2, %if.else9.if.end56_crit_edge ], [ 2, %if.else12.if.end56_crit_edge ], [ 2, %if.else15.if.end56_crit_edge ], [ %spec.select, %if.else40 ]
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %16 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bandwidth_hz, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %17, label %if.end56.cleanup_crit_edge [
    i32 6000000, label %sw.bb
    i32 7000000, label %sw.bb57
    i32 8000000, label %sw.bb59
  ]

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end56
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %19 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 12, ptr %buf.i, align 1
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %19, align 1
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %22 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %sw.bb.tda1004x_writereg.exit_crit_edge, label %if.then.i

sw.bb.tda1004x_writereg.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %tda1004x_writereg.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 %23(ptr noundef %fe, ptr noundef nonnull %buf.i, i32 noundef 2) #10
  br label %tda1004x_writereg.exit

tda1004x_writereg.exit:                           ; preds = %if.then.i, %sw.bb.tda1004x_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end56
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i116) #10
  %24 = getelementptr inbounds [2 x i8], ptr %buf.i116, i32 0, i32 1
  %25 = ptrtoint ptr %buf.i116 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 12, ptr %buf.i116, align 1
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %24, align 1
  %write.i117 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %27 = ptrtoint ptr %write.i117 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write.i117, align 4
  %tobool.not.i118 = icmp eq ptr %28, null
  br i1 %tobool.not.i118, label %sw.bb57.tda1004x_writereg.exit121_crit_edge, label %if.then.i120

sw.bb57.tda1004x_writereg.exit121_crit_edge:      ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #12
  br label %tda1004x_writereg.exit121

if.then.i120:                                     ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #12
  %call.i119 = call i32 %28(ptr noundef %fe, ptr noundef nonnull %buf.i116, i32 noundef 2) #10
  br label %tda1004x_writereg.exit121

tda1004x_writereg.exit121:                        ; preds = %if.then.i120, %sw.bb57.tda1004x_writereg.exit121_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i116) #10
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end56
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i122) #10
  %29 = getelementptr inbounds [2 x i8], ptr %buf.i122, i32 0, i32 1
  %30 = ptrtoint ptr %buf.i122 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 12, ptr %buf.i122, align 1
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %29, align 1
  %write.i123 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %32 = ptrtoint ptr %write.i123 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write.i123, align 4
  %tobool.not.i124 = icmp eq ptr %33, null
  br i1 %tobool.not.i124, label %sw.bb59.tda1004x_writereg.exit127_crit_edge, label %if.then.i126

sw.bb59.tda1004x_writereg.exit127_crit_edge:      ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #12
  br label %tda1004x_writereg.exit127

if.then.i126:                                     ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #12
  %call.i125 = call i32 %33(ptr noundef %fe, ptr noundef nonnull %buf.i122, i32 noundef 2) #10
  br label %tda1004x_writereg.exit127

tda1004x_writereg.exit127:                        ; preds = %if.then.i126, %sw.bb59.tda1004x_writereg.exit127_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i122) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %tda1004x_writereg.exit127, %tda1004x_writereg.exit121, %tda1004x_writereg.exit
  %filter.0 = phi i8 [ 8, %tda1004x_writereg.exit127 ], [ 0, %tda1004x_writereg.exit121 ], [ 0, %tda1004x_writereg.exit ]
  %34 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dtv_property_cache, align 4
  %div = udiv i32 %35, 1000
  %mul = mul nuw nsw i32 %div, 6
  %add62 = add nuw nsw i32 %mul, 217280
  %div63 = udiv i32 %add62, 1000
  %36 = lshr i32 %div63, 8
  %conv = trunc i32 %36 to i8
  %37 = ptrtoint ptr %tuner_buf to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv, ptr %tuner_buf, align 4
  %conv64 = trunc i32 %div63 to i8
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv64, ptr %4, align 1
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -54, ptr %5, align 2
  %or = or i8 %band.0, %cp.0131
  %or71 = or i8 %or, %filter.0
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %or71, ptr %6, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %41 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %42, null
  br i1 %tobool.not, label %sw.epilog.if.end78_crit_edge, label %if.then74

sw.epilog.if.end78_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then74:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %call77 = call i32 %42(ptr noundef %fe, i32 noundef 1) #10
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %sw.epilog.if.end78_crit_edge
  %i2c_adap = getelementptr inbounds %struct.ttusb, ptr %3, i32 0, i32 7
  %call79 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %tuner_msg, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call79)
  %cmp80.not = icmp eq i32 %call79, 1
  br i1 %cmp80.not, label %if.end83, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end83:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  call void @msleep(i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.end78.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.else24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end83 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else24.cleanup_crit_edge ], [ -22, %if.end56.cleanup_crit_edge ], [ -5, %if.end78.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tuner_msg) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuner_buf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_stv0299_set_symbol_rate(ptr noundef %fe, i32 noundef %srate, i32 noundef %ratio) #2 align 64 {
entry:
  %buf.i59 = alloca [2 x i8], align 1
  %buf.i53 = alloca [2 x i8], align 1
  %buf.i47 = alloca [2 x i8], align 1
  %buf.i41 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %srate)
  %cmp = icmp ult i32 %srate, 1500000
  br i1 %cmp, label %entry.if.end19_crit_edge, label %if.else

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %srate)
  %cmp1 = icmp ult i32 %srate, 3000000
  br i1 %cmp1, label %if.else.if.end19_crit_edge, label %if.else3

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %srate)
  %cmp4 = icmp ult i32 %srate, 7000000
  br i1 %cmp4, label %if.else3.if.end19_crit_edge, label %if.else6

if.else3.if.end19_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_const_cmp4(i32 14000000, i32 %srate)
  %cmp7 = icmp ult i32 %srate, 14000000
  br i1 %cmp7, label %if.else6.if.end19_crit_edge, label %if.else9

if.else6.if.end19_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.else9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %srate)
  %cmp10 = icmp ult i32 %srate, 30000000
  br i1 %cmp10, label %if.else9.if.end19_crit_edge, label %if.else12

if.else9.if.end19_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.else12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000000, i32 %srate)
  %cmp13 = icmp ult i32 %srate, 45000000
  %spec.select = select i1 %cmp13, i8 -76, i8 0
  %spec.select40 = select i1 %cmp13, i8 81, i8 0
  br label %if.end19

if.end19:                                         ; preds = %if.else12, %if.else9.if.end19_crit_edge, %if.else6.if.end19_crit_edge, %if.else3.if.end19_crit_edge, %if.else.if.end19_crit_edge, %entry.if.end19_crit_edge
  %aclk.0 = phi i8 [ -73, %entry.if.end19_crit_edge ], [ -73, %if.else.if.end19_crit_edge ], [ -73, %if.else3.if.end19_crit_edge ], [ -73, %if.else6.if.end19_crit_edge ], [ -74, %if.else9.if.end19_crit_edge ], [ %spec.select, %if.else12 ]
  %bclk.0 = phi i8 [ 71, %entry.if.end19_crit_edge ], [ 75, %if.else.if.end19_crit_edge ], [ 79, %if.else3.if.end19_crit_edge ], [ 83, %if.else6.if.end19_crit_edge ], [ 83, %if.else9.if.end19_crit_edge ], [ %spec.select40, %if.else12 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 19, ptr %buf.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %aclk.0, ptr %0, align 1
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %stv0299_writereg.exit.thread, label %stv0299_writereg.exit

stv0299_writereg.exit.thread:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #10
  br label %stv0299_writereg.exit46

stv0299_writereg.exit:                            ; preds = %if.end19
  %call.i = call i32 %4(ptr noundef %fe, ptr noundef nonnull %buf.i, i32 noundef 2) #10
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #10
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i41, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i41 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 20, ptr %buf.i41, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bclk.0, ptr %6, align 1
  %tobool.not.i43 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i43, label %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, label %if.then.i45

stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge: ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %stv0299_writereg.exit46

if.then.i45:                                      ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i44 = call i32 %.pr(ptr noundef %fe, ptr noundef nonnull %buf.i41, i32 noundef 2) #10
  br label %stv0299_writereg.exit46

stv0299_writereg.exit46:                          ; preds = %if.then.i45, %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, %stv0299_writereg.exit.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i41) #10
  %shr = lshr i32 %ratio, 16
  %conv = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i47) #10
  %9 = getelementptr inbounds [2 x i8], ptr %buf.i47, i32 0, i32 1
  %10 = ptrtoint ptr %buf.i47 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 31, ptr %buf.i47, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %9, align 1
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %tobool.not.i49 = icmp eq ptr %13, null
  br i1 %tobool.not.i49, label %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge, label %if.then.i51

stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge: ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #12
  br label %stv0299_writereg.exit52

if.then.i51:                                      ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #12
  %call.i50 = call i32 %13(ptr noundef %fe, ptr noundef nonnull %buf.i47, i32 noundef 2) #10
  br label %stv0299_writereg.exit52

stv0299_writereg.exit52:                          ; preds = %if.then.i51, %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i47) #10
  %shr22 = lshr i32 %ratio, 8
  %conv24 = trunc i32 %shr22 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53) #10
  %14 = getelementptr inbounds [2 x i8], ptr %buf.i53, i32 0, i32 1
  %15 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 32, ptr %buf.i53, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv24, ptr %14, align 1
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 4
  %tobool.not.i55 = icmp eq ptr %18, null
  br i1 %tobool.not.i55, label %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge, label %if.then.i57

stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge: ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #12
  br label %stv0299_writereg.exit58

if.then.i57:                                      ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #12
  %call.i56 = call i32 %18(ptr noundef %fe, ptr noundef nonnull %buf.i53, i32 noundef 2) #10
  br label %stv0299_writereg.exit58

stv0299_writereg.exit58:                          ; preds = %if.then.i57, %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #10
  %19 = trunc i32 %ratio to i8
  %conv27 = and i8 %19, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i59) #10
  %20 = getelementptr inbounds [2 x i8], ptr %buf.i59, i32 0, i32 1
  %21 = ptrtoint ptr %buf.i59 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 33, ptr %buf.i59, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv27, ptr %20, align 1
  %23 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i, align 4
  %tobool.not.i61 = icmp eq ptr %24, null
  br i1 %tobool.not.i61, label %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge, label %if.then.i63

stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge: ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #12
  br label %stv0299_writereg.exit64

if.then.i63:                                      ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #12
  %call.i62 = call i32 %24(ptr noundef %fe, ptr noundef nonnull %buf.i59, i32 noundef 2) #10
  br label %stv0299_writereg.exit64

stv0299_writereg.exit64:                          ; preds = %if.then.i63, %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i59) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_tdm1316l_request_firmware(ptr nocapture noundef readonly %fe, ptr noundef %fw, ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.ttusb, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %call = tail call i32 @request_firmware(ptr noundef %fw, ptr noundef %name, ptr noundef %dev1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_net_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !30, !32, !34, !35, !36, !37, !38, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !77, !79, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !114, !115, !116, !117, !119, !120, !121, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !156, !158, !160, !162, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !200, !201, !203, !204, !205, !206, !207, !209, !210, !211, !212, !213, !215, !216, !217, !218, !219, !221, !222, !223, !224, !225, !227, !228, !229, !230, !231, !233, !234, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !249, !251, !253, !254, !255, !257, !259, !261, !263, !265, !266, !267, !268, !270, !271, !272, !274, !276, !278, !280, !282, !283, !284, !285}
!llvm.module.flags = !{!287, !288, !289, !290, !291, !292, !293, !294}
!llvm.ident = !{!295}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 60, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype388, !1, !"__UNIQUE_ID_debugtype388", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug389, !4, !"__UNIQUE_ID_debug389", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 61, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 63, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype390, !6, !"__UNIQUE_ID_adapter_nrtype390", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr391, !6, !"__UNIQUE_ID_adapter_nr391", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_dvb_ttusb_budget__392_1763_ttusb_driver_init6, !10, !"__initcall__kmod_dvb_ttusb_budget__392_1763_ttusb_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1763, i32 1}
!11 = !{ptr @__exitcall_ttusb_driver_exit, !10, !"__exitcall_ttusb_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author393, !13, !"__UNIQUE_ID_author393", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1765, i32 1}
!14 = !{ptr @__UNIQUE_ID_description394, !15, !"__UNIQUE_ID_description394", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1766, i32 1}
!16 = !{ptr @__UNIQUE_ID_file395, !17, !"__UNIQUE_ID_file395", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1767, i32 1}
!18 = !{ptr @__UNIQUE_ID_license396, !17, !"__UNIQUE_ID_license396", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_firmware397, !20, !"__UNIQUE_ID_firmware397", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1768, i32 1}
!21 = !{ptr @debug, !22, !"debug", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 59, i32 12}
!23 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!24 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!25 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!26 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!27 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1757, i32 16}
!30 = !{ptr @ttusb_driver, !31, !"ttusb_driver", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1756, i32 26}
!32 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1603, i32 2}
!34 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ttusb_probe._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @ttusb_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @ttusb_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1615, i32 2}
!40 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ttusb_probe.__key.6, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1619, i32 2}
!43 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1625, i32 3}
!46 = !{ptr @ttusb_probe._entry.8, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ttusb_probe._entry_ptr.10, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1632, i32 3}
!50 = !{ptr @ttusb_probe._entry.11, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ttusb_probe._entry_ptr.13, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1637, i32 11}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1648, i32 32}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1677, i32 3}
!58 = !{ptr @ttusb_probe._entry.16, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ttusb_probe._entry_ptr.18, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1688, i32 3}
!62 = !{ptr @ttusb_probe._entry.19, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ttusb_probe._entry_ptr.21, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1695, i32 3}
!66 = !{ptr @ttusb_probe._entry.22, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ttusb_probe._entry_ptr.24, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 420, i32 2}
!70 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ttusb_init_controller._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @ttusb_init_controller._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 423, i32 30}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 424, i32 30}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 425, i32 30}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 426, i32 30}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 427, i32 3}
!83 = !{ptr @ttusb_init_controller._entry.31, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ttusb_init_controller._entry_ptr.33, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 441, i32 2}
!87 = !{ptr @ttusb_init_controller._entry.34, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @ttusb_init_controller._entry_ptr.36, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 150, i32 3}
!91 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @ttusb_cmd._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @ttusb_cmd._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 157, i32 3}
!96 = !{ptr @ttusb_cmd._entry.39, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ttusb_cmd._entry_ptr.41, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 162, i32 3}
!100 = !{ptr @ttusb_cmd._entry.42, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ttusb_cmd._entry_ptr.44, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 171, i32 3}
!104 = !{ptr @ttusb_cmd._entry.45, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @ttusb_cmd._entry_ptr.47, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 177, i32 3}
!108 = !{ptr @ttusb_cmd._entry.48, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @ttusb_cmd._entry_ptr.50, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 283, i32 30}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 286, i32 3}
!114 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @ttusb_boot_dsp._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @ttusb_boot_dsp._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 326, i32 3}
!119 = !{ptr @ttusb_boot_dsp._entry.54, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @ttusb_boot_dsp._entry_ptr.56, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @ttusb_dec_algo, !122, !"ttusb_dec_algo", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1592, i32 35}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 266, i32 4}
!125 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @master_xfer._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @master_xfer._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 221, i32 4}
!130 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @ttusb_i2c_msg._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @ttusb_i2c_msg._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 863, i32 2}
!135 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @ttusb_start_feed._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @ttusb_start_feed._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 797, i32 3}
!140 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @ttusb_start_iso_xfer._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @ttusb_start_iso_xfer._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 831, i32 4}
!145 = !{ptr @ttusb_start_iso_xfer._entry.65, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @ttusb_start_iso_xfer._entry_ptr.67, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 729, i32 5}
!149 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @ttusb_iso_irq._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @ttusb_iso_irq._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @numpkt, !153, !"numpkt", i1 false, i1 false}
!153 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 528, i32 12}
!154 = !{ptr @lastj, !155, !"lastj", i1 false, i1 false}
!155 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 529, i32 22}
!156 = !{ptr @numts, !157, !"numts", i1 false, i1 false}
!157 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 528, i32 20}
!158 = !{ptr @numstuff, !159, !"numstuff", i1 false, i1 false}
!159 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 528, i32 27}
!160 = !{ptr @numsec, !161, !"numsec", i1 false, i1 false}
!161 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 528, i32 37}
!162 = !{ptr @numinvalid, !163, !"numinvalid", i1 false, i1 false}
!163 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 528, i32 45}
!164 = !{ptr @.str.70, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 605, i32 4}
!166 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @ttusb_process_frame._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @ttusb_process_frame._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.73, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 619, i32 6}
!171 = !{ptr @ttusb_process_frame._entry.72, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @ttusb_process_frame._entry_ptr.74, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.76, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 675, i32 7}
!175 = !{ptr @ttusb_process_frame._entry.75, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @ttusb_process_frame._entry_ptr.77, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.78, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 538, i32 3}
!179 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @ttusb_process_muxpack._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @ttusb_process_muxpack._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.81, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 546, i32 3}
!184 = !{ptr @ttusb_process_muxpack._entry.80, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @ttusb_process_muxpack._entry_ptr.82, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 554, i32 3}
!188 = !{ptr @ttusb_process_muxpack._entry.83, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @ttusb_process_muxpack._entry_ptr.85, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 595, i32 3}
!192 = !{ptr @ttusb_process_muxpack._entry.86, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @ttusb_process_muxpack._entry_ptr.88, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.89, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1523, i32 15}
!196 = !{ptr @.str.90, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.92, !195, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @frontend_init._entry, !195, !"_entry", i1 false, i1 false}
!200 = !{ptr @frontend_init._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1529, i32 5}
!203 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.96, !202, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @frontend_init._entry.95, !202, !"_entry", i1 false, i1 false}
!206 = !{ptr @frontend_init._entry_ptr.97, !202, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.98, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1537, i32 15}
!209 = !{ptr @.str.99, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.101, !208, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @frontend_init._entry.100, !208, !"_entry", i1 false, i1 false}
!212 = !{ptr @frontend_init._entry_ptr.102, !208, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.103, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1546, i32 15}
!215 = !{ptr @.str.104, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.106, !214, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @frontend_init._entry.105, !214, !"_entry", i1 false, i1 false}
!218 = !{ptr @frontend_init._entry_ptr.107, !214, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.108, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1552, i32 15}
!221 = !{ptr @.str.109, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.111, !220, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @frontend_init._entry.110, !220, !"_entry", i1 false, i1 false}
!224 = !{ptr @frontend_init._entry_ptr.112, !220, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.113, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1561, i32 15}
!227 = !{ptr @.str.114, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.116, !226, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @frontend_init._entry.115, !226, !"_entry", i1 false, i1 false}
!230 = !{ptr @frontend_init._entry_ptr.117, !226, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.118, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1568, i32 15}
!233 = !{ptr @.str.119, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.121, !232, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @frontend_init._entry.120, !232, !"_entry", i1 false, i1 false}
!236 = !{ptr @frontend_init._entry_ptr.122, !232, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.124, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1578, i32 3}
!239 = !{ptr @frontend_init._entry.123, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @frontend_init._entry_ptr.125, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.127, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1583, i32 4}
!243 = !{ptr @frontend_init._entry.126, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @frontend_init._entry_ptr.128, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @alps_stv0299_config, !246, !"alps_stv0299_config", i1 false, i1 false}
!246 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1264, i32 30}
!247 = !{ptr @alps_bsru6_inittab, !248, !"alps_bsru6_inittab", i1 false, i1 false}
!248 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1156, i32 11}
!249 = !{ptr @alps_bsbe1_inittab, !250, !"alps_bsbe1_inittab", i1 false, i1 false}
!250 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1114, i32 11}
!251 = !{ptr @.str.129, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 480, i32 3}
!253 = !{ptr @ttusb_update_lnb._entry, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @ttusb_update_lnb._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @ttusb_novas_grundig_29504_491_config, !256, !"ttusb_novas_grundig_29504_491_config", i1 false, i1 false}
!256 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1299, i32 30}
!257 = !{ptr @alps_tdbe2_config, !258, !"alps_tdbe2_config", i1 false, i1 false}
!258 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1328, i32 30}
!259 = !{ptr @dvbc_philips_tdm1316l_config, !260, !"dvbc_philips_tdm1316l_config", i1 false, i1 false}
!260 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1512, i32 30}
!261 = !{ptr @dvbc_philips_tdm1316l_inittab, !262, !"dvbc_philips_tdm1316l_inittab", i1 false, i1 false}
!262 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1410, i32 11}
!263 = !{ptr @.str.130, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1392, i32 3}
!265 = !{ptr @.str.131, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @dvbc_philips_tdm1316l_tuner_set_params._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @dvbc_philips_tdm1316l_tuner_set_params._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.133, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1401, i32 3}
!270 = !{ptr @dvbc_philips_tdm1316l_tuner_set_params._entry.132, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @dvbc_philips_tdm1316l_tuner_set_params._entry_ptr.134, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @alps_tdmb7_config, !273, !"alps_tdmb7_config", i1 false, i1 false}
!273 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 991, i32 30}
!274 = !{ptr @philips_tdm1316l_config, !275, !"philips_tdm1316l_config", i1 false, i1 false}
!275 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1106, i32 31}
!276 = !{ptr @philips_tdm1316l_tuner_init.td1316_init, !277, !"td1316_init", i1 false, i1 false}
!277 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1002, i32 12}
!278 = !{ptr @philips_tdm1316l_tuner_init.disable_mc44BC374c, !279, !"disable_mc44BC374c", i1 false, i1 false}
!279 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1003, i32 12}
!280 = !{ptr @.str.135, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1744, i32 2}
!282 = !{ptr @.str.136, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @ttusb_disconnect._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @ttusb_disconnect._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @ttusb_table, !286, !"ttusb_table", i1 false, i1 false}
!286 = !{!"../drivers/media/usb/ttusb-budget/dvb-ttusb-budget.c", i32 1747, i32 35}
!287 = !{i32 1, !"wchar_size", i32 2}
!288 = !{i32 1, !"min_enum_size", i32 4}
!289 = !{i32 8, !"branch-target-enforcement", i32 0}
!290 = !{i32 8, !"sign-return-address", i32 0}
!291 = !{i32 8, !"sign-return-address-all", i32 0}
!292 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!293 = !{i32 7, !"uwtable", i32 1}
!294 = !{i32 7, !"frame-pointer", i32 2}
!295 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!296 = !{!"auto-init"}
!297 = !{!"branch_weights", i32 1, i32 2000}
!298 = !{i64 2158319649, i64 2158320163, i64 2158319686, i64 2158319742, i64 2158319776, i64 2158319800, i64 2158319841, i64 2158319862, i64 2158319890, i64 2158319924}
!299 = !{i64 2158323206, i64 2158323720, i64 2158323243, i64 2158323299, i64 2158323333, i64 2158323357, i64 2158323398, i64 2158323419, i64 2158323447, i64 2158323481}
