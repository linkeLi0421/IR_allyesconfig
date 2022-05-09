; ModuleID = '/llk/IR_all_yes/drivers/media/usb/as102/as102_usb_drv.c_pt.bc'
source_filename = "../drivers/media/usb/as102/as102_usb_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
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
%struct.usb_class_driver = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.as102_priv_ops_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Abilis Systems as10x usb driver\00", [32 x i8] zeroinitializer }, align 32
@as102_usb_id_table = internal constant { [6 x %struct.usb_device_id], [48 x i8] } { [6 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 7078, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8211, i16 582, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4057, i16 44, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2953, i16 7, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8503, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@as102_usb_driver = dso_local global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @as102_usb_probe, ptr @as102_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @as102_usb_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@as102_submit_urb_stream.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dvb_as102\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"as102_submit_urb_stream\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/as102/as102_usb_drv.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: usb_submit_urb failed\0A\00", [37 x i8] zeroinitializer }, align 32
@as102_usb_class_driver = internal global { %struct.usb_class_driver, [16 x i8] } { %struct.usb_class_driver { ptr @.str.8, ptr null, ptr @as102_dev_fops, i32 192 }, [16 x i8] zeroinitializer }, align 32
@as102_usb_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: device has been disconnected\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"as102_usb_disconnect\00", [43 x i8] zeroinitializer }, align 32
@as102_usb_disconnect._entry_ptr = internal global ptr @as102_usb_disconnect._entry, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"as10x_usb\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aton2-%d\00", [23 x i8] zeroinitializer }, align 32
@as102_dev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @as102_open, ptr null, ptr @as102_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@as102_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: can't find device for minor %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"as102_open\00", [21 x i8] zeroinitializer }, align 32
@as102_open._entry_ptr = internal global ptr @as102_open._entry, section ".printk_index", align 4
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unknown AS102 device\00", [43 x i8] zeroinitializer }, align 32
@as102_priv_ops = internal constant { %struct.as102_priv_ops_t, [32 x i8] } { %struct.as102_priv_ops_t { ptr @as102_send_ep1, ptr null, ptr @as102_usb_xfer_cmd, ptr @as102_usb_start_stream, ptr @as102_usb_stop_stream, ptr null, ptr null, ptr @as102_read_ep2 }, [32 x i8] zeroinitializer }, align 32
@as102_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 387, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: usb_register_dev() failed (errno = %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"as102_usb_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@as102_usb_probe._entry_ptr = internal global ptr @as102_usb_probe._entry, section ".printk_index", align 4
@as102_usb_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.3, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: device has been detected\0A\00", [32 x i8] zeroinitializer }, align 32
@as102_usb_probe._entry_ptr.18 = internal global ptr @as102_usb_probe._entry.16, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Abilis Systems DVB-Titan\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PCTV Systems picoStick (74e)\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Elgato EyeTV DTT Deluxe\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nBox DVB-T Dongle\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Sky IT Digital Key (green led)\00", [33 x i8] zeroinitializer }, align 32
@as102_send_ep1.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"as102_send_ep1\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"usb_bulk_msg(send) failed, err %i\0A\00", [61 x i8] zeroinitializer }, align 32
@as102_send_ep1.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.26, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"only wrote %d of %d bytes\0A\00", [37 x i8] zeroinitializer }, align 32
@as102_usb_xfer_cmd.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"as102_usb_xfer_cmd\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"usb_control_msg(send) failed, err %i\0A\00", [58 x i8] zeroinitializer }, align 32
@as102_usb_xfer_cmd.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.3, ptr @.str.26, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@as102_usb_xfer_cmd.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.3, ptr @.str.29, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"usb_control_msg(recv) failed, err %i\0A\00", [58 x i8] zeroinitializer }, align 32
@as102_read_ep2.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"as102_read_ep2\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"usb_bulk_msg(recv) failed, err %i\0A\00", [61 x i8] zeroinitializer }, align 32
@as102_read_ep2.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.32, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"only read %d of %d bytes\0A\00", [38 x i8] zeroinitializer }, align 32
@as102_alloc_usb_stream_buffer.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"as102_alloc_usb_stream_buffer\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: usb_buffer_alloc failed\0A\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 59, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"as102_usb_id_table\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 27, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"as102_usb_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 58, i32 19 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 205, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [23 x i8] c"as102_usb_class_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 71, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 333, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 72, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"as102_dev_fops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 65, i32 37 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 428, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 363, i32 21 }
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"as102_priv_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 183, i32 38 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 385, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 391, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 39, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 40, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 41, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 42, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 43, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 145, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 151, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 94, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 121, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 170, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 176, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.159 = private constant [43 x i8] c"../drivers/media/usb/as102/as102_usb_drv.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 251, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @as102_open._entry, ptr @as102_open._entry_ptr, ptr @as102_usb_disconnect._entry, ptr @as102_usb_disconnect._entry_ptr, ptr @as102_usb_probe._entry, ptr @as102_usb_probe._entry.16, ptr @as102_usb_probe._entry_ptr, ptr @as102_usb_probe._entry_ptr.18, ptr @.str, ptr @as102_usb_id_table, ptr @as102_usb_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @as102_usb_class_driver, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @as102_dev_fops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @as102_priv_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_usb_id_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_usb_class_driver to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_usb_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_dev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_priv_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as102_usb_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as102_usb_probe(ptr noundef %intf, ptr noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2416) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %elna_cfg = getelementptr inbounds %struct.as102_dev_t, ptr %call7.i.i, i32 0, i32 4
  %cmp2 = icmp eq ptr %id, @as102_usb_id_table
  br i1 %cmp2, label %for.inc.thread, label %for.inc

for.inc.thread:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.19, ptr %call7.i.i, align 8
  %2 = ptrtoint ptr %elna_cfg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -96, ptr %elna_cfg, align 8
  br label %if.end11

for.inc:                                          ; preds = %for.cond.preheader
  %cmp2.1 = icmp eq ptr %id, getelementptr inbounds ([6 x %struct.usb_device_id], ptr @as102_usb_id_table, i32 0, i32 1)
  br i1 %cmp2.1, label %if.then3.1, label %for.inc.1

if.then3.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.20, ptr %call7.i.i, align 8
  %4 = ptrtoint ptr %elna_cfg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -64, ptr %elna_cfg, align 8
  br label %if.end11

for.inc.1:                                        ; preds = %for.inc
  %cmp2.2 = icmp eq ptr %id, getelementptr inbounds ([6 x %struct.usb_device_id], ptr @as102_usb_id_table, i32 0, i32 2)
  br i1 %cmp2.2, label %for.inc.2.thread, label %for.inc.2

for.inc.2.thread:                                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.21, ptr %call7.i.i, align 8
  %6 = ptrtoint ptr %elna_cfg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -64, ptr %elna_cfg, align 8
  br label %if.end11

for.inc.2:                                        ; preds = %for.inc.1
  %cmp2.3 = icmp eq ptr %id, getelementptr inbounds ([6 x %struct.usb_device_id], ptr @as102_usb_id_table, i32 0, i32 3)
  br i1 %cmp2.3, label %if.then3.3, label %for.inc.3

if.then3.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.22, ptr %call7.i.i, align 8
  %8 = ptrtoint ptr %elna_cfg to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -96, ptr %elna_cfg, align 8
  br label %if.end11

for.inc.3:                                        ; preds = %for.inc.2
  %cmp2.4 = icmp eq ptr %id, getelementptr inbounds ([6 x %struct.usb_device_id], ptr @as102_usb_id_table, i32 0, i32 4)
  br i1 %cmp2.4, label %for.inc.5.thread80, label %for.inc.4

for.inc.5.thread80:                               ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.23, ptr %call7.i.i, align 8
  %10 = ptrtoint ptr %elna_cfg to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -96, ptr %elna_cfg, align 8
  br label %if.end11

for.inc.4:                                        ; preds = %for.inc.3
  %cmp2.5 = icmp eq ptr %id, getelementptr inbounds ([6 x %struct.usb_device_id], ptr @as102_usb_id_table, i32 0, i32 5)
  br i1 %cmp2.5, label %for.inc.5.thread, label %for.inc.5

for.inc.5.thread:                                 ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %elna_cfg to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %elna_cfg, align 8
  br label %if.then9

for.inc.5:                                        ; preds = %for.inc.4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr.pr.pr = load ptr, ptr %call7.i.i, align 8
  %cmp8 = icmp eq ptr %.pr.pr.pr, null
  br i1 %cmp8, label %for.inc.5.if.then9_crit_edge, label %for.inc.5.if.end11_crit_edge

for.inc.5.if.end11_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.5.if.then9_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.then9:                                         ; preds = %for.inc.5.if.then9_crit_edge, %for.inc.5.thread
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.11, ptr %call7.i.i, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %for.inc.5.if.end11_crit_edge, %for.inc.5.thread80, %if.then3.3, %for.inc.2.thread, %if.then3.1, %for.inc.thread
  %bus_adap = getelementptr inbounds %struct.as102_dev_t, ptr %call7.i.i, i32 0, i32 1
  %ops = getelementptr inbounds %struct.as102_dev_t, ptr %call7.i.i, i32 0, i32 1, i32 6
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @as102_priv_ops, ptr %ops, align 8
  %token = getelementptr inbounds %struct.as102_dev_t, ptr %call7.i.i, i32 0, i32 1, i32 2
  %cmd = getelementptr inbounds %struct.as102_dev_t, ptr %call7.i.i, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %token, ptr %cmd, align 8
  %r = getelementptr inbounds %struct.as102_dev_t, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 0, i32 1
  %rsp = getelementptr inbounds %struct.as102_dev_t, ptr %call7.i.i, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %r, ptr %rsp, align 4
  %kref = getelementptr inbounds %struct.as102_dev_t, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #6
  %17 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %kref, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %20, i32 -128
  %call18 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #6
  %21 = ptrtoint ptr %bus_adap to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call18, ptr %bus_adap, align 4
  %call20 = tail call i32 @usb_register_dev(ptr noundef %intf, ptr noundef nonnull @as102_usb_class_driver) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end, label %do.end26

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %call20) #10
  br label %failed

do.end26:                                         ; preds = %if.end11
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.7) #10
  %call28 = tail call fastcc i32 @as102_alloc_usb_stream_buffer(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29.not = icmp eq i32 %call28, 0
  br i1 %cmp29.not, label %if.end31, label %do.end26.failed_stream_crit_edge

do.end26.failed_stream_crit_edge:                 ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed_stream

if.end31:                                         ; preds = %do.end26
  %call32 = tail call i32 @as102_dvb_register(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33.not = icmp eq i32 %call32, 0
  br i1 %cmp33.not, label %if.end31.cleanup_crit_edge, label %failed_dvb

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

failed_dvb:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @as102_free_usb_stream_buffer(ptr noundef nonnull %call7.i.i)
  br label %failed_stream

failed_stream:                                    ; preds = %failed_dvb, %do.end26.failed_stream_crit_edge
  %ret.0 = phi i32 [ %call28, %do.end26.failed_stream_crit_edge ], [ %call32, %failed_dvb ]
  tail call void @usb_deregister_dev(ptr noundef %intf, ptr noundef nonnull @as102_usb_class_driver) #6
  br label %failed

failed:                                           ; preds = %failed_stream, %do.end
  %ret.1 = phi i32 [ %call20, %do.end ], [ %ret.0, %failed_stream ]
  %22 = ptrtoint ptr %bus_adap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus_adap, align 4
  tail call void @usb_put_dev(ptr noundef %23) #6
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end31.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %failed ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @as102_usb_disconnect(ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @as102_dvb_unregister(ptr noundef %1) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.06.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.as102_dev_t, ptr %1, i32 0, i32 14, i32 %i.06.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_free_urb(ptr noundef %3) #6
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %as102_free_usb_stream_buffer.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

as102_free_usb_stream_buffer.exit:                ; preds = %for.body.i
  %bus_adap.i = getelementptr %struct.as102_dev_t, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bus_adap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_adap.i, align 4
  %stream.i = getelementptr inbounds %struct.as102_dev_t, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream.i, align 8
  %dma_addr.i = getelementptr inbounds %struct.as102_dev_t, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_addr.i, align 4
  tail call void @usb_free_coherent(ptr noundef %5, i32 noundef 16384, ptr noundef %7, i32 noundef %9) #6
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @usb_deregister_dev(ptr noundef %intf, ptr noundef nonnull @as102_usb_class_driver) #6
  %kref = getelementptr inbounds %struct.as102_dev_t, ptr %1, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #6
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #6, !srcloc !95
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %as102_free_usb_stream_buffer.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !96

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %as102_free_usb_stream_buffer.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !97
  %cmp.not.i.i = icmp eq ptr %1, null
  br i1 %cmp.not.i.i, label %if.then.i.kref_put.exit_crit_edge, label %if.then.i.i

if.then.i.kref_put.exit_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %bus_adap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus_adap.i, align 4
  tail call void @usb_put_dev(ptr noundef %13) #6
  tail call void @kfree(ptr noundef nonnull %1) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i.i, %if.then.i.kref_put.exit_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @as102_urb_stream_irq(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %2 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.then4, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dvb_dmx = getelementptr inbounds %struct.as102_dev_t, ptr %1, i32 0, i32 7
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  tail call void @dvb_dmx_swfilter(ptr noundef %dvb_dmx, ptr noundef %5, i32 noundef %3) #6
  br label %if.end6

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %transfer_buffer5 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %6 = ptrtoint ptr %transfer_buffer5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_buffer5, align 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 512)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then
  %streaming = getelementptr inbounds %struct.as102_dev_t, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end6.if.end8_crit_edge, label %if.then7

if.end6.if.end8_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %if.end6
  %bus_adap.i = getelementptr inbounds %struct.as102_dev_t, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %bus_adap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus_adap.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i = shl i32 %14, 8
  %or3.i = or i32 %shl.i.i, -1073676160
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %15 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %16 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or3.i, ptr %pipe2.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %17 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 512, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %18 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @as102_urb_stream_irq, ptr %complete.i.i, align 4
  %19 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %1, ptr %context, align 4
  %call4.i = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.then7.if.end8_crit_edge, label %do.body.i

if.then7.if.end8_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

do.body.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as102_submit_urb_stream.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as102_urb_stream_irq, %if.then9.i)) #6
          to label %if.end8 [label %if.then9.i], !srcloc !98

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1.i.i, align 4
  %dev11.i = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as102_submit_urb_stream.__UNIQUE_ID_ddebug308, ptr noundef %dev11.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then9.i, %do.body.i, %if.then7.if.end8_crit_edge, %if.end6.if.end8_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @as102_dvb_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @as102_free_usb_stream_buffer(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.as102_dev_t, ptr %dev, i32 0, i32 14, i32 %i.06
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %1) #6
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %bus_adap = getelementptr inbounds %struct.as102_dev_t, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %bus_adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_adap, align 4
  %stream = getelementptr inbounds %struct.as102_dev_t, ptr %dev, i32 0, i32 12
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream, align 8
  %dma_addr = getelementptr inbounds %struct.as102_dev_t, ptr %dev, i32 0, i32 11
  %6 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_addr, align 4
  tail call void @usb_free_coherent(ptr noundef %3, i32 noundef 16384, ptr noundef %5, i32 noundef %7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as102_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %call1 = tail call ptr @usb_find_interface(ptr noundef nonnull @as102_usb_driver, i32 noundef %and.i) #6
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %and.i) #10
  br label %exit

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call1, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cmp4 = icmp eq ptr %3, null
  br i1 %cmp4, label %if.end.exit_crit_edge, label %if.end6

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end6:                                          ; preds = %if.end
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %private_data, align 4
  %kref = getelementptr inbounds %struct.as102_dev_t, ptr %3, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #6
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #6, !srcloc !99
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end6.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !100

if.end6.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end6
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !96

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.exit_crit_edge:                   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end6.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end6.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #6
  br label %exit

exit:                                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.exit_crit_edge, %if.end.exit_crit_edge, %do.end
  %ret.0 = phi i32 [ -19, %do.end ], [ -14, %if.end.exit_crit_edge ], [ 0, %if.else.i.i.i.i.exit_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as102_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %kref = getelementptr inbounds %struct.as102_dev_t, ptr %1, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #6, !srcloc !95
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !96

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #6
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !97
  %bus_adap.i.i = getelementptr %struct.as102_dev_t, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %bus_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus_adap.i.i, align 4
  tail call void @usb_put_dev(ptr noundef %4) #6
  tail call void @kfree(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_find_interface(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @as102_alloc_usb_stream_buffer(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_adap = getelementptr inbounds %struct.as102_dev_t, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus_adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_adap, align 4
  %dma_addr = getelementptr inbounds %struct.as102_dev_t, ptr %dev, i32 0, i32 11
  %call = tail call ptr @usb_alloc_coherent(ptr noundef %1, i32 noundef 16384, i32 noundef 3264, ptr noundef %dma_addr) #6
  %stream = getelementptr inbounds %struct.as102_dev_t, ptr %dev, i32 0, i32 12
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %stream, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as102_alloc_usb_stream_buffer.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as102_alloc_usb_stream_buffer, %if.then6)) #6
          to label %cleanup19 [label %if.then6], !srcloc !98

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %bus_adap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus_adap, align 4
  %dev9 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as102_alloc_usb_stream_buffer.__UNIQUE_ID_ddebug309, ptr noundef %dev9, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33) #6
  br label %cleanup19

if.end10:                                         ; preds = %entry
  %5 = call ptr @memset(ptr %call, i32 0, i32 16384)
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %if.end10
  %i.039 = phi i32 [ 0, %if.end10 ], [ %inc, %if.end15.for.body_crit_edge ]
  %call12 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #6
  %cmp13 = icmp eq ptr %call12, null
  br i1 %cmp13, label %for.body.for.body.i_crit_edge, label %if.end15

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.as102_dev_t, ptr %dev, i32 0, i32 14, i32 %i.06.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_free_urb(ptr noundef %7) #6
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %as102_free_usb_stream_buffer.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

as102_free_usb_stream_buffer.exit:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %bus_adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_adap, align 4
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream, align 8
  %12 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_addr, align 4
  tail call void @usb_free_coherent(ptr noundef %9, i32 noundef 16384, ptr noundef %11, i32 noundef %13) #6
  br label %cleanup19

if.end15:                                         ; preds = %for.body
  %14 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stream, align 8
  %mul = shl i32 %i.039, 9
  %add.ptr = getelementptr i8, ptr %15, i32 %mul
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call12, i32 0, i32 14
  %16 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr, ptr %transfer_buffer, align 4
  %17 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_addr, align 4
  %add = add i32 %18, %mul
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call12, i32 0, i32 15
  %19 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %transfer_dma, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call12, i32 0, i32 13
  %20 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %transfer_flags, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %call12, i32 0, i32 19
  %21 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 512, ptr %transfer_buffer_length, align 4
  %arrayidx = getelementptr %struct.as102_dev_t, ptr %dev, i32 0, i32 14, i32 %i.039
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call12, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %if.end15.cleanup19_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end15.cleanup19_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup19

cleanup19:                                        ; preds = %if.end15.cleanup19_crit_edge, %as102_free_usb_stream_buffer.exit, %if.then6, %do.body
  %retval.2 = phi i32 [ -12, %if.then6 ], [ -12, %as102_free_usb_stream_buffer.exit ], [ -12, %do.body ], [ 0, %if.end15.cleanup19_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @as102_dvb_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as102_send_ep1(ptr nocapture noundef readonly %bus_adap, ptr noundef %send_buf, i32 noundef %send_buf_len, i32 noundef %swap32) #0 align 64 {
entry:
  %actual_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len) #6
  %0 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual_len, align 4, !annotation !101
  %1 = ptrtoint ptr %bus_adap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus_adap, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i = shl i32 %4, 8
  %or = or i32 %shl.i, -1073709056
  %call2 = call i32 @usb_bulk_msg(ptr noundef %2, i32 noundef %or, ptr noundef %send_buf, i32 noundef %send_buf_len, ptr noundef nonnull %actual_len, i32 noundef 200) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as102_send_ep1.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as102_send_ep1, %if.then7)) #6
          to label %cleanup [label %if.then7], !srcloc !98

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %bus_adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus_adap, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as102_send_ep1.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call2) #6
  br label %cleanup

if.end9:                                          ; preds = %entry
  %7 = ptrtoint ptr %actual_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %send_buf_len)
  %cmp.not = icmp eq i32 %8, %send_buf_len
  br i1 %cmp.not, label %if.end9.cleanup_crit_edge, label %do.body11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as102_send_ep1.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as102_send_ep1, %if.then23)) #6
          to label %cleanup [label %if.then23], !srcloc !98

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %bus_adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus_adap, align 4
  %dev25 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %actual_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual_len, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as102_send_ep1.__UNIQUE_ID_ddebug305, ptr noundef %dev25, ptr noundef nonnull @.str.26, i32 noundef %12, i32 noundef %send_buf_len) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %do.body11, %if.end9.cleanup_crit_edge, %if.then7, %do.body
  %retval.0 = phi i32 [ %call2, %if.then7 ], [ -1, %if.then23 ], [ %send_buf_len, %if.end9.cleanup_crit_edge ], [ %call2, %do.body ], [ -1, %do.body11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as102_usb_xfer_cmd(ptr nocapture noundef readonly %bus_adap, ptr noundef %send_buf, i32 noundef %send_buf_len, ptr noundef %recv_buf, i32 noundef %recv_buf_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %send_buf, null
  br i1 %cmp.not, label %entry.if.end34_crit_edge, label %if.then

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %bus_adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_adap, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %or = or i32 %shl.i, -2147483648
  %cmd_xid = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %bus_adap, i32 0, i32 3
  %4 = ptrtoint ptr %cmd_xid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cmd_xid, align 4
  %conv = trunc i32 %send_buf_len to i16
  %call2 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext %5, i16 noundef zeroext 0, ptr noundef nonnull %send_buf, i16 noundef zeroext %conv, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.body, label %if.end11

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as102_usb_xfer_cmd.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as102_usb_xfer_cmd, %if.then9)) #6
          to label %cleanup [label %if.then9], !srcloc !98

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %bus_adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_adap, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as102_usb_xfer_cmd.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call2) #6
  br label %cleanup

if.end11:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %send_buf_len)
  %cmp12.not = icmp eq i32 %call2, %send_buf_len
  br i1 %cmp12.not, label %if.end11.if.end34_crit_edge, label %do.body15

if.end11.if.end34_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

do.body15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as102_usb_xfer_cmd.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as102_usb_xfer_cmd, %if.then27)) #6
          to label %cleanup [label %if.then27], !srcloc !98

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %bus_adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_adap, align 4
  %dev29 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as102_usb_xfer_cmd.__UNIQUE_ID_ddebug302, ptr noundef %dev29, ptr noundef nonnull @.str.26, i32 noundef %call2, i32 noundef %send_buf_len) #6
  br label %cleanup

if.end34:                                         ; preds = %if.end11.if.end34_crit_edge, %entry.if.end34_crit_edge
  %ret.0 = phi i32 [ %send_buf_len, %if.end11.if.end34_crit_edge ], [ 0, %entry.if.end34_crit_edge ]
  %cmp35.not = icmp eq ptr %recv_buf, null
  br i1 %cmp35.not, label %if.end34.cleanup_crit_edge, label %if.then37

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then37:                                        ; preds = %if.end34
  %10 = ptrtoint ptr %bus_adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus_adap, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i95 = shl i32 %13, 8
  %or42 = or i32 %shl.i95, -2147483520
  %cmd_xid43 = getelementptr inbounds %struct.as10x_bus_adapter_t, ptr %bus_adap, i32 0, i32 3
  %14 = ptrtoint ptr %cmd_xid43 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cmd_xid43, align 4
  %conv44 = trunc i32 %recv_buf_len to i16
  %call45 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or42, i8 noundef zeroext -14, i8 noundef zeroext -64, i16 noundef zeroext %15, i16 noundef zeroext 0, ptr noundef nonnull %recv_buf, i16 noundef zeroext %conv44, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %do.body49, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body49:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as102_usb_xfer_cmd.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as102_usb_xfer_cmd, %if.then61)) #6
          to label %cleanup [label %if.then61], !srcloc !98

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %bus_adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus_adap, align 4
  %dev63 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as102_usb_xfer_cmd.__UNIQUE_ID_ddebug303, ptr noundef %dev63, ptr noundef nonnull @.str.29, i32 noundef %call45) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %do.body49, %if.then37.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then27, %do.body15, %if.then9, %do.body
  %retval.0 = phi i32 [ %call2, %if.then9 ], [ -1, %if.then27 ], [ %call45, %if.then61 ], [ %call45, %if.then37.cleanup_crit_edge ], [ %ret.0, %if.end34.cleanup_crit_edge ], [ %call2, %do.body ], [ -1, %do.body15 ], [ %call45, %do.body49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as102_usb_start_stream(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_adap.i = getelementptr inbounds %struct.as102_dev_t, ptr %dev, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.as102_dev_t, ptr %dev, i32 0, i32 14, i32 %i.08
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %bus_adap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_adap.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or3.i = or i32 %shl.i.i, -1073676160
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or3.i, ptr %pipe2.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 512, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 28
  %9 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @as102_urb_stream_irq, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 27
  %10 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %context4.i.i, align 4
  %call4.i = tail call i32 @usb_submit_urb(ptr noundef %1, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %for.cond, label %do.body.i

do.body.i:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as102_submit_urb_stream.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as102_usb_start_stream, %if.then9.i)) #6
          to label %for.body.i [label %if.then9.i], !srcloc !98

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev1.i.i.le = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %dev1.i.i.le to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1.i.i.le, align 4
  %dev11.i = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as102_submit_urb_stream.__UNIQUE_ID_ddebug308, ptr noundef %dev11.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then9.i, %do.body.i
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then9.i ], [ 0, %do.body.i ]
  %arrayidx.i = getelementptr %struct.as102_dev_t, ptr %dev, i32 0, i32 14, i32 %i.03.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %14) #6
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @as102_usb_stop_stream(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.as102_dev_t, ptr %dev, i32 0, i32 14, i32 %i.03
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %1) #6
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as102_read_ep2(ptr nocapture noundef readonly %bus_adap, ptr noundef %recv_buf, i32 noundef %recv_buf_len) #0 align 64 {
entry:
  %actual_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len) #6
  %0 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual_len, align 4, !annotation !101
  %cmp = icmp eq ptr %recv_buf, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %bus_adap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus_adap, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i = shl i32 %4, 8
  %or2 = or i32 %shl.i, -1073676160
  %call3 = call i32 @usb_bulk_msg(ptr noundef %2, i32 noundef %or2, ptr noundef nonnull %recv_buf, i32 noundef %recv_buf_len, ptr noundef nonnull %actual_len, i32 noundef 200) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end12, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as102_read_ep2.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as102_read_ep2, %if.then9)) #6
          to label %cleanup [label %if.then9], !srcloc !98

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %bus_adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus_adap, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as102_read_ep2.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call3) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %7 = ptrtoint ptr %actual_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %recv_buf_len)
  %cmp13.not = icmp eq i32 %8, %recv_buf_len
  br i1 %cmp13.not, label %if.end12.cleanup_crit_edge, label %do.body15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as102_read_ep2.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as102_read_ep2, %if.then27)) #6
          to label %cleanup [label %if.then27], !srcloc !98

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %bus_adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus_adap, align 4
  %dev29 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %actual_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual_len, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as102_read_ep2.__UNIQUE_ID_ddebug307, ptr noundef %dev29, ptr noundef nonnull @.str.32, i32 noundef %12, i32 noundef %recv_buf_len) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %do.body15, %if.end12.cleanup_crit_edge, %if.then9, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call3, %if.then9 ], [ -1, %if.then27 ], [ %recv_buf_len, %if.end12.cleanup_crit_edge ], [ %call3, %do.body ], [ -1, %do.body15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !20, !22, !24, !26, !27, !28, !29, !31, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !64, !65, !67, !68, !69, !71, !73, !74, !76, !77, !78, !80, !81, !83, !84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 59, i32 11}
!2 = !{ptr @as102_usb_driver, !3, !"as102_usb_driver", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 58, i32 19}
!4 = !{ptr @as102_usb_id_table, !5, !"as102_usb_id_table", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 27, i32 35}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 205, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @as102_submit_urb_stream.__UNIQUE_ID_ddebug308, !7, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 333, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @as102_usb_disconnect._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @as102_usb_disconnect._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 72, i32 11}
!20 = !{ptr @as102_usb_class_driver, !21, !"as102_usb_class_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 71, i32 32}
!22 = !{ptr @as102_dev_fops, !23, !"as102_dev_fops", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 65, i32 37}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 428, i32 3}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @as102_open._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @as102_open._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 363, i32 21}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 385, i32 3}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @as102_usb_probe._entry, !32, !"_entry", i1 false, i1 false}
!37 = !{ptr @as102_usb_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 391, i32 2}
!40 = !{ptr @as102_usb_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @as102_usb_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 39, i32 2}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 40, i32 2}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 41, i32 2}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 42, i32 2}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 43, i32 2}
!52 = distinct !{null, !53, !"as102_device_names", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 38, i32 27}
!54 = distinct !{null, !55, !"as102_elna_cfg", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 49, i32 22}
!56 = !{ptr @as102_priv_ops, !57, !"as102_priv_ops", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 183, i32 38}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 145, i32 3}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @as102_send_ep1.__UNIQUE_ID_ddebug304, !59, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 151, i32 3}
!64 = !{ptr @as102_send_ep1.__UNIQUE_ID_ddebug305, !63, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 94, i32 4}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @as102_usb_xfer_cmd.__UNIQUE_ID_ddebug301, !66, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!69 = !{ptr @as102_usb_xfer_cmd.__UNIQUE_ID_ddebug302, !70, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 100, i32 4}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 121, i32 4}
!73 = !{ptr @as102_usb_xfer_cmd.__UNIQUE_ID_ddebug303, !72, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 170, i32 3}
!76 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @as102_read_ep2.__UNIQUE_ID_ddebug306, !75, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 176, i32 3}
!80 = !{ptr @as102_read_ep2.__UNIQUE_ID_ddebug307, !79, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/as102/as102_usb_drv.c", i32 251, i32 3}
!83 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @as102_alloc_usb_stream_buffer.__UNIQUE_ID_ddebug309, !82, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 2148308959}
!95 = !{i64 2148223423, i64 2148223455, i64 2148223484, i64 2148223518, i64 2148223549, i64 2148223572}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{i64 2149877548}
!98 = !{i64 2148701243, i64 2148701248, i64 2148701261, i64 2148701305, i64 2148701339, i64 2148701360}
!99 = !{i64 2148220958, i64 2148220990, i64 2148221019, i64 2148221053, i64 2148221084, i64 2148221107}
!100 = !{!"branch_weights", i32 1, i32 2000}
!101 = !{!"auto-init"}
