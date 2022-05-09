; ModuleID = '/llk/IR_all_yes/drivers/w1/masters/ds2490.c_pt.bc'
source_filename = "../drivers/w1/masters/ds2490.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ds_device = type { %struct.list_head, ptr, ptr, [4 x i32], i32, i16, [32 x i8], i8, %struct.w1_bus_master }
%struct.w1_bus_master = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.ds_status = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.w1_master = type { %struct.list_head, ptr, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, %struct.device, ptr, i32 }

@__initcall__kmod_ds2490__232_1102_ds_driver_init6 = internal global ptr @ds_driver_init, section ".initcall6.init", align 4
@ds_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @ds_probe, ptr @ds_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ds_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ds_driver_exit = internal global ptr @ds_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [49 x i8] c"ds2490.author=Evgeniy Polyakov <zbr@ioremap.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [65 x i8] c"ds2490.description=DS2490 USB <-> W1 bus master driver (DS9490*)\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [38 x i8] c"ds2490.file=drivers/w1/masters/ds2490\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [19 x i8] c"ds2490.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ds2490\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DS9490R\00", [24 x i8] zeroinitializer }, align 32
@ds_id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1274, i16 9360, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ds_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016Failed to allocate new DS9490R structure.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ds_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/w1/masters/ds2490.c\00", [36 x i8] zeroinitializer }, align 32
@ds_probe._entry_ptr = internal global ptr @ds_probe._entry, section ".printk_index", align 4
@ds_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 1013, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to reset configuration: err=%d.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ds_probe._entry_ptr.9 = internal global ptr @ds_probe._entry.5, section ".printk_index", align 4
@ds_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1024, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Failed to set alternative setting %d for %d interface: err=%d.\0A\00", [32 x i8] zeroinitializer }, align 32
@ds_probe._entry_ptr.12 = internal global ptr @ds_probe._entry.10, section ".printk_index", align 4
@ds_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016Num endpoints=%d. It is not DS9490R.\0A\00", [56 x i8] zeroinitializer }, align 32
@ds_probe._entry_ptr.15 = internal global ptr @ds_probe._entry.13, section ".printk_index", align 4
@ds_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.89, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ds_mutex, i64 52), ptr getelementptr (i8, ptr @ds_mutex, i64 52) }, ptr @ds_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.90, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ds_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ds_devices, ptr @ds_devices }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ds_reset_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013ds_reset_device: Error allowing strong pullup\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ds_reset_device\00", [16 x i8] zeroinitializer }, align 32
@ds_reset_device._entry_ptr = internal global ptr @ds_reset_device._entry, section ".printk_index", align 4
@ds_reset_device._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ds_reset_device: Error setting duration\0A\00", [53 x i8] zeroinitializer }, align 32
@ds_reset_device._entry_ptr.20 = internal global ptr @ds_reset_device._entry.18, section ".printk_index", align 4
@ds_send_control_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013Failed to send command control message %x.%x: err=%d.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ds_send_control_cmd\00", [44 x i8] zeroinitializer }, align 32
@ds_send_control_cmd._entry_ptr = internal global ptr @ds_send_control_cmd._entry, section ".printk_index", align 4
@ds_send_control_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013Failed to send mode control message %x.%x: err=%d.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ds_send_control_mode\00", [43 x i8] zeroinitializer }, align 32
@ds_send_control_mode._entry_ptr = internal global ptr @ds_send_control_mode._entry, section ".printk_index", align 4
@ds_send_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Failed to send control message %x.%x: err=%d.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ds_send_control\00", [16 x i8] zeroinitializer }, align 32
@ds_send_control._entry_ptr = internal global ptr @ds_send_control._entry, section ".printk_index", align 4
@ds_wait_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016Resetting device after ST_EPOF.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ds_wait_status\00", [17 x i8] zeroinitializer }, align 32
@ds_wait_status._entry_ptr = internal global ptr @ds_wait_status._entry, section ".printk_index", align 4
@ds_recv_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Failed to read 1-wire data from 0x%x: err=%d.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ds_recv_status\00", [17 x i8] zeroinitializer }, align 32
@ds_recv_status._entry_ptr = internal global ptr @ds_recv_status._entry, section ".printk_index", align 4
@ds_dump_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0160x%x: count=%d, status: \00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ds_dump_status\00", [17 x i8] zeroinitializer }, align 32
@ds_dump_status._entry_ptr = internal global ptr @ds_dump_status._entry, section ".printk_index", align 4
@ds_dump_status._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.4, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\016%02x \00", [24 x i8] zeroinitializer }, align 32
@ds_dump_status._entry_ptr.35 = internal global ptr @ds_dump_status._entry.33, section ".printk_index", align 4
@ds_dump_status._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.4, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\016\0A\00", [28 x i8] zeroinitializer }, align 32
@ds_dump_status._entry_ptr.38 = internal global ptr @ds_dump_status._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable flag\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1-wire speed\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"strong pullup duration\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"programming pulse duration\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pulldown slew rate control\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"write-1 low time\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"data sample offset/write-0 recovery time\00", [55 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reserved (test register)\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"device status flags\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"communication command byte 1\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"communication command byte 2\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"communication command buffer status\00", [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"1-wire data output buffer status\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"1-wire data input buffer status\00", [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"new device detect\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Result Register Value: \00", [40 x i8] zeroinitializer }, align 32
@ds_dump_status._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.32, ptr @.str.4, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016NRS: Reset no presence or ...\0A\00", [63 x i8] zeroinitializer }, align 32
@ds_dump_status._entry_ptr.58 = internal global ptr @ds_dump_status._entry.56, section ".printk_index", align 4
@ds_dump_status._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.32, ptr @.str.4, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016SH: short on reset or set path\0A\00", [62 x i8] zeroinitializer }, align 32
@ds_dump_status._entry_ptr.61 = internal global ptr @ds_dump_status._entry.59, section ".printk_index", align 4
@ds_dump_status._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.32, ptr @.str.4, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016APP: alarming presence on reset\0A\00", [61 x i8] zeroinitializer }, align 32
@ds_dump_status._entry_ptr.64 = internal global ptr @ds_dump_status._entry.62, section ".printk_index", align 4
@ds_dump_status._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.32, ptr @.str.4, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016VPP: 12V expected not seen\0A\00", [34 x i8] zeroinitializer }, align 32
@ds_dump_status._entry_ptr.67 = internal global ptr @ds_dump_status._entry.65, section ".printk_index", align 4
@ds_dump_status._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.32, ptr @.str.4, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016CMP: compare error\0A\00", [42 x i8] zeroinitializer }, align 32
@ds_dump_status._entry_ptr.70 = internal global ptr @ds_dump_status._entry.68, section ".printk_index", align 4
@ds_dump_status._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.32, ptr @.str.4, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016CRC: CRC error detected\0A\00", [37 x i8] zeroinitializer }, align 32
@ds_dump_status._entry_ptr.73 = internal global ptr @ds_dump_status._entry.71, section ".printk_index", align 4
@ds_dump_status._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.32, ptr @.str.4, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016RDP: redirected page\0A\00", [40 x i8] zeroinitializer }, align 32
@ds_dump_status._entry_ptr.76 = internal global ptr @ds_dump_status._entry.74, section ".printk_index", align 4
@ds_dump_status._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.32, ptr @.str.4, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016EOS: end of search error\0A\00", [36 x i8] zeroinitializer }, align 32
@ds_dump_status._entry_ptr.79 = internal global ptr @ds_dump_status._entry.77, section ".printk_index", align 4
@ds_print_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.4, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016%45s: %8x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ds_print_msg\00", [19 x i8] zeroinitializer }, align 32
@ds_print_msg._entry_ptr = internal global ptr @ds_print_msg._entry, section ".printk_index", align 4
@ds_recv_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.4, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016Clearing ep0x%x.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ds_recv_data\00", [19 x i8] zeroinitializer }, align 32
@ds_recv_data._entry_ptr = internal global ptr @ds_recv_data._entry, section ".printk_index", align 4
@ds_send_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.4, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013Failed to write 1-wire data to ep0x%x: err=%d.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ds_send_data\00", [19 x i8] zeroinitializer }, align 32
@ds_send_data._entry_ptr = internal global ptr @ds_send_data._entry, section ".printk_index", align 4
@ds9490r_search._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.4, i32 769, ptr @.str.88, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: max_slave_count %d reached, will continue next search.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ds9490r_search\00", [17 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ds9490r_search._entry_ptr = internal global ptr @ds9490r_search._entry, section ".printk_index", align 4
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ds_mutex.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ds_mutex\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.91 = private unnamed_addr constant [10 x i8] c"ds_driver\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1096, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1102, i32 1 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1097, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant [12 x i8] c"ds_id_table\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1090, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 998, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1012, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1022, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1030, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [9 x i8] c"ds_mutex\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [11 x i8] c"ds_devices\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 165, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 307, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 313, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 175, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 190, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 205, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 442, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 286, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 222, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 224, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 225, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 228, i32 21 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 229, i32 21 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 230, i32 21 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 231, i32 21 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 232, i32 21 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 233, i32 21 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 234, i32 21 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 236, i32 21 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 237, i32 21 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 238, i32 21 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 239, i32 21 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 240, i32 21 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 241, i32 21 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 242, i32 21 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 243, i32 21 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 248, i32 22 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 251, i32 21 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 253, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 255, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 257, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 259, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 261, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 263, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 265, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 267, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 215, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 334, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 360, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 767, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.368 = private constant [31 x i8] c"../drivers/w1/masters/ds2490.c\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 166, i32 8 }
@llvm.compiler.used = appending global [126 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_ds_driver_exit, ptr @__initcall__kmod_ds2490__232_1102_ds_driver_init6, ptr @ds9490r_search._entry, ptr @ds9490r_search._entry_ptr, ptr @ds_driver_exit, ptr @ds_dump_status._entry, ptr @ds_dump_status._entry.33, ptr @ds_dump_status._entry.36, ptr @ds_dump_status._entry.56, ptr @ds_dump_status._entry.59, ptr @ds_dump_status._entry.62, ptr @ds_dump_status._entry.65, ptr @ds_dump_status._entry.68, ptr @ds_dump_status._entry.71, ptr @ds_dump_status._entry.74, ptr @ds_dump_status._entry.77, ptr @ds_dump_status._entry_ptr, ptr @ds_dump_status._entry_ptr.35, ptr @ds_dump_status._entry_ptr.38, ptr @ds_dump_status._entry_ptr.58, ptr @ds_dump_status._entry_ptr.61, ptr @ds_dump_status._entry_ptr.64, ptr @ds_dump_status._entry_ptr.67, ptr @ds_dump_status._entry_ptr.70, ptr @ds_dump_status._entry_ptr.73, ptr @ds_dump_status._entry_ptr.76, ptr @ds_dump_status._entry_ptr.79, ptr @ds_print_msg._entry, ptr @ds_print_msg._entry_ptr, ptr @ds_probe._entry, ptr @ds_probe._entry.10, ptr @ds_probe._entry.13, ptr @ds_probe._entry.5, ptr @ds_probe._entry_ptr, ptr @ds_probe._entry_ptr.12, ptr @ds_probe._entry_ptr.15, ptr @ds_probe._entry_ptr.9, ptr @ds_recv_data._entry, ptr @ds_recv_data._entry_ptr, ptr @ds_recv_status._entry, ptr @ds_recv_status._entry_ptr, ptr @ds_reset_device._entry, ptr @ds_reset_device._entry.18, ptr @ds_reset_device._entry_ptr, ptr @ds_reset_device._entry_ptr.20, ptr @ds_send_control._entry, ptr @ds_send_control._entry_ptr, ptr @ds_send_control_cmd._entry, ptr @ds_send_control_cmd._entry_ptr, ptr @ds_send_control_mode._entry, ptr @ds_send_control_mode._entry_ptr, ptr @ds_send_data._entry, ptr @ds_send_data._entry_ptr, ptr @ds_wait_status._entry, ptr @ds_wait_status._entry_ptr, ptr @ds_driver, ptr @.str, ptr @.str.1, ptr @ds_id_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @ds_mutex, ptr @ds_devices, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_reset_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_reset_device._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_send_control_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_send_control_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_send_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_wait_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_recv_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_dump_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_dump_status._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_dump_status._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_dump_status._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_dump_status._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_dump_status._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_dump_status._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_dump_status._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_dump_status._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_dump_status._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_dump_status._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_print_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_recv_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds_send_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds9490r_search._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ds_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ds_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ds_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @ds_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds_probe(ptr nocapture noundef %intf, ptr nocapture noundef readnone %udev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 124) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %call3 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #8
  %udev4 = getelementptr inbounds %struct.ds_device, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %udev4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %udev4, align 8
  %tobool6.not = icmp eq ptr %call3, null
  br i1 %tobool6.not, label %if.end.err_out_free_crit_edge, label %if.end8

if.end.err_out_free_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_free

if.end8:                                          ; preds = %if.end
  %ep = getelementptr inbounds %struct.ds_device, ptr %call7.i.i, i32 0, i32 3
  %4 = call ptr @memset(ptr %ep, i32 0, i32 16)
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call10 = tail call i32 @usb_reset_configuration(ptr noundef nonnull %call3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %6 = ptrtoint ptr %udev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev4, align 8
  br i1 %tobool11.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev17 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.6, i32 noundef %call10) #12
  br label %err_out_clear

if.end18:                                         ; preds = %if.end8
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %8 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %11 to i32
  %call20 = tail call i32 @usb_set_interface(ptr noundef %7, i32 noundef %conv, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end32, label %do.end25

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %udev4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev4, align 8
  %dev27 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber30 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %bInterfaceNumber30 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bInterfaceNumber30, align 2
  %conv31 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.11, i32 noundef 3, i32 noundef %conv31, i32 noundef %call20) #12
  br label %err_out_clear

if.end32:                                         ; preds = %if.end18
  %18 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cmp.not = icmp eq i8 %21, 3
  br i1 %cmp.not, label %for.cond.preheader, label %do.end40

for.cond.preheader:                               ; preds = %if.end32
  %22 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp50100.not = icmp eq i8 %23, 0
  br i1 %cmp50100.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %endpoint52 = getelementptr inbounds %struct.usb_host_interface, ptr %19, i32 0, i32 3
  br label %for.body

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %conv35 = zext i8 %21 to i32
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv35) #12
  br label %err_out_clear

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %24 = ptrtoint ptr %endpoint52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %endpoint52, align 4
  %bEndpointAddress = getelementptr %struct.usb_host_endpoint, ptr %25, i32 %i.0101, i32 0, i32 2
  %26 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bEndpointAddress, align 1
  %conv54 = zext i8 %27 to i32
  %add = add nuw nsw i32 %i.0101, 1
  %arrayidx56 = getelementptr %struct.ds_device, ptr %call7.i.i, i32 0, i32 3, i32 %add
  %28 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv54, ptr %arrayidx56, align 4
  %29 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bNumEndpoints, align 4
  %conv49 = zext i8 %30 to i32
  %cmp50 = icmp ult i32 %add, %conv49
  br i1 %cmp50, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %master.i = getelementptr inbounds %struct.ds_device, ptr %call7.i.i, i32 0, i32 8
  %31 = call ptr @memset(ptr %master.i, i32 0, i32 52)
  tail call fastcc void @ds_reset_device(ptr noundef %call7.i.i) #8
  %32 = ptrtoint ptr %master.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i, ptr %master.i, align 8
  %touch_bit.i = getelementptr inbounds %struct.ds_device, ptr %call7.i.i, i32 0, i32 8, i32 3
  %33 = ptrtoint ptr %touch_bit.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @ds9490r_touch_bit, ptr %touch_bit.i, align 4
  %read_byte.i = getelementptr inbounds %struct.ds_device, ptr %call7.i.i, i32 0, i32 8, i32 4
  %34 = ptrtoint ptr %read_byte.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ds9490r_read_byte, ptr %read_byte.i, align 8
  %write_byte.i = getelementptr inbounds %struct.ds_device, ptr %call7.i.i, i32 0, i32 8, i32 5
  %35 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ds9490r_write_byte, ptr %write_byte.i, align 4
  %read_block.i = getelementptr inbounds %struct.ds_device, ptr %call7.i.i, i32 0, i32 8, i32 6
  %36 = ptrtoint ptr %read_block.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ds9490r_read_block, ptr %read_block.i, align 8
  %write_block.i = getelementptr inbounds %struct.ds_device, ptr %call7.i.i, i32 0, i32 8, i32 7
  %37 = ptrtoint ptr %write_block.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ds9490r_write_block, ptr %write_block.i, align 4
  %reset_bus.i = getelementptr inbounds %struct.ds_device, ptr %call7.i.i, i32 0, i32 8, i32 9
  %38 = ptrtoint ptr %reset_bus.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ds9490r_reset, ptr %reset_bus.i, align 4
  %set_pullup.i = getelementptr inbounds %struct.ds_device, ptr %call7.i.i, i32 0, i32 8, i32 10
  %39 = ptrtoint ptr %set_pullup.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @ds9490r_set_pullup, ptr %set_pullup.i, align 8
  %search.i = getelementptr inbounds %struct.ds_device, ptr %call7.i.i, i32 0, i32 8, i32 11
  %40 = ptrtoint ptr %search.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @ds9490r_search, ptr %search.i, align 4
  %call.i = tail call i32 @w1_add_master_device(ptr noundef %master.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool58.not = icmp eq i32 %call.i, 0
  br i1 %tobool58.not, label %if.end60, label %for.end.err_out_clear_crit_edge

for.end.err_out_clear_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_clear

if.end60:                                         ; preds = %for.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @ds_mutex, i32 noundef 0) #8
  %41 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ds_devices, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i, ptr noundef %41, ptr noundef nonnull @ds_devices) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end60.list_add_tail.exit_crit_edge

if.end60.list_add_tail.exit_crit_edge:            ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @ds_devices, i32 0, i32 1), align 4
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @ds_devices, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %41, ptr %prev3.i.i, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %call7.i.i, ptr %41, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end60.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ds_mutex) #8
  br label %cleanup

err_out_clear:                                    ; preds = %for.end.err_out_clear_crit_edge, %do.end40, %do.end25, %do.end15
  %err.0 = phi i32 [ %call10, %do.end15 ], [ %call20, %do.end25 ], [ -22, %do.end40 ], [ %call.i, %for.end.err_out_clear_crit_edge ]
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %driver_data.i.i, align 4
  %46 = ptrtoint ptr %udev4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %udev4, align 8
  tail call void @usb_put_dev(ptr noundef %47) #8
  br label %err_out_free

err_out_free:                                     ; preds = %err_out_clear, %if.end.err_out_free_crit_edge
  %err.1 = phi i32 [ %err.0, %err_out_clear ], [ -12, %if.end.err_out_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_out_free, %list_add_tail.exit, %do.end
  %retval.0 = phi i32 [ %err.1, %err_out_free ], [ 0, %list_add_tail.exit ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ds_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ds_mutex, i32 noundef 0) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ds_mutex) #8
  %master.i = getelementptr inbounds %struct.ds_device, ptr %1, i32 0, i32 8
  tail call void @w1_remove_master_device(ptr noundef %master.i) #8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %driver_data.i.i, align 4
  %udev = getelementptr inbounds %struct.ds_device, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev, align 4
  tail call void @usb_put_dev(ptr noundef %12) #8
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_configuration(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ds_reset_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %udev.i = getelementptr inbounds %struct.ds_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev.i, align 4
  %ep.i = getelementptr inbounds %struct.ds_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ep.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %5, 8
  %shl1.i.i = shl i32 %3, 15
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %or.i = or i32 %or.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.ds_send_control_cmd.exit_crit_edge

entry.ds_send_control_cmd.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds_send_control_cmd.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 0, i32 noundef %call2.i) #12
  br label %ds_send_control_cmd.exit

ds_send_control_cmd.exit:                         ; preds = %do.end.i, %entry.ds_send_control_cmd.exit_crit_edge
  %6 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev.i, align 4
  %8 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ep.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 8
  %shl.i.i22 = shl i32 %11, 8
  %shl1.i.i23 = shl i32 %9, 15
  %or.i.i24 = or i32 %shl1.i.i23, %shl.i.i22
  %or.i25 = or i32 %or.i.i24, -2147483648
  %call2.i26 = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i25, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i26)
  %cmp.i27 = icmp slt i32 %call2.i26, 0
  br i1 %cmp.i27, label %ds_send_control_mode.exit.thread, label %ds_send_control_mode.exit

ds_send_control_mode.exit.thread:                 ; preds = %ds_send_control_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 2, i32 noundef %call2.i26) #12
  br label %do.end

ds_send_control_mode.exit:                        ; preds = %ds_send_control_cmd.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i26)
  %tobool.not = icmp eq i32 %call2.i26, 0
  br i1 %tobool.not, label %ds_send_control_mode.exit.if.end_crit_edge, label %ds_send_control_mode.exit.do.end_crit_edge

ds_send_control_mode.exit.do.end_crit_edge:       ; preds = %ds_send_control_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

ds_send_control_mode.exit.if.end_crit_edge:       ; preds = %ds_send_control_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %ds_send_control_mode.exit.do.end_crit_edge, %ds_send_control_mode.exit.thread
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %ds_send_control_mode.exit.if.end_crit_edge
  %spu_sleep = getelementptr inbounds %struct.ds_device, ptr %dev, i32 0, i32 4
  %12 = ptrtoint ptr %spu_sleep to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %spu_sleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not = icmp eq i32 %13, 0
  br i1 %tobool3.not, label %if.end.if.end15_crit_edge, label %if.then4

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then4:                                         ; preds = %if.end
  %14 = trunc i32 %13 to i16
  %15 = lshr i16 %14, 4
  %conv6 = and i16 %15, 255
  %16 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev.i, align 4
  %18 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ep.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 8
  %shl.i.i32 = shl i32 %21, 8
  %shl1.i.i33 = shl i32 %19, 15
  %or.i.i34 = or i32 %shl1.i.i33, %shl.i.i32
  %or.i35 = or i32 %or.i.i34, -2147483648
  %call2.i36 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i35, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 19, i16 noundef zeroext %conv6, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i36)
  %cmp.i37 = icmp slt i32 %call2.i36, 0
  br i1 %cmp.i37, label %ds_send_control.exit.thread, label %ds_send_control.exit

ds_send_control.exit.thread:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %conv3.i = zext i16 %conv6 to i32
  %call4.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef 19, i32 noundef %conv3.i, i32 noundef %call2.i36) #12
  br label %do.end11

ds_send_control.exit:                             ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i36)
  %tobool8.not = icmp eq i32 %call2.i36, 0
  br i1 %tobool8.not, label %ds_send_control.exit.if.end15_crit_edge, label %ds_send_control.exit.do.end11_crit_edge

ds_send_control.exit.do.end11_crit_edge:          ; preds = %ds_send_control.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

ds_send_control.exit.if.end15_crit_edge:          ; preds = %ds_send_control.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

do.end11:                                         ; preds = %ds_send_control.exit.do.end11_crit_edge, %ds_send_control.exit.thread
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #12
  br label %if.end15

if.end15:                                         ; preds = %do.end11, %ds_send_control.exit.if.end15_crit_edge, %if.end.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ds9490r_touch_bit(ptr noundef %data, i8 noundef zeroext %bit) #2 align 64 {
entry:
  %st.i = alloca %struct.ds_status, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %byte_buf = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %st.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bit)
  %tobool.not.i = icmp eq i8 %bit, 0
  %conv1.i = select i1 %tobool.not.i, i16 33, i16 41
  %udev.i.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 1
  %0 = call ptr @memset(ptr %st.i, i32 255, i32 16)
  %1 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev.i.i, align 4
  %ep.i.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ep.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 8
  %shl.i.i.i = shl i32 %6, 8
  %shl1.i.i.i = shl i32 %4, 15
  %or.i.i.i = or i32 %shl1.i.i.i, %shl.i.i.i
  %or.i.i = or i32 %or.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %2, i32 noundef %or.i.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv1.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %ds_send_control.exit.thread.i, label %ds_send_control.exit.i

ds_send_control.exit.thread.i:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i16 %conv1.i to i32
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %conv.i.i, i32 noundef 0, i32 noundef %call2.i.i) #12
  br label %ds_touch_bit.exit.thread

ds_send_control.exit.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool2.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool2.not.i, label %ds_touch_bit.exit, label %ds_send_control.exit.i.ds_touch_bit.exit.thread_crit_edge

ds_send_control.exit.i.ds_touch_bit.exit.thread_crit_edge: ; preds = %ds_send_control.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds_touch_bit.exit.thread

ds_touch_bit.exit.thread:                         ; preds = %ds_send_control.exit.i.ds_touch_bit.exit.thread_crit_edge, %ds_send_control.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %st.i) #8
  br label %cleanup

ds_touch_bit.exit:                                ; preds = %ds_send_control.exit.i
  %call3.i = call fastcc i32 @ds_wait_status(ptr noundef %data, ptr noundef nonnull %st.i) #8
  %call4.i = call fastcc i32 @ds_recv_data(ptr noundef %data, ptr noundef %byte_buf, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %st.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i)
  %tobool.not = icmp sgt i32 %call4.i, -1
  br i1 %tobool.not, label %if.end, label %ds_touch_bit.exit.cleanup_crit_edge

ds_touch_bit.exit.cleanup_crit_edge:              ; preds = %ds_touch_bit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ds_touch_bit.exit
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %byte_buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %byte_buf, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ds_touch_bit.exit.cleanup_crit_edge, %ds_touch_bit.exit.thread
  %retval.0 = phi i8 [ %8, %if.end ], [ 0, %ds_touch_bit.exit.cleanup_crit_edge ], [ 0, %ds_touch_bit.exit.thread ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ds9490r_read_byte(ptr noundef %data) #2 align 64 {
entry:
  %st.i = alloca %struct.ds_status, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %byte_buf = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %st.i) #8
  %udev.i.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 1
  %0 = call ptr @memset(ptr %st.i, i32 255, i32 16)
  %1 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev.i.i, align 4
  %ep.i.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ep.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 8
  %shl.i.i.i = shl i32 %6, 8
  %shl1.i.i.i = shl i32 %4, 15
  %or.i.i.i = or i32 %shl1.i.i.i, %shl.i.i.i
  %or.i.i = or i32 %or.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %2, i32 noundef %or.i.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 83, i16 noundef zeroext 255, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %ds_send_control.exit.thread.i, label %ds_send_control.exit.i

ds_send_control.exit.thread.i:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef 83, i32 noundef 255, i32 noundef %call2.i.i) #12
  br label %ds_read_byte.exit.thread

ds_send_control.exit.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i, label %ds_read_byte.exit, label %ds_send_control.exit.i.ds_read_byte.exit.thread_crit_edge

ds_send_control.exit.i.ds_read_byte.exit.thread_crit_edge: ; preds = %ds_send_control.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds_read_byte.exit.thread

ds_read_byte.exit.thread:                         ; preds = %ds_send_control.exit.i.ds_read_byte.exit.thread_crit_edge, %ds_send_control.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %st.i) #8
  br label %cleanup

ds_read_byte.exit:                                ; preds = %ds_send_control.exit.i
  %call1.i = call fastcc i32 @ds_wait_status(ptr noundef %data, ptr noundef nonnull %st.i) #8
  %call2.i = call fastcc i32 @ds_recv_data(ptr noundef %data, ptr noundef %byte_buf, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %st.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %tobool.not = icmp sgt i32 %call2.i, -1
  br i1 %tobool.not, label %if.end, label %ds_read_byte.exit.cleanup_crit_edge

ds_read_byte.exit.cleanup_crit_edge:              ; preds = %ds_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ds_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %byte_buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %byte_buf, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ds_read_byte.exit.cleanup_crit_edge, %ds_read_byte.exit.thread
  %retval.0 = phi i8 [ %8, %if.end ], [ 0, %ds_read_byte.exit.cleanup_crit_edge ], [ 0, %ds_read_byte.exit.thread ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ds9490r_write_byte(ptr noundef %data, i8 noundef zeroext %byte) #2 align 64 {
entry:
  %st.i = alloca %struct.ds_status, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %st.i) #8
  %spu_bit.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 5
  %0 = call ptr @memset(ptr %st.i, i32 255, i32 16)
  %1 = ptrtoint ptr %spu_bit.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %spu_bit.i, align 4
  %3 = or i16 %2, 83
  %conv2.i = zext i8 %byte to i16
  %udev.i.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev.i.i, align 4
  %ep.i.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ep.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 8
  %shl.i.i.i = shl i32 %9, 8
  %shl1.i.i.i = shl i32 %7, 15
  %or.i.i.i = or i32 %shl1.i.i.i, %shl.i.i.i
  %or.i.i = or i32 %or.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or.i.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %3, i16 noundef zeroext %conv2.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %ds_send_control.exit.thread.i, label %ds_send_control.exit.i

ds_send_control.exit.thread.i:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i16 %3 to i32
  %conv3.i.i = zext i8 %byte to i32
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %conv.i.i, i32 noundef %conv3.i.i, i32 noundef %call2.i.i) #12
  br label %ds_write_byte.exit

ds_send_control.exit.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ds_send_control.exit.i.ds_write_byte.exit_crit_edge

ds_send_control.exit.i.ds_write_byte.exit_crit_edge: ; preds = %ds_send_control.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds_write_byte.exit

if.end.i:                                         ; preds = %ds_send_control.exit.i
  %10 = ptrtoint ptr %spu_bit.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %spu_bit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool4.not.i = icmp eq i16 %11, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then5.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %spu_sleep.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 4
  %12 = ptrtoint ptr %spu_sleep.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %spu_sleep.i, align 4
  tail call void @msleep(i32 noundef %13) #8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %call7.i = call fastcc i32 @ds_wait_status(ptr noundef %data, ptr noundef nonnull %st.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end6.i.ds_write_byte.exit_crit_edge

if.end6.i.ds_write_byte.exit_crit_edge:           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds_write_byte.exit

if.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %byte_buf.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 7
  %call11.i = call fastcc i32 @ds_recv_data(ptr noundef %data, ptr noundef %byte_buf.i, i32 noundef 1) #8
  br label %ds_write_byte.exit

ds_write_byte.exit:                               ; preds = %if.end10.i, %if.end6.i.ds_write_byte.exit_crit_edge, %ds_send_control.exit.i.ds_write_byte.exit_crit_edge, %ds_send_control.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %st.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ds9490r_read_block(ptr noundef %data, ptr nocapture noundef writeonly %buf, i32 noundef %len) #2 align 64 {
entry:
  %count.i.i = alloca i32, align 4
  %st.i = alloca %struct.ds_status, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp = icmp slt i32 %len, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end8.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i:                                        ; preds = %entry
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end2

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %st.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %len)
  %cmp.i18 = icmp ugt i32 %len, 65536
  %0 = call ptr @memset(ptr %st.i, i32 255, i32 16)
  br i1 %cmp.i18, label %if.end2.ds_read_block.exit.thread_crit_edge, label %if.end.i20

if.end2.ds_read_block.exit.thread_crit_edge:      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds_read_block.exit.thread

if.end.i20:                                       ; preds = %if.end2
  %1 = call ptr @memset(ptr %call9.i, i32 255, i32 %len)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i.i) #8
  %2 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %count.i.i, align 4
  %udev.i.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ds_device, ptr %data, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 8
  %shl.i.i.i = shl i32 %8, 8
  %shl1.i.i.i = shl i32 %6, 15
  %or.i.i.i = or i32 %shl1.i.i.i, %shl.i.i.i
  %or.i.i = or i32 %or.i.i.i, -1073741824
  %call2.i.i = call i32 @usb_bulk_msg(ptr noundef %4, i32 noundef %or.i.i, ptr noundef nonnull %call9.i, i32 noundef %len, ptr noundef nonnull %count.i.i, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i19 = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i19, label %ds_send_data.exit.thread.i, label %if.end3.i

ds_send_data.exit.thread.i:                       ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %10, i32 noundef %call2.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i.i) #8
  br label %ds_read_block.exit.thread

if.end3.i:                                        ; preds = %if.end.i20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i.i) #8
  %conv.i = trunc i32 %len to i16
  %11 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev.i.i, align 4
  %ep.i.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ep.i.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 8
  %shl.i.i26.i = shl i32 %16, 8
  %shl1.i.i27.i = shl i32 %14, 15
  %or.i.i28.i = or i32 %shl1.i.i27.i, %shl.i.i26.i
  %or.i29.i = or i32 %or.i.i28.i, -2147483648
  %call2.i30.i = call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i29.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 117, i16 noundef zeroext %conv.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i30.i)
  %cmp.i31.i = icmp slt i32 %call2.i30.i, 0
  br i1 %cmp.i31.i, label %ds_send_control.exit.thread.i, label %ds_send_control.exit.i

ds_send_control.exit.thread.i:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv3.i.i = and i32 %len, 65535
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef 117, i32 noundef %conv3.i.i, i32 noundef %call2.i30.i) #12
  br label %ds_read_block.exit.thread

ds_send_control.exit.i:                           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i30.i)
  %tobool.not.i = icmp eq i32 %call2.i30.i, 0
  br i1 %tobool.not.i, label %ds_read_block.exit, label %ds_read_block.exit.thread25

ds_read_block.exit.thread25:                      ; preds = %ds_send_control.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %st.i) #8
  br label %18

ds_read_block.exit.thread:                        ; preds = %ds_send_control.exit.thread.i, %ds_send_data.exit.thread.i, %if.end2.ds_read_block.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %st.i) #8
  br label %if.end6.thread

ds_read_block.exit:                               ; preds = %ds_send_control.exit.i
  %call7.i21 = call fastcc i32 @ds_wait_status(ptr noundef %data, ptr noundef nonnull %st.i) #8
  %17 = call ptr @memset(ptr %call9.i, i32 0, i32 %len)
  %call8.i = call fastcc i32 @ds_recv_data(ptr noundef %data, ptr noundef nonnull %call9.i, i32 noundef %len) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %st.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.i)
  %cmp4 = icmp sgt i32 %call8.i, -1
  br i1 %cmp4, label %ds_read_block.exit._crit_edge, label %ds_read_block.exit.if.end6.thread_crit_edge

ds_read_block.exit.if.end6.thread_crit_edge:      ; preds = %ds_read_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.thread

ds_read_block.exit._crit_edge:                    ; preds = %ds_read_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %18

if.end6.thread:                                   ; preds = %ds_read_block.exit.if.end6.thread_crit_edge, %ds_read_block.exit.thread
  call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

18:                                               ; preds = %ds_read_block.exit._crit_edge, %ds_read_block.exit.thread25
  %19 = call ptr @memcpy(ptr %buf, ptr %call9.i, i32 %len)
  call void @kfree(ptr noundef nonnull %call9.i) #8
  %phi.cast = trunc i32 %len to i8
  br label %cleanup

cleanup:                                          ; preds = %18, %if.end6.thread, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end8.i.cleanup_crit_edge ], [ %phi.cast, %18 ], [ 0, %if.end6.thread ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ds9490r_write_block(ptr noundef %data, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %count.i.i = alloca i32, align 4
  %st.i = alloca %struct.ds_status, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp = icmp slt i32 %len, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @kmemdup(ptr noundef %buf, i32 noundef %len, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %st.i) #8
  %0 = call ptr @memset(ptr %st.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i.i) #8
  %1 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %count.i.i, align 4
  %udev.i.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ds_device, ptr %data, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 8
  %shl.i.i.i = shl i32 %7, 8
  %shl1.i.i.i = shl i32 %5, 15
  %or.i.i.i = or i32 %shl1.i.i.i, %shl.i.i.i
  %or.i.i = or i32 %or.i.i.i, -1073741824
  %call2.i.i = call i32 @usb_bulk_msg(ptr noundef %3, i32 noundef %or.i.i, ptr noundef nonnull %call, i32 noundef %len, ptr noundef nonnull %count.i.i, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %ds_send_data.exit.thread.i, label %if.end.i

ds_send_data.exit.thread.i:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %9, i32 noundef %call2.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i.i) #8
  br label %ds_write_block.exit

if.end.i:                                         ; preds = %if.end2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i.i) #8
  %spu_bit.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 5
  %10 = ptrtoint ptr %spu_bit.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %spu_bit.i, align 4
  %12 = or i16 %11, 117
  %conv2.i = trunc i32 %len to i16
  %13 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udev.i.i, align 4
  %ep.i.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 3
  %15 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ep.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 8
  %shl.i.i2.i = shl i32 %18, 8
  %shl1.i.i3.i = shl i32 %16, 15
  %or.i.i4.i = or i32 %shl1.i.i3.i, %shl.i.i2.i
  %or.i5.i = or i32 %or.i.i4.i, -2147483648
  %call2.i6.i = call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or.i5.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %12, i16 noundef zeroext %conv2.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i6.i)
  %cmp.i7.i = icmp slt i32 %call2.i6.i, 0
  br i1 %cmp.i7.i, label %ds_send_control.exit.thread.i, label %ds_send_control.exit.i

ds_send_control.exit.thread.i:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i16 %12 to i32
  %conv3.i.i = and i32 %len, 65535
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %conv.i.i, i32 noundef %conv3.i.i, i32 noundef %call2.i6.i) #12
  br label %ds_write_block.exit

ds_send_control.exit.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i6.i)
  %tobool.not.i = icmp eq i32 %call2.i6.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %ds_send_control.exit.i.ds_write_block.exit_crit_edge

ds_send_control.exit.i.ds_write_block.exit_crit_edge: ; preds = %ds_send_control.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds_write_block.exit

if.end5.i:                                        ; preds = %ds_send_control.exit.i
  %19 = ptrtoint ptr %spu_bit.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %spu_bit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool7.not.i = icmp eq i16 %20, 0
  br i1 %tobool7.not.i, label %if.end5.i.if.end9.i_crit_edge, label %if.then8.i

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %spu_sleep.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 4
  %21 = ptrtoint ptr %spu_sleep.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %spu_sleep.i, align 4
  call void @msleep(i32 noundef %22) #8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end5.i.if.end9.i_crit_edge
  %call10.i = call fastcc i32 @ds_wait_status(ptr noundef %data, ptr noundef nonnull %st.i) #8
  %call11.i = call fastcc i32 @ds_recv_data(ptr noundef %data, ptr noundef nonnull %call, i32 noundef %len) #8
  br label %ds_write_block.exit

ds_write_block.exit:                              ; preds = %if.end9.i, %ds_send_control.exit.i.ds_write_block.exit_crit_edge, %ds_send_control.exit.thread.i, %ds_send_data.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %st.i) #8
  call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %ds_write_block.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ds9490r_reset(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %udev.i.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev.i.i, align 4
  %ep.i.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ep.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %shl.i.i.i = shl i32 %5, 8
  %shl1.i.i.i = shl i32 %3, 15
  %or.i.i.i = or i32 %shl1.i.i.i, %shl.i.i.i
  %or.i.i = or i32 %or.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 67, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %entry.ds_reset.exit_crit_edge

entry.ds_reset.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds_reset.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef 67, i32 noundef 0, i32 noundef %call2.i.i) #12
  br label %ds_reset.exit

ds_reset.exit:                                    ; preds = %do.end.i.i, %entry.ds_reset.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not = icmp ne i32 %call2.i.i, 0
  %. = zext i1 %tobool.not to i8
  ret i8 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ds9490r_set_pullup(ptr nocapture noundef %data, i32 noundef %delay) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i32 %delay, 4
  %1 = trunc i32 %0 to i8
  %conv2.i = add i8 %1, 1
  %conv3.i = zext i8 %conv2.i to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay)
  %tobool.not.i = icmp eq i32 %delay, 0
  %conv4.i = select i1 %tobool.not.i, i16 0, i16 4096
  %spu_bit.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %spu_bit.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv4.i, ptr %spu_bit.i, align 4
  br i1 %tobool.not.i, label %entry.ds_set_pullup.exit_crit_edge, label %lor.lhs.false.i

entry.ds_set_pullup.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds_set_pullup.exit

lor.lhs.false.i:                                  ; preds = %entry
  %spu_sleep.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 4
  %3 = ptrtoint ptr %spu_sleep.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %spu_sleep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %4)
  %cmp6.i = icmp eq i32 %shl.i, %4
  br i1 %cmp6.i, label %lor.lhs.false.i.ds_set_pullup.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ds_set_pullup.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds_set_pullup.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %conv8.i = zext i8 %conv2.i to i16
  %udev.i.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev.i.i, align 4
  %ep.i.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 3
  %7 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ep.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 8
  %shl.i.i.i = shl i32 %10, 8
  %shl1.i.i.i = shl i32 %8, 15
  %or.i.i.i = or i32 %shl1.i.i.i, %shl.i.i.i
  %or.i.i = or i32 %or.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 19, i16 noundef zeroext %conv8.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %ds_send_control.exit.thread.i, label %ds_send_control.exit.i

ds_send_control.exit.thread.i:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef 19, i32 noundef %conv3.i, i32 noundef %call2.i.i) #12
  br label %ds_set_pullup.exit

ds_send_control.exit.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool9.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %ds_send_control.exit.i.ds_set_pullup.exit_crit_edge

ds_send_control.exit.i.ds_set_pullup.exit_crit_edge: ; preds = %ds_send_control.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds_set_pullup.exit

if.end11.i:                                       ; preds = %ds_send_control.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %spu_sleep.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl.i, ptr %spu_sleep.i, align 4
  br label %ds_set_pullup.exit

ds_set_pullup.exit:                               ; preds = %if.end11.i, %ds_send_control.exit.i.ds_set_pullup.exit_crit_edge, %ds_send_control.exit.thread.i, %lor.lhs.false.i.ds_set_pullup.exit_crit_edge, %entry.ds_set_pullup.exit_crit_edge
  %12 = phi i8 [ 1, %ds_send_control.exit.thread.i ], [ 1, %ds_send_control.exit.i.ds_set_pullup.exit_crit_edge ], [ 0, %if.end11.i ], [ 0, %lor.lhs.false.i.ds_set_pullup.exit_crit_edge ], [ 0, %entry.ds_set_pullup.exit_crit_edge ]
  ret i8 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ds9490r_search(ptr noundef %data, ptr noundef %master, i8 noundef zeroext %search_type, ptr nocapture noundef readonly %callback) #2 align 64 {
entry:
  %count.i136 = alloca i32, align 4
  %count.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 128) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_slave_count = getelementptr inbounds %struct.w1_master, ptr %master, i32 0, i32 6
  %1 = ptrtoint ptr %max_slave_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_slave_count, align 8
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 8) #8
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %if.end.if.then4_crit_edge, label %if.end7.i, !prof !186

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end7.i:                                        ; preds = %if.end
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #13
  %tobool3.not = icmp eq ptr %call8.i, null
  br i1 %tobool3.not, label %if.end7.i.if.then4_crit_edge, label %if.end5

if.end7.i.if.then4_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4:                                         ; preds = %if.end7.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end7.i
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %master, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #8
  %search_id = getelementptr inbounds %struct.w1_master, ptr %master, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i) #8
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %count.i, align 4
  %udev.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev.i, align 4
  %arrayidx.i = getelementptr %struct.ds_device, ptr %data, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %12, 8
  %shl1.i.i = shl i32 %10, 15
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %call2.i = call i32 @usb_bulk_msg(ptr noundef %8, i32 noundef %or.i, ptr noundef %search_id, i32 noundef 8, ptr noundef nonnull %count.i, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %ds_send_data.exit.thread, label %if.end8

ds_send_data.exit.thread:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %14, i32 noundef %call2.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #8
  br label %search_out

if.end8:                                          ; preds = %if.end5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #8
  %15 = ptrtoint ptr %search_id to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %search_id, align 8
  %16 = ptrtoint ptr %max_slave_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_slave_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %17)
  %cmp11 = icmp sgt i32 %17, 255
  %spec.store.select = select i1 %cmp11, i32 0, i32 %17
  %conv = zext i8 %search_type to i32
  %shl = shl i32 %spec.store.select, 8
  %or = or i32 %shl, %conv
  %conv14 = trunc i32 %or to i16
  %18 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udev.i, align 4
  %ep.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 3
  %20 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ep.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %19, align 8
  %shl.i.i129 = shl i32 %23, 8
  %shl1.i.i130 = shl i32 %21, 15
  %or.i.i131 = or i32 %shl1.i.i130, %shl.i.i129
  %or.i132 = or i32 %or.i.i131, -2147483648
  %call2.i133 = call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or.i132, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 18941, i16 noundef zeroext %conv14, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i133)
  %cmp.i134 = icmp slt i32 %call2.i133, 0
  br i1 %cmp.i134, label %ds_send_control.exit.thread, label %do.body.preheader

do.body.preheader:                                ; preds = %if.end8
  %arrayidx.i138 = getelementptr %struct.ds_device, ptr %data, i32 0, i32 3, i32 1
  %st_buf.i = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 6
  %st.sroa.12.0.st_buf.i.sroa_idx = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 6, i32 8
  %st.sroa.18.0.st_buf.i.sroa_idx = getelementptr inbounds %struct.ds_device, ptr %data, i32 0, i32 6, i32 13
  %flags = getelementptr inbounds %struct.w1_master, ptr %master, i32 0, i32 18
  br label %do.body

ds_send_control.exit.thread:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %conv3.i = and i32 %or, 65535
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef 18941, i32 noundef %conv3.i, i32 noundef %call2.i133) #12
  br label %search_out

do.body:                                          ; preds = %if.end45.do.body_crit_edge, %do.body.preheader
  %found.0 = phi i32 [ %found.2, %if.end45.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %call20 = call i32 @schedule_timeout(i32 noundef 11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i136) #8
  %24 = ptrtoint ptr %count.i136 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %count.i136, align 4
  %25 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %udev.i, align 4
  %27 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i138, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %26, align 8
  %shl.i.i139 = shl i32 %30, 8
  %shl1.i.i140 = shl i32 %28, 15
  %or.i.i141 = or i32 %shl1.i.i140, %shl.i.i139
  %or2.i = or i32 %or.i.i141, 1073741952
  %call3.i = call i32 @usb_interrupt_msg(ptr noundef %26, i32 noundef %or2.i, ptr noundef %st_buf.i, i32 noundef 32, ptr noundef nonnull %count.i136, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i142 = icmp slt i32 %call3.i, 0
  br i1 %cmp.i142, label %do.end.i145, label %if.end8.i

do.end.i145:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i138, align 4
  %call7.i144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %32, i32 noundef %call3.i) #12
  br label %ds_recv_status.exit.thread

if.end8.i:                                        ; preds = %do.body
  %33 = ptrtoint ptr %count.i136 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %34)
  %cmp15.i = icmp ugt i32 %34, 15
  br i1 %cmp15.i, label %ds_recv_status.exit, label %if.end8.i.ds_recv_status.exit.thread_crit_edge

if.end8.i.ds_recv_status.exit.thread_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds_recv_status.exit.thread

ds_recv_status.exit.thread:                       ; preds = %if.end8.i.ds_recv_status.exit.thread_crit_edge, %do.end.i145
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i136) #8
  br label %do.end

ds_recv_status.exit:                              ; preds = %if.end8.i
  %35 = ptrtoint ptr %st.sroa.12.0.st_buf.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %35)
  %st.sroa.12.0.copyload = load i8, ptr %st.sroa.12.0.st_buf.i.sroa_idx, align 2
  %36 = ptrtoint ptr %st.sroa.18.0.st_buf.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %36)
  %st.sroa.18.0.copyload = load i8, ptr %st.sroa.18.0.st_buf.i.sroa_idx, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i136) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp22 = icmp slt i32 %34, 0
  br i1 %cmp22, label %ds_recv_status.exit.do.end_crit_edge, label %if.end27

ds_recv_status.exit.do.end_crit_edge:             ; preds = %ds_recv_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end27:                                         ; preds = %ds_recv_status.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %st.sroa.18.0.copyload)
  %tobool28.not = icmp eq i8 %st.sroa.18.0.copyload, 0
  br i1 %tobool28.not, label %if.end27.if.end45_crit_edge, label %if.then29

if.end27.if.end45_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then29:                                        ; preds = %if.end27
  %call30 = call fastcc i32 @ds_recv_data(ptr noundef %data, ptr noundef nonnull %call7.i, i32 noundef 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then29.do.end_crit_edge, label %for.cond.preheader

if.then29.do.end_crit_edge:                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.cond.preheader:                               ; preds = %if.then29
  %div183191 = lshr i32 %call30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call30)
  %cmp35170 = icmp ugt i32 %call30, 7
  br i1 %cmp35170, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end45_crit_edge

for.cond.preheader.if.end45_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc44 = add nuw nsw i32 %i.0172, 1
  %exitcond.not = icmp eq i32 %inc44, %div183191
  br i1 %exitcond.not, label %for.cond.if.end45_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.if.end45_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0172 = phi i32 [ %inc44, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %found.1171 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ %found.0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i64, ptr %call7.i, i32 %i.0172
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx, align 8
  %inc = add i32 %found.1171, 1
  %arrayidx37 = getelementptr i64, ptr %call8.i, i32 %found.1171
  %39 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %arrayidx37, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %spec.store.select)
  %cmp38 = icmp eq i32 %inc, %spec.store.select
  br i1 %cmp38, label %if.then40, label %for.cond

if.then40:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %search_id to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %38, ptr %search_id, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %for.cond.if.end45_crit_edge, %for.cond.preheader.if.end45_crit_edge, %if.end27.if.end45_crit_edge
  %found.2 = phi i32 [ %spec.store.select, %if.then40 ], [ %found.0, %if.end27.if.end45_crit_edge ], [ %found.0, %for.cond.preheader.if.end45_crit_edge ], [ %inc, %for.cond.if.end45_crit_edge ]
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool47.not = icmp eq i32 %and1.i, 0
  %43 = and i8 %st.sroa.12.0.copyload, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool51.not = icmp eq i8 %43, 0
  %or.cond161 = select i1 %tobool47.not, i1 %tobool51.not, i1 false
  br i1 %or.cond161, label %if.end45.do.body_crit_edge, label %if.end45.do.end_crit_edge

if.end45.do.end_crit_edge:                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end45.do.body_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.end45.do.end_crit_edge, %if.then29.do.end_crit_edge, %ds_recv_status.exit.do.end_crit_edge, %ds_recv_status.exit.thread
  %found.3 = phi i32 [ %found.0, %ds_recv_status.exit.thread ], [ %found.2, %if.end45.do.end_crit_edge ], [ %found.0, %if.then29.do.end_crit_edge ], [ %found.0, %ds_recv_status.exit.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %found.3, i32 %spec.store.select)
  %cmp52.not = icmp sgt i32 %found.3, %spec.store.select
  br i1 %cmp52.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %search_id to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %search_id, align 8
  br label %search_out

if.else:                                          ; preds = %do.end
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %flags, align 4
  %47 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool58.not = icmp eq i32 %47, 0
  br i1 %tobool58.not, label %do.end62, label %if.else.search_out_crit_edge

if.else.search_out_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %search_out

do.end62:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %udev.i, align 4
  %dev63 = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  %50 = ptrtoint ptr %max_slave_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_slave_count, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev63, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, i32 noundef %51) #12
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #8
  br label %search_out

search_out:                                       ; preds = %do.end62, %if.else.search_out_crit_edge, %if.then54, %ds_send_control.exit.thread, %ds_send_data.exit.thread
  %found.4 = phi i32 [ %found.3, %if.then54 ], [ %found.3, %if.else.search_out_crit_edge ], [ %found.3, %do.end62 ], [ 0, %ds_send_data.exit.thread ], [ 0, %ds_send_control.exit.thread ]
  call void @mutex_unlock(ptr noundef %bus_mutex) #8
  call void @kfree(ptr noundef nonnull %call7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.4)
  %cmp70173 = icmp sgt i32 %found.4, 0
  br i1 %cmp70173, label %search_out.for.body72_crit_edge, label %search_out.for.end76_crit_edge

search_out.for.end76_crit_edge:                   ; preds = %search_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end76

search_out.for.body72_crit_edge:                  ; preds = %search_out
  br label %for.body72

for.body72:                                       ; preds = %for.body72.for.body72_crit_edge, %search_out.for.body72_crit_edge
  %i.1174 = phi i32 [ %inc75, %for.body72.for.body72_crit_edge ], [ 0, %search_out.for.body72_crit_edge ]
  %arrayidx73 = getelementptr i64, ptr %call8.i, i32 %i.1174
  %52 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx73, align 8
  call void %callback(ptr noundef %master, i64 noundef %53) #8
  %inc75 = add nuw nsw i32 %i.1174, 1
  %exitcond182.not = icmp eq i32 %inc75, %found.4
  br i1 %exitcond182.not, label %for.body72.for.end76_crit_edge, label %for.body72.for.body72_crit_edge

for.body72.for.body72_crit_edge:                  ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body72

for.body72.for.end76_crit_edge:                   ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end76

for.end76:                                        ; preds = %for.body72.for.end76_crit_edge, %search_out.for.end76_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end76, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_add_master_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ds_wait_status(ptr noundef %dev, ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  %count.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.ds_status, ptr %st, i32 0, i32 8
  %tobool.not.i = icmp eq ptr %st, null
  %udev.i = getelementptr inbounds %struct.ds_device, ptr %dev, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.ds_device, ptr %dev, i32 0, i32 3, i32 1
  %st_buf.i = getelementptr inbounds %struct.ds_device, ptr %dev, i32 0, i32 6
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %count.0 = phi i32 [ 0, %entry ], [ %inc, %land.rhs.do.body_crit_edge ]
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %status, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i) #8
  br i1 %tobool.not.i, label %do.body.if.end.i_crit_edge, label %if.then.i

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %1 = call ptr @memset(ptr %st, i32 0, i32 16)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body.if.end.i_crit_edge
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %count.i, align 4
  %3 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev.i, align 4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 8
  %shl.i.i = shl i32 %8, 8
  %shl1.i.i = shl i32 %6, 15
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %or2.i = or i32 %or.i.i, 1073741952
  %call3.i = call i32 @usb_interrupt_msg(ptr noundef %4, i32 noundef %or2.i, ptr noundef %st_buf.i, i32 noundef 32, ptr noundef nonnull %count.i, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.end.thread84, label %if.end8.i

if.end.thread84:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %10, i32 noundef %call3.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %count.0)
  %cmp1889 = icmp ugt i32 %count.0, 99
  br label %if.then23

if.end8.i:                                        ; preds = %if.end.i
  br i1 %tobool.not.i, label %if.end8.i.ds_recv_status.exit_crit_edge, label %land.lhs.true.i

if.end8.i.ds_recv_status.exit_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds_recv_status.exit

land.lhs.true.i:                                  ; preds = %if.end8.i
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %12)
  %cmp15.i = icmp ugt i32 %12, 15
  br i1 %cmp15.i, label %if.then16.i, label %land.lhs.true.i.ds_recv_status.exit_crit_edge

land.lhs.true.i.ds_recv_status.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds_recv_status.exit

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = call ptr @memcpy(ptr %st, ptr %st_buf.i, i32 16)
  br label %ds_recv_status.exit

ds_recv_status.exit:                              ; preds = %if.then16.i, %land.lhs.true.i.ds_recv_status.exit_crit_edge, %if.end8.i.ds_recv_status.exit_crit_edge
  %14 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #8
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %status, align 1
  %18 = and i8 %17, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp ne i8 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp slt i32 %15, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %ds_recv_status.exit.do.end_crit_edge, label %land.rhs

ds_recv_status.exit.do.end_crit_edge:             ; preds = %ds_recv_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.rhs:                                         ; preds = %ds_recv_status.exit
  %inc = add nuw nsw i32 %count.0, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %land.rhs.do.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %ds_recv_status.exit.do.end_crit_edge
  %cmp.lcssa = phi i1 [ %cmp, %ds_recv_status.exit.do.end_crit_edge ], [ false, %land.rhs.do.end_crit_edge ]
  %count.1 = phi i32 [ %count.0, %ds_recv_status.exit.do.end_crit_edge ], [ 100, %land.rhs.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %cmp5 = icmp slt i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %tobool11.not = icmp sgt i8 %17, -1
  %or.cond73 = select i1 %cmp5, i1 true, i1 %tobool11.not
  br i1 %or.cond73, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #12
  call fastcc void @ds_reset_device(ptr noundef %dev)
  br label %if.then23

if.end:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %cmp16 = icmp sgt i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %count.1)
  %cmp18 = icmp ugt i32 %count.1, 99
  %or.cond46 = select i1 %cmp16, i1 true, i1 %cmp18
  %or.cond47 = or i1 %cmp.lcssa, %or.cond46
  br i1 %or.cond47, label %if.end.if.then23_crit_edge, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.end.if.then23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

if.then23:                                        ; preds = %if.end.if.then23_crit_edge, %if.end.thread, %if.end.thread84
  %cmp1872 = phi i1 [ true, %if.end.thread ], [ %cmp18, %if.end.if.then23_crit_edge ], [ %cmp1889, %if.end.thread84 ]
  %cmp545970 = phi i1 [ %cmp.lcssa, %if.end.thread ], [ %cmp.lcssa, %if.end.if.then23_crit_edge ], [ true, %if.end.thread84 ]
  %retval.0.i536068 = phi i32 [ %15, %if.end.thread ], [ %15, %if.end.if.then23_crit_edge ], [ %call3.i, %if.end.thread84 ]
  call fastcc void @ds_dump_status(ptr noundef %dev, ptr noundef %st_buf.i, i32 noundef %retval.0.i536068)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end.if.end24_crit_edge
  %cmp1871 = phi i1 [ false, %if.end.if.end24_crit_edge ], [ %cmp1872, %if.then23 ]
  %cmp545969 = phi i1 [ false, %if.end.if.end24_crit_edge ], [ %cmp545970, %if.then23 ]
  %or.cond48 = select i1 %cmp1871, i1 true, i1 %cmp545969
  %retval.0 = sext i1 %or.cond48 to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ds_recv_data(ptr noundef %dev, ptr noundef %buf, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %count.i = alloca i32, align 4
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #8
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %count, align 4
  %udev = getelementptr inbounds %struct.ds_device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev, align 4
  %arrayidx = getelementptr %struct.ds_device, ptr %dev, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 8
  %shl.i = shl i32 %6, 8
  %shl1.i = shl i32 %4, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or2 = or i32 %or.i, -1073741696
  %call3 = call i32 @usb_bulk_msg(ptr noundef %2, i32 noundef %or2, ptr noundef %buf, i32 noundef %size, ptr noundef nonnull %count, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %8) #12
  %9 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 8
  %shl.i25 = shl i32 %14, 8
  %shl1.i26 = shl i32 %12, 15
  %or.i27 = or i32 %shl1.i26, %shl.i25
  %or13 = or i32 %or.i27, -1073741696
  %call14 = call i32 @usb_clear_halt(ptr noundef %10, i32 noundef %or13) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i) #8
  %15 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %count.i, align 4
  %16 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev, align 4
  %arrayidx.i = getelementptr %struct.ds_device, ptr %dev, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 8
  %shl.i.i = shl i32 %21, 8
  %shl1.i.i = shl i32 %19, 15
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %or2.i = or i32 %or.i.i, 1073741952
  %st_buf.i = getelementptr inbounds %struct.ds_device, ptr %dev, i32 0, i32 6
  %call3.i = call i32 @usb_interrupt_msg(ptr noundef %17, i32 noundef %or2.i, ptr noundef %st_buf.i, i32 noundef 32, ptr noundef nonnull %count.i, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end8.i

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %23, i32 noundef %call3.i) #12
  br label %ds_recv_status.exit

if.end8.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count.i, align 4
  call fastcc void @ds_dump_status(ptr noundef %dev, ptr noundef %st_buf.i, i32 noundef %25) #8
  br label %ds_recv_status.exit

ds_recv_status.exit:                              ; preds = %if.end8.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ds_recv_status.exit
  %retval.0 = phi i32 [ %call3, %ds_recv_status.exit ], [ %27, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ds_dump_status(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %buf, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ds_device, ptr %dev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %1, i32 noundef %count) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp208 = icmp sgt i32 %count, 0
  br i1 %cmp208, label %entry.do.end3_crit_edge, label %do.end9.thread

entry.do.end3_crit_edge:                          ; preds = %entry
  br label %do.end3

do.end9.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call11213 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #12
  br label %for.end112

do.end3:                                          ; preds = %do.end3.do.end3_crit_edge, %entry.do.end3_crit_edge
  %i.0209 = phi i32 [ %inc, %do.end3.do.end3_crit_edge ], [ 0, %entry.do.end3_crit_edge ]
  %arrayidx5 = getelementptr i8, ptr %buf, i32 %i.0209
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx5, align 1
  %conv = zext i8 %3 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %conv) #12
  %inc = add nuw nsw i32 %i.0209, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %do.end9, label %do.end3.do.end3_crit_edge

do.end3.do.end3_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end9:                                          ; preds = %do.end3
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %count)
  %cmp12 = icmp sgt i32 %count, 15
  br i1 %cmp12, label %if.end, label %do.end9.for.end112_crit_edge

do.end9.for.end112_crit_edge:                     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end112

if.end:                                           ; preds = %do.end9
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buf, align 1
  %conv.i = zext i8 %5 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.39, i32 noundef %conv.i) #12
  %arrayidx.i = getelementptr i8, ptr %buf, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i158 = zext i8 %7 to i32
  %call.i159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.40, i32 noundef %conv.i158) #12
  %arrayidx.i160 = getelementptr i8, ptr %buf, i32 2
  %8 = ptrtoint ptr %arrayidx.i160 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i160, align 1
  %conv.i161 = zext i8 %9 to i32
  %call.i162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.41, i32 noundef %conv.i161) #12
  %arrayidx.i163 = getelementptr i8, ptr %buf, i32 3
  %10 = ptrtoint ptr %arrayidx.i163 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i163, align 1
  %conv.i164 = zext i8 %11 to i32
  %call.i165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.42, i32 noundef %conv.i164) #12
  %arrayidx.i166 = getelementptr i8, ptr %buf, i32 4
  %12 = ptrtoint ptr %arrayidx.i166 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i166, align 1
  %conv.i167 = zext i8 %13 to i32
  %call.i168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.43, i32 noundef %conv.i167) #12
  %arrayidx.i169 = getelementptr i8, ptr %buf, i32 5
  %14 = ptrtoint ptr %arrayidx.i169 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i169, align 1
  %conv.i170 = zext i8 %15 to i32
  %call.i171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.44, i32 noundef %conv.i170) #12
  %arrayidx.i172 = getelementptr i8, ptr %buf, i32 6
  %16 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i172, align 1
  %conv.i173 = zext i8 %17 to i32
  %call.i174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.45, i32 noundef %conv.i173) #12
  %arrayidx.i175 = getelementptr i8, ptr %buf, i32 7
  %18 = ptrtoint ptr %arrayidx.i175 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i175, align 1
  %conv.i176 = zext i8 %19 to i32
  %call.i177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.46, i32 noundef %conv.i176) #12
  %arrayidx.i178 = getelementptr i8, ptr %buf, i32 8
  %20 = ptrtoint ptr %arrayidx.i178 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i178, align 1
  %conv.i179 = zext i8 %21 to i32
  %call.i180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.47, i32 noundef %conv.i179) #12
  %arrayidx.i181 = getelementptr i8, ptr %buf, i32 9
  %22 = ptrtoint ptr %arrayidx.i181 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i181, align 1
  %conv.i182 = zext i8 %23 to i32
  %call.i183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.48, i32 noundef %conv.i182) #12
  %arrayidx.i184 = getelementptr i8, ptr %buf, i32 10
  %24 = ptrtoint ptr %arrayidx.i184 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i184, align 1
  %conv.i185 = zext i8 %25 to i32
  %call.i186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.49, i32 noundef %conv.i185) #12
  %arrayidx.i187 = getelementptr i8, ptr %buf, i32 11
  %26 = ptrtoint ptr %arrayidx.i187 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i187, align 1
  %conv.i188 = zext i8 %27 to i32
  %call.i189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.50, i32 noundef %conv.i188) #12
  %arrayidx.i190 = getelementptr i8, ptr %buf, i32 12
  %28 = ptrtoint ptr %arrayidx.i190 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i190, align 1
  %conv.i191 = zext i8 %29 to i32
  %call.i192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.51, i32 noundef %conv.i191) #12
  %arrayidx.i193 = getelementptr i8, ptr %buf, i32 13
  %30 = ptrtoint ptr %arrayidx.i193 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i193, align 1
  %conv.i194 = zext i8 %31 to i32
  %call.i195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.52, i32 noundef %conv.i194) #12
  %arrayidx.i196 = getelementptr i8, ptr %buf, i32 14
  %32 = ptrtoint ptr %arrayidx.i196 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i196, align 1
  %conv.i197 = zext i8 %33 to i32
  %call.i198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.53, i32 noundef %conv.i197) #12
  %arrayidx.i199 = getelementptr i8, ptr %buf, i32 15
  %34 = ptrtoint ptr %arrayidx.i199 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i199, align 1
  %conv.i200 = zext i8 %35 to i32
  %call.i201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.53, i32 noundef %conv.i200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %count)
  %cmp15210.not = icmp eq i32 %count, 16
  br i1 %cmp15210.not, label %if.end.for.end112_crit_edge, label %if.end.for.body17_crit_edge

if.end.for.body17_crit_edge:                      ; preds = %if.end
  br label %for.body17

if.end.for.end112_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end112

for.body17:                                       ; preds = %for.inc110.for.body17_crit_edge, %if.end.for.body17_crit_edge
  %i.1211 = phi i32 [ %inc111, %for.inc110.for.body17_crit_edge ], [ 16, %if.end.for.body17_crit_edge ]
  %arrayidx18 = getelementptr i8, ptr %buf, i32 %i.1211
  %36 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -91, i8 %37)
  %cmp20 = icmp eq i8 %37, -91
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #10
  %call.i204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.54, i32 noundef 165) #12
  br label %for.inc110

if.end23:                                         ; preds = %for.body17
  %conv.i206 = zext i8 %37 to i32
  %call.i207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.55, i32 noundef %conv.i206) #12
  %38 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx18, align 1
  %40 = and i8 %39, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not = icmp eq i8 %40, 0
  br i1 %tobool.not, label %if.end23.if.end32_crit_edge, label %do.end29

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #12
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %if.end23.if.end32_crit_edge
  %41 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx18, align 1
  %43 = and i8 %42, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool36.not = icmp eq i8 %43, 0
  br i1 %tobool36.not, label %if.end32.if.end43_crit_edge, label %do.end40

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #12
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %if.end32.if.end43_crit_edge
  %44 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx18, align 1
  %46 = and i8 %45, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool47.not = icmp eq i8 %46, 0
  br i1 %tobool47.not, label %if.end43.if.end54_crit_edge, label %do.end51

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

do.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #12
  br label %if.end54

if.end54:                                         ; preds = %do.end51, %if.end43.if.end54_crit_edge
  %47 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx18, align 1
  %49 = and i8 %48, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool58.not = icmp eq i8 %49, 0
  br i1 %tobool58.not, label %if.end54.if.end65_crit_edge, label %do.end62

if.end54.if.end65_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

do.end62:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #12
  br label %if.end65

if.end65:                                         ; preds = %do.end62, %if.end54.if.end65_crit_edge
  %50 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx18, align 1
  %52 = and i8 %51, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool69.not = icmp eq i8 %52, 0
  br i1 %tobool69.not, label %if.end65.if.end76_crit_edge, label %do.end73

if.end65.if.end76_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

do.end73:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #12
  br label %if.end76

if.end76:                                         ; preds = %do.end73, %if.end65.if.end76_crit_edge
  %53 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx18, align 1
  %55 = and i8 %54, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool80.not = icmp eq i8 %55, 0
  br i1 %tobool80.not, label %if.end76.if.end87_crit_edge, label %do.end84

if.end76.if.end87_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

do.end84:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #12
  br label %if.end87

if.end87:                                         ; preds = %do.end84, %if.end76.if.end87_crit_edge
  %56 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx18, align 1
  %58 = and i8 %57, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool91.not = icmp eq i8 %58, 0
  br i1 %tobool91.not, label %if.end87.if.end98_crit_edge, label %do.end95

if.end87.if.end98_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

do.end95:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #12
  %59 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %59)
  %.pr = load i8, ptr %arrayidx18, align 1
  br label %if.end98

if.end98:                                         ; preds = %do.end95, %if.end87.if.end98_crit_edge
  %60 = phi i8 [ %.pr, %do.end95 ], [ %57, %if.end87.if.end98_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %60)
  %tobool102.not = icmp sgt i8 %60, -1
  br i1 %tobool102.not, label %if.end98.for.inc110_crit_edge, label %do.end106

if.end98.for.inc110_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc110

do.end106:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #12
  br label %for.inc110

for.inc110:                                       ; preds = %do.end106, %if.end98.for.inc110_crit_edge, %if.then22
  %inc111 = add nuw nsw i32 %i.1211, 1
  %exitcond212.not = icmp eq i32 %inc111, %count
  br i1 %exitcond212.not, label %for.inc110.for.end112_crit_edge, label %for.inc110.for.body17_crit_edge

for.inc110.for.body17_crit_edge:                  ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17

for.inc110.for.end112_crit_edge:                  ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end112

for.end112:                                       ; preds = %for.inc110.for.end112_crit_edge, %if.end.for.end112_crit_edge, %do.end9.for.end112_crit_edge, %do.end9.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interrupt_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_remove_master_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !168, !169, !171, !172, !173, !175}
!llvm.module.flags = !{!177, !178, !179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !{ptr @__initcall__kmod_ds2490__232_1102_ds_driver_init6, !1, !"__initcall__kmod_ds2490__232_1102_ds_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/w1/masters/ds2490.c", i32 1102, i32 1}
!2 = !{ptr @__exitcall_ds_driver_exit, !1, !"__exitcall_ds_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author233, !4, !"__UNIQUE_ID_author233", i1 false, i1 false}
!4 = !{!"../drivers/w1/masters/ds2490.c", i32 1104, i32 1}
!5 = !{ptr @__UNIQUE_ID_description234, !6, !"__UNIQUE_ID_description234", i1 false, i1 false}
!6 = !{!"../drivers/w1/masters/ds2490.c", i32 1105, i32 1}
!7 = !{ptr @__UNIQUE_ID_file235, !8, !"__UNIQUE_ID_file235", i1 false, i1 false}
!8 = !{!"../drivers/w1/masters/ds2490.c", i32 1106, i32 1}
!9 = !{ptr @__UNIQUE_ID_license236, !8, !"__UNIQUE_ID_license236", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/w1/masters/ds2490.c", i32 1097, i32 11}
!13 = !{ptr @ds_driver, !14, !"ds_driver", i1 false, i1 false}
!14 = !{!"../drivers/w1/masters/ds2490.c", i32 1096, i32 26}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/w1/masters/ds2490.c", i32 998, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ds_probe._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @ds_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/w1/masters/ds2490.c", i32 1012, i32 3}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ds_probe._entry.5, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @ds_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/w1/masters/ds2490.c", i32 1022, i32 3}
!29 = !{ptr @ds_probe._entry.10, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ds_probe._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/w1/masters/ds2490.c", i32 1030, i32 3}
!33 = !{ptr @ds_probe._entry.13, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ds_probe._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/w1/masters/ds2490.c", i32 307, i32 3}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ds_reset_device._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ds_reset_device._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/w1/masters/ds2490.c", i32 313, i32 4}
!42 = !{ptr @ds_reset_device._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ds_reset_device._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/w1/masters/ds2490.c", i32 175, i32 3}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ds_send_control_cmd._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @ds_send_control_cmd._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/w1/masters/ds2490.c", i32 190, i32 3}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ds_send_control_mode._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ds_send_control_mode._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/w1/masters/ds2490.c", i32 205, i32 3}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ds_send_control._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ds_send_control._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/w1/masters/ds2490.c", i32 442, i32 3}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ds_wait_status._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @ds_wait_status._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/w1/masters/ds2490.c", i32 286, i32 3}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ds_recv_status._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @ds_recv_status._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/w1/masters/ds2490.c", i32 222, i32 2}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ds_dump_status._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @ds_dump_status._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/w1/masters/ds2490.c", i32 224, i32 3}
!76 = !{ptr @ds_dump_status._entry.33, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ds_dump_status._entry_ptr.35, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/w1/masters/ds2490.c", i32 225, i32 2}
!80 = !{ptr @ds_dump_status._entry.36, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ds_dump_status._entry_ptr.38, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/w1/masters/ds2490.c", i32 228, i32 21}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/w1/masters/ds2490.c", i32 229, i32 21}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/w1/masters/ds2490.c", i32 230, i32 21}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/w1/masters/ds2490.c", i32 231, i32 21}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/w1/masters/ds2490.c", i32 232, i32 21}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/w1/masters/ds2490.c", i32 233, i32 21}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/w1/masters/ds2490.c", i32 234, i32 21}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/w1/masters/ds2490.c", i32 236, i32 21}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/w1/masters/ds2490.c", i32 237, i32 21}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/w1/masters/ds2490.c", i32 238, i32 21}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/w1/masters/ds2490.c", i32 239, i32 21}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/w1/masters/ds2490.c", i32 240, i32 21}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/w1/masters/ds2490.c", i32 241, i32 21}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/w1/masters/ds2490.c", i32 242, i32 21}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/w1/masters/ds2490.c", i32 243, i32 21}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/w1/masters/ds2490.c", i32 248, i32 22}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/w1/masters/ds2490.c", i32 251, i32 21}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/w1/masters/ds2490.c", i32 253, i32 4}
!118 = !{ptr @ds_dump_status._entry.56, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ds_dump_status._entry_ptr.58, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/w1/masters/ds2490.c", i32 255, i32 4}
!122 = !{ptr @ds_dump_status._entry.59, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @ds_dump_status._entry_ptr.61, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/w1/masters/ds2490.c", i32 257, i32 4}
!126 = !{ptr @ds_dump_status._entry.62, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @ds_dump_status._entry_ptr.64, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/w1/masters/ds2490.c", i32 259, i32 4}
!130 = !{ptr @ds_dump_status._entry.65, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @ds_dump_status._entry_ptr.67, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/w1/masters/ds2490.c", i32 261, i32 4}
!134 = !{ptr @ds_dump_status._entry.68, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @ds_dump_status._entry_ptr.70, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/w1/masters/ds2490.c", i32 263, i32 4}
!138 = !{ptr @ds_dump_status._entry.71, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @ds_dump_status._entry_ptr.73, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/w1/masters/ds2490.c", i32 265, i32 4}
!142 = !{ptr @ds_dump_status._entry.74, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @ds_dump_status._entry_ptr.76, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.78, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/w1/masters/ds2490.c", i32 267, i32 4}
!146 = !{ptr @ds_dump_status._entry.77, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @ds_dump_status._entry_ptr.79, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.80, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/w1/masters/ds2490.c", i32 215, i32 2}
!150 = !{ptr @.str.81, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @ds_print_msg._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @ds_print_msg._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.82, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/w1/masters/ds2490.c", i32 334, i32 3}
!155 = !{ptr @.str.83, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @ds_recv_data._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @ds_recv_data._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.84, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/w1/masters/ds2490.c", i32 360, i32 3}
!160 = !{ptr @.str.85, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @ds_send_data._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @ds_send_data._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.86, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/w1/masters/ds2490.c", i32 767, i32 3}
!165 = !{ptr @.str.87, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.88, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @ds9490r_search._entry, !164, !"_entry", i1 false, i1 false}
!168 = !{ptr @ds9490r_search._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.89, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/w1/masters/ds2490.c", i32 166, i32 8}
!171 = !{ptr @.str.90, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @ds_mutex, !170, !"ds_mutex", i1 false, i1 false}
!173 = !{ptr @ds_devices, !174, !"ds_devices", i1 false, i1 false}
!174 = !{!"../drivers/w1/masters/ds2490.c", i32 165, i32 8}
!175 = !{ptr @ds_id_table, !176, !"ds_id_table", i1 false, i1 false}
!176 = !{!"../drivers/w1/masters/ds2490.c", i32 1090, i32 35}
!177 = !{i32 1, !"wchar_size", i32 2}
!178 = !{i32 1, !"min_enum_size", i32 4}
!179 = !{i32 8, !"branch-target-enforcement", i32 0}
!180 = !{i32 8, !"sign-return-address", i32 0}
!181 = !{i32 8, !"sign-return-address-all", i32 0}
!182 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!183 = !{i32 7, !"uwtable", i32 1}
!184 = !{i32 7, !"frame-pointer", i32 2}
!185 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!186 = !{!"branch_weights", i32 1, i32 2000}
