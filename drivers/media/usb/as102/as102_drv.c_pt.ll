; ModuleID = '/llk/IR_all_yes/drivers/media/usb/as102/as102_drv.c_pt.bc'
source_filename = "../drivers/media/usb/as102/as102_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.as102_fe_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.as102_dev_t = type { ptr, %struct.as10x_bus_adapter_t, %struct.list_head, %struct.kref, i8, %struct.dvb_adapter, ptr, %struct.dvb_demux, %struct.dmxdev, %struct.timer_list, %struct.mutex, i32, ptr, i32, [32 x ptr] }
%struct.as10x_bus_adapter_t = type { ptr, %struct.mutex, %union.as10x_bus_token_t, i16, ptr, ptr, ptr }
%union.as10x_bus_token_t = type { %struct.as10x_usb_token_cmd_t }
%struct.as10x_usb_token_cmd_t = type { %struct.as10x_cmd_t, %struct.as10x_cmd_t }
%struct.as10x_cmd_t = type { %struct.as10x_cmd_header_t, %union.anon.84 }
%struct.as10x_cmd_header_t = type { i16, i16, i16, i16 }
%union.anon.84 = type { %union.as10x_dump_memory, [36 x i8] }
%union.as10x_dump_memory = type { %struct.anon.119 }
%struct.anon.119 = type { i16, i8, i8, %union.anon.120 }
%union.anon.120 = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.dvb_demux_feed = type { %union.anon.132, %union.anon.133, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.132 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.133 = type { ptr }
%struct.as102_priv_ops_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.as10x_ts_filter = type { i16, i8, i8 }
%struct.as10x_demod_stats = type <{ i32, i32, i32, i16, i8 }>

@__param_str_dual_tuner = internal constant [21 x i8] c"dvb_as102.dual_tuner\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dual_tuner = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dual_tuner = internal constant %struct.kernel_param { ptr @__param_str_dual_tuner, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @dual_tuner } }, section "__param", align 4
@__UNIQUE_ID_dual_tunertype301 = internal constant [34 x i8] c"dvb_as102.parmtype=dual_tuner:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dual_tuner302 = internal constant [68 x i8] c"dvb_as102.parm=dual_tuner:Activate Dual-Tuner config (default: off)\00", section ".modinfo", align 1
@__param_str_fw_upload = internal constant [20 x i8] c"dvb_as102.fw_upload\00", align 1
@fw_upload = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_fw_upload = internal constant %struct.kernel_param { ptr @__param_str_fw_upload, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @fw_upload } }, section "__param", align 4
@__UNIQUE_ID_fw_uploadtype303 = internal constant [33 x i8] c"dvb_as102.parmtype=fw_upload:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fw_upload304 = internal constant [69 x i8] c"dvb_as102.parm=fw_upload:Turn on/off default FW upload (default: on)\00", section ".modinfo", align 1
@__param_str_pid_filtering = internal constant [24 x i8] c"dvb_as102.pid_filtering\00", align 1
@pid_filtering = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pid_filtering = internal constant %struct.kernel_param { ptr @__param_str_pid_filtering, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @pid_filtering } }, section "__param", align 4
@__UNIQUE_ID_pid_filteringtype305 = internal constant [37 x i8] c"dvb_as102.parmtype=pid_filtering:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pid_filtering306 = internal constant [70 x i8] c"dvb_as102.parm=pid_filtering:Activate HW PID filtering (default: off)\00", section ".modinfo", align 1
@__param_str_ts_auto_disable = internal constant [26 x i8] c"dvb_as102.ts_auto_disable\00", align 1
@ts_auto_disable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ts_auto_disable = internal constant %struct.kernel_param { ptr @__param_str_ts_auto_disable, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @ts_auto_disable } }, section "__param", align 4
@__UNIQUE_ID_ts_auto_disabletype307 = internal constant [39 x i8] c"dvb_as102.parmtype=ts_auto_disable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ts_auto_disable308 = internal constant [71 x i8] c"dvb_as102.parm=ts_auto_disable:Stream Auto Enable on FW (default: off)\00", section ".modinfo", align 1
@elna_enable = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_str_elna_enable = internal constant [22 x i8] c"dvb_as102.elna_enable\00", align 1
@__param_elna_enable = internal constant %struct.kernel_param { ptr @__param_str_elna_enable, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @elna_enable } }, section "__param", align 4
@__UNIQUE_ID_elna_enabletype309 = internal constant [35 x i8] c"dvb_as102.parmtype=elna_enable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_elna_enable310 = internal constant [55 x i8] c"dvb_as102.parm=elna_enable:Activate eLNA (default: on)\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [21 x i8] c"dvb_as102.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype311 = internal constant [45 x i8] c"dvb_as102.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr312 = internal constant [46 x i8] c"dvb_as102.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@as102_dvb_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 295, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: dvb_register_adapter() failed: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"as102_dvb_register\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/usb/as102/as102_drv.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@as102_dvb_register._entry_ptr = internal global ptr @as102_dvb_register._entry, section ".printk_index", align 4
@as102_dvb_register._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 314, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: dvb_dmx_init() failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@as102_dvb_register._entry_ptr.7 = internal global ptr @as102_dvb_register._entry.5, section ".printk_index", align 4
@as102_dvb_register._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 321, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: dvb_dmxdev_init() failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@as102_dvb_register._entry_ptr.10 = internal global ptr @as102_dvb_register._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"as102_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"symbol:as102_attach\00", [44 x i8] zeroinitializer }, align 32
@as102_fe_ops = internal constant { %struct.as102_fe_ops, [44 x i8] } { %struct.as102_fe_ops { ptr @as102_set_tune, ptr @as102_get_tps, ptr @as102_get_status, ptr @as102_get_stats, ptr @as102_stream_ctrl }, [44 x i8] zeroinitializer }, align 32
@as102_dvb_register._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013DVB: Unable to find symbol as102_attach()\0A\00", [51 x i8] zeroinitializer }, align 32
@as102_dvb_register._entry_ptr.15 = internal global ptr @as102_dvb_register._entry.13, section ".printk_index", align 4
@as102_dvb_register._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 333, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: as102_attach() failed: %d\00", [34 x i8] zeroinitializer }, align 32
@as102_dvb_register._entry_ptr.18 = internal global ptr @as102_dvb_register._entry.16, section ".printk_index", align 4
@as102_dvb_register._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 340, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: as102_dvb_register_frontend() failed: %d\00", [51 x i8] zeroinitializer }, align 32
@as102_dvb_register._entry_ptr.21 = internal global ptr @as102_dvb_register._entry.19, section ".printk_index", align 4
@as102_dvb_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&as102_dev->bus_adap.lock\00", [38 x i8] zeroinitializer }, align 32
@as102_dvb_register.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&as102_dev->sem\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"firmware_class\00", [17 x i8] zeroinitializer }, align 32
@as102_dvb_register._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016Registered device %s\00", [41 x i8] zeroinitializer }, align 32
@as102_dvb_register._entry_ptr.28 = internal global ptr @as102_dvb_register._entry.26, section ".printk_index", align 4
@as102_dvb_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016Unregistered device %s\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"as102_dvb_unregister\00", [43 x i8] zeroinitializer }, align 32
@as102_dvb_unregister._entry_ptr = internal global ptr @as102_dvb_unregister._entry, section ".printk_index", align 4
@__initcall__kmod_dvb_as102__321_388_as102_usb_driver_init6 = internal global ptr @as102_usb_driver_init, section ".initcall6.init", align 4
@as102_usb_driver = external dso_local global %struct.usb_driver, align 4
@__exitcall_as102_usb_driver_exit = internal global ptr @as102_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description322 = internal constant [54 x i8] c"dvb_as102.description=Abilis Systems as10x usb driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [49 x i8] c"dvb_as102.file=drivers/media/usb/as102/dvb-as102\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [22 x i8] c"dvb_as102.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author325 = internal constant [64 x i8] c"dvb_as102.author=Pierrick Hascoet <pierrick.hascoet@abilis.com>\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@as10x_pid_filter.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dvb_as102\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"as10x_pid_filter\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amutex_lock_interruptible(lock) failed !\0A\00", [54 x i8] zeroinitializer }, align 32
@as10x_pid_filter.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.2, ptr @.str.34, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DEL_PID_FILTER([%02d] 0x%04x) ret = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@as10x_pid_filter.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.2, ptr @.str.35, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ADD_PID_FILTER([%02d -> %02d], 0x%04x) ret = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@as102_stop_stream.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"as102_stop_stream\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"as10x_cmd_stop_streaming failed\0A\00", [63 x i8] zeroinitializer }, align 32
@as102_set_tune.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"as102_set_tune\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"as10x_cmd_set_tune failed. (err = %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@as102_get_status.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"as102_get_status\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"as10x_cmd_get_tune_status failed (err = %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@as102_get_stats.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"as102_get_stats\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"as10x_cmd_get_demod_stats failed (probably not tuned)\0A\00", [41 x i8] zeroinitializer }, align 32
@as102_get_stats.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.42, ptr @.str.2, ptr @.str.44, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"demod status: fc: 0x%08x, bad fc: 0x%08x, bytes corrected: 0x%08x , MER: 0x%04x\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.45 = private unnamed_addr constant [11 x i8] c"dual_tuner\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 23, i32 5 }
@___asan_gen_.48 = private unnamed_addr constant [10 x i8] c"fw_upload\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 27, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"pid_filtering\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 31, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"ts_auto_disable\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 35, i32 12 }
@___asan_gen_.57 = private unnamed_addr constant [12 x i8] c"elna_enable\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 39, i32 5 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 43, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 294, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 314, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 320, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [13 x i8] c"as102_fe_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 277, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 326, i32 22 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 332, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 339, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 345, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 348, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 355, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 358, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 385, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 101, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 109, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 122, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 62, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 183, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 218, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 239, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [39 x i8] c"../drivers/media/usb/as102/as102_drv.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 242, i32 3 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_adapter_nr312, ptr @__UNIQUE_ID_adapter_nrtype311, ptr @__UNIQUE_ID_author325, ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_dual_tuner302, ptr @__UNIQUE_ID_dual_tunertype301, ptr @__UNIQUE_ID_elna_enable310, ptr @__UNIQUE_ID_elna_enabletype309, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_fw_upload304, ptr @__UNIQUE_ID_fw_uploadtype303, ptr @__UNIQUE_ID_license324, ptr @__UNIQUE_ID_pid_filtering306, ptr @__UNIQUE_ID_pid_filteringtype305, ptr @__UNIQUE_ID_ts_auto_disable308, ptr @__UNIQUE_ID_ts_auto_disabletype307, ptr @__exitcall_as102_usb_driver_exit, ptr @__initcall__kmod_dvb_as102__321_388_as102_usb_driver_init6, ptr @__param_adapter_nr, ptr @__param_dual_tuner, ptr @__param_elna_enable, ptr @__param_fw_upload, ptr @__param_pid_filtering, ptr @__param_ts_auto_disable, ptr @as102_dvb_register._entry, ptr @as102_dvb_register._entry.13, ptr @as102_dvb_register._entry.16, ptr @as102_dvb_register._entry.19, ptr @as102_dvb_register._entry.26, ptr @as102_dvb_register._entry.5, ptr @as102_dvb_register._entry.8, ptr @as102_dvb_register._entry_ptr, ptr @as102_dvb_register._entry_ptr.10, ptr @as102_dvb_register._entry_ptr.15, ptr @as102_dvb_register._entry_ptr.18, ptr @as102_dvb_register._entry_ptr.21, ptr @as102_dvb_register._entry_ptr.28, ptr @as102_dvb_register._entry_ptr.7, ptr @as102_dvb_unregister._entry, ptr @as102_dvb_unregister._entry_ptr, ptr @as102_usb_driver_exit, ptr @dual_tuner, ptr @fw_upload, ptr @pid_filtering, ptr @ts_auto_disable, ptr @elna_enable, ptr @adapter_nr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @as102_fe_ops, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @as102_dvb_register.__key, ptr @.str.22, ptr @as102_dvb_register.__key.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dual_tuner to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_upload to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pid_filtering to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts_auto_disable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elna_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_dvb_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_dvb_register._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_dvb_register._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_fe_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_dvb_register._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_dvb_register._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_dvb_register._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_dvb_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_dvb_register.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_dvb_register._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_dvb_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @as102_dvb_register(ptr noundef %as102_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_adap = getelementptr inbounds %struct.as102_dev_t, ptr %as102_dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus_adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_adap, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %dvb_adap = getelementptr inbounds %struct.as102_dev_t, ptr %as102_dev, i32 0, i32 5
  %2 = ptrtoint ptr %as102_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %as102_dev, align 8
  %call = tail call i32 @dvb_register_adapter(ptr noundef %dvb_adap, ptr noundef %3, ptr noundef null, ptr noundef %dev1, ptr noundef nonnull @adapter_nr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dvb_dmx = getelementptr inbounds %struct.as102_dev_t, ptr %as102_dev, i32 0, i32 7
  %priv = getelementptr inbounds %struct.as102_dev_t, ptr %as102_dev, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %as102_dev, ptr %priv, align 4
  %5 = load i32, ptr @pid_filtering, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 256, i32 16
  %filternum = getelementptr inbounds %struct.as102_dev_t, ptr %as102_dev, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %filternum to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %filternum, align 8
  %feednum = getelementptr inbounds %struct.as102_dev_t, ptr %as102_dev, i32 0, i32 7, i32 3
  %7 = ptrtoint ptr %feednum to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 256, ptr %feednum, align 4
  %start_feed = getelementptr inbounds %struct.as102_dev_t, ptr %as102_dev, i32 0, i32 7, i32 4
  %8 = ptrtoint ptr %start_feed to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @as102_dvb_dmx_start_feed, ptr %start_feed, align 8
  %stop_feed = getelementptr inbounds %struct.as102_dev_t, ptr %as102_dev, i32 0, i32 7, i32 5
  %9 = ptrtoint ptr %stop_feed to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @as102_dvb_dmx_stop_feed, ptr %stop_feed, align 4
  %10 = ptrtoint ptr %dvb_dmx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5, ptr %dvb_dmx, align 8
  %dvb_dmxdev = getelementptr inbounds %struct.as102_dev_t, ptr %as102_dev, i32 0, i32 8
  %filternum9 = getelementptr inbounds %struct.as102_dev_t, ptr %as102_dev, i32 0, i32 8, i32 4
  %11 = ptrtoint ptr %filternum9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %filternum9, align 8
  %demux = getelementptr inbounds %struct.as102_dev_t, ptr %as102_dev, i32 0, i32 8, i32 3
  %12 = ptrtoint ptr %demux to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dvb_dmx, ptr %demux, align 4
  %capabilities14 = getelementptr inbounds %struct.as102_dev_t, ptr %as102_dev, i32 0, i32 8, i32 5
  %13 = ptrtoint ptr %capabilities14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %capabilities14, align 4
  %call16 = tail call i32 @dvb_dmx_init(ptr noundef %dvb_dmx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end21, label %if.end22

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef %call16) #8
  br label %edmxinit

if.end22:                                         ; preds = %if.end
  %call25 = tail call i32 @dvb_dmxdev_init(ptr noundef %dvb_dmxdev, ptr noundef %dvb_adap) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end30, label %if.end31

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef %call25) #8
  br label %edmxdinit

if.end31:                                         ; preds = %if.end22
  %call32 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.11) #5
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %cond.end, label %if.end31.if.then38_crit_edge

if.end31.if.then38_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38

cond.end:                                         ; preds = %if.end31
  %call34 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.12) #5
  %call35 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.11) #5
  %tobool37.not = icmp eq ptr %call35, null
  br i1 %tobool37.not, label %do.end47, label %cond.end.if.then38_crit_edge

cond.end.if.then38_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38

if.then38:                                        ; preds = %cond.end.if.then38_crit_edge, %if.end31.if.then38_crit_edge
  %cond36149 = phi ptr [ %call35, %cond.end.if.then38_crit_edge ], [ %call32, %if.end31.if.then38_crit_edge ]
  %14 = ptrtoint ptr %as102_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %as102_dev, align 8
  %elna_cfg = getelementptr inbounds %struct.as102_dev_t, ptr %as102_dev, i32 0, i32 4
  %16 = ptrtoint ptr %elna_cfg to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %elna_cfg, align 8
  %call41 = tail call ptr %cond36149(ptr noundef %15, ptr noundef nonnull @as102_fe_ops, ptr noundef %bus_adap, i8 noundef zeroext %17) #5
  %cmp42 = icmp eq ptr %call41, null
  br i1 %cmp42, label %if.then43, label %if.end57

if.then43:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.11) #5
  br label %if.then53

do.end47:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #8
  br label %if.then53

if.then53:                                        ; preds = %do.end47, %if.then43
  %dvb_fe151 = getelementptr inbounds %struct.as102_dev_t, ptr %as102_dev, i32 0, i32 6
  %18 = ptrtoint ptr %dvb_fe151 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %dvb_fe151, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef -19) #8
  br label %efereg

if.end57:                                         ; preds = %if.then38
  %dvb_fe = getelementptr inbounds %struct.as102_dev_t, ptr %as102_dev, i32 0, i32 6
  %19 = ptrtoint ptr %dvb_fe to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call41, ptr %dvb_fe, align 4
  %call60 = tail call i32 @dvb_register_frontend(ptr noundef %dvb_adap, ptr noundef nonnull %call41) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %do.end65, label %do.body67

do.end65:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef %call60) #8
  br label %efereg

do.body67:                                        ; preds = %if.end57
  %lock = getelementptr inbounds %struct.as102_dev_t, ptr %as102_dev, i32 0, i32 1, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @as102_dvb_register.__key) #5
  %sem = getelementptr inbounds %struct.as102_dev_t, ptr %as102_dev, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %sem, ptr noundef nonnull @.str.24, ptr noundef nonnull @as102_dvb_register.__key.23) #5
  %20 = load i32, ptr @fw_upload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool74.not = icmp eq i32 %20, 0
  br i1 %tobool74.not, label %do.body67.do.end89_crit_edge, label %if.then75

do.body67.do.end89_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end89

if.then75:                                        ; preds = %do.body67
  %call77 = tail call i32 @as102_fw_upload(ptr noundef %bus_adap) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %cond.false80, label %if.then75.do.end89_crit_edge

if.then75.do.end89_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end89

cond.false80:                                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  %call81 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.25) #5
  %call83 = tail call i32 @as102_fw_upload(ptr noundef %bus_adap) #5
  br label %do.end89

do.end89:                                         ; preds = %cond.false80, %if.then75.do.end89_crit_edge, %do.body67.do.end89_crit_edge
  %21 = ptrtoint ptr %as102_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %as102_dev, align 8
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %22) #8
  br label %cleanup

efereg:                                           ; preds = %do.end65, %if.then53
  %ret.0 = phi i32 [ %call60, %do.end65 ], [ -19, %if.then53 ]
  tail call void @dvb_dmxdev_release(ptr noundef %dvb_dmxdev) #5
  br label %edmxdinit

edmxdinit:                                        ; preds = %efereg, %do.end30
  %ret.1 = phi i32 [ %call25, %do.end30 ], [ %ret.0, %efereg ]
  tail call void @dvb_dmx_release(ptr noundef %dvb_dmx) #5
  br label %edmxinit

edmxinit:                                         ; preds = %edmxdinit, %do.end21
  %ret.2 = phi i32 [ %call16, %do.end21 ], [ %ret.1, %edmxdinit ]
  %call96 = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adap) #5
  br label %cleanup

cleanup:                                          ; preds = %edmxinit, %do.end89, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.2, %edmxinit ], [ 0, %do.end89 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as102_dvb_dmx_start_feed(ptr nocapture noundef readonly %dvbdmxfeed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %sem = getelementptr inbounds %struct.as102_dev_t, ptr %3, i32 0, i32 10
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sem, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @pid_filtering, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %index = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 16
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 8
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %7 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pid, align 4
  tail call fastcc void @as10x_pid_filter(ptr noundef %3, i32 noundef %6, i16 noundef zeroext %8, i32 noundef 1)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %streaming = getelementptr inbounds %struct.as102_dev_t, ptr %3, i32 0, i32 13
  %9 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %streaming, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then6, label %if.end5.if.end8_crit_edge

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %if.end5
  %cmp.not.i = icmp eq ptr %3, null
  br i1 %cmp.not.i, label %if.then6.if.end8_crit_edge, label %if.then.i

if.then6.if.end8_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then.i:                                        ; preds = %if.then6
  %bus_adap1.i = getelementptr inbounds %struct.as102_dev_t, ptr %3, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.as102_dev_t, ptr %3, i32 0, i32 1, i32 6
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %start_stream.i = getelementptr inbounds %struct.as102_priv_ops_t, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %start_stream.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %start_stream.i, align 4
  %cmp2.not.i = icmp eq ptr %14, null
  br i1 %cmp2.not.i, label %if.then.i.if.end6.i_crit_edge, label %if.then3.i

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %14(ptr noundef nonnull %3) #5
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.then.i.if.end6.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then3.i ], [ -14, %if.then.i.if.end6.i_crit_edge ]
  %15 = load i32, ptr @ts_auto_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end6.i.if.end8_crit_edge, label %if.then7.i

if.end6.i.if.end8_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then7.i:                                       ; preds = %if.end6.i
  %lock.i = getelementptr inbounds %struct.as102_dev_t, ptr %3, i32 0, i32 1, i32 1
  %call9.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.then7.i.if.end8_crit_edge

if.then7.i.if.end8_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end12.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  %call13.i = tail call i32 @as10x_cmd_start_streaming(ptr noundef %bus_adap1.i) #5
  tail call void @mutex_unlock(ptr noundef %lock.i) #5
  br label %if.end8

if.end8:                                          ; preds = %if.end12.i, %if.then7.i.if.end8_crit_edge, %if.end6.i.if.end8_crit_edge, %if.then6.if.end8_crit_edge, %if.end5.if.end8_crit_edge
  %ret.0 = phi i32 [ 0, %if.end5.if.end8_crit_edge ], [ -14, %if.then6.if.end8_crit_edge ], [ -14, %if.then7.i.if.end8_crit_edge ], [ %call13.i, %if.end12.i ], [ %ret.0.i, %if.end6.i.if.end8_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sem) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end8 ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as102_dvb_dmx_stop_feed(ptr nocapture noundef readonly %dvbdmxfeed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %sem = getelementptr inbounds %struct.as102_dev_t, ptr %3, i32 0, i32 10
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sem, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %streaming = getelementptr inbounds %struct.as102_dev_t, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %streaming, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp ne i32 %dec, 0
  %cmp.not.i = icmp eq ptr %3, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp.not.i
  br i1 %or.cond, label %if.end.if.end3_crit_edge, label %if.then.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then.i:                                        ; preds = %if.end
  %bus_adap1.i = getelementptr inbounds %struct.as102_dev_t, ptr %3, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.as102_dev_t, ptr %3, i32 0, i32 1, i32 6
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %stop_stream.i = getelementptr inbounds %struct.as102_priv_ops_t, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %stop_stream.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stop_stream.i, align 4
  %cmp2.not.i = icmp eq ptr %9, null
  br i1 %cmp2.not.i, label %if.then.i.if.end6.i_crit_edge, label %if.then3.i

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %9(ptr noundef nonnull %3) #5
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.then.i.if.end6.i_crit_edge
  %10 = load i32, ptr @ts_auto_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end6.i.if.end3_crit_edge, label %if.then7.i

if.end6.i.if.end3_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then7.i:                                       ; preds = %if.end6.i
  %lock.i = getelementptr inbounds %struct.as102_dev_t, ptr %3, i32 0, i32 1, i32 1
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.then7.i.if.end3_crit_edge

if.then7.i.if.end3_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end11.i:                                       ; preds = %if.then7.i
  %call12.i = tail call i32 @as10x_cmd_stop_streaming(ptr noundef %bus_adap1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %do.body.i, label %if.end11.i.if.end23.i_crit_edge

if.end11.i.if.end23.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

do.body.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as102_stop_stream.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as102_dvb_dmx_stop_feed, %if.then19.i)) #5
          to label %if.end23.i [label %if.then19.i], !srcloc !145

if.then19.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %bus_adap1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus_adap1.i, align 4
  %dev21.i = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as102_stop_stream.__UNIQUE_ID_ddebug313, ptr noundef %dev21.i, ptr noundef nonnull @.str.37) #5
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then19.i, %do.body.i, %if.end11.i.if.end23.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #5
  br label %if.end3

if.end3:                                          ; preds = %if.end23.i, %if.then7.i.if.end3_crit_edge, %if.end6.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %13 = load i32, ptr @pid_filtering, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not = icmp eq i32 %13, 0
  br i1 %tobool4.not, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %index = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 16
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 8
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pid, align 4
  tail call fastcc void @as10x_pid_filter(ptr noundef %3, i32 noundef %15, i16 noundef zeroext %17, i32 noundef 0)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef %sem) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @as102_fw_upload(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @as102_dvb_unregister(ptr noundef %as102_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb_fe = getelementptr inbounds %struct.as102_dev_t, ptr %as102_dev, i32 0, i32 6
  %0 = ptrtoint ptr %dvb_fe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb_fe, align 4
  %call = tail call i32 @dvb_unregister_frontend(ptr noundef %1) #5
  %2 = ptrtoint ptr %dvb_fe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvb_fe, align 4
  tail call void @dvb_frontend_detach(ptr noundef %3) #5
  %dvb_dmxdev = getelementptr inbounds %struct.as102_dev_t, ptr %as102_dev, i32 0, i32 8
  tail call void @dvb_dmxdev_release(ptr noundef %dvb_dmxdev) #5
  %dvb_dmx = getelementptr inbounds %struct.as102_dev_t, ptr %as102_dev, i32 0, i32 7
  tail call void @dvb_dmx_release(ptr noundef %dvb_dmx) #5
  %dvb_adap = getelementptr inbounds %struct.as102_dev_t, ptr %as102_dev, i32 0, i32 5
  %call2 = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adap) #5
  %4 = ptrtoint ptr %as102_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %as102_dev, align 8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @as102_usb_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @as102_usb_driver, ptr noundef null, ptr noundef nonnull @.str.31) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @as102_usb_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_deregister(ptr noundef nonnull @as102_usb_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @as10x_pid_filter(ptr noundef %dev, i32 noundef %index, i16 noundef zeroext %pid, i32 noundef %onoff) unnamed_addr #0 align 64 {
entry:
  %filter = alloca %struct.as10x_ts_filter, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_adap1 = getelementptr inbounds %struct.as102_dev_t, ptr %dev, i32 0, i32 1
  %lock = getelementptr inbounds %struct.as102_dev_t, ptr %dev, i32 0, i32 1, i32 1
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as10x_pid_filter.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as10x_pid_filter, %if.then7)) #5
          to label %cleanup [label %if.then7], !srcloc !145

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %bus_adap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_adap1, align 4
  %dev9 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as10x_pid_filter.__UNIQUE_ID_ddebug314, ptr noundef %dev9, ptr noundef nonnull @.str.33) #5
  br label %cleanup

if.end10:                                         ; preds = %entry
  %2 = zext i32 %onoff to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %onoff, label %if.end10.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb31
  ]

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 @as10x_cmd_del_PID_filter(ptr noundef %bus_adap1, i16 noundef zeroext %pid) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as10x_pid_filter.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as10x_pid_filter, %if.then24)) #5
          to label %sw.epilog [label %if.then24], !srcloc !145

if.then24:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %bus_adap1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus_adap1, align 4
  %dev27 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  %conv = zext i16 %pid to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as10x_pid_filter.__UNIQUE_ID_ddebug315, ptr noundef %dev27, ptr noundef nonnull @.str.34, i32 noundef %index, i32 noundef %conv, i32 noundef %call11) #5
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %filter) #5
  %5 = getelementptr inbounds %struct.as10x_ts_filter, ptr %filter, i32 0, i32 1
  %6 = getelementptr inbounds %struct.as10x_ts_filter, ptr %filter, i32 0, i32 2
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %5, align 2
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %6, align 1
  %9 = ptrtoint ptr %filter to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %pid, ptr %filter, align 2
  %call33 = call i32 @as10x_cmd_add_PID_filter(ptr noundef %bus_adap1, ptr noundef nonnull %filter) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as10x_pid_filter.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as10x_pid_filter, %if.then46)) #5
          to label %do.end56 [label %if.then46], !srcloc !145

if.then46:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %bus_adap1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus_adap1, align 4
  %dev49 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %6, align 1
  %conv51 = zext i8 %13 to i32
  %14 = ptrtoint ptr %filter to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %filter, align 2
  %conv53 = zext i16 %15 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as10x_pid_filter.__UNIQUE_ID_ddebug316, ptr noundef %dev49, ptr noundef nonnull @.str.35, i32 noundef %index, i32 noundef %conv51, i32 noundef %conv53, i32 noundef %call33) #5
  br label %do.end56

do.end56:                                         ; preds = %if.then46, %sw.bb31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %filter) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end56, %if.then24, %sw.bb, %if.end10.sw.epilog_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then7, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @as10x_cmd_del_PID_filter(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @as10x_cmd_add_PID_filter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @as10x_cmd_start_streaming(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @as10x_cmd_stop_streaming(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as102_set_tune(ptr noundef %priv, ptr noundef %tune_args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %priv, i32 0, i32 1
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @as10x_cmd_set_tune(ptr noundef %priv, ptr noundef %tune_args) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %do.body

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as102_set_tune.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as102_set_tune, %if.then7)) #5
          to label %if.end9 [label %if.then7], !srcloc !145

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as102_set_tune.__UNIQUE_ID_ddebug317, ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %call1) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.body, %if.end.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end9 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as102_get_tps(ptr noundef %priv, ptr noundef %tps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %priv, i32 0, i32 1
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @as10x_cmd_get_tps(ptr noundef %priv, ptr noundef %tps) #5
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as102_get_status(ptr noundef %priv, ptr noundef %tstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %priv, i32 0, i32 1
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @as10x_cmd_get_tune_status(ptr noundef %priv, ptr noundef %tstate) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.body, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as102_get_status.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as102_get_status, %if.then7)) #5
          to label %if.end9 [label %if.then7], !srcloc !145

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as102_get_status.__UNIQUE_ID_ddebug318, ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %call1) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.body, %if.end.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end9 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as102_get_stats(ptr noundef %priv, ptr noundef %demod_stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %priv, i32 0, i32 1
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @as10x_cmd_get_demod_stats(ptr noundef %priv, ptr noundef %demod_stats) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.body, label %do.body9

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as102_get_stats.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as102_get_stats, %if.then7)) #5
          to label %if.end27 [label %if.then7], !srcloc !145

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as102_get_stats.__UNIQUE_ID_ddebug319, ptr noundef %dev, ptr noundef nonnull @.str.43) #5
  br label %if.end27

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as102_get_stats.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as102_get_stats, %if.then21)) #5
          to label %if.end27 [label %if.then21], !srcloc !145

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev23 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %demod_stats to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %demod_stats, align 1
  %bad_frame_count = getelementptr inbounds %struct.as10x_demod_stats, ptr %demod_stats, i32 0, i32 1
  %6 = ptrtoint ptr %bad_frame_count to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %bad_frame_count, align 1
  %bytes_fixed_by_rs = getelementptr inbounds %struct.as10x_demod_stats, ptr %demod_stats, i32 0, i32 2
  %8 = ptrtoint ptr %bytes_fixed_by_rs to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %bytes_fixed_by_rs, align 1
  %mer = getelementptr inbounds %struct.as10x_demod_stats, ptr %demod_stats, i32 0, i32 3
  %10 = ptrtoint ptr %mer to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %mer, align 1
  %conv = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as102_get_stats.__UNIQUE_ID_ddebug320, ptr noundef %dev23, ptr noundef nonnull @.str.44, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %conv) #5
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %do.body9, %if.then7, %do.body
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end27 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as102_stream_ctrl(ptr noundef %priv, i32 noundef %acquire, i32 noundef %elna_cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %priv, i32 0, i32 1
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %acquire)
  %tobool1.not = icmp eq i32 %acquire, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %0 = load i32, ptr @elna_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool3.not = icmp eq i32 %0, 0
  br i1 %tobool3.not, label %if.then2.if.end6_crit_edge, label %if.then4

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @as10x_cmd_set_context(ptr noundef %priv, i16 noundef zeroext 1010, i32 noundef %elna_cfg) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then2.if.end6_crit_edge
  %call7 = tail call i32 @as10x_cmd_turn_on(ptr noundef %priv) #5
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 @as10x_cmd_turn_off(ptr noundef %priv) #5
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end6
  %ret.0 = phi i32 [ %call7, %if.end6 ], [ %call8, %if.else ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end9 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @as10x_cmd_set_tune(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @as10x_cmd_get_tps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @as10x_cmd_get_tune_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @as10x_cmd_get_demod_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @as10x_cmd_set_context(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @as10x_cmd_turn_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @as10x_cmd_turn_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !25, !27, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !83, !85, !86, !88, !90, !92, !94, !95, !96, !98, !99, !100, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !114, !115, !117, !118, !119, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__param_dual_tuner, !1, !"__param_dual_tuner", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_dual_tunertype301, !1, !"__UNIQUE_ID_dual_tunertype301", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dual_tuner302, !4, !"__UNIQUE_ID_dual_tuner302", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 25, i32 1}
!5 = !{ptr @__param_fw_upload, !6, !"__param_fw_upload", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 28, i32 1}
!7 = !{ptr @__UNIQUE_ID_fw_uploadtype303, !6, !"__UNIQUE_ID_fw_uploadtype303", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_fw_upload304, !9, !"__UNIQUE_ID_fw_upload304", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 29, i32 1}
!10 = !{ptr @__param_pid_filtering, !11, !"__param_pid_filtering", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 32, i32 1}
!12 = !{ptr @__UNIQUE_ID_pid_filteringtype305, !11, !"__UNIQUE_ID_pid_filteringtype305", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_pid_filtering306, !14, !"__UNIQUE_ID_pid_filtering306", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 33, i32 1}
!15 = !{ptr @__param_ts_auto_disable, !16, !"__param_ts_auto_disable", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 36, i32 1}
!17 = !{ptr @__UNIQUE_ID_ts_auto_disabletype307, !16, !"__UNIQUE_ID_ts_auto_disabletype307", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_ts_auto_disable308, !19, !"__UNIQUE_ID_ts_auto_disable308", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 37, i32 1}
!20 = !{ptr @elna_enable, !21, !"elna_enable", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 39, i32 5}
!22 = !{ptr @__param_elna_enable, !23, !"__param_elna_enable", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 40, i32 1}
!24 = !{ptr @__UNIQUE_ID_elna_enabletype309, !23, !"__UNIQUE_ID_elna_enabletype309", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_elna_enable310, !26, !"__UNIQUE_ID_elna_enable310", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 41, i32 1}
!27 = !{ptr @__param_adapter_nr, !28, !"__param_adapter_nr", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 43, i32 1}
!29 = !{ptr @__UNIQUE_ID_adapter_nrtype311, !28, !"__UNIQUE_ID_adapter_nrtype311", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_adapter_nr312, !28, !"__UNIQUE_ID_adapter_nr312", i1 false, i1 false}
!31 = !{ptr @.str, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 294, i32 3}
!33 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @as102_dvb_register._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @as102_dvb_register._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 314, i32 3}
!41 = !{ptr @as102_dvb_register._entry.5, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @as102_dvb_register._entry_ptr.7, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 320, i32 3}
!45 = !{ptr @as102_dvb_register._entry.8, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @as102_dvb_register._entry_ptr.10, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 326, i32 22}
!49 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @as102_dvb_register._entry.13, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @as102_dvb_register._entry_ptr.15, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 332, i32 3}
!55 = !{ptr @as102_dvb_register._entry.16, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @as102_dvb_register._entry_ptr.18, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 339, i32 3}
!59 = !{ptr @as102_dvb_register._entry.19, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @as102_dvb_register._entry_ptr.21, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @as102_dvb_register.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 345, i32 2}
!63 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @as102_dvb_register.__key.23, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 348, i32 2}
!66 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 355, i32 3}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 358, i32 2}
!71 = !{ptr @as102_dvb_register._entry.26, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @as102_dvb_register._entry_ptr.28, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 385, i32 2}
!75 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @as102_dvb_unregister._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @as102_dvb_unregister._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @__initcall__kmod_dvb_as102__321_388_as102_usb_driver_init6, !79, !"__initcall__kmod_dvb_as102__321_388_as102_usb_driver_init6", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 388, i32 1}
!80 = !{ptr @__exitcall_as102_usb_driver_exit, !79, !"__exitcall_as102_usb_driver_exit", i1 false, i1 false}
!81 = !{ptr @__UNIQUE_ID_description322, !82, !"__UNIQUE_ID_description322", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 391, i32 1}
!83 = !{ptr @__UNIQUE_ID_file323, !84, !"__UNIQUE_ID_file323", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 392, i32 1}
!85 = !{ptr @__UNIQUE_ID_license324, !84, !"__UNIQUE_ID_license324", i1 false, i1 false}
!86 = !{ptr @__UNIQUE_ID_author325, !87, !"__UNIQUE_ID_author325", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 393, i32 1}
!88 = !{ptr @dual_tuner, !89, !"dual_tuner", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 23, i32 5}
!90 = !{ptr @pid_filtering, !91, !"pid_filtering", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 31, i32 12}
!92 = !{ptr @ts_auto_disable, !93, !"ts_auto_disable", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 35, i32 12}
!94 = !{ptr @__param_str_dual_tuner, !1, !"__param_str_dual_tuner", i1 false, i1 false}
!95 = !{ptr @__param_str_fw_upload, !6, !"__param_str_fw_upload", i1 false, i1 false}
!96 = !{ptr @fw_upload, !97, !"fw_upload", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 27, i32 12}
!98 = !{ptr @__param_str_pid_filtering, !11, !"__param_str_pid_filtering", i1 false, i1 false}
!99 = !{ptr @__param_str_ts_auto_disable, !16, !"__param_str_ts_auto_disable", i1 false, i1 false}
!100 = !{ptr @__param_str_elna_enable, !23, !"__param_str_elna_enable", i1 false, i1 false}
!101 = !{ptr @__param_str_adapter_nr, !28, !"__param_str_adapter_nr", i1 false, i1 false}
!102 = !{ptr @__param_arr_adapter_nr, !28, !"__param_arr_adapter_nr", i1 false, i1 false}
!103 = !{ptr @adapter_nr, !28, !"adapter_nr", i1 false, i1 false}
!104 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 101, i32 3}
!106 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.33, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @as10x_pid_filter.__UNIQUE_ID_ddebug314, !105, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!109 = !{ptr @.str.34, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 109, i32 3}
!111 = !{ptr @as10x_pid_filter.__UNIQUE_ID_ddebug315, !110, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!112 = !{ptr @.str.35, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 122, i32 3}
!114 = !{ptr @as10x_pid_filter.__UNIQUE_ID_ddebug316, !113, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!115 = !{ptr @.str.36, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 62, i32 4}
!117 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @as102_stop_stream.__UNIQUE_ID_ddebug313, !116, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!119 = !{ptr @as102_fe_ops, !120, !"as102_fe_ops", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 277, i32 34}
!121 = !{ptr @.str.38, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 183, i32 3}
!123 = !{ptr @.str.39, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @as102_set_tune.__UNIQUE_ID_ddebug317, !122, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!125 = !{ptr @.str.40, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 218, i32 3}
!127 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @as102_get_status.__UNIQUE_ID_ddebug318, !126, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!129 = !{ptr @.str.42, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 239, i32 3}
!131 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @as102_get_stats.__UNIQUE_ID_ddebug319, !130, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!133 = !{ptr @.str.44, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/as102/as102_drv.c", i32 242, i32 3}
!135 = !{ptr @as102_get_stats.__UNIQUE_ID_ddebug320, !134, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i64 2148699308, i64 2148699313, i64 2148699326, i64 2148699370, i64 2148699404, i64 2148699425}
