; ModuleID = '/llk/IR_all_yes/drivers/media/rc/redrat3.c_pt.bc'
source_filename = "../drivers/media/rc/redrat3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
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
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.redrat3_dev = type { ptr, ptr, %struct.led_classdev, %struct.atomic_t, %struct.usb_ctrlrequest, ptr, i8, i8, %struct.usb_ctrlrequest, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, %struct.redrat3_irdata, i16, i32, [64 x i8], [64 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.redrat3_irdata = type <{ %struct.redrat3_header, i32, i16, i16, i8, i8, i16, i16, i8, [255 x i16], [512 x i8] }>
%struct.redrat3_header = type { i16, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.redrat3_error = type { %struct.redrat3_header, i16 }
%struct.ir_raw_event = type { %union.anon.73, i8, i8 }
%union.anon.73 = type { i32 }

@__param_str_length_fuzz = internal constant [20 x i8] c"redrat3.length_fuzz\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@length_fuzz = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_length_fuzz = internal constant %struct.kernel_param { ptr @__param_str_length_fuzz, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @length_fuzz } }, section "__param", align 4
@__UNIQUE_ID_length_fuzztype237 = internal constant [34 x i8] c"redrat3.parmtype=length_fuzz:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_length_fuzz238 = internal constant [45 x i8] c"redrat3.parm=length_fuzz:Length Fuzz (0-127)\00", section ".modinfo", align 1
@__param_str_minimum_pause = internal constant [22 x i8] c"redrat3.minimum_pause\00", align 1
@minimum_pause = internal global { i32, [28 x i8] } { i32 18, [28 x i8] zeroinitializer }, align 32
@__param_minimum_pause = internal constant %struct.kernel_param { ptr @__param_str_minimum_pause, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @minimum_pause } }, section "__param", align 4
@__UNIQUE_ID_minimum_pausetype239 = internal constant [36 x i8] c"redrat3.parmtype=minimum_pause:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_minimum_pause240 = internal constant [54 x i8] c"redrat3.parm=minimum_pause:Minimum Pause in ms (2-30)\00", section ".modinfo", align 1
@__param_str_periods_measure_carrier = internal constant [32 x i8] c"redrat3.periods_measure_carrier\00", align 1
@periods_measure_carrier = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__param_periods_measure_carrier = internal constant %struct.kernel_param { ptr @__param_str_periods_measure_carrier, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @periods_measure_carrier } }, section "__param", align 4
@__UNIQUE_ID_periods_measure_carriertype241 = internal constant [46 x i8] c"redrat3.parmtype=periods_measure_carrier:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_periods_measure_carrier242 = internal constant [82 x i8] c"redrat3.parm=periods_measure_carrier:Number of Periods to Measure Carrier (1-255)\00", section ".modinfo", align 1
@__initcall__kmod_redrat3__266_1176_redrat3_dev_driver_init6 = internal global ptr @redrat3_dev_driver_init, section ".initcall6.init", align 4
@redrat3_dev_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @redrat3_dev_probe, ptr @redrat3_dev_disconnect, ptr null, ptr @redrat3_dev_suspend, ptr @redrat3_dev_resume, ptr @redrat3_dev_resume, ptr null, ptr null, ptr @redrat3_dev_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_redrat3_dev_driver_exit = internal global ptr @redrat3_dev_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description267 = internal constant [54 x i8] c"redrat3.description=RedRat3 USB IR Transceiver Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author268 = internal constant [47 x i8] c"redrat3.author=Jarod Wilson <jarod@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author269 = internal constant [40 x i8] c"redrat3.author=The Dweller, Stephen Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_file270 = internal constant [38 x i8] c"redrat3.file=drivers/media/rc/redrat3\00", section ".modinfo", align 1
@__UNIQUE_ID_license271 = internal constant [20 x i8] c"redrat3.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"redrat3\00", [24 x i8] zeroinitializer }, align 32
@redrat3_dev_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 4394, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4394, i16 5, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@redrat3_dev_probe.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"redrat3_dev_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/rc/redrat3.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"found bulk-in endpoint at 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@redrat3_dev_probe.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"found bulk-out endpoint at 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@redrat3_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 1019, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't find all endpoints\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@redrat3_dev_probe._entry_ptr = internal global ptr @redrat3_dev_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"redrat3:red:feedback\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rc-feedback\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@redrat3_handle_async._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 700, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to submit learning urb: %d\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"redrat3_handle_async\00", [43 x i8] zeroinitializer }, align 32
@redrat3_handle_async._entry_ptr = internal global ptr @redrat3_handle_async._entry, section ".printk_index", align 4
@redrat3_handle_async._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 708, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to resubmit urb: %d\00", [37 x i8] zeroinitializer }, align 32
@redrat3_handle_async._entry_ptr.14 = internal global ptr @redrat3_handle_async._entry.12, section ".printk_index", align 4
@redrat3_handle_async._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 720, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error: urb status = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@redrat3_handle_async._entry_ptr.18 = internal global ptr @redrat3_handle_async._entry.15, section ".printk_index", align 4
@redrat3_get_ir_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 664, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error: no packet data read\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"redrat3_get_ir_data\00", [44 x i8] zeroinitializer }, align 32
@redrat3_get_ir_data._entry_ptr = internal global ptr @redrat3_get_ir_data._entry, section ".printk_index", align 4
@redrat3_get_ir_data.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"discarding non-signal data packet (type 0x%02x)\0A\00", [47 x i8] zeroinitializer }, align 32
@redrat3_read_packet_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 608, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"packet length %u too large\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"redrat3_read_packet_start\00", [38 x i8] zeroinitializer }, align 32
@redrat3_read_packet_start._entry_ptr = internal global ptr @redrat3_read_packet_start._entry, section ".printk_index", align 4
@redrat3_read_packet_start.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bytes_read %d, pktlen %d\0A\00", [38 x i8] zeroinitializer }, align 32
@redrat3_read_packet_start.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ignoring packet with type 0x%02x, len of %d, 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@redrat3_dump_fw_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 239, ptr @.str.28, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fw error code 0x%02x: \00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"redrat3_dump_fw_error\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@redrat3_dump_fw_error._entry_ptr = internal global ptr @redrat3_dump_fw_error._entry, section ".printk_index", align 4
@redrat3_dump_fw_error._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01cNo Error\0A\00", [20 x i8] zeroinitializer }, align 32
@redrat3_dump_fw_error._entry_ptr.31 = internal global ptr @redrat3_dump_fw_error._entry.29, section ".printk_index", align 4
@redrat3_dump_fw_error._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.27, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\01cInitial signal pulse not long enough to measure carrier frequency\0A\00", [59 x i8] zeroinitializer }, align 32
@redrat3_dump_fw_error._entry_ptr.34 = internal global ptr @redrat3_dump_fw_error._entry.32, section ".printk_index", align 4
@redrat3_dump_fw_error._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.27, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\01cNot enough length values allocated for signal\0A\00", [47 x i8] zeroinitializer }, align 32
@redrat3_dump_fw_error._entry_ptr.37 = internal global ptr @redrat3_dump_fw_error._entry.35, section ".printk_index", align 4
@redrat3_dump_fw_error._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.27, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\01cNot enough memory allocated for signal data\0A\00", [49 x i8] zeroinitializer }, align 32
@redrat3_dump_fw_error._entry_ptr.40 = internal global ptr @redrat3_dump_fw_error._entry.38, section ".printk_index", align 4
@redrat3_dump_fw_error._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.27, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\01cToo many signal repeats\0A\00", [37 x i8] zeroinitializer }, align 32
@redrat3_dump_fw_error._entry_ptr.43 = internal global ptr @redrat3_dump_fw_error._entry.41, section ".printk_index", align 4
@redrat3_dump_fw_error._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.27, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\01cInsufficient memory available for IR signal data memory allocation\0A\00", [58 x i8] zeroinitializer }, align 32
@redrat3_dump_fw_error._entry_ptr.46 = internal global ptr @redrat3_dump_fw_error._entry.44, section ".printk_index", align 4
@redrat3_dump_fw_error._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.27, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\01cInsufficient memory available for IrDa signal data memory allocation\0A\00", [56 x i8] zeroinitializer }, align 32
@redrat3_dump_fw_error._entry_ptr.49 = internal global ptr @redrat3_dump_fw_error._entry.47, section ".printk_index", align 4
@redrat3_dump_fw_error._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.27, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\01cInsufficient memory available for bulk transfer structure\0A\00", [35 x i8] zeroinitializer }, align 32
@redrat3_dump_fw_error._entry_ptr.52 = internal global ptr @redrat3_dump_fw_error._entry.50, section ".printk_index", align 4
@redrat3_dump_fw_error._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.27, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\01cSignal capture has been terminated\0A\00", [58 x i8] zeroinitializer }, align 32
@redrat3_dump_fw_error._entry_ptr.55 = internal global ptr @redrat3_dump_fw_error._entry.53, section ".printk_index", align 4
@redrat3_dump_fw_error._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.27, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\01cAttempt to set/get and unknown signal I/O algorithm parameter\0A\00", [63 x i8] zeroinitializer }, align 32
@redrat3_dump_fw_error._entry_ptr.58 = internal global ptr @redrat3_dump_fw_error._entry.56, section ".printk_index", align 4
@redrat3_dump_fw_error._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.27, ptr @.str.2, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\01cSignal capture already started\0A\00", [62 x i8] zeroinitializer }, align 32
@redrat3_dump_fw_error._entry_ptr.61 = internal global ptr @redrat3_dump_fw_error._entry.59, section ".printk_index", align 4
@redrat3_dump_fw_error._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.27, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\01cUnknown Error\0A\00", [47 x i8] zeroinitializer }, align 32
@redrat3_dump_fw_error._entry_ptr.64 = internal global ptr @redrat3_dump_fw_error._entry.62, section ".printk_index", align 4
@redrat3_read_packet_continue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 640, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"too much data for packet\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"redrat3_read_packet_continue\00", [35 x i8] zeroinitializer }, align 32
@redrat3_read_packet_continue._entry_ptr = internal global ptr @redrat3_read_packet_continue._entry, section ".printk_index", align 4
@redrat3_read_packet_continue.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.24, i8 0, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@redrat3_process_ir_data.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"redrat3_process_ir_data\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Got mod_freq of %u\0A\00", [44 x i8] zeroinitializer }, align 32
@redrat3_process_ir_data.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.69, i8 0, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"storing %s with duration %d (i: %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pulse\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@redrat3_process_ir_data.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.72, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"storing trailing timeout with duration %d\0A\00", [53 x i8] zeroinitializer }, align 32
@redrat3_process_ir_data.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.73, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"calling ir_raw_event_handle\0A\00", [35 x i8] zeroinitializer }, align 32
@redrat3_reset.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 0, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"redrat3_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reset returned 0x%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@redrat3_reset.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.76, i8 0, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"set ir parm len fuzz %d rc 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@redrat3_reset.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.77, i8 0, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"set ir parm min pause %d rc 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@redrat3_reset.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.78, i8 0, i8 -115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"set ir parm periods measure carrier %d rc 0x%02x\00", [47 x i8] zeroinitializer }, align 32
@redrat3_reset.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.79, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"set ir parm max lens %d rc 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@redrat3_get_firmware_rev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 591, ptr @.str.28, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Firmware rev: %s\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"redrat3_get_firmware_rev\00", [39 x i8] zeroinitializer }, align 32
@redrat3_get_firmware_rev._entry_ptr = internal global ptr @redrat3_get_firmware_rev._entry, section ".printk_index", align 4
@redrat3_get_firmware_rev._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 593, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Problem fetching firmware ID\0A\00", [34 x i8] zeroinitializer }, align 32
@redrat3_get_firmware_rev._entry_ptr.84 = internal global ptr @redrat3_get_firmware_rev._entry.82, section ".printk_index", align 4
@redrat3_learn_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 899, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error: learn urb status = %d\00", [35 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"redrat3_learn_complete\00", [41 x i8] zeroinitializer }, align 32
@redrat3_learn_complete._entry_ptr = internal global ptr @redrat3_learn_complete._entry, section ".printk_index", align 4
@redrat3_led_complete.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.16, i8 0, i8 -27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"redrat3_led_complete\00", [43 x i8] zeroinitializer }, align 32
@redrat3_brightness_set.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 0, i8 -41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"redrat3_brightness_set\00", [41 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: unexpected ret of %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RedRat3%s Infrared Remote Transceiver\00", [58 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-II\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-hauppauge\00", [19 x i8] zeroinitializer }, align 32
@redrat3_init_rc_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 962, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"remote dev registration failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"redrat3_init_rc_dev\00", [44 x i8] zeroinitializer }, align 32
@redrat3_init_rc_dev._entry_ptr = internal global ptr @redrat3_init_rc_dev._entry, section ".printk_index", align 4
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@redrat3_get_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 485, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to read timeout from hardware\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"redrat3_get_timeout\00", [44 x i8] zeroinitializer }, align 32
@redrat3_get_timeout._entry_ptr = internal global ptr @redrat3_get_timeout._entry, section ".printk_index", align 4
@redrat3_get_timeout.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.2, ptr @.str.99, i8 0, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Got timeout of %d ms\0A\00", [42 x i8] zeroinitializer }, align 32
@redrat3_set_timeout.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.101, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"redrat3_set_timeout\00", [44 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"set ir parm timeout %d ret 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@redrat3_transmit_ir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 761, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: transmitter already in use\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"redrat3_transmit_ir\00", [44 x i8] zeroinitializer }, align 32
@redrat3_transmit_ir._entry_ptr = internal global ptr @redrat3_transmit_ir._entry, section ".printk_index", align 4
@redrat3_transmit_ir._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.2, i32 787, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"transmit period of %uus truncated to %uus\0A\00", [53 x i8] zeroinitializer }, align 32
@redrat3_transmit_ir._entry_ptr.106 = internal global ptr @redrat3_transmit_ir._entry.104, section ".printk_index", align 4
@redrat3_transmit_ir.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.107, i8 0, i8 -57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"txbuf[%d]=%u, pos %d, enc %u\0A\00", [34 x i8] zeroinitializer }, align 32
@redrat3_transmit_ir.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.108, i8 0, i8 -49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sent %d bytes, (ret %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@redrat3_transmit_ir._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.103, ptr @.str.2, i32 838, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error: control msg send failed, rc %d\0A\00", [57 x i8] zeroinitializer }, align 32
@redrat3_transmit_ir._entry_ptr.111 = internal global ptr @redrat3_transmit_ir._entry.109, section ".printk_index", align 4
@redrat3_set_tx_carrier.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.2, ptr @.str.113, i8 0, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"redrat3_set_tx_carrier\00", [41 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Setting modulation frequency to %u\00", [61 x i8] zeroinitializer }, align 32
@redrat3_wideband_receiver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.114, ptr @.str.2, i32 879, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"redrat3_wideband_receiver\00", [38 x i8] zeroinitializer }, align 32
@redrat3_wideband_receiver._entry_ptr = internal global ptr @redrat3_wideband_receiver._entry, section ".printk_index", align 4
@redrat3_enable_detector.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.115, ptr @.str.2, ptr @.str.89, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"redrat3_enable_detector\00", [40 x i8] zeroinitializer }, align 32
@redrat3_enable_detector._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.115, ptr @.str.2, i32 435, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: detector status: %d, should be 1\0A\00", [58 x i8] zeroinitializer }, align 32
@redrat3_enable_detector._entry_ptr = internal global ptr @redrat3_enable_detector._entry, section ".printk_index", align 4
@redrat3_enable_detector._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.115, ptr @.str.2, i32 441, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"narrow band urb failed: %d\00", [37 x i8] zeroinitializer }, align 32
@redrat3_enable_detector._entry_ptr.119 = internal global ptr @redrat3_enable_detector._entry.117, section ".printk_index", align 4
@redrat3_enable_detector._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.115, ptr @.str.2, i32 447, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wide band urb failed: %d\00", [39 x i8] zeroinitializer }, align 32
@redrat3_enable_detector._entry_ptr.122 = internal global ptr @redrat3_enable_detector._entry.120, section ".printk_index", align 4
@redrat3_send_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.2, i32 411, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Error sending rr3 cmd res %d, data %d\00", [54 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"redrat3_send_cmd\00", [47 x i8] zeroinitializer }, align 32
@redrat3_send_cmd._entry_ptr = internal global ptr @redrat3_send_cmd._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.125 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.126 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 32]
@__sancov_gen_cov_switch_values.128 = internal global [13 x i64] [i64 11, i64 16, i64 0, i64 32, i64 33, i64 34, i64 35, i64 40, i64 41, i64 48, i64 64, i64 65, i64 66]
@___asan_gen_.129 = private unnamed_addr constant [12 x i8] c"length_fuzz\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 125, i32 12 }
@___asan_gen_.132 = private unnamed_addr constant [14 x i8] c"minimum_pause\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 136, i32 12 }
@___asan_gen_.135 = private unnamed_addr constant [24 x i8] c"periods_measure_carrier\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 147, i32 12 }
@___asan_gen_.138 = private unnamed_addr constant [19 x i8] c"redrat3_dev_driver\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1166, i32 26 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1176, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant [18 x i8] c"redrat3_dev_table\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 179, i32 35 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 999, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1012, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1019, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1100, i32 18 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1101, i32 29 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 699, i32 5 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 707, i32 5 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 720, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 664, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 679, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 608, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 624, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 629, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 239, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 243, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 248, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 251, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 254, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 257, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 260, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 263, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 268, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 277, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 280, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 283, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 287, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 640, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 349, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 376, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 385, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 389, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 546, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 552, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 558, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 564, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 571, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 591, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 593, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 899, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 918, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 861, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 938, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 939, i32 38 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 939, i32 46 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 958, i32 17 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 962, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 912, i32 31 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 485, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 489, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 514, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 761, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 786, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 795, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 829, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 838, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 739, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 878, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 429, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 434, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 441, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 447, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.501 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.502 = private constant [30 x i8] c"../drivers/media/rc/redrat3.c\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 410, i32 3 }
@llvm.compiler.used = appending global [175 x ptr] [ptr @__UNIQUE_ID_author268, ptr @__UNIQUE_ID_author269, ptr @__UNIQUE_ID_description267, ptr @__UNIQUE_ID_file270, ptr @__UNIQUE_ID_length_fuzz238, ptr @__UNIQUE_ID_length_fuzztype237, ptr @__UNIQUE_ID_license271, ptr @__UNIQUE_ID_minimum_pause240, ptr @__UNIQUE_ID_minimum_pausetype239, ptr @__UNIQUE_ID_periods_measure_carrier242, ptr @__UNIQUE_ID_periods_measure_carriertype241, ptr @__exitcall_redrat3_dev_driver_exit, ptr @__initcall__kmod_redrat3__266_1176_redrat3_dev_driver_init6, ptr @__param_length_fuzz, ptr @__param_minimum_pause, ptr @__param_periods_measure_carrier, ptr @redrat3_dev_driver_exit, ptr @redrat3_dev_probe._entry, ptr @redrat3_dev_probe._entry_ptr, ptr @redrat3_dump_fw_error._entry, ptr @redrat3_dump_fw_error._entry.29, ptr @redrat3_dump_fw_error._entry.32, ptr @redrat3_dump_fw_error._entry.35, ptr @redrat3_dump_fw_error._entry.38, ptr @redrat3_dump_fw_error._entry.41, ptr @redrat3_dump_fw_error._entry.44, ptr @redrat3_dump_fw_error._entry.47, ptr @redrat3_dump_fw_error._entry.50, ptr @redrat3_dump_fw_error._entry.53, ptr @redrat3_dump_fw_error._entry.56, ptr @redrat3_dump_fw_error._entry.59, ptr @redrat3_dump_fw_error._entry.62, ptr @redrat3_dump_fw_error._entry_ptr, ptr @redrat3_dump_fw_error._entry_ptr.31, ptr @redrat3_dump_fw_error._entry_ptr.34, ptr @redrat3_dump_fw_error._entry_ptr.37, ptr @redrat3_dump_fw_error._entry_ptr.40, ptr @redrat3_dump_fw_error._entry_ptr.43, ptr @redrat3_dump_fw_error._entry_ptr.46, ptr @redrat3_dump_fw_error._entry_ptr.49, ptr @redrat3_dump_fw_error._entry_ptr.52, ptr @redrat3_dump_fw_error._entry_ptr.55, ptr @redrat3_dump_fw_error._entry_ptr.58, ptr @redrat3_dump_fw_error._entry_ptr.61, ptr @redrat3_dump_fw_error._entry_ptr.64, ptr @redrat3_enable_detector._entry, ptr @redrat3_enable_detector._entry.117, ptr @redrat3_enable_detector._entry.120, ptr @redrat3_enable_detector._entry_ptr, ptr @redrat3_enable_detector._entry_ptr.119, ptr @redrat3_enable_detector._entry_ptr.122, ptr @redrat3_get_firmware_rev._entry, ptr @redrat3_get_firmware_rev._entry.82, ptr @redrat3_get_firmware_rev._entry_ptr, ptr @redrat3_get_firmware_rev._entry_ptr.84, ptr @redrat3_get_ir_data._entry, ptr @redrat3_get_ir_data._entry_ptr, ptr @redrat3_get_timeout._entry, ptr @redrat3_get_timeout._entry_ptr, ptr @redrat3_handle_async._entry, ptr @redrat3_handle_async._entry.12, ptr @redrat3_handle_async._entry.15, ptr @redrat3_handle_async._entry_ptr, ptr @redrat3_handle_async._entry_ptr.14, ptr @redrat3_handle_async._entry_ptr.18, ptr @redrat3_init_rc_dev._entry, ptr @redrat3_init_rc_dev._entry_ptr, ptr @redrat3_learn_complete._entry, ptr @redrat3_learn_complete._entry_ptr, ptr @redrat3_read_packet_continue._entry, ptr @redrat3_read_packet_continue._entry_ptr, ptr @redrat3_read_packet_start._entry, ptr @redrat3_read_packet_start._entry_ptr, ptr @redrat3_send_cmd._entry, ptr @redrat3_send_cmd._entry_ptr, ptr @redrat3_transmit_ir._entry, ptr @redrat3_transmit_ir._entry.104, ptr @redrat3_transmit_ir._entry.109, ptr @redrat3_transmit_ir._entry_ptr, ptr @redrat3_transmit_ir._entry_ptr.106, ptr @redrat3_transmit_ir._entry_ptr.111, ptr @redrat3_wideband_receiver._entry, ptr @redrat3_wideband_receiver._entry_ptr, ptr @length_fuzz, ptr @minimum_pause, ptr @periods_measure_carrier, ptr @redrat3_dev_driver, ptr @.str, ptr @redrat3_dev_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.123, ptr @.str.124], section "llvm.metadata"
@0 = internal global [125 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @length_fuzz to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minimum_pause to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periods_measure_carrier to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_dev_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_dev_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_handle_async._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_handle_async._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_handle_async._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_get_ir_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_read_packet_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_dump_fw_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_dump_fw_error._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_dump_fw_error._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_dump_fw_error._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_dump_fw_error._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_dump_fw_error._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_dump_fw_error._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_dump_fw_error._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_dump_fw_error._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_dump_fw_error._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_dump_fw_error._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_dump_fw_error._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_dump_fw_error._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_read_packet_continue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_get_firmware_rev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_get_firmware_rev._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_learn_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_init_rc_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_get_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_transmit_ir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_transmit_ir._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_transmit_ir._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_wideband_receiver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_enable_detector._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_enable_detector._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_enable_detector._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redrat3_send_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @redrat3_dev_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @redrat3_dev_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @redrat3_dev_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @redrat3_dev_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @redrat3_dev_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp324.not = icmp eq i8 %5, 0
  br i1 %cmp324.not, label %entry.do.end70_crit_edge, label %for.body.lr.ph

entry.do.end70_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end70

for.body.lr.ph:                                   ; preds = %entry
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0328 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ep_out.0327 = phi ptr [ null, %for.body.lr.ph ], [ %ep_out.1, %for.inc.for.body_crit_edge ]
  %ep_wide.0326 = phi ptr [ null, %for.body.lr.ph ], [ %ep_wide.1, %for.inc.for.body_crit_edge ]
  %ep_narrow.0325 = phi ptr [ null, %for.body.lr.ph ], [ %ep_narrow.2, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %endpoint, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %7, i32 %i.0328
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %8 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bEndpointAddress, align 1
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %10 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bmAttributes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp6 = icmp slt i8 %9, 0
  %12 = and i8 %11, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp10 = icmp eq i8 %12, 2
  %or.cond = select i1 %cmp6, i1 %cmp10, i1 false
  br i1 %or.cond, label %do.body, label %for.body.if.end30_crit_edge

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_dev_probe.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_dev_probe, %if.then15)) #9
          to label %do.end [label %if.then15], !srcloc !288

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bEndpointAddress, align 1
  %conv17 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_dev_probe.__UNIQUE_ID_ddebug264, ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %conv17) #9
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  %15 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bEndpointAddress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %16)
  %cmp20 = icmp eq i8 %16, -126
  %spec.select = select i1 %cmp20, ptr %arrayidx, ptr %ep_narrow.0325
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %16)
  %cmp26 = icmp eq i8 %16, -127
  %spec.select283 = select i1 %cmp26, ptr %arrayidx, ptr %ep_wide.0326
  br label %if.end30

if.end30:                                         ; preds = %do.end, %for.body.if.end30_crit_edge
  %ep_narrow.2 = phi ptr [ %ep_narrow.0325, %for.body.if.end30_crit_edge ], [ %spec.select, %do.end ]
  %ep_wide.1 = phi ptr [ %ep_wide.0326, %for.body.if.end30_crit_edge ], [ %spec.select283, %do.end ]
  %cmp31 = icmp eq ptr %ep_out.0327, null
  br i1 %cmp31, label %land.lhs.true33, label %if.end30.for.inc_crit_edge

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true33:                                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp36 = icmp sgt i8 %9, -1
  %or.cond280 = select i1 %cmp36, i1 %cmp10, i1 false
  br i1 %or.cond280, label %do.body44, label %land.lhs.true33.for.inc_crit_edge

land.lhs.true33.for.inc_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body44:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_dev_probe.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_dev_probe, %if.then56)) #9
          to label %for.inc [label %if.then56], !srcloc !288

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bEndpointAddress, align 1
  %conv58 = zext i8 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_dev_probe.__UNIQUE_ID_ddebug265, ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %conv58) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then56, %do.body44, %land.lhs.true33.for.inc_crit_edge, %if.end30.for.inc_crit_edge
  %ep_out.1 = phi ptr [ null, %land.lhs.true33.for.inc_crit_edge ], [ %ep_out.0327, %if.end30.for.inc_crit_edge ], [ %arrayidx, %if.then56 ], [ %arrayidx, %do.body44 ]
  %inc = add nuw nsw i32 %i.0328, 1
  %19 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %20 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool63.not = icmp eq ptr %ep_narrow.2, null
  %tobool64.not = icmp eq ptr %ep_out.1, null
  %or.cond281 = select i1 %tobool63.not, i1 true, i1 %tobool64.not
  %tobool66.not = icmp eq ptr %ep_wide.1, null
  %or.cond282 = select i1 %or.cond281, i1 true, i1 %tobool66.not
  br i1 %or.cond282, label %for.end.do.end70_crit_edge, label %if.end71

for.end.do.end70_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end70

do.end70:                                         ; preds = %for.end.do.end70_crit_edge, %entry.do.end70_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.end71:                                         ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 1648) #13
  %tobool73.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool73.not, label %if.end71.cleanup_crit_edge, label %if.end75

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end75:                                         ; preds = %if.end71
  %dev77 = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %dev77 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev1, ptr %dev77, align 4
  %ep_narrow78 = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 12
  %23 = ptrtoint ptr %ep_narrow78 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ep_narrow.2, ptr %ep_narrow78, align 8
  %ep_out79 = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 16
  %24 = ptrtoint ptr %ep_out79 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ep_out.1, ptr %ep_out79, align 8
  %udev80 = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 11
  %25 = ptrtoint ptr %udev80 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i, ptr %udev80, align 4
  %call81 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %narrow_urb = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 14
  %26 = ptrtoint ptr %narrow_urb to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call81, ptr %narrow_urb, align 8
  %tobool83.not = icmp eq ptr %call81, null
  br i1 %tobool83.not, label %if.end75.redrat_free_crit_edge, label %if.end85

if.end75.redrat_free_crit_edge:                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %redrat_free

if.end85:                                         ; preds = %if.end75
  %call86 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %wide_urb = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 15
  %27 = ptrtoint ptr %wide_urb to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call86, ptr %wide_urb, align 4
  %tobool88.not = icmp eq ptr %call86, null
  br i1 %tobool88.not, label %if.end85.redrat_free_crit_edge, label %if.end90

if.end85.redrat_free_crit_edge:                   ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %redrat_free

if.end90:                                         ; preds = %if.end85
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep_narrow.2, i32 0, i32 4
  %28 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %wMaxPacketSize, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %conv91 = zext i16 %30 to i32
  %dma_in = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 17
  %call92 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i, i32 noundef %conv91, i32 noundef 3264, ptr noundef %dma_in) #9
  %bulk_in_buf = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 13
  %31 = ptrtoint ptr %bulk_in_buf to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call92, ptr %bulk_in_buf, align 4
  %tobool94.not = icmp eq ptr %call92, null
  br i1 %tobool94.not, label %if.end90.redrat_free_crit_edge, label %if.end96

if.end90.redrat_free_crit_edge:                   ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %redrat_free

if.end96:                                         ; preds = %if.end90
  %bEndpointAddress97 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep_narrow.2, i32 0, i32 2
  %32 = ptrtoint ptr %bEndpointAddress97 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bEndpointAddress97, align 1
  %conv98 = zext i8 %33 to i32
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %35, 8
  %shl1.i = shl nuw nsw i32 %conv98, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or100 = or i32 %or.i, -1073741696
  %36 = ptrtoint ptr %narrow_urb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %narrow_urb, align 8
  %38 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %wMaxPacketSize, align 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %conv104 = zext i16 %40 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 8
  %41 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 10
  %42 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or100, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 14
  %43 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call92, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 19
  %44 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv104, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 28
  %45 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @redrat3_handle_async, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 27
  %46 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %47 = ptrtoint ptr %dma_in to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma_in, align 4
  %49 = ptrtoint ptr %narrow_urb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %narrow_urb, align 8
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 15
  %51 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %48, ptr %transfer_dma, align 4
  %52 = load ptr, ptr %narrow_urb, align 8
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 13
  %53 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %transfer_flags, align 4
  %or108 = or i32 %54, 4
  store i32 %or108, ptr %transfer_flags, align 4
  %bEndpointAddress109 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep_wide.1, i32 0, i32 2
  %55 = ptrtoint ptr %bEndpointAddress109 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bEndpointAddress109, align 1
  %conv110 = zext i8 %56 to i32
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr.i, align 8
  %shl.i287 = shl i32 %58, 8
  %shl1.i288 = shl nuw nsw i32 %conv110, 15
  %or.i289 = or i32 %shl1.i288, %shl.i287
  %or113 = or i32 %or.i289, -1073741696
  %59 = ptrtoint ptr %wide_urb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wide_urb, align 4
  %61 = ptrtoint ptr %bulk_in_buf to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bulk_in_buf, align 4
  %63 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %wMaxPacketSize, align 1
  %65 = tail call i16 @llvm.bswap.i16(i16 %64)
  %conv117 = zext i16 %65 to i32
  %dev1.i290 = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 8
  %66 = ptrtoint ptr %dev1.i290 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr.i, ptr %dev1.i290, align 4
  %pipe2.i291 = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 10
  %67 = ptrtoint ptr %pipe2.i291 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or113, ptr %pipe2.i291, align 4
  %transfer_buffer3.i292 = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 14
  %68 = ptrtoint ptr %transfer_buffer3.i292 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %62, ptr %transfer_buffer3.i292, align 4
  %transfer_buffer_length.i293 = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 19
  %69 = ptrtoint ptr %transfer_buffer_length.i293 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv117, ptr %transfer_buffer_length.i293, align 4
  %complete.i294 = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 28
  %70 = ptrtoint ptr %complete.i294 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @redrat3_handle_async, ptr %complete.i294, align 4
  %context4.i295 = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 27
  %71 = ptrtoint ptr %context4.i295 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call7.i.i, ptr %context4.i295, align 4
  %72 = ptrtoint ptr %dma_in to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dma_in, align 4
  %74 = ptrtoint ptr %wide_urb to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wide_urb, align 4
  %transfer_dma120 = getelementptr inbounds %struct.urb, ptr %75, i32 0, i32 15
  %76 = ptrtoint ptr %transfer_dma120 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %73, ptr %transfer_dma120, align 4
  %77 = load ptr, ptr %wide_urb, align 4
  %transfer_flags122 = getelementptr inbounds %struct.urb, ptr %77, i32 0, i32 13
  %78 = ptrtoint ptr %transfer_flags122 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %transfer_flags122, align 4
  %or123 = or i32 %79, 4
  store i32 %or123, ptr %transfer_flags122, align 4
  tail call fastcc void @redrat3_reset(ptr noundef nonnull %call7.i.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %80 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %80, i32 noundef 3520, i32 noundef 65) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end96.redrat3_get_firmware_rev.exit_crit_edge, label %if.end.i

if.end96.redrat3_get_firmware_rev.exit_crit_edge: ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %redrat3_get_firmware_rev.exit

if.end.i:                                         ; preds = %if.end96
  %81 = ptrtoint ptr %udev80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %udev80, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 8
  %shl.i.i = shl i32 %84, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %82, i32 noundef %or3.i, i8 noundef zeroext -79, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i.i.i, i16 noundef zeroext 64, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i)
  %cmp.i = icmp sgt i32 %call4.i, -1
  %85 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev77, align 4
  br i1 %cmp.i, label %do.end.i, label %do.end8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %86, ptr noundef nonnull @.str.80, ptr noundef nonnull %call7.i.i.i.i) #12
  br label %if.end10.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.83) #12
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end8.i, %do.end.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #9
  br label %redrat3_get_firmware_rev.exit

redrat3_get_firmware_rev.exit:                    ; preds = %if.end10.i, %if.end96.redrat3_get_firmware_rev.exit_crit_edge
  %carrier = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 21
  %87 = ptrtoint ptr %carrier to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 38000, ptr %carrier, align 4
  %flash = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flash, i32 noundef 4) #9
  %88 = ptrtoint ptr %flash to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile i32 0, ptr %flash, align 8
  %call124 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %flash_urb = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 5
  %89 = ptrtoint ptr %flash_urb to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call124, ptr %flash_urb, align 4
  %tobool126.not = icmp eq ptr %call124, null
  br i1 %tobool126.not, label %redrat3_get_firmware_rev.exit.redrat_free_crit_edge, label %if.end128

redrat3_get_firmware_rev.exit.redrat_free_crit_edge: ; preds = %redrat3_get_firmware_rev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %redrat_free

if.end128:                                        ; preds = %redrat3_get_firmware_rev.exit
  %call129 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %learn_urb = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 9
  %90 = ptrtoint ptr %learn_urb to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call129, ptr %learn_urb, align 4
  %tobool131.not = icmp eq ptr %call129, null
  br i1 %tobool131.not, label %if.end128.redrat_free_crit_edge, label %if.end133

if.end128.redrat_free_crit_edge:                  ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  br label %redrat_free

if.end133:                                        ; preds = %if.end128
  %learn_control = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 8
  %91 = ptrtoint ptr %learn_control to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -64, ptr %learn_control, align 2
  %bRequest = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 8, i32 1
  %92 = ptrtoint ptr %bRequest to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -78, ptr %bRequest, align 1
  %wLength = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 8, i32 4
  %93 = ptrtoint ptr %wLength to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 256, ptr %wLength, align 8
  %94 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %add.ptr.i, align 8
  %shl.i296 = shl i32 %95, 8
  %or139 = or i32 %shl.i296, -2147483520
  %learn_buf = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 10
  %dev1.i297 = getelementptr inbounds %struct.urb, ptr %call129, i32 0, i32 8
  %96 = ptrtoint ptr %dev1.i297 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %add.ptr.i, ptr %dev1.i297, align 4
  %pipe2.i298 = getelementptr inbounds %struct.urb, ptr %call129, i32 0, i32 10
  %97 = ptrtoint ptr %pipe2.i298 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %or139, ptr %pipe2.i298, align 4
  %setup_packet3.i = getelementptr inbounds %struct.urb, ptr %call129, i32 0, i32 21
  %98 = ptrtoint ptr %setup_packet3.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %learn_control, ptr %setup_packet3.i, align 4
  %transfer_buffer4.i = getelementptr inbounds %struct.urb, ptr %call129, i32 0, i32 14
  %99 = ptrtoint ptr %transfer_buffer4.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %learn_buf, ptr %transfer_buffer4.i, align 4
  %transfer_buffer_length.i299 = getelementptr inbounds %struct.urb, ptr %call129, i32 0, i32 19
  %100 = ptrtoint ptr %transfer_buffer_length.i299 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %transfer_buffer_length.i299, align 4
  %complete.i300 = getelementptr inbounds %struct.urb, ptr %call129, i32 0, i32 28
  %101 = ptrtoint ptr %complete.i300 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @redrat3_learn_complete, ptr %complete.i300, align 4
  %context5.i = getelementptr inbounds %struct.urb, ptr %call129, i32 0, i32 27
  %102 = ptrtoint ptr %context5.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call7.i.i, ptr %context5.i, align 4
  %flash_control = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 4
  %103 = ptrtoint ptr %flash_control to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -64, ptr %flash_control, align 4
  %bRequest143 = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 4, i32 1
  %104 = ptrtoint ptr %bRequest143 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -71, ptr %bRequest143, align 1
  %wLength145 = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 4, i32 4
  %105 = ptrtoint ptr %wLength145 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 256, ptr %wLength145, align 2
  %106 = ptrtoint ptr %flash_urb to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %flash_urb, align 4
  %108 = load i32, ptr %add.ptr.i, align 8
  %shl.i301 = shl i32 %108, 8
  %or149 = or i32 %shl.i301, -2147483520
  %flash_in_buf = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 6
  %dev1.i302 = getelementptr inbounds %struct.urb, ptr %107, i32 0, i32 8
  %109 = ptrtoint ptr %dev1.i302 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %add.ptr.i, ptr %dev1.i302, align 4
  %pipe2.i303 = getelementptr inbounds %struct.urb, ptr %107, i32 0, i32 10
  %110 = ptrtoint ptr %pipe2.i303 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %or149, ptr %pipe2.i303, align 4
  %setup_packet3.i304 = getelementptr inbounds %struct.urb, ptr %107, i32 0, i32 21
  %111 = ptrtoint ptr %setup_packet3.i304 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %flash_control, ptr %setup_packet3.i304, align 4
  %transfer_buffer4.i305 = getelementptr inbounds %struct.urb, ptr %107, i32 0, i32 14
  %112 = ptrtoint ptr %transfer_buffer4.i305 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %flash_in_buf, ptr %transfer_buffer4.i305, align 4
  %transfer_buffer_length.i306 = getelementptr inbounds %struct.urb, ptr %107, i32 0, i32 19
  %113 = ptrtoint ptr %transfer_buffer_length.i306 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1, ptr %transfer_buffer_length.i306, align 4
  %complete.i307 = getelementptr inbounds %struct.urb, ptr %107, i32 0, i32 28
  %114 = ptrtoint ptr %complete.i307 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @redrat3_led_complete, ptr %complete.i307, align 4
  %context5.i308 = getelementptr inbounds %struct.urb, ptr %107, i32 0, i32 27
  %115 = ptrtoint ptr %context5.i308 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call7.i.i, ptr %context5.i308, align 4
  %led = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 2
  %116 = ptrtoint ptr %led to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @.str.8, ptr %led, align 8
  %default_trigger = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 2, i32 14
  %117 = ptrtoint ptr %default_trigger to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @.str.9, ptr %default_trigger, align 4
  %brightness_set = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 2, i32 5
  %118 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @redrat3_brightness_set, ptr %brightness_set, align 4
  %call.i = tail call i32 @led_classdev_register_ext(ptr noundef %dev1, ptr noundef %led, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool156.not = icmp eq i32 %call.i, 0
  br i1 %tobool156.not, label %if.end158, label %if.end133.redrat_free_crit_edge

if.end133.redrat_free_crit_edge:                  ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %redrat_free

if.end158:                                        ; preds = %if.end133
  %119 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev77, align 4
  %121 = ptrtoint ptr %udev80 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %udev80, align 4
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %122, i32 0, i32 16, i32 8
  %123 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %idProduct.i, align 2
  %call.i311 = tail call ptr @rc_allocate_device(i32 noundef 1) #9
  %tobool.not.i312 = icmp eq ptr %call.i311, null
  br i1 %tobool.not.i312, label %if.end158.redrat3_init_rc_dev.exit.thread_crit_edge, label %if.end.i316

if.end158.redrat3_init_rc_dev.exit.thread_crit_edge: ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %redrat3_init_rc_dev.exit.thread

if.end.i316:                                      ; preds = %if.end158
  %name.i = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 22
  call void @__sanitizer_cov_trace_const_cmp2(i16 1280, i16 %124)
  %cmp.i313 = icmp eq i16 %124, 1280
  %cond.i = select i1 %cmp.i313, ptr @.str.91, ptr @.str.92
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 64, ptr noundef nonnull @.str.90, ptr noundef nonnull %cond.i) #9
  %125 = ptrtoint ptr %udev80 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %udev80, align 4
  %phys.i = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 23
  %bus.i.i = getelementptr inbounds %struct.usb_device, ptr %126, i32 0, i32 12
  %127 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bus.i.i, align 8
  %bus_name.i.i = getelementptr inbounds %struct.usb_bus, ptr %128, i32 0, i32 3
  %129 = ptrtoint ptr %bus_name.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %bus_name.i.i, align 4
  %devpath.i.i = getelementptr inbounds %struct.usb_device, ptr %126, i32 0, i32 1
  %call.i.i314 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys.i, i32 noundef 64, ptr noundef nonnull @.str.96, ptr noundef %130, ptr noundef %devpath.i.i) #9
  %device_name.i = getelementptr inbounds %struct.rc_dev, ptr %call.i311, i32 0, i32 3
  %131 = ptrtoint ptr %device_name.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %name.i, ptr %device_name.i, align 8
  %input_phys.i = getelementptr inbounds %struct.rc_dev, ptr %call.i311, i32 0, i32 4
  %132 = ptrtoint ptr %input_phys.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %phys.i, ptr %input_phys.i, align 4
  %133 = ptrtoint ptr %udev80 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %udev80, align 4
  %input_id.i = getelementptr inbounds %struct.rc_dev, ptr %call.i311, i32 0, i32 5
  %135 = ptrtoint ptr %input_id.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 3, ptr %input_id.i, align 2
  %idVendor.i.i = getelementptr inbounds %struct.usb_device, ptr %134, i32 0, i32 16, i32 7
  %136 = ptrtoint ptr %idVendor.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %idVendor.i.i, align 8
  %138 = tail call i16 @llvm.bswap.i16(i16 %137) #9
  %vendor.i.i = getelementptr inbounds %struct.rc_dev, ptr %call.i311, i32 0, i32 5, i32 1
  %139 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %vendor.i.i, align 2
  %idProduct.i.i = getelementptr inbounds %struct.usb_device, ptr %134, i32 0, i32 16, i32 8
  %140 = ptrtoint ptr %idProduct.i.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %idProduct.i.i, align 2
  %142 = tail call i16 @llvm.bswap.i16(i16 %141) #9
  %product.i.i = getelementptr inbounds %struct.rc_dev, ptr %call.i311, i32 0, i32 5, i32 2
  %143 = ptrtoint ptr %product.i.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %142, ptr %product.i.i, align 2
  %bcdDevice.i.i = getelementptr inbounds %struct.usb_device, ptr %134, i32 0, i32 16, i32 9
  %144 = ptrtoint ptr %bcdDevice.i.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %bcdDevice.i.i, align 4
  %146 = tail call i16 @llvm.bswap.i16(i16 %145) #9
  %version.i.i = getelementptr inbounds %struct.rc_dev, ptr %call.i311, i32 0, i32 5, i32 3
  %147 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %146, ptr %version.i.i, align 2
  %parent.i315 = getelementptr inbounds %struct.device, ptr %call.i311, i32 0, i32 1
  %148 = ptrtoint ptr %parent.i315 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %120, ptr %parent.i315, align 8
  %priv.i = getelementptr inbounds %struct.rc_dev, ptr %call.i311, i32 0, i32 24
  %149 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call7.i.i, ptr %priv.i, align 4
  %allowed_protocols.i = getelementptr inbounds %struct.rc_dev, ptr %call.i311, i32 0, i32 16
  %150 = ptrtoint ptr %allowed_protocols.i to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 130023420, ptr %allowed_protocols.i, align 8
  %min_timeout.i = getelementptr inbounds %struct.rc_dev, ptr %call.i311, i32 0, i32 35
  %151 = ptrtoint ptr %min_timeout.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 5000, ptr %min_timeout.i, align 8
  %max_timeout.i = getelementptr inbounds %struct.rc_dev, ptr %call.i311, i32 0, i32 36
  %152 = ptrtoint ptr %max_timeout.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 2000000, ptr %max_timeout.i, align 4
  %call13.i = tail call fastcc i32 @redrat3_get_timeout(ptr noundef nonnull %call7.i.i) #9
  %timeout.i = getelementptr inbounds %struct.rc_dev, ptr %call.i311, i32 0, i32 34
  %153 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %call13.i, ptr %timeout.i, align 4
  %s_timeout.i = getelementptr inbounds %struct.rc_dev, ptr %call.i311, i32 0, i32 60
  %154 = ptrtoint ptr %s_timeout.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @redrat3_set_timeout, ptr %s_timeout.i, align 8
  %tx_ir.i = getelementptr inbounds %struct.rc_dev, ptr %call.i311, i32 0, i32 54
  %155 = ptrtoint ptr %tx_ir.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr @redrat3_transmit_ir, ptr %tx_ir.i, align 8
  %s_tx_carrier.i = getelementptr inbounds %struct.rc_dev, ptr %call.i311, i32 0, i32 51
  %156 = ptrtoint ptr %s_tx_carrier.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @redrat3_set_tx_carrier, ptr %s_tx_carrier.i, align 4
  %s_carrier_report.i = getelementptr inbounds %struct.rc_dev, ptr %call.i311, i32 0, i32 57
  %157 = ptrtoint ptr %s_carrier_report.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @redrat3_wideband_receiver, ptr %s_carrier_report.i, align 4
  %driver_name.i = getelementptr inbounds %struct.rc_dev, ptr %call.i311, i32 0, i32 6
  %158 = ptrtoint ptr %driver_name.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @.str, ptr %driver_name.i, align 8
  %rx_resolution.i = getelementptr inbounds %struct.rc_dev, ptr %call.i311, i32 0, i32 37
  %159 = ptrtoint ptr %rx_resolution.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 2, ptr %rx_resolution.i, align 8
  %map_name.i = getelementptr inbounds %struct.rc_dev, ptr %call.i311, i32 0, i32 7
  %160 = ptrtoint ptr %map_name.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @.str.93, ptr %map_name.i, align 4
  %call14.i = tail call i32 @rc_register_device(ptr noundef nonnull %call.i311) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %do.end.i317, label %if.end163

do.end.i317:                                      ; preds = %if.end.i316
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.94) #12
  tail call void @rc_free_device(ptr noundef nonnull %call.i311) #9
  br label %redrat3_init_rc_dev.exit.thread

redrat3_init_rc_dev.exit.thread:                  ; preds = %do.end.i317, %if.end158.redrat3_init_rc_dev.exit.thread_crit_edge
  %161 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %call7.i.i, align 8
  br label %led_free

if.end163:                                        ; preds = %if.end.i316
  %162 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call.i311, ptr %call7.i.i, align 8
  %call164 = tail call fastcc i32 @redrat3_enable_detector(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %cmp165 = icmp slt i32 %call164, 0
  br i1 %cmp165, label %if.end163.led_free_crit_edge, label %if.end168

if.end163.led_free_crit_edge:                     ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #11
  br label %led_free

if.end168:                                        ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %163 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

led_free:                                         ; preds = %if.end163.led_free_crit_edge, %redrat3_init_rc_dev.exit.thread
  %retval2.0 = phi i32 [ %call164, %if.end163.led_free_crit_edge ], [ -12, %redrat3_init_rc_dev.exit.thread ]
  tail call void @led_classdev_unregister(ptr noundef %led) #9
  br label %redrat_free

redrat_free:                                      ; preds = %led_free, %if.end133.redrat_free_crit_edge, %if.end128.redrat_free_crit_edge, %redrat3_get_firmware_rev.exit.redrat_free_crit_edge, %if.end90.redrat_free_crit_edge, %if.end85.redrat_free_crit_edge, %if.end75.redrat_free_crit_edge
  %retval2.1 = phi i32 [ %call.i, %if.end133.redrat_free_crit_edge ], [ %retval2.0, %led_free ], [ -12, %if.end128.redrat_free_crit_edge ], [ -12, %redrat3_get_firmware_rev.exit.redrat_free_crit_edge ], [ -12, %if.end90.redrat_free_crit_edge ], [ -12, %if.end85.redrat_free_crit_edge ], [ -12, %if.end75.redrat_free_crit_edge ]
  %164 = ptrtoint ptr %udev80 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %udev80, align 4
  %166 = ptrtoint ptr %narrow_urb to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %narrow_urb, align 8
  tail call void @usb_kill_urb(ptr noundef %167) #9
  %wide_urb.i = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 15
  %168 = ptrtoint ptr %wide_urb.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %wide_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %169) #9
  %flash_urb.i = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 5
  %170 = ptrtoint ptr %flash_urb.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %flash_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %171) #9
  %learn_urb.i = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 9
  %172 = ptrtoint ptr %learn_urb.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %learn_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %173) #9
  %174 = ptrtoint ptr %narrow_urb to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %narrow_urb, align 8
  tail call void @usb_free_urb(ptr noundef %175) #9
  %176 = ptrtoint ptr %wide_urb.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %wide_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %177) #9
  %178 = ptrtoint ptr %flash_urb.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %flash_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %179) #9
  %180 = ptrtoint ptr %learn_urb.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %learn_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %181) #9
  %182 = ptrtoint ptr %ep_narrow78 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ep_narrow78, align 8
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %183, i32 0, i32 4
  %184 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %184, i32 2)
  %185 = load i16, ptr %wMaxPacketSize.i, align 1
  %186 = tail call i16 @llvm.bswap.i16(i16 %185) #9
  %conv.i = zext i16 %186 to i32
  %bulk_in_buf.i = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 13
  %187 = ptrtoint ptr %bulk_in_buf.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %bulk_in_buf.i, align 4
  %dma_in.i = getelementptr inbounds %struct.redrat3_dev, ptr %call7.i.i, i32 0, i32 17
  %189 = ptrtoint ptr %dma_in.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %dma_in.i, align 4
  tail call void @usb_free_coherent(ptr noundef %165, i32 noundef %conv.i, ptr noundef %188, i32 noundef %190) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %redrat_free, %if.end168, %if.end71.cleanup_crit_edge, %do.end70
  %retval.0 = phi i32 [ 0, %if.end168 ], [ %retval2.1, %redrat_free ], [ -12, %if.end71.cleanup_crit_edge ], [ -19, %do.end70 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @redrat3_dev_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @rc_unregister_device(ptr noundef %5) #9
  %led = getelementptr inbounds %struct.redrat3_dev, ptr %3, i32 0, i32 2
  tail call void @led_classdev_unregister(ptr noundef %led) #9
  %narrow_urb.i = getelementptr inbounds %struct.redrat3_dev, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %narrow_urb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %narrow_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #9
  %wide_urb.i = getelementptr inbounds %struct.redrat3_dev, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %wide_urb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wide_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #9
  %flash_urb.i = getelementptr inbounds %struct.redrat3_dev, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %flash_urb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %flash_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #9
  %learn_urb.i = getelementptr inbounds %struct.redrat3_dev, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %learn_urb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %learn_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #9
  %14 = ptrtoint ptr %narrow_urb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %narrow_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %15) #9
  %16 = ptrtoint ptr %wide_urb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wide_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %17) #9
  %18 = ptrtoint ptr %flash_urb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %flash_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %19) #9
  %20 = ptrtoint ptr %learn_urb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %learn_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %21) #9
  %ep_narrow.i = getelementptr inbounds %struct.redrat3_dev, ptr %3, i32 0, i32 12
  %22 = ptrtoint ptr %ep_narrow.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ep_narrow.i, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %wMaxPacketSize.i, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #9
  %conv.i = zext i16 %26 to i32
  %bulk_in_buf.i = getelementptr inbounds %struct.redrat3_dev, ptr %3, i32 0, i32 13
  %27 = ptrtoint ptr %bulk_in_buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bulk_in_buf.i, align 4
  %dma_in.i = getelementptr inbounds %struct.redrat3_dev, ptr %3, i32 0, i32 17
  %29 = ptrtoint ptr %dma_in.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_in.i, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef %conv.i, ptr noundef %28, i32 noundef %30) #9
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @redrat3_dev_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %led = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 2
  tail call void @led_classdev_suspend(ptr noundef %led) #9
  %narrow_urb = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %narrow_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %narrow_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #9
  %wide_urb = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %wide_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wide_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #9
  %flash_urb = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %flash_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flash_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @redrat3_dev_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %narrow_urb = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %narrow_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %narrow_urb, align 4
  %call1 = tail call i32 @usb_submit_urb(ptr noundef %3, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %wide_urb = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %wide_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wide_urb, align 4
  %call2 = tail call i32 @usb_submit_urb(ptr noundef %5, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %led = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 2
  tail call void @led_classdev_resume(ptr noundef %led) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @redrat3_handle_async(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end25 [
    i32 0, label %sw.bb
    i32 -104, label %entry.sw.bb20_crit_edge
    i32 -2, label %entry.sw.bb20_crit_edge48
    i32 -108, label %entry.sw.bb20_crit_edge49
  ]

entry.sw.bb20_crit_edge49:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20

entry.sw.bb20_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20

entry.sw.bb20_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20

sw.bb:                                            ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %5 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %actual_length, align 4
  %call = tail call fastcc i32 @redrat3_get_ir_data(ptr noundef %1, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb
  %wideband = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %wideband to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wideband, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %land.lhs.true.if.then10_crit_edge, label %land.lhs.true2

land.lhs.true.if.then10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

land.lhs.true2:                                   ; preds = %land.lhs.true
  %learn_urb = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %learn_urb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %learn_urb, align 4
  %hcpriv = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hcpriv, align 4
  %tobool3.not = icmp eq ptr %12, null
  br i1 %tobool3.not, label %if.then, label %land.lhs.true2.if.then10_crit_edge

land.lhs.true2.if.then10_crit_edge:               ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then:                                          ; preds = %land.lhs.true2
  %call5 = tail call i32 @usb_submit_urb(ptr noundef %10, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then.if.then10_crit_edge, label %do.end

if.then.if.then10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.10, i32 noundef %call5) #12
  br label %cleanup

if.then10:                                        ; preds = %if.then.if.then10_crit_edge, %land.lhs.true2.if.then10_crit_edge, %land.lhs.true.if.then10_crit_edge
  %call11 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.cleanup_crit_edge, label %do.end16

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %dev17 = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.13, i32 noundef %call11) #12
  br label %cleanup

sw.bb20:                                          ; preds = %entry.sw.bb20_crit_edge, %entry.sw.bb20_crit_edge48, %entry.sw.bb20_crit_edge49
  %call21 = tail call i32 @usb_unlink_urb(ptr noundef %urb) #9
  br label %cleanup

do.end25:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev26 = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.16, i32 noundef %3) #12
  %bytes_read = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 20
  %19 = ptrtoint ptr %bytes_read to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %bytes_read, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %sw.bb20, %do.end16, %if.then10.cleanup_crit_edge, %do.end, %sw.bb.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @redrat3_reset(ptr nocapture noundef readonly %rr3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %udev1 = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 11
  %0 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev1, align 4
  %dev2 = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %shl.i = shl i32 %5, 8
  %or5 = or i32 %shl.i, -2147483648
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 1) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %or3 = or i32 %shl.i, -2147483520
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %call7.i, align 8
  %call7 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or3, i8 noundef zeroext -96, i8 noundef zeroext -64, i16 noundef zeroext 32658, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 25000) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_reset.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_reset, %if.then12)) #9
          to label %do.end [label %if.then12], !srcloc !288

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_reset.__UNIQUE_ID_ddebug250, ptr noundef %3, ptr noundef nonnull @.str.75, i32 noundef %call7) #9
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.end
  %8 = load i32, ptr @length_fuzz, align 4
  %conv = trunc i32 %8 to i8
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %call7.i, align 8
  %call14 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or5, i8 noundef zeroext -73, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 25000) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_reset.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_reset, %if.then27)) #9
          to label %do.end31 [label %if.then27], !srcloc !288

if.then27:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %call7.i, align 8
  %conv28 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_reset.__UNIQUE_ID_ddebug251, ptr noundef %3, ptr noundef nonnull @.str.76, i32 noundef %conv28, i32 noundef %call14) #9
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %do.end
  %12 = load i32, ptr @minimum_pause, align 4
  %mul.neg = mul i32 %12, -2000
  %sub = add i32 %mul.neg, 65536
  %div = sdiv i32 %sub, 256
  %conv32 = trunc i32 %div to i8
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv32, ptr %call7.i, align 8
  %call33 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or5, i8 noundef zeroext -73, i8 noundef zeroext 64, i16 noundef zeroext 6, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 25000) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_reset.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_reset, %if.then46)) #9
          to label %do.end50 [label %if.then46], !srcloc !288

if.then46:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %call7.i, align 8
  %conv47 = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_reset.__UNIQUE_ID_ddebug252, ptr noundef %3, ptr noundef nonnull @.str.77, i32 noundef %conv47, i32 noundef %call33) #9
  br label %do.end50

do.end50:                                         ; preds = %if.then46, %do.end31
  %16 = load i32, ptr @periods_measure_carrier, align 4
  %conv51 = trunc i32 %16 to i8
  %17 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv51, ptr %call7.i, align 8
  %call52 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or5, i8 noundef zeroext -73, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 25000) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_reset.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_reset, %if.then65)) #9
          to label %do.end69 [label %if.then65], !srcloc !288

if.then65:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %call7.i, align 8
  %conv66 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_reset.__UNIQUE_ID_ddebug253, ptr noundef %3, ptr noundef nonnull @.str.78, i32 noundef %conv66, i32 noundef %call52) #9
  br label %do.end69

do.end69:                                         ; preds = %if.then65, %do.end50
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %call7.i, align 8
  %call70 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or5, i8 noundef zeroext -73, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 25000) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_reset.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_reset, %if.then83)) #9
          to label %do.end87 [label %if.then83], !srcloc !288

if.then83:                                        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %call7.i, align 8
  %conv84 = zext i8 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_reset.__UNIQUE_ID_ddebug254, ptr noundef %3, ptr noundef nonnull @.str.79, i32 noundef %conv84, i32 noundef %call70) #9
  br label %do.end87

do.end87:                                         ; preds = %if.then83, %do.end69
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end87, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @redrat3_learn_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %1, label %do.end [
    i32 0, label %entry.cleanup_crit_edge
    i32 -104, label %entry.sw.bb_crit_edge
    i32 -2, label %entry.sw.bb_crit_edge6
    i32 -108, label %entry.sw.bb_crit_edge7
  ]

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge6, %entry.sw.bb_crit_edge7
  %call = tail call i32 @usb_unlink_urb(ptr noundef %urb) #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %3 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context, align 4
  %dev = getelementptr inbounds %struct.redrat3_dev, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.85, i32 noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @redrat3_led_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %3, label %do.body [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 -104, label %entry.sw.bb_crit_edge
    i32 -2, label %entry.sw.bb_crit_edge12
    i32 -108, label %entry.sw.bb_crit_edge13
  ]

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge12:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge12, %entry.sw.bb_crit_edge13
  %call = tail call i32 @usb_unlink_urb(ptr noundef %urb) #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_led_complete.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_led_complete, %if.then)) #9
          to label %sw.epilog [label %if.then], !srcloc !288

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_led_complete.__UNIQUE_ID_ddebug263, ptr noundef %6, ptr noundef nonnull @.str.16, i32 noundef %8) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body, %entry.sw.epilog_crit_edge
  %brightness = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %brightness, align 4
  %flash = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flash, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %flash, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flash, ptr %flash, i32 1, ptr elementtype(i32) %flash) #9, !srcloc !290
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @redrat3_brightness_set(ptr noundef %led_dev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp.not = icmp eq i32 %brightness, 0
  br i1 %cmp.not, label %entry.if.end12_crit_edge, label %land.lhs.true

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %flash = getelementptr i8, ptr %led_dev, i32 400
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flash, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !291
  tail call void @llvm.prefetch.p0(ptr %flash, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %flash, ptr %flash, i32 0, i32 1, ptr elementtype(i32) %flash) #9, !srcloc !292
  %asmresult.i.i.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !293
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %cmp1 = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %cmp1, label %if.then, label %atomic_cmpxchg.exit.if.end12_crit_edge

atomic_cmpxchg.exit.if.end12_crit_edge:           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then:                                          ; preds = %atomic_cmpxchg.exit
  %flash_urb = getelementptr i8, ptr %led_dev, i32 412
  %1 = ptrtoint ptr %flash_urb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %flash_urb, align 4
  %call2 = tail call i32 @usb_submit_urb(ptr noundef %2, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.then.if.end12_crit_edge, label %do.body

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_brightness_set.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_brightness_set, %if.then9)) #9
          to label %do.end [label %if.then9], !srcloc !288

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %led_dev, i32 -4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_brightness_set.__UNIQUE_ID_ddebug262, ptr noundef %4, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.88, i32 noundef %call2) #9
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %call.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %flash, i32 noundef 4) #9
  %5 = ptrtoint ptr %flash to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %flash, align 4
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.then.if.end12_crit_edge, %atomic_cmpxchg.exit.if.end12_crit_edge, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @redrat3_enable_detector(ptr nocapture noundef readonly %rr3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call = tail call fastcc i32 @redrat3_send_cmd(i32 noundef 187, ptr noundef %rr3)
  %conv2 = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %cmp.not = icmp eq i32 %conv2, 0
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %do.body

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_enable_detector.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_enable_detector, %if.then7)) #9
          to label %if.end9 [label %if.then7], !srcloc !288

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_enable_detector.__UNIQUE_ID_ddebug247, ptr noundef %1, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.115, i32 noundef %conv2) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.body, %entry.if.end9_crit_edge
  %call10 = tail call fastcc i32 @redrat3_send_cmd(i32 noundef 189, ptr noundef %rr3)
  %conv12 = and i32 %call10, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv12)
  %cmp13.not = icmp eq i32 %conv12, 1
  br i1 %cmp13.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.115, i32 noundef %conv12) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end9
  %narrow_urb = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 14
  %2 = ptrtoint ptr %narrow_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %narrow_urb, align 4
  %call21 = tail call i32 @usb_submit_urb(ptr noundef %3, i32 noundef 3264) #9
  %conv22 = trunc i32 %call21 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv22)
  %tobool23.not = icmp eq i8 %conv22, 0
  br i1 %tobool23.not, label %if.end31, label %do.end27

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %conv29 = and i32 %call21, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.118, i32 noundef %conv29) #12
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  %wide_urb = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 15
  %6 = ptrtoint ptr %wide_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wide_urb, align 4
  %call32 = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef 3264) #9
  %conv33 = trunc i32 %call32 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv33)
  %tobool34.not = icmp eq i8 %conv33, 0
  br i1 %tobool34.not, label %if.end31.if.end41_crit_edge, label %do.end38

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = and i32 %call32, 255
  br label %cleanup

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  %conv40 = and i32 %call32, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.121, i32 noundef %conv40) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.end31.if.end41_crit_edge, %do.end27, %do.end18
  %retval.0 = phi i32 [ -5, %do.end18 ], [ %conv29, %do.end27 ], [ %.pre, %if.end31.if.end41_crit_edge ], [ %conv40, %do.end38 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @redrat3_get_ir_data(ptr nocapture noundef %rr3, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %bytes_read = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 20
  %2 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bytes_read, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp3 = icmp ugt i32 %len, 3
  %or.cond = and i1 %cmp3, %cmp
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @redrat3_read_packet_start(ptr noundef %rr3, i32 noundef %len)
  br label %if.end17

if.else:                                          ; preds = %entry
  br i1 %cmp, label %do.end, label %if.then9

if.then9:                                         ; preds = %if.else
  %irdata1.i = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 19
  %conv.i = zext i16 %3 to i32
  %add.i = add i32 %conv.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 1041, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 1041
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.65) #12
  %4 = ptrtoint ptr %bytes_read to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %bytes_read, align 2
  br label %if.end17

if.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %irdata1.i, i32 %conv.i
  %bulk_in_buf.i = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 13
  %5 = ptrtoint ptr %bulk_in_buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bulk_in_buf.i, align 4
  %7 = call ptr @memcpy(ptr %add.ptr.i, ptr %6, i32 %len)
  %8 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bytes_read, align 2
  %10 = trunc i32 %len to i16
  %conv9.i = add i16 %9, %10
  store i16 %conv9.i, ptr %bytes_read, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_read_packet_continue.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_get_ir_data, %if.then13.i)) #9
          to label %if.end17 [label %if.then13.i], !srcloc !288

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1, align 4
  %13 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %bytes_read, align 2
  %conv16.i = zext i16 %14 to i32
  %15 = ptrtoint ptr %irdata1.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %irdata1.i, align 1
  %conv18.i = zext i16 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_read_packet_continue.__UNIQUE_ID_ddebug257, ptr noundef %12, ptr noundef nonnull @.str.24, i32 noundef %conv16.i, i32 noundef %conv18.i) #9
  br label %if.end17

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19) #12
  br label %out

if.end17:                                         ; preds = %if.then13.i, %if.end.i, %do.end.i, %if.then
  %17 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %bytes_read, align 2
  %conv19 = zext i16 %18 to i32
  %irdata = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 19
  %19 = ptrtoint ptr %irdata to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %irdata, align 1
  %conv20 = zext i16 %20 to i32
  %add = add nuw nsw i32 %conv20, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv19)
  %cmp21 = icmp ugt i32 %add, %conv19
  br i1 %cmp21, label %if.end17.cleanup_crit_edge, label %if.end24

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %transfer_type = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 19, i32 0, i32 1
  %21 = ptrtoint ptr %transfer_type to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %transfer_type, align 1
  %conv27 = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %22)
  %cmp28 = icmp eq i16 %22, 32
  br i1 %cmp28, label %if.then30, label %do.body32

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @redrat3_process_ir_data(ptr noundef %rr3)
  br label %out

do.body32:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_get_ir_data.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_get_ir_data, %if.then35)) #9
          to label %out [label %if.then35], !srcloc !288

if.then35:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_get_ir_data.__UNIQUE_ID_ddebug258, ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %conv27) #9
  br label %out

out:                                              ; preds = %if.then35, %do.body32, %if.then30, %do.end
  %ret.0 = phi i32 [ 0, %if.then30 ], [ 0, %if.then35 ], [ -61, %do.end ], [ 0, %do.body32 ]
  %23 = ptrtoint ptr %bytes_read to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %bytes_read, align 2
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @redrat3_read_packet_start(ptr nocapture noundef %rr3, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bulk_in_buf = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 13
  %0 = ptrtoint ptr %bulk_in_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bulk_in_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %1, align 1
  %conv = zext i16 %3 to i32
  %transfer_type = getelementptr inbounds %struct.redrat3_header, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %transfer_type to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %transfer_type, align 1
  %conv1 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1041, i16 %3)
  %cmp = icmp ugt i16 %3, 1041
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.22, i32 noundef %conv) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.127)
  switch i16 %5, label %do.body23 [
    i16 1, label %sw.bb
    i16 32, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %len)
  %cmp3 = icmp ugt i32 %len, 5
  br i1 %cmp3, label %if.then5, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %sw.bb
  %fw_error7 = getelementptr inbounds %struct.redrat3_error, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %fw_error7 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %fw_error7, align 1
  %transmitting.i = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 18
  %11 = ptrtoint ptr %transmitting.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %transmitting.i, align 4, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp ne i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %10)
  %cmp.not.i = icmp eq i16 %10, 64
  %or.cond.i = or i1 %cmp.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then5.if.end.i_crit_edge, label %do.end.i

if.then5.if.end.i_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %conv8 = zext i16 %10 to i32
  %dev.i = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.26, i32 noundef %conv8) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then5.if.end.i_crit_edge
  %15 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.128)
  switch i16 %10, label %do.end58.i [
    i16 0, label %if.end.i.sw.epilog.sink.split.i_crit_edge
    i16 32, label %do.end5.i
    i16 33, label %do.end10.i
    i16 34, label %do.end15.i
    i16 35, label %do.end20.i
    i16 40, label %do.end25.i
    i16 41, label %do.end30.i
    i16 48, label %do.end35.i
    i16 64, label %sw.bb38.i
    i16 65, label %do.end49.i
    i16 66, label %do.end54.i
  ]

if.end.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

do.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

do.end20.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

do.end25.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

do.end30.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

do.end35.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.bb38.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %transmitting.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %transmitting.i, align 4, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool40.not.i = icmp eq i8 %17, 0
  br i1 %tobool40.not.i, label %sw.bb38.i.sw.epilog.sink.split.i_crit_edge, label %sw.bb38.i.cleanup_crit_edge

sw.bb38.i.cleanup_crit_edge:                      ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb38.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

do.end49.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

do.end54.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

do.end58.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %do.end58.i, %do.end54.i, %do.end49.i, %sw.bb38.i.sw.epilog.sink.split.i_crit_edge, %do.end35.i, %do.end30.i, %do.end25.i, %do.end20.i, %do.end15.i, %do.end10.i, %do.end5.i, %if.end.i.sw.epilog.sink.split.i_crit_edge
  %.str.54.sink.i = phi ptr [ @.str.63, %do.end58.i ], [ @.str.60, %do.end54.i ], [ @.str.57, %do.end49.i ], [ @.str.51, %do.end35.i ], [ @.str.48, %do.end30.i ], [ @.str.45, %do.end25.i ], [ @.str.42, %do.end20.i ], [ @.str.39, %do.end15.i ], [ @.str.36, %do.end10.i ], [ @.str.33, %do.end5.i ], [ @.str.30, %if.end.i.sw.epilog.sink.split.i_crit_edge ], [ @.str.54, %sw.bb38.i.sw.epilog.sink.split.i_crit_edge ]
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.54.sink.i) #12
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %irdata = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 19
  %18 = call ptr @memcpy(ptr %irdata, ptr %1, i32 %len)
  %conv12 = trunc i32 %len to i16
  %bytes_read = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 20
  %19 = ptrtoint ptr %bytes_read to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv12, ptr %bytes_read, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_read_packet_start.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_read_packet_start, %if.then16)) #9
          to label %cleanup [label %if.then16], !srcloc !288

if.then16:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  %dev17 = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 1
  %20 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev17, align 4
  %22 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %bytes_read, align 2
  %conv19 = zext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_read_packet_start.__UNIQUE_ID_ddebug255, ptr noundef %21, ptr noundef nonnull @.str.24, i32 noundef %conv19, i32 noundef %conv) #9
  br label %cleanup

do.body23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_read_packet_start.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_read_packet_start, %if.then35)) #9
          to label %cleanup [label %if.then35], !srcloc !288

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %dev36 = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 1
  %24 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev36, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_read_packet_start.__UNIQUE_ID_ddebug256, ptr noundef %25, ptr noundef nonnull @.str.25, i32 noundef %conv1, i32 noundef %len, i32 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %do.body23, %if.then16, %sw.bb10, %sw.epilog.sink.split.i, %sw.bb38.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @redrat3_process_ir_data(ptr nocapture noundef readonly %rr3) unnamed_addr #2 align 64 {
entry:
  %rawir = alloca %struct.ir_raw_event, align 8
  %ev = alloca %struct.ir_raw_event, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir) #9
  %0 = ptrtoint ptr %rawir to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %rawir, align 8
  %dev1 = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 1
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %mod_freq_count1.i = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 19, i32 2
  %3 = ptrtoint ptr %mod_freq_count1.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %mod_freq_count1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.not.i = icmp eq i16 %4, 0
  br i1 %cmp.not.i, label %entry.redrat3_val_to_mod_freq.exit_crit_edge, label %if.then.i

entry.redrat3_val_to_mod_freq.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %redrat3_val_to_mod_freq.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %4 to i32
  %num_periods.i = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 19, i32 3
  %5 = ptrtoint ptr %num_periods.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %num_periods.i, align 1
  %conv3.i = zext i16 %6 to i32
  %mul.i = mul i32 %conv3.i, 24000000
  %mul5.i = mul nuw nsw i32 %conv.i, 12
  %div.i = sdiv i32 %mul.i, %mul5.i
  br label %redrat3_val_to_mod_freq.exit

redrat3_val_to_mod_freq.exit:                     ; preds = %if.then.i, %entry.redrat3_val_to_mod_freq.exit_crit_edge
  %mod_freq.0.i = phi i32 [ %div.i, %if.then.i ], [ 0, %entry.redrat3_val_to_mod_freq.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_process_ir_data.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_process_ir_data, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !288

if.then:                                          ; preds = %redrat3_val_to_mod_freq.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_process_ir_data.__UNIQUE_ID_ddebug243, ptr noundef %2, ptr noundef nonnull @.str.68, i32 noundef %mod_freq.0.i) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %redrat3_val_to_mod_freq.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mod_freq.0.i)
  %tobool5.not = icmp eq i32 %mod_freq.0.i, 0
  br i1 %tobool5.not, label %do.end.if.end18_crit_edge, label %land.lhs.true

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %do.end
  %wideband = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 7
  %7 = ptrtoint ptr %wideband to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wideband, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end18_crit_edge, label %if.then7

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ev) #9
  %9 = ptrtoint ptr %ev to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -4292870145, ptr %ev, align 8, !annotation !294
  store i32 %mod_freq.0.i, ptr %ev, align 8
  %10 = ptrtoint ptr %rr3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rr3, align 4
  %call17 = call i32 @ir_raw_event_store(ptr noundef %11, ptr noundef nonnull %ev) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ev) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then7, %land.lhs.true.if.end18_crit_edge, %do.end.if.end18_crit_edge
  %sig_size20 = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 19, i32 7
  %12 = ptrtoint ptr %sig_size20 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %sig_size20, align 1
  %conv = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp144.not = icmp eq i16 %13, 0
  br i1 %cmp144.not, label %if.end18.for.end_crit_edge, label %for.body.lr.ph

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end18
  %pulse30 = getelementptr inbounds %struct.ir_raw_event, ptr %rawir, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %do.end61.for.body_crit_edge, %for.body.lr.ph
  %i.0145 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end61.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.redrat3_dev, ptr %rr3, i32 0, i32 19, i32 10, i32 %i.0145
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv23 = zext i8 %15 to i32
  %arrayidx25 = getelementptr %struct.redrat3_dev, ptr %rr3, i32 0, i32 19, i32 9, i32 %conv23
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %arrayidx25, align 1
  %conv27 = zext i16 %17 to i32
  %18 = ptrtoint ptr %pulse30 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load35 = load i8, ptr %pulse30, align 1
  %bf.clear32 = and i8 %bf.load35, 127
  %19 = trunc i32 %i.0145 to i8
  %20 = xor i8 %19, -1
  %21 = shl i8 %20, 7
  %storemerge = or i8 %bf.clear32, %21
  store i8 %storemerge, ptr %pulse30, align 1
  %mul.i137 = mul nuw nsw i32 %conv27, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %mul.i137)
  %22 = icmp ult i32 %mul.i137, 2000
  %div.i138143 = lshr i32 %conv27, 1
  %spec.select.i = select i1 %22, i32 1, i32 %div.i138143
  %23 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select.i, ptr %rawir, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_process_ir_data.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_process_ir_data, %if.then54)) #9
          to label %do.end61 [label %if.then54], !srcloc !288

if.then54:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %pulse30 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load56 = load i8, ptr %pulse30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load56)
  %tobool57.not = icmp sgt i8 %bf.load56, -1
  %cond58 = select i1 %tobool57.not, ptr @.str.71, ptr @.str.70
  %25 = ptrtoint ptr %rawir to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rawir, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_process_ir_data.__UNIQUE_ID_ddebug244, ptr noundef %2, ptr noundef nonnull @.str.69, ptr noundef nonnull %cond58, i32 noundef %26, i32 noundef %i.0145) #9
  br label %do.end61

do.end61:                                         ; preds = %if.then54, %for.body
  %27 = ptrtoint ptr %rr3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rr3, align 4
  %call63 = call i32 @ir_raw_event_store_with_filter(ptr noundef %28, ptr noundef nonnull %rawir) #9
  %inc = add nuw nsw i32 %i.0145, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %do.end61.for.end_crit_edge, label %do.end61.for.body_crit_edge

do.end61.for.body_crit_edge:                      ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end61.for.end_crit_edge:                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %do.end61.for.end_crit_edge, %if.end18.for.end_crit_edge
  %pulse64 = getelementptr inbounds %struct.ir_raw_event, ptr %rawir, i32 0, i32 2
  %29 = ptrtoint ptr %pulse64 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load65 = load i8, ptr %pulse64, align 1
  %bf.clear70 = and i8 %bf.load65, 95
  %bf.set71 = or i8 %bf.clear70, 32
  store i8 %bf.set71, ptr %pulse64, align 1
  %30 = ptrtoint ptr %rr3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rr3, align 4
  %timeout73 = getelementptr inbounds %struct.rc_dev, ptr %31, i32 0, i32 34
  %32 = ptrtoint ptr %timeout73 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %timeout73, align 4
  %34 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %rawir, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_process_ir_data.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_process_ir_data, %if.then86)) #9
          to label %do.end89 [label %if.then86], !srcloc !288

if.then86:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %rawir to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rawir, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_process_ir_data.__UNIQUE_ID_ddebug245, ptr noundef %2, ptr noundef nonnull @.str.72, i32 noundef %36) #9
  br label %do.end89

do.end89:                                         ; preds = %if.then86, %for.end
  %37 = ptrtoint ptr %rr3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rr3, align 4
  %call91 = call i32 @ir_raw_event_store_with_filter(ptr noundef %38, ptr noundef nonnull %rawir) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_process_ir_data.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_process_ir_data, %if.then104)) #9
          to label %do.end107 [label %if.then104], !srcloc !288

if.then104:                                       ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_process_ir_data.__UNIQUE_ID_ddebug246, ptr noundef %2, ptr noundef nonnull @.str.73) #9
  br label %do.end107

do.end107:                                        ; preds = %if.then104, %do.end89
  %39 = ptrtoint ptr %rr3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rr3, align 4
  call void @ir_raw_event_handle(ptr noundef %40) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store_with_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @redrat3_get_timeout(ptr nocapture noundef readonly %rr3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %udev = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 11
  %1 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i = shl i32 %4, 8
  %or2 = or i32 %shl.i, -2147483520
  %call4 = tail call i32 @usb_control_msg(ptr noundef %2, i32 noundef %or2, i8 noundef zeroext -72, i8 noundef zeroext -64, i16 noundef zeroext 5, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 4
  br i1 %cmp.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.97) #12
  br label %if.end20

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call7.i.i, align 8
  %mul.i = mul i32 %8, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %mul.i)
  %9 = icmp ult i32 %mul.i, 2000
  %div.i = udiv i32 %mul.i, 2000
  %spec.select.i = select i1 %9, i32 1, i32 %div.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_get_timeout.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_get_timeout, %if.then15)) #9
          to label %if.end20 [label %if.then15], !srcloc !288

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %dev16 = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 1
  %10 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev16, align 4
  %div = udiv i32 %spec.select.i, 1000
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_get_timeout.__UNIQUE_ID_ddebug248, ptr noundef %11, ptr noundef nonnull @.str.99, i32 noundef %div) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.else, %do.end
  %timeout.0 = phi i32 [ 150000, %do.end ], [ %spec.select.i, %if.then15 ], [ %spec.select.i, %if.else ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %timeout.0, %if.end20 ], [ 150000, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @redrat3_set_timeout(ptr nocapture noundef readonly %rc_dev, i32 noundef %timeoutus) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc_dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %udev1 = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev1, align 4
  %dev2 = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 4) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %timeoutus)
  %cmp.i = icmp ugt i32 %timeoutus, 500000
  %phi.bo.i = mul i32 %timeoutus, 2000
  %phi.bo8.i = udiv i32 %phi.bo.i, 1000
  %cond.i = select i1 %cmp.i, i32 1000000, i32 %phi.bo8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool.not.i = icmp eq i32 %cond.i, 0
  %cond4.i = select i1 %tobool.not.i, i32 1, i32 %cond.i
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond4.i, ptr %call7.i, align 8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 8
  %shl.i = shl i32 %9, 8
  %or = or i32 %shl.i, -2147483648
  %call5 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or, i8 noundef zeroext -73, i8 noundef zeroext 64, i16 noundef zeroext 5, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 4, i32 noundef 25000) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_set_timeout.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_set_timeout, %if.then10)) #9
          to label %do.end [label %if.then10], !srcloc !288

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call7.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_set_timeout.__UNIQUE_ID_ddebug249, ptr noundef %5, ptr noundef nonnull @.str.101, i32 noundef %11, i32 noundef %call5) #9
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call5)
  %cmp = icmp eq i32 %call5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp13 = icmp sgt i32 %call5, -1
  %spec.store.select = select i1 %cmp13, i32 -5, i32 %call5
  %ret.0 = select i1 %cmp, i32 0, i32 %spec.store.select
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @redrat3_transmit_ir(ptr nocapture noundef readonly %rcdev, ptr nocapture noundef readonly %txbuf, i32 noundef %count) #2 align 64 {
entry:
  %ret_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rcdev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret_len) #9
  %4 = ptrtoint ptr %ret_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ret_len, align 4, !annotation !294
  %transmitting = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %transmitting to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %transmitting, align 4, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 510, i32 %count)
  %cmp = icmp ugt i32 %count, 510
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %transmitting to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %transmitting, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1020) #13
  %tobool5.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 1041) #13
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end7.out_crit_edge, label %for.cond.preheader

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.preheader:                               ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp12194.not = icmp eq i32 %count, 0
  br i1 %cmp12194.not, label %for.cond.preheader.for.end61_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end61_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end61

for.body:                                         ; preds = %if.end56.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0196 = phi i32 [ %inc60, %if.end56.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %curlencheck.0195 = phi i8 [ %curlencheck.1, %if.end56.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %txbuf, i32 %i.0196
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %11)
  %cmp.i = icmp ugt i32 %11, 500000
  %phi.bo.i = mul i32 %11, 2000
  %phi.bo8.i = udiv i32 %phi.bo.i, 1000
  %cond.i = select i1 %cmp.i, i32 1000000, i32 %phi.bo8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool.not.i = icmp eq i32 %cond.i, 0
  %cond4.i = select i1 %tobool.not.i, i32 1, i32 %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %cond4.i)
  %cmp14 = icmp ugt i32 %cond4.i, 65535
  br i1 %cmp14, label %do.end18, label %for.body.if.end21_crit_edge

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.end18:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.105, i32 noundef %11, i32 noundef 32767) #12
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %for.body.if.end21_crit_edge
  %cur_sample_len.0 = phi i32 [ 65535, %do.end18 ], [ %cond4.i, %for.body.if.end21_crit_edge ]
  %conv = zext i8 %curlencheck.0195 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %curlencheck.0195)
  %cmp23189.not = icmp eq i8 %curlencheck.0195, 0
  br i1 %cmp23189.not, label %if.end21.for.end_crit_edge, label %if.end21.for.body25_crit_edge

if.end21.for.body25_crit_edge:                    ; preds = %if.end21
  br label %for.body25

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body25:                                       ; preds = %for.inc.for.body25_crit_edge, %if.end21.for.body25_crit_edge
  %lencheck.0190 = phi i32 [ %inc, %for.inc.for.body25_crit_edge ], [ 0, %if.end21.for.body25_crit_edge ]
  %arrayidx26 = getelementptr i32, ptr %call7.i.i.i, i32 %lencheck.0190
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %cur_sample_len.0)
  %cmp27 = icmp eq i32 %13, %cur_sample_len.0
  br i1 %cmp27, label %for.body25.for.end_crit_edge, label %for.inc

for.body25.for.end_crit_edge:                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %for.body25
  %inc = add nuw nsw i32 %lencheck.0190, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.do.body35_crit_edge, label %for.inc.for.body25_crit_edge

for.inc.for.body25_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body25

for.inc.do.body35_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body35

for.end:                                          ; preds = %for.body25.for.end_crit_edge, %if.end21.for.end_crit_edge
  %lencheck.0.lcssa = phi i32 [ 0, %if.end21.for.end_crit_edge ], [ %lencheck.0190, %for.body25.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %lencheck.0.lcssa, i32 %conv)
  %cmp32 = icmp eq i32 %lencheck.0.lcssa, %conv
  br i1 %cmp32, label %for.end.do.body35_crit_edge, label %for.end.if.end56_crit_edge

for.end.if.end56_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

for.end.do.body35_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body35

do.body35:                                        ; preds = %for.end.do.body35_crit_edge, %for.inc.do.body35_crit_edge
  %lencheck.0.lcssa202 = phi i32 [ %lencheck.0.lcssa, %for.end.do.body35_crit_edge ], [ %conv, %for.inc.do.body35_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_transmit_ir.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_transmit_ir, %if.then40)) #9
          to label %do.end45 [label %if.then40], !srcloc !288

if.then40:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_transmit_ir.__UNIQUE_ID_ddebug260, ptr noundef %3, ptr noundef nonnull @.str.107, i32 noundef %i.0196, i32 noundef %15, i32 noundef %conv, i32 noundef %cur_sample_len.0) #9
  br label %do.end45

do.end45:                                         ; preds = %if.then40, %do.body35
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %curlencheck.0195)
  %cmp47.not = icmp eq i8 %curlencheck.0195, -1
  br i1 %cmp47.not, label %do.end45.out_crit_edge, label %if.then49

do.end45.out_crit_edge:                           ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then49:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx50 = getelementptr i32, ptr %call7.i.i.i, i32 %conv
  %16 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cur_sample_len.0, ptr %arrayidx50, align 4
  %conv51 = trunc i32 %cur_sample_len.0 to i16
  %arrayidx53 = getelementptr %struct.redrat3_irdata, ptr %call7.i.i, i32 0, i32 9, i32 %conv
  %17 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %conv51, ptr %arrayidx53, align 1
  %inc54 = add nuw i8 %curlencheck.0195, 1
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %for.end.if.end56_crit_edge
  %lencheck.0.lcssa201 = phi i32 [ %lencheck.0.lcssa202, %if.then49 ], [ %lencheck.0.lcssa, %for.end.if.end56_crit_edge ]
  %curlencheck.1 = phi i8 [ %inc54, %if.then49 ], [ %curlencheck.0195, %for.end.if.end56_crit_edge ]
  %conv57 = trunc i32 %lencheck.0.lcssa201 to i8
  %arrayidx58 = getelementptr %struct.redrat3_irdata, ptr %call7.i.i, i32 0, i32 10, i32 %i.0196
  %18 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv57, ptr %arrayidx58, align 1
  %inc60 = add nuw i32 %i.0196, 1
  %exitcond198.not = icmp eq i32 %inc60, %count
  br i1 %exitcond198.not, label %if.end56.for.end61_crit_edge, label %if.end56.for.body_crit_edge

if.end56.for.body_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end56.for.end61_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end61

for.end61:                                        ; preds = %if.end56.for.end61_crit_edge, %for.cond.preheader.for.end61_crit_edge
  %curlencheck.0.lcssa = phi i8 [ 0, %for.cond.preheader.for.end61_crit_edge ], [ %curlencheck.1, %if.end56.for.end61_crit_edge ]
  %arrayidx63 = getelementptr %struct.redrat3_irdata, ptr %call7.i.i, i32 0, i32 10, i32 %count
  %19 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 127, ptr %arrayidx63, align 1
  %add = add i32 %count, 1
  %arrayidx65 = getelementptr %struct.redrat3_irdata, ptr %call7.i.i, i32 0, i32 10, i32 %add
  %20 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 127, ptr %arrayidx65, align 1
  %21 = add i32 %count, 531
  %22 = trunc i32 %count to i16
  %conv67 = add i16 %22, 527
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv67, ptr %call7.i.i, align 8
  %transfer_type = getelementptr inbounds %struct.redrat3_header, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %transfer_type to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 33, ptr %transfer_type, align 2
  %pause = getelementptr inbounds %struct.redrat3_irdata, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 50, ptr %pause, align 4
  %carrier = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 21
  %26 = ptrtoint ptr %carrier to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %carrier, align 4
  %div.i = udiv i32 6000000, %27
  %28 = trunc i32 %div.i to i16
  %conv.i = sub i16 0, %28
  %mod_freq_count = getelementptr inbounds %struct.redrat3_irdata, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %mod_freq_count to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i, ptr %mod_freq_count, align 8
  %no_lengths = getelementptr inbounds %struct.redrat3_irdata, ptr %call7.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %no_lengths to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %curlencheck.0.lcssa, ptr %no_lengths, align 1
  %conv72 = add i16 %22, 2
  %sig_size = getelementptr inbounds %struct.redrat3_irdata, ptr %call7.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %sig_size to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv72, ptr %sig_size, align 8
  %udev = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %udev, align 4
  %ep_out = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 16
  %34 = ptrtoint ptr %ep_out to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ep_out, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bEndpointAddress, align 1
  %conv73 = zext i8 %37 to i32
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %33, align 8
  %shl.i = shl i32 %39, 8
  %shl1.i = shl nuw nsw i32 %conv73, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %call76 = call i32 @usb_bulk_msg(ptr noundef %33, i32 noundef %or, ptr noundef nonnull %call7.i.i, i32 noundef %21, ptr noundef nonnull %ret_len, i32 noundef 10000) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_transmit_ir.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_transmit_ir, %if.then89)) #9
          to label %do.end92 [label %if.then89], !srcloc !288

if.then89:                                        ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %ret_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ret_len, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_transmit_ir.__UNIQUE_ID_ddebug261, ptr noundef %3, ptr noundef nonnull @.str.108, i32 noundef %41, i32 noundef %call76) #9
  br label %do.end92

do.end92:                                         ; preds = %if.then89, %for.end61
  %42 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %udev, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  %shl.i185 = shl i32 %45, 8
  %or96 = or i32 %shl.i185, -2147483520
  %call98 = call i32 @usb_control_msg(ptr noundef %43, i32 noundef %or96, i8 noundef zeroext -77, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2, i32 noundef 10000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %do.end104, label %do.end92.out_crit_edge

do.end92.out_crit_edge:                           ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end104:                                        ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.110, i32 noundef %call98) #12
  br label %out

out:                                              ; preds = %do.end104, %do.end92.out_crit_edge, %do.end45.out_crit_edge, %if.end7.out_crit_edge
  %ret.0 = phi i32 [ %call98, %do.end104 ], [ -12, %if.end7.out_crit_edge ], [ %count, %do.end92.out_crit_edge ], [ -22, %do.end45.out_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i) #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  %46 = ptrtoint ptr %transmitting to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %transmitting, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -11, %do.end ], [ %ret.0, %out ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret_len) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @redrat3_set_tx_carrier(ptr nocapture noundef readonly %rcdev, i32 noundef %carrier) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rcdev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @redrat3_set_tx_carrier.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@redrat3_set_tx_carrier, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !288

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @redrat3_set_tx_carrier.__UNIQUE_ID_ddebug259, ptr noundef %3, ptr noundef nonnull @.str.113, i32 noundef %carrier) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %carrier)
  %cmp = icmp eq i32 %carrier, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %carrier6 = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %carrier6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %carrier, ptr %carrier6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @redrat3_wideband_receiver(ptr nocapture noundef readonly %rcdev, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rcdev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %cmp = icmp ne i32 %enable, 0
  %wideband = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 7
  %frombool = zext i1 %cmp to i8
  %2 = ptrtoint ptr %wideband to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %wideband, align 1
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then:                                          ; preds = %entry
  %learn_urb = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %learn_urb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %learn_urb, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %4, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %do.end

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.redrat3_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.10, i32 noundef %call) #12
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %ret.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.if.end3_crit_edge ], [ 0, %entry.if.end3_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @redrat3_send_cmd(i32 noundef %cmd, ptr nocapture noundef readonly %rr3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %udev1 = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 11
  %1 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev1, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i = shl i32 %4, 8
  %or3 = or i32 %shl.i, -2147483520
  %conv = trunc i32 %cmd to i8
  %call4 = tail call i32 @usb_control_msg(ptr noundef %2, i32 noundef %or3, i8 noundef zeroext %conv, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, i32 noundef 10000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.redrat3_dev, ptr %rr3, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call7.i.i, align 8
  %conv7 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.124, i32 noundef %call4, i32 noundef %conv7) #12
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call7.i.i, align 8
  %conv8 = zext i8 %10 to i32
  br label %if.end9

if.end9:                                          ; preds = %if.else, %do.end
  %res.0 = phi i32 [ -5, %do.end ], [ %conv8, %if.else ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %if.end9 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !41, !42, !43, !44, !46, !47, !49, !50, !51, !52, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !81, !82, !83, !84, !86, !87, !89, !90, !92, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !153, !154, !155, !157, !158, !159, !160, !162, !163, !165, !166, !168, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195, !196, !198, !199, !201, !202, !203, !205, !207, !209, !211, !213, !214, !215, !216, !218, !220, !221, !222, !223, !225, !226, !228, !229, !230, !232, !233, !234, !235, !237, !238, !239, !241, !242, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !277}
!llvm.module.flags = !{!279, !280, !281, !282, !283, !284, !285, !286}
!llvm.ident = !{!287}

!0 = !{ptr @__param_length_fuzz, !1, !"__param_length_fuzz", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/redrat3.c", i32 126, i32 1}
!2 = !{ptr @__UNIQUE_ID_length_fuzztype237, !1, !"__UNIQUE_ID_length_fuzztype237", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_length_fuzz238, !4, !"__UNIQUE_ID_length_fuzz238", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/redrat3.c", i32 127, i32 1}
!5 = !{ptr @__param_minimum_pause, !6, !"__param_minimum_pause", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/redrat3.c", i32 137, i32 1}
!7 = !{ptr @__UNIQUE_ID_minimum_pausetype239, !6, !"__UNIQUE_ID_minimum_pausetype239", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_minimum_pause240, !9, !"__UNIQUE_ID_minimum_pause240", i1 false, i1 false}
!9 = !{!"../drivers/media/rc/redrat3.c", i32 138, i32 1}
!10 = !{ptr @__param_periods_measure_carrier, !11, !"__param_periods_measure_carrier", i1 false, i1 false}
!11 = !{!"../drivers/media/rc/redrat3.c", i32 148, i32 1}
!12 = !{ptr @__UNIQUE_ID_periods_measure_carriertype241, !11, !"__UNIQUE_ID_periods_measure_carriertype241", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_periods_measure_carrier242, !14, !"__UNIQUE_ID_periods_measure_carrier242", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/redrat3.c", i32 149, i32 1}
!15 = !{ptr @__initcall__kmod_redrat3__266_1176_redrat3_dev_driver_init6, !16, !"__initcall__kmod_redrat3__266_1176_redrat3_dev_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/media/rc/redrat3.c", i32 1176, i32 1}
!17 = !{ptr @__exitcall_redrat3_dev_driver_exit, !16, !"__exitcall_redrat3_dev_driver_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_description267, !19, !"__UNIQUE_ID_description267", i1 false, i1 false}
!19 = !{!"../drivers/media/rc/redrat3.c", i32 1178, i32 1}
!20 = !{ptr @__UNIQUE_ID_author268, !21, !"__UNIQUE_ID_author268", i1 false, i1 false}
!21 = !{!"../drivers/media/rc/redrat3.c", i32 1179, i32 1}
!22 = !{ptr @__UNIQUE_ID_author269, !23, !"__UNIQUE_ID_author269", i1 false, i1 false}
!23 = !{!"../drivers/media/rc/redrat3.c", i32 1180, i32 1}
!24 = !{ptr @__UNIQUE_ID_file270, !25, !"__UNIQUE_ID_file270", i1 false, i1 false}
!25 = !{!"../drivers/media/rc/redrat3.c", i32 1181, i32 1}
!26 = !{ptr @__UNIQUE_ID_license271, !25, !"__UNIQUE_ID_license271", i1 false, i1 false}
!27 = !{ptr @__param_str_length_fuzz, !1, !"__param_str_length_fuzz", i1 false, i1 false}
!28 = !{ptr @length_fuzz, !29, !"length_fuzz", i1 false, i1 false}
!29 = !{!"../drivers/media/rc/redrat3.c", i32 125, i32 12}
!30 = !{ptr @__param_str_minimum_pause, !6, !"__param_str_minimum_pause", i1 false, i1 false}
!31 = !{ptr @minimum_pause, !32, !"minimum_pause", i1 false, i1 false}
!32 = !{!"../drivers/media/rc/redrat3.c", i32 136, i32 12}
!33 = !{ptr @__param_str_periods_measure_carrier, !11, !"__param_str_periods_measure_carrier", i1 false, i1 false}
!34 = !{ptr @periods_measure_carrier, !35, !"periods_measure_carrier", i1 false, i1 false}
!35 = !{!"../drivers/media/rc/redrat3.c", i32 147, i32 12}
!36 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @redrat3_dev_driver, !38, !"redrat3_dev_driver", i1 false, i1 false}
!38 = !{!"../drivers/media/rc/redrat3.c", i32 1166, i32 26}
!39 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/rc/redrat3.c", i32 999, i32 4}
!41 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @redrat3_dev_probe.__UNIQUE_ID_ddebug264, !40, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!44 = !{ptr @.str.4, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/rc/redrat3.c", i32 1012, i32 4}
!46 = !{ptr @redrat3_dev_probe.__UNIQUE_ID_ddebug265, !45, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!47 = !{ptr @.str.5, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/rc/redrat3.c", i32 1019, i32 3}
!49 = !{ptr @.str.6, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @redrat3_dev_probe._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @redrat3_dev_probe._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.8, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/rc/redrat3.c", i32 1100, i32 18}
!55 = !{ptr @.str.9, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/rc/redrat3.c", i32 1101, i32 29}
!57 = !{ptr @.str.10, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/rc/redrat3.c", i32 699, i32 5}
!59 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @redrat3_handle_async._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @redrat3_handle_async._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/rc/redrat3.c", i32 707, i32 5}
!64 = !{ptr @redrat3_handle_async._entry.12, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @redrat3_handle_async._entry_ptr.14, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/rc/redrat3.c", i32 720, i32 3}
!68 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @redrat3_handle_async._entry.15, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @redrat3_handle_async._entry_ptr.18, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/rc/redrat3.c", i32 664, i32 3}
!73 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @redrat3_get_ir_data._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @redrat3_get_ir_data._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/rc/redrat3.c", i32 679, i32 3}
!78 = !{ptr @redrat3_get_ir_data.__UNIQUE_ID_ddebug258, !77, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/rc/redrat3.c", i32 608, i32 3}
!81 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @redrat3_read_packet_start._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @redrat3_read_packet_start._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/rc/redrat3.c", i32 624, i32 3}
!86 = !{ptr @redrat3_read_packet_start.__UNIQUE_ID_ddebug255, !85, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!87 = !{ptr @.str.25, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/rc/redrat3.c", i32 629, i32 3}
!89 = !{ptr @redrat3_read_packet_start.__UNIQUE_ID_ddebug256, !88, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!90 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/rc/redrat3.c", i32 239, i32 3}
!92 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @redrat3_dump_fw_error._entry, !91, !"_entry", i1 false, i1 false}
!95 = !{ptr @redrat3_dump_fw_error._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.30, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/rc/redrat3.c", i32 243, i32 3}
!98 = !{ptr @redrat3_dump_fw_error._entry.29, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @redrat3_dump_fw_error._entry_ptr.31, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.33, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/rc/redrat3.c", i32 248, i32 3}
!102 = !{ptr @redrat3_dump_fw_error._entry.32, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @redrat3_dump_fw_error._entry_ptr.34, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/rc/redrat3.c", i32 251, i32 3}
!106 = !{ptr @redrat3_dump_fw_error._entry.35, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @redrat3_dump_fw_error._entry_ptr.37, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/rc/redrat3.c", i32 254, i32 3}
!110 = !{ptr @redrat3_dump_fw_error._entry.38, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @redrat3_dump_fw_error._entry_ptr.40, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/rc/redrat3.c", i32 257, i32 3}
!114 = !{ptr @redrat3_dump_fw_error._entry.41, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @redrat3_dump_fw_error._entry_ptr.43, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/rc/redrat3.c", i32 260, i32 3}
!118 = !{ptr @redrat3_dump_fw_error._entry.44, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @redrat3_dump_fw_error._entry_ptr.46, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/rc/redrat3.c", i32 263, i32 3}
!122 = !{ptr @redrat3_dump_fw_error._entry.47, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @redrat3_dump_fw_error._entry_ptr.49, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/rc/redrat3.c", i32 268, i32 3}
!126 = !{ptr @redrat3_dump_fw_error._entry.50, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @redrat3_dump_fw_error._entry_ptr.52, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/rc/redrat3.c", i32 277, i32 4}
!130 = !{ptr @redrat3_dump_fw_error._entry.53, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @redrat3_dump_fw_error._entry_ptr.55, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/rc/redrat3.c", i32 280, i32 3}
!134 = !{ptr @redrat3_dump_fw_error._entry.56, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @redrat3_dump_fw_error._entry_ptr.58, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/rc/redrat3.c", i32 283, i32 3}
!138 = !{ptr @redrat3_dump_fw_error._entry.59, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @redrat3_dump_fw_error._entry_ptr.61, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/rc/redrat3.c", i32 287, i32 3}
!142 = !{ptr @redrat3_dump_fw_error._entry.62, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @redrat3_dump_fw_error._entry_ptr.64, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/rc/redrat3.c", i32 640, i32 3}
!146 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @redrat3_read_packet_continue._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @redrat3_read_packet_continue._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @redrat3_read_packet_continue.__UNIQUE_ID_ddebug257, !150, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!150 = !{!"../drivers/media/rc/redrat3.c", i32 648, i32 2}
!151 = !{ptr @.str.67, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/rc/redrat3.c", i32 349, i32 2}
!153 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @redrat3_process_ir_data.__UNIQUE_ID_ddebug243, !152, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/rc/redrat3.c", i32 376, i32 3}
!157 = !{ptr @redrat3_process_ir_data.__UNIQUE_ID_ddebug244, !156, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!158 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/rc/redrat3.c", i32 385, i32 2}
!162 = !{ptr @redrat3_process_ir_data.__UNIQUE_ID_ddebug245, !161, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!163 = !{ptr @.str.73, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/rc/redrat3.c", i32 389, i32 2}
!165 = !{ptr @redrat3_process_ir_data.__UNIQUE_ID_ddebug246, !164, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!166 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/rc/redrat3.c", i32 546, i32 2}
!168 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @redrat3_reset.__UNIQUE_ID_ddebug250, !167, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/rc/redrat3.c", i32 552, i32 2}
!172 = !{ptr @redrat3_reset.__UNIQUE_ID_ddebug251, !171, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!173 = !{ptr @.str.77, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/rc/redrat3.c", i32 558, i32 2}
!175 = !{ptr @redrat3_reset.__UNIQUE_ID_ddebug252, !174, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!176 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/rc/redrat3.c", i32 564, i32 2}
!178 = !{ptr @redrat3_reset.__UNIQUE_ID_ddebug253, !177, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!179 = !{ptr @.str.79, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/rc/redrat3.c", i32 571, i32 2}
!181 = !{ptr @redrat3_reset.__UNIQUE_ID_ddebug254, !180, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/rc/redrat3.c", i32 591, i32 3}
!184 = !{ptr @.str.81, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @redrat3_get_firmware_rev._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @redrat3_get_firmware_rev._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.83, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/rc/redrat3.c", i32 593, i32 3}
!189 = !{ptr @redrat3_get_firmware_rev._entry.82, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @redrat3_get_firmware_rev._entry_ptr.84, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.85, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/rc/redrat3.c", i32 899, i32 3}
!193 = !{ptr @.str.86, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @redrat3_learn_complete._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @redrat3_learn_complete._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/rc/redrat3.c", i32 918, i32 3}
!198 = !{ptr @redrat3_led_complete.__UNIQUE_ID_ddebug263, !197, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!199 = !{ptr @.str.88, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/rc/redrat3.c", i32 861, i32 4}
!201 = !{ptr @.str.89, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @redrat3_brightness_set.__UNIQUE_ID_ddebug262, !200, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!203 = !{ptr @.str.90, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/rc/redrat3.c", i32 938, i32 4}
!205 = !{ptr @.str.91, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/rc/redrat3.c", i32 939, i32 38}
!207 = !{ptr @.str.92, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/rc/redrat3.c", i32 939, i32 46}
!209 = !{ptr @.str.93, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/rc/redrat3.c", i32 958, i32 17}
!211 = !{ptr @.str.94, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/rc/redrat3.c", i32 962, i32 3}
!213 = !{ptr @.str.95, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @redrat3_init_rc_dev._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @redrat3_init_rc_dev._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.96, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../include/linux/usb.h", i32 912, i32 31}
!218 = !{ptr @.str.97, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/rc/redrat3.c", i32 485, i32 3}
!220 = !{ptr @.str.98, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @redrat3_get_timeout._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @redrat3_get_timeout._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.99, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/rc/redrat3.c", i32 489, i32 3}
!225 = !{ptr @redrat3_get_timeout.__UNIQUE_ID_ddebug248, !224, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!226 = !{ptr @.str.100, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/rc/redrat3.c", i32 514, i32 2}
!228 = !{ptr @.str.101, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @redrat3_set_timeout.__UNIQUE_ID_ddebug249, !227, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!230 = !{ptr @.str.102, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/rc/redrat3.c", i32 761, i32 3}
!232 = !{ptr @.str.103, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @redrat3_transmit_ir._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @redrat3_transmit_ir._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.105, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/rc/redrat3.c", i32 786, i32 4}
!237 = !{ptr @redrat3_transmit_ir._entry.104, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @redrat3_transmit_ir._entry_ptr.106, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.107, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/rc/redrat3.c", i32 795, i32 4}
!241 = !{ptr @redrat3_transmit_ir.__UNIQUE_ID_ddebug260, !240, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!242 = !{ptr @.str.108, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/rc/redrat3.c", i32 829, i32 2}
!244 = !{ptr @redrat3_transmit_ir.__UNIQUE_ID_ddebug261, !243, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!245 = !{ptr @.str.110, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/rc/redrat3.c", i32 838, i32 3}
!247 = !{ptr @redrat3_transmit_ir._entry.109, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @redrat3_transmit_ir._entry_ptr.111, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.112, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/rc/redrat3.c", i32 739, i32 2}
!251 = !{ptr @.str.113, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @redrat3_set_tx_carrier.__UNIQUE_ID_ddebug259, !250, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!253 = !{ptr @.str.114, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/rc/redrat3.c", i32 878, i32 4}
!255 = !{ptr @redrat3_wideband_receiver._entry, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @redrat3_wideband_receiver._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.115, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/rc/redrat3.c", i32 429, i32 3}
!259 = !{ptr @redrat3_enable_detector.__UNIQUE_ID_ddebug247, !258, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!260 = !{ptr @.str.116, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/rc/redrat3.c", i32 434, i32 3}
!262 = !{ptr @redrat3_enable_detector._entry, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @redrat3_enable_detector._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.118, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/rc/redrat3.c", i32 441, i32 3}
!266 = !{ptr @redrat3_enable_detector._entry.117, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @redrat3_enable_detector._entry_ptr.119, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.121, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/rc/redrat3.c", i32 447, i32 3}
!270 = !{ptr @redrat3_enable_detector._entry.120, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @redrat3_enable_detector._entry_ptr.122, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.123, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/rc/redrat3.c", i32 410, i32 3}
!274 = !{ptr @.str.124, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @redrat3_send_cmd._entry, !273, !"_entry", i1 false, i1 false}
!276 = !{ptr @redrat3_send_cmd._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @redrat3_dev_table, !278, !"redrat3_dev_table", i1 false, i1 false}
!278 = !{!"../drivers/media/rc/redrat3.c", i32 179, i32 35}
!279 = !{i32 1, !"wchar_size", i32 2}
!280 = !{i32 1, !"min_enum_size", i32 4}
!281 = !{i32 8, !"branch-target-enforcement", i32 0}
!282 = !{i32 8, !"sign-return-address", i32 0}
!283 = !{i32 8, !"sign-return-address-all", i32 0}
!284 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!285 = !{i32 7, !"uwtable", i32 1}
!286 = !{i32 7, !"frame-pointer", i32 2}
!287 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!288 = !{i64 2148336811, i64 2148336816, i64 2148336829, i64 2148336873, i64 2148336907, i64 2148336928}
!289 = !{i8 0, i8 2}
!290 = !{i64 2148525883, i64 2148525909, i64 2148525938, i64 2148525972, i64 2148526003, i64 2148526026}
!291 = !{i64 2148625241}
!292 = !{i64 1008931, i64 1008955, i64 1008976, i64 1008993, i64 1009010}
!293 = !{i64 2148625467}
!294 = !{!"auto-init"}
