; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/xpad.c_pt.bc'
source_filename = "../drivers/input/joystick/xpad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
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
%struct.xpad_device = type { i16, i16, ptr, i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.xboxone_init_packet = type { i16, i16, ptr, i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.usb_xpad = type { ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, i32, ptr, %struct.usb_anchor, i8, i8, ptr, i32, %struct.spinlock, [3 x %struct.xpad_output_packet], i32, i32, ptr, [64 x i8], i32, i32, i32, ptr, %struct.work_struct }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.xpad_output_packet = type { [64 x i8], i8, i8 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.xpad_led = type { [16 x i8], %struct.led_classdev, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.68 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.68 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__param_str_dpad_to_buttons = internal constant [21 x i8] c"xpad.dpad_to_buttons\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@dpad_to_buttons = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_dpad_to_buttons = internal constant %struct.kernel_param { ptr @__param_str_dpad_to_buttons, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @dpad_to_buttons } }, section "__param", align 4
@__UNIQUE_ID_dpad_to_buttonstype232 = internal constant [35 x i8] c"xpad.parmtype=dpad_to_buttons:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_dpad_to_buttons233 = internal constant [81 x i8] c"xpad.parm=dpad_to_buttons:Map D-PAD to buttons rather than axes for unknown pads\00", section ".modinfo", align 1
@__param_str_triggers_to_buttons = internal constant [25 x i8] c"xpad.triggers_to_buttons\00", align 1
@triggers_to_buttons = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_triggers_to_buttons = internal constant %struct.kernel_param { ptr @__param_str_triggers_to_buttons, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @triggers_to_buttons } }, section "__param", align 4
@__UNIQUE_ID_triggers_to_buttonstype234 = internal constant [39 x i8] c"xpad.parmtype=triggers_to_buttons:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_triggers_to_buttons235 = internal constant [88 x i8] c"xpad.parm=triggers_to_buttons:Map triggers to buttons rather than axes for unknown pads\00", section ".modinfo", align 1
@__param_str_sticks_to_null = internal constant [20 x i8] c"xpad.sticks_to_null\00", align 1
@sticks_to_null = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_sticks_to_null = internal constant %struct.kernel_param { ptr @__param_str_sticks_to_null, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @sticks_to_null } }, section "__param", align 4
@__UNIQUE_ID_sticks_to_nulltype236 = internal constant [34 x i8] c"xpad.parmtype=sticks_to_null:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_sticks_to_null237 = internal constant [67 x i8] c"xpad.parm=sticks_to_null:Do not map sticks at all for unknown pads\00", section ".modinfo", align 1
@__param_str_auto_poweroff = internal constant [19 x i8] c"xpad.auto_poweroff\00", align 1
@auto_poweroff = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_auto_poweroff = internal constant %struct.kernel_param { ptr @__param_str_auto_poweroff, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @auto_poweroff } }, section "__param", align 4
@__UNIQUE_ID_auto_powerofftype238 = internal constant [33 x i8] c"xpad.parmtype=auto_poweroff:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_auto_poweroff239 = internal constant [66 x i8] c"xpad.parm=auto_poweroff:Power off wireless controllers on suspend\00", section ".modinfo", align 1
@__initcall__kmod_xpad__252_1979_xpad_driver_init6 = internal global ptr @xpad_driver_init, section ".initcall6.init", align 4
@xpad_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @xpad_probe, ptr @xpad_disconnect, ptr null, ptr @xpad_suspend, ptr @xpad_resume, ptr @xpad_resume, ptr null, ptr null, ptr @xpad_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_xpad_driver_exit = internal global ptr @xpad_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author253 = internal constant [51 x i8] c"xpad.author=Marko Friedemann <mfr@bmx-chemnitz.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [34 x i8] c"xpad.description=X-Box pad driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [38 x i8] c"xpad.file=drivers/input/joystick/xpad\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [17 x i8] c"xpad.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xpad\00", [27 x i8] zeroinitializer }, align 32
@xpad_table = internal constant { [63 x %struct.usb_device_id], [376 x i8] } { [63 x %struct.usb_device_id] [%struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 88, i8 66, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 121, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 121, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 1103, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 1103, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 1118, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 1118, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 1118, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 71, i8 -48, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 1133, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 1133, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 1390, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 1390, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 1699, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 1699, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 1848, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 1848, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1848, i16 17728, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 1848, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 71, i8 -48, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 2047, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 2047, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 3695, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 3695, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 3695, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 71, i8 -48, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 3853, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 3853, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 3853, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 71, i8 -48, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 4152, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 4152, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 4553, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 4553, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 4617, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 4617, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 4779, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 4779, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 5168, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 5168, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 5227, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 5227, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 5426, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 5426, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 5426, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 71, i8 -48, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 5604, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 5604, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 5678, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 5678, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 5769, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 5769, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 6473, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 6473, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 7085, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 7085, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 8406, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 8406, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 8406, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 71, i8 -48, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 9414, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 9414, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 9414, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 71, i8 -48, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 11812, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 71, i8 -48, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 12068, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 12068, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 12933, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 12933, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 93, i8 -127, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [376 x i8] zeroinitializer }, align 32
@xpad_device = internal constant { [226 x %struct.xpad_device], [680 x i8] } { [226 x %struct.xpad_device] [%struct.xpad_device { i16 121, i16 6356, ptr @.str.3, i8 0, i8 1 }, %struct.xpad_device { i16 1103, i16 3840, ptr @.str.4, i8 0, i8 0 }, %struct.xpad_device { i16 1103, i16 3843, ptr @.str.4, i8 0, i8 0 }, %struct.xpad_device { i16 1103, i16 3847, ptr @.str.5, i8 0, i8 0 }, %struct.xpad_device { i16 1103, i16 3856, ptr @.str.6, i8 0, i8 0 }, %struct.xpad_device { i16 1103, i16 -19674, ptr @.str.7, i8 0, i8 1 }, %struct.xpad_device { i16 1118, i16 514, ptr @.str.8, i8 0, i8 0 }, %struct.xpad_device { i16 1118, i16 645, ptr @.str.9, i8 0, i8 0 }, %struct.xpad_device { i16 1118, i16 647, ptr @.str.10, i8 0, i8 0 }, %struct.xpad_device { i16 1118, i16 648, ptr @.str.11, i8 0, i8 0 }, %struct.xpad_device { i16 1118, i16 649, ptr @.str.12, i8 0, i8 0 }, %struct.xpad_device { i16 1118, i16 654, ptr @.str.13, i8 0, i8 1 }, %struct.xpad_device { i16 1118, i16 655, ptr @.str.14, i8 0, i8 1 }, %struct.xpad_device { i16 1118, i16 657, ptr @.str.15, i8 1, i8 2 }, %struct.xpad_device { i16 1118, i16 721, ptr @.str.16, i8 0, i8 3 }, %struct.xpad_device { i16 1118, i16 733, ptr @.str.17, i8 0, i8 3 }, %struct.xpad_device { i16 1118, i16 739, ptr @.str.18, i8 0, i8 3 }, %struct.xpad_device { i16 1118, i16 746, ptr @.str.19, i8 0, i8 3 }, %struct.xpad_device { i16 1118, i16 1817, ptr @.str.20, i8 1, i8 2 }, %struct.xpad_device { i16 1118, i16 2834, ptr @.str.21, i8 8, i8 3 }, %struct.xpad_device { i16 1133, i16 -15843, ptr @.str.22, i8 0, i8 1 }, %struct.xpad_device { i16 1133, i16 -15842, ptr @.str.23, i8 0, i8 1 }, %struct.xpad_device { i16 1133, i16 -15841, ptr @.str.24, i8 0, i8 1 }, %struct.xpad_device { i16 1133, i16 -15806, ptr @.str.25, i8 0, i8 1 }, %struct.xpad_device { i16 1133, i16 -13692, ptr @.str.26, i8 0, i8 0 }, %struct.xpad_device { i16 1133, i16 -13688, ptr @.str.27, i8 0, i8 0 }, %struct.xpad_device { i16 1133, i16 -13686, ptr @.str.28, i8 0, i8 0 }, %struct.xpad_device { i16 1133, i16 -13661, ptr @.str.29, i8 0, i8 1 }, %struct.xpad_device { i16 1390, i16 8196, ptr @.str.30, i8 0, i8 1 }, %struct.xpad_device { i16 1533, i16 4103, ptr @.str.31, i8 0, i8 0 }, %struct.xpad_device { i16 1533, i16 4218, ptr @.str.32, i8 0, i8 0 }, %struct.xpad_device { i16 1534, i16 12336, ptr @.str.33, i8 0, i8 0 }, %struct.xpad_device { i16 1534, i16 12337, ptr @.str.33, i8 0, i8 0 }, %struct.xpad_device { i16 1578, i16 32, ptr @.str.34, i8 0, i8 0 }, %struct.xpad_device { i16 1578, i16 51, ptr @.str.35, i8 0, i8 0 }, %struct.xpad_device { i16 1699, i16 512, ptr @.str.36, i8 0, i8 0 }, %struct.xpad_device { i16 1699, i16 513, ptr @.str.37, i8 0, i8 0 }, %struct.xpad_device { i16 1699, i16 -2790, ptr @.str.38, i8 0, i8 1 }, %struct.xpad_device { i16 1848, i16 17670, ptr @.str.39, i8 0, i8 0 }, %struct.xpad_device { i16 1848, i16 17686, ptr @.str.40, i8 0, i8 0 }, %struct.xpad_device { i16 1848, i16 17696, ptr @.str.41, i8 0, i8 0 }, %struct.xpad_device { i16 1848, i16 17698, ptr @.str.42, i8 0, i8 0 }, %struct.xpad_device { i16 1848, i16 17702, ptr @.str.41, i8 0, i8 0 }, %struct.xpad_device { i16 1848, i16 17712, ptr @.str.43, i8 0, i8 0 }, %struct.xpad_device { i16 1848, i16 17718, ptr @.str.44, i8 0, i8 0 }, %struct.xpad_device { i16 1848, i16 17728, ptr @.str.45, i8 1, i8 0 }, %struct.xpad_device { i16 1848, i16 17750, ptr @.str.46, i8 0, i8 0 }, %struct.xpad_device { i16 1848, i16 17798, ptr @.str.47, i8 0, i8 0 }, %struct.xpad_device { i16 1848, i16 17800, ptr @.str.48, i8 0, i8 0 }, %struct.xpad_device { i16 1848, i16 17919, ptr @.str.49, i8 1, i8 0 }, %struct.xpad_device { i16 1848, i16 18198, ptr @.str.50, i8 0, i8 1 }, %struct.xpad_device { i16 1848, i16 18200, ptr @.str.51, i8 0, i8 1 }, %struct.xpad_device { i16 1848, i16 18214, ptr @.str.52, i8 0, i8 1 }, %struct.xpad_device { i16 1848, i16 18216, ptr @.str.53, i8 2, i8 1 }, %struct.xpad_device { i16 1848, i16 18230, ptr @.str.54, i8 0, i8 1 }, %struct.xpad_device { i16 1848, i16 18232, ptr @.str.55, i8 2, i8 1 }, %struct.xpad_device { i16 1848, i16 18240, ptr @.str.45, i8 0, i8 1 }, %struct.xpad_device { i16 1848, i16 18243, ptr @.str.56, i8 1, i8 0 }, %struct.xpad_device { i16 1848, i16 18264, ptr @.str.57, i8 2, i8 1 }, %struct.xpad_device { i16 1848, i16 18945, ptr @.str.58, i8 2, i8 3 }, %struct.xpad_device { i16 1848, i16 24640, ptr @.str.56, i8 1, i8 0 }, %struct.xpad_device { i16 1848, i16 -26511, ptr @.str.59, i8 0, i8 1 }, %struct.xpad_device { i16 1848, i16 -18650, ptr @.str.60, i8 0, i8 1 }, %struct.xpad_device { i16 1848, i16 -18632, ptr @.str.61, i8 2, i8 1 }, %struct.xpad_device { i16 1848, i16 -16657, ptr @.str.62, i8 1, i8 0 }, %struct.xpad_device { i16 1848, i16 -13566, ptr @.str.63, i8 0, i8 1 }, %struct.xpad_device { i16 1848, i16 -13565, ptr @.str.64, i8 0, i8 1 }, %struct.xpad_device { i16 1848, i16 -13527, ptr @.str.65, i8 0, i8 1 }, %struct.xpad_device { i16 1848, i16 -2248, ptr @.str.66, i8 0, i8 1 }, %struct.xpad_device { i16 2047, i16 -1, ptr @.str.67, i8 0, i8 1 }, %struct.xpad_device { i16 3090, i16 5, ptr @.str.68, i8 0, i8 0 }, %struct.xpad_device { i16 3090, i16 -30719, ptr @.str.69, i8 0, i8 0 }, %struct.xpad_device { i16 3090, i16 -30718, ptr @.str.70, i8 0, i8 0 }, %struct.xpad_device { i16 3090, i16 -30711, ptr @.str.71, i8 7, i8 0 }, %struct.xpad_device { i16 3090, i16 -30710, ptr @.str.72, i8 0, i8 0 }, %struct.xpad_device { i16 3090, i16 -30704, ptr @.str.70, i8 0, i8 0 }, %struct.xpad_device { i16 3090, i16 -26366, ptr @.str.73, i8 0, i8 0 }, %struct.xpad_device { i16 3375, i16 2, ptr @.str.74, i8 1, i8 0 }, %struct.xpad_device { i16 3660, i16 4247, ptr @.str.75, i8 0, i8 0 }, %struct.xpad_device { i16 3660, i16 4355, ptr @.str.76, i8 2, i8 0 }, %struct.xpad_device { i16 3660, i16 9104, ptr @.str.77, i8 0, i8 0 }, %struct.xpad_device { i16 3660, i16 13584, ptr @.str.78, i8 0, i8 0 }, %struct.xpad_device { i16 3695, i16 3, ptr @.str.79, i8 0, i8 0 }, %struct.xpad_device { i16 3695, i16 5, ptr @.str.80, i8 0, i8 0 }, %struct.xpad_device { i16 3695, i16 6, ptr @.str.81, i8 0, i8 0 }, %struct.xpad_device { i16 3695, i16 8, ptr @.str.82, i8 0, i8 0 }, %struct.xpad_device { i16 3695, i16 261, ptr @.str.83, i8 1, i8 1 }, %struct.xpad_device { i16 3695, i16 275, ptr @.str.84, i8 0, i8 1 }, %struct.xpad_device { i16 3695, i16 287, ptr @.str.85, i8 0, i8 1 }, %struct.xpad_device { i16 3695, i16 305, ptr @.str.86, i8 0, i8 1 }, %struct.xpad_device { i16 3695, i16 307, ptr @.str.87, i8 0, i8 1 }, %struct.xpad_device { i16 3695, i16 313, ptr @.str.88, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 314, ptr @.str.89, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 326, ptr @.str.90, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 327, ptr @.str.91, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 348, ptr @.str.92, i8 2, i8 3 }, %struct.xpad_device { i16 3695, i16 353, ptr @.str.89, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 354, ptr @.str.89, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 355, ptr @.str.89, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 356, ptr @.str.93, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 357, ptr @.str.94, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 513, ptr @.str.95, i8 0, i8 1 }, %struct.xpad_device { i16 3695, i16 531, ptr @.str.96, i8 0, i8 1 }, %struct.xpad_device { i16 3695, i16 543, ptr @.str.97, i8 0, i8 1 }, %struct.xpad_device { i16 3695, i16 582, ptr @.str.98, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 672, ptr @.str.89, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 673, ptr @.str.89, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 674, ptr @.str.99, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 676, ptr @.str.100, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 678, ptr @.str.101, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 679, ptr @.str.89, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 680, ptr @.str.89, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 683, ptr @.str.102, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 685, ptr @.str.100, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 691, ptr @.str.88, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 696, ptr @.str.88, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 769, ptr @.str.103, i8 0, i8 1 }, %struct.xpad_device { i16 3695, i16 838, ptr @.str.104, i8 0, i8 3 }, %struct.xpad_device { i16 3695, i16 1025, ptr @.str.103, i8 0, i8 1 }, %struct.xpad_device { i16 3695, i16 1043, ptr @.str.84, i8 0, i8 1 }, %struct.xpad_device { i16 3695, i16 1281, ptr @.str.105, i8 0, i8 1 }, %struct.xpad_device { i16 3695, i16 -1792, ptr @.str.106, i8 0, i8 1 }, %struct.xpad_device { i16 3727, i16 513, ptr @.str.107, i8 0, i8 0 }, %struct.xpad_device { i16 3727, i16 12296, ptr @.str.108, i8 0, i8 0 }, %struct.xpad_device { i16 3853, i16 10, ptr @.str.109, i8 0, i8 1 }, %struct.xpad_device { i16 3853, i16 12, ptr @.str.110, i8 0, i8 1 }, %struct.xpad_device { i16 3853, i16 13, ptr @.str.111, i8 2, i8 1 }, %struct.xpad_device { i16 3853, i16 22, ptr @.str.112, i8 2, i8 1 }, %struct.xpad_device { i16 3853, i16 27, ptr @.str.113, i8 2, i8 1 }, %struct.xpad_device { i16 3853, i16 99, ptr @.str.114, i8 2, i8 3 }, %struct.xpad_device { i16 3853, i16 103, ptr @.str.115, i8 0, i8 3 }, %struct.xpad_device { i16 3853, i16 120, ptr @.str.116, i8 2, i8 3 }, %struct.xpad_device { i16 3888, i16 267, ptr @.str.117, i8 0, i8 0 }, %struct.xpad_device { i16 3888, i16 514, ptr @.str.118, i8 0, i8 0 }, %struct.xpad_device { i16 3888, i16 -30584, ptr @.str.119, i8 0, i8 0 }, %struct.xpad_device { i16 4140, i16 -244, ptr @.str.120, i8 0, i8 0 }, %struct.xpad_device { i16 4152, i16 5168, ptr @.str.121, i8 0, i8 1 }, %struct.xpad_device { i16 4152, i16 5169, ptr @.str.121, i8 0, i8 1 }, %struct.xpad_device { i16 4553, i16 22000, ptr @.str.122, i8 0, i8 1 }, %struct.xpad_device { i16 4617, i16 10370, ptr @.str.123, i8 0, i8 1 }, %struct.xpad_device { i16 4779, i16 4, ptr @.str.124, i8 1, i8 1 }, %struct.xpad_device { i16 4779, i16 769, ptr @.str.125, i8 0, i8 1 }, %struct.xpad_device { i16 4779, i16 771, ptr @.str.126, i8 2, i8 1 }, %struct.xpad_device { i16 4779, i16 -30711, ptr @.str.127, i8 1, i8 0 }, %struct.xpad_device { i16 5168, i16 18248, ptr @.str.128, i8 0, i8 1 }, %struct.xpad_device { i16 5168, i16 -30584, ptr @.str.129, i8 1, i8 0 }, %struct.xpad_device { i16 5168, i16 -2047, ptr @.str.130, i8 0, i8 1 }, %struct.xpad_device { i16 5227, i16 1537, ptr @.str.131, i8 0, i8 1 }, %struct.xpad_device { i16 5426, i16 55, ptr @.str.132, i8 0, i8 1 }, %struct.xpad_device { i16 5426, i16 2560, ptr @.str.133, i8 2, i8 3 }, %struct.xpad_device { i16 5426, i16 2563, ptr @.str.134, i8 0, i8 3 }, %struct.xpad_device { i16 5604, i16 16128, ptr @.str.135, i8 0, i8 1 }, %struct.xpad_device { i16 5604, i16 16138, ptr @.str.136, i8 0, i8 1 }, %struct.xpad_device { i16 5604, i16 16144, ptr @.str.137, i8 0, i8 1 }, %struct.xpad_device { i16 5678, i16 -16657, ptr @.str.138, i8 0, i8 1 }, %struct.xpad_device { i16 5769, i16 -768, ptr @.str.139, i8 0, i8 1 }, %struct.xpad_device { i16 5769, i16 -767, ptr @.str.140, i8 0, i8 1 }, %struct.xpad_device { i16 5769, i16 -512, ptr @.str.132, i8 0, i8 1 }, %struct.xpad_device { i16 6473, i16 1050, ptr @.str.141, i8 0, i8 1 }, %struct.xpad_device { i16 7085, i16 2, ptr @.str.142, i8 0, i8 1 }, %struct.xpad_device { i16 7085, i16 3, ptr @.str.143, i8 1, i8 1 }, %struct.xpad_device { i16 7085, i16 304, ptr @.str.144, i8 1, i8 1 }, %struct.xpad_device { i16 7085, i16 -4074, ptr @.str.52, i8 0, i8 1 }, %struct.xpad_device { i16 7085, i16 -4072, ptr @.str.145, i8 2, i8 1 }, %struct.xpad_device { i16 7085, i16 -4071, ptr @.str.146, i8 2, i8 1 }, %struct.xpad_device { i16 7085, i16 -4063, ptr @.str.147, i8 0, i8 1 }, %struct.xpad_device { i16 7085, i16 -4061, ptr @.str.148, i8 0, i8 1 }, %struct.xpad_device { i16 7085, i16 -4059, ptr @.str.149, i8 0, i8 1 }, %struct.xpad_device { i16 7085, i16 -4057, ptr @.str.150, i8 0, i8 1 }, %struct.xpad_device { i16 7085, i16 -4056, ptr @.str.151, i8 0, i8 1 }, %struct.xpad_device { i16 7085, i16 -4050, ptr @.str.152, i8 2, i8 1 }, %struct.xpad_device { i16 7085, i16 -4048, ptr @.str.153, i8 0, i8 1 }, %struct.xpad_device { i16 7085, i16 -4042, ptr @.str.154, i8 0, i8 1 }, %struct.xpad_device { i16 7085, i16 -4040, ptr @.str.155, i8 0, i8 1 }, %struct.xpad_device { i16 7085, i16 -4039, ptr @.str.156, i8 2, i8 1 }, %struct.xpad_device { i16 7085, i16 -4038, ptr @.str.157, i8 2, i8 1 }, %struct.xpad_device { i16 7085, i16 -4035, ptr @.str.158, i8 2, i8 1 }, %struct.xpad_device { i16 7085, i16 -4034, ptr @.str.159, i8 2, i8 1 }, %struct.xpad_device { i16 7085, i16 -4033, ptr @.str.160, i8 2, i8 1 }, %struct.xpad_device { i16 7085, i16 -4030, ptr @.str.161, i8 2, i8 1 }, %struct.xpad_device { i16 7085, i16 -3968, ptr @.str.162, i8 2, i8 1 }, %struct.xpad_device { i16 7085, i16 -2815, ptr @.str.163, i8 0, i8 1 }, %struct.xpad_device { i16 7085, i16 -2814, ptr @.str.164, i8 2, i8 1 }, %struct.xpad_device { i16 7085, i16 -2813, ptr @.str.165, i8 2, i8 1 }, %struct.xpad_device { i16 7085, i16 -2812, ptr @.str.166, i8 2, i8 1 }, %struct.xpad_device { i16 7085, i16 -2811, ptr @.str.167, i8 2, i8 1 }, %struct.xpad_device { i16 7085, i16 -2810, ptr @.str.168, i8 0, i8 1 }, %struct.xpad_device { i16 7085, i16 -1792, ptr @.str.169, i8 0, i8 1 }, %struct.xpad_device { i16 7085, i16 -1791, ptr @.str.170, i8 0, i8 1 }, %struct.xpad_device { i16 7085, i16 -1789, ptr @.str.171, i8 0, i8 1 }, %struct.xpad_device { i16 7085, i16 -1788, ptr @.str.172, i8 0, i8 1 }, %struct.xpad_device { i16 7085, i16 -1786, ptr @.str.173, i8 2, i8 1 }, %struct.xpad_device { i16 7085, i16 -1535, ptr @.str.174, i8 0, i8 1 }, %struct.xpad_device { i16 7085, i16 -768, ptr @.str.175, i8 0, i8 1 }, %struct.xpad_device { i16 7085, i16 -767, ptr @.str.176, i8 0, i8 1 }, %struct.xpad_device { i16 8406, i16 8193, ptr @.str.177, i8 0, i8 3 }, %struct.xpad_device { i16 8406, i16 8201, ptr @.str.178, i8 0, i8 3 }, %struct.xpad_device { i16 8406, i16 10271, ptr @.str.179, i8 0, i8 1 }, %struct.xpad_device { i16 11812, i16 1618, ptr @.str.180, i8 0, i8 3 }, %struct.xpad_device { i16 9414, i16 20480, ptr @.str.133, i8 2, i8 1 }, %struct.xpad_device { i16 9414, i16 21248, ptr @.str.181, i8 0, i8 1 }, %struct.xpad_device { i16 9414, i16 21251, ptr @.str.136, i8 0, i8 1 }, %struct.xpad_device { i16 9414, i16 21258, ptr @.str.182, i8 0, i8 1 }, %struct.xpad_device { i16 9414, i16 21274, ptr @.str.183, i8 0, i8 1 }, %struct.xpad_device { i16 9414, i16 21399, ptr @.str.184, i8 0, i8 1 }, %struct.xpad_device { i16 9414, i16 21530, ptr @.str.185, i8 0, i8 3 }, %struct.xpad_device { i16 9414, i16 21546, ptr @.str.186, i8 0, i8 3 }, %struct.xpad_device { i16 9414, i16 21562, ptr @.str.187, i8 0, i8 3 }, %struct.xpad_device { i16 9414, i16 21760, ptr @.str.188, i8 0, i8 1 }, %struct.xpad_device { i16 9414, i16 21761, ptr @.str.189, i8 0, i8 1 }, %struct.xpad_device { i16 9414, i16 21762, ptr @.str.190, i8 2, i8 1 }, %struct.xpad_device { i16 9414, i16 21763, ptr @.str.191, i8 2, i8 1 }, %struct.xpad_device { i16 9414, i16 21766, ptr @.str.192, i8 0, i8 1 }, %struct.xpad_device { i16 9414, i16 21773, ptr @.str.193, i8 0, i8 1 }, %struct.xpad_device { i16 9414, i16 21774, ptr @.str.194, i8 2, i8 1 }, %struct.xpad_device { i16 9414, i16 21786, ptr @.str.195, i8 0, i8 3 }, %struct.xpad_device { i16 9414, i16 22042, ptr @.str.196, i8 0, i8 3 }, %struct.xpad_device { i16 9414, i16 23296, ptr @.str.197, i8 0, i8 1 }, %struct.xpad_device { i16 9414, i16 23298, ptr @.str.198, i8 0, i8 1 }, %struct.xpad_device { i16 9414, i16 23299, ptr @.str.199, i8 0, i8 1 }, %struct.xpad_device { i16 9414, i16 23812, ptr @.str.132, i8 0, i8 1 }, %struct.xpad_device { i16 9414, i16 -1282, ptr @.str.97, i8 0, i8 1 }, %struct.xpad_device { i16 12933, i16 1543, ptr @.str.200, i8 0, i8 1 }, %struct.xpad_device { i16 14183, i16 257, ptr @.str.201, i8 0, i8 0 }, %struct.xpad_device { i16 -1, i16 -1, ptr @.str.202, i8 0, i8 0 }, %struct.xpad_device { i16 0, i16 0, ptr @.str.203, i8 0, i8 4 }], [680 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@xpad_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&xpad->work)\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GPD Win 2 X-Box Controller\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Thrustmaster Wheel\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Thrustmaster, Inc. Controller\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Thrustmaster Modena GT Wheel\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Thrustmaster Gamepad GP XID\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Microsoft X-Box pad v1 (US)\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Microsoft X-Box pad (Japan)\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Microsoft Xbox Controller S\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Microsoft Xbox Controller S v2\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Microsoft X-Box pad v2 (US)\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Microsoft X-Box 360 pad\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Microsoft X-Box 360 pad v2\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Xbox 360 Wireless Receiver (XBOX)\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Microsoft X-Box One pad\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Microsoft X-Box One pad (Firmware 2015)\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Microsoft X-Box One Elite pad\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Microsoft X-Box One S pad\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Xbox 360 Wireless Receiver\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Microsoft Xbox One X pad\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Logitech Gamepad F310\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Logitech Gamepad F510\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Logitech Gamepad F710\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Logitech Chillstream Controller\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Logitech Xbox Cordless Controller\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Logitech Compact Controller for Xbox\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Logitech Precision Vibration Feedback Wheel\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Logitech DriveFx Racing Wheel\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Elecom JC-U3613M\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Mad Catz Controller (unverified)\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"InterAct 'PowerPad Pro' X-Box pad (Germany)\00", [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Chic Controller\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Logic3 Xbox GamePad\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Competition Pro Steering Wheel\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Saitek Racing Wheel\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Saitek Adrenalin\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Saitek P3600\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Mad Catz 4506 Wireless Controller\00", [62 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Mad Catz Control Pad\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Mad Catz Control Pad Pro\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mad Catz LumiCON\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Mad Catz Universal MC2 Racing Wheel and Pedals\00", [49 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Mad Catz MicroCON\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Mad Catz Beat Pad\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Mad Catz Lynx Wireless Controller\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Mad Catz MicroCon Wireless Controller\00", [58 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mad Catz Blaster\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Mad Catz Beat Pad (w/ Handle)\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Mad Catz Wired Xbox 360 Controller\00", [61 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Mad Catz Street Fighter IV FightStick SE\00", [55 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Mad Catz Xbox 360 Controller\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Mad Catz Street Fighter IV FightPad\00", [60 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Mad Catz MicroCon Gamepad\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Mad Catz Wired Xbox 360 Controller (SFIV)\00", [54 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Mad Catz Beat Pad Pro\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Mad Catz Arcade Game Stick\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Mad Catz FightStick TE 2\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Mad Catz Portable Drum\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Mad Catz Xbox controller - MW2\00", [33 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Mad Catz MVC2TE Stick 2\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Mad Catz JOYTECH NEO SE Advanced GamePad\00", [55 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Saitek Cyborg Rumble Pad - PC/Xbox 360\00", [57 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Saitek P3200 Rumble Pad - PC/Xbox 360\00", [58 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Saitek Aviator Stick AV8R02\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Super SFIV FightStick TE S\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mad Catz GamePad\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Intec wireless\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Nyko Xbox Controller\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Zeroplus Xbox Controller\00", [39 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RedOctane Xbox Dance Pad\00", [39 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Pelican Eclipse PL-2023\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HAMA VibraX - *FAULTY HARDWARE*\00", [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Andamiro Pump It Up pad\00", [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Radica Gamester Controller\00", [37 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Radica Gamester Reflex\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Radica Games Jtech Controller\00", [34 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Radica Gamester\00", [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Logic3 Freebird wireless Controller\00", [60 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Eclipse wireless Controller\00", [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Edge wireless Controller\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"After Glow Pro Controller\00", [38 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HSM3 Xbox360 dancepad\00", [42 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Afterglow AX.1 Gamepad for Xbox 360\00", [60 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Rock Candy Gamepad Wired Controller\00", [60 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PDP EA Sports Controller\00", [39 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Xbox 360 Wired Controller\00", [38 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Afterglow Prismatic Wired Controller\00", [59 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PDP Xbox One Controller\00", [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Rock Candy Wired Controller for Xbox One\00", [55 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PDP Marvel Xbox One Controller\00", [33 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PDP Xbox One Arcade Stick\00", [38 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PDP Battlefield One\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PDP Titanfall 2\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Pelican PL-3601 'TSZ' Wired Xbox 360 Controller\00", [48 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Afterglow Gamepad for Xbox 360\00", [33 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Rock Candy Gamepad for Xbox 360\00", [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Rock Candy Gamepad for Xbox One 2015\00", [59 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"PDP Wired Controller for Xbox One - Crimson Red\00", [48 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"PDP Wired Controller for Xbox One - Stealth Series\00", [45 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"PDP Wired Controller for Xbox One - Camo Series\00", [48 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PDP Controller for Xbox One\00", [36 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Logic3 Controller\00", [46 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Rock Candy Gamepad for Xbox One 2016\00", [59 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PDP Xbox 360 Controller\00", [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PDP Afterglow AX.1\00", [45 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SmartJoy Frag Xpad/PS2 adaptor\00", [33 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Generic xbox control (dealextreme)\00", [61 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Hori Co. DOA4 FightStick\00", [39 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Hori PadEX Turbo\00", [47 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hori Fighting Stick EX2\00", [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hori Real Arcade Pro.EX\00", [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hori Real Arcade Pro VX\00", [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Hori Real Arcade Pro Hayabusa (USA) Xbox One\00", [51 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HORIPAD ONE\00", [20 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Hori Real Arcade Pro V Kai Xbox One\00", [60 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Philips Recoil\00", [17 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Joytech Advanced Controller\00", [36 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BigBen XBMiniPad Controller\00", [36 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Joytech Wireless Advanced Controller\00", [59 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SteelSeries Stratus Duo\00", [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Nacon GC-100XF\00", [17 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Ardwiino Controller\00", [44 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Honey Bee Xbox360 dancepad\00", [37 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PDP AFTERGLOW AX.1\00", [45 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Mortal Kombat Klassic FightStick\00", [63 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Xbox DDR dancepad\00", [46 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RedOctane Guitar Hero X-plorer\00", [33 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TX6500+ Dance Pad (first generation)\00", [59 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RedOctane Controller\00", [43 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"BigBen Interactive XBOX 360 Controller\00", [57 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Razer Sabertooth\00", [47 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Razer Atrox Arcade Stick\00", [39 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Razer Wildcat\00", [18 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Power A Mini Pro Elite\00", [41 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Xbox Airflo wired controller\00", [35 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Batarang Xbox 360 controller\00", [35 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Joytech Neo-Se Take2\00", [43 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Razer Onza Tournament Edition\00", [34 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Razer Onza Classic Edition\00", [37 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Amazon Game Controller\00", [41 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Harmonix Rock Band Guitar\00", [38 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Harmonix Rock Band Drumkit\00", [37 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Ion Drum Rocker\00", [16 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Mad Catz Street Fighter IV SE Fighting Stick\00", [51 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Mad Catz Brawlstick for Xbox 360\00", [63 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Mad Cats Ghost Recon FS GamePad\00", [32 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MLG Pro Circuit Controller (Xbox)\00", [62 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Mad Catz Call Of Duty\00", [42 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mad Catz FPS Pro\00", [47 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Street Fighter IV FightPad\00", [37 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Mad Catz Fightpad\00", [46 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Mad Catz Xbox 360 MC2 MicroCon Racing Wheel\00", [52 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Mad Catz MicroCon GamePad Pro\00", [34 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Street Fighter IV FightStick TE\00", [32 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mad Catz MvC2 TE\00", [47 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Mad Catz SFxT Fightstick Pro\00", [35 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Street Fighter IV Arcade Stick TE - Chun Li\00", [52 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Mad Catz MLG FightStick TE\00", [37 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Mad Catz FightStick SoulCaliber\00", [32 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Mad Catz FightStick TES+\00", [39 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Mad Catz FightStick TE2\00", [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HoriPad EX2 Turbo\00", [46 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Hori Real Arcade Pro.VX SA\00", [37 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Hori Fighting Stick VX\00", [41 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Hori Real Arcade Pro. EX\00", [39 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Hori Fighting Stick EX2B\00", [39 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Hori Real Arcade Pro.EX Premium VLX\00", [60 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Harmonix Xbox 360 Controller\00", [35 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Gamestop Xbox 360 Controller\00", [35 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Tron Xbox 360 controller\00", [39 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PDP Versus Fighting Pad\00", [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MortalKombat FightStick\00", [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MadCatz GamePad\00", [16 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Razer Onza TE\00", [18 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Razer Onza\00", [21 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"BDA Xbox Series X Wired Controller\00", [61 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"PowerA Enhanced Wired Controller for Xbox Series X|S\00", [43 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PowerA Wired Controller For Xbox 360\00", [59 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Hyperkin Duke X-Box One pad\00", [36 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PowerA MINI PROEX Controller\00", [35 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Xbox 360 Pro EX Controller\00", [37 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PowerA Pro Ex\00", [18 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"FUS1ON Tournament Controller\00", [35 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PowerA Xbox One Mini Wired Controller\00", [58 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Xbox ONE spectra\00", [47 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PowerA Xbox One wired controller\00", [63 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Hori XBOX 360 EX 2 with Turbo\00", [34 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Hori Real Arcade Pro VX-SA\00", [37 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Hori Fighting Stick VX Alt\00", [37 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Hori Fighting Edge\00", [45 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Hori SOULCALIBUR V Stick\00", [39 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Hori GEM Xbox controller\00", [39 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Hori Real Arcade Pro V Kai 360\00", [33 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PowerA FUSION Pro Controller\00", [35 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PowerA FUSION Controller\00", [39 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ThrustMaster Ferrari 458 Racing Wheel\00", [58 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Thrustmaster, Inc. GPX Controller\00", [62 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Thrustmaster Ferrari 458 Racing Wheel\00", [58 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Nacon GC-100\00", [19 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Fanatec Speedster 3 Forceshock Wheel\00", [59 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Chinese-made Xbox Controller\00", [35 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Generic X-Box pad\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.204 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@xpad_presence_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.206, ptr @.str.207, i32 782, ptr @.str.208, ptr @.str.209 }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to init device: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xpad_presence_work\00", [45 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/input/joystick/xpad.c\00", [34 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xpad_presence_work._entry_ptr = internal global ptr @xpad_presence_work._entry, section ".printk_index", align 4
@xpad_pad_seq = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.210, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xpad_pad_seq.xa_lock\00", [43 x i8] zeroinitializer }, align 32
@xpad_init_output.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.211 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&xpad->odata_lock\00", [46 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.212 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.213 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.214 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@xpad_irq_out.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.215, ptr @.str.207, ptr @.str.216, i8 1, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.215 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xpad_irq_out\00", [19 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - urb shutting down with status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@xpad_irq_out.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.215, ptr @.str.207, ptr @.str.217, i8 1, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.217 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - nonzero urb status received: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@xpad_irq_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.215, ptr @.str.207, i32 1103, ptr @.str.208, ptr @.str.209 }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - usb_submit_urb failed with result %d\0A\00", [53 x i8] zeroinitializer }, align 32
@xpad_irq_out._entry_ptr = internal global ptr @xpad_irq_out._entry, section ".printk_index", align 4
@xpad_prepare_next_out_packet.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.219, ptr @.str.207, ptr @.str.220, i8 1, i8 1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.219 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"xpad_prepare_next_out_packet\00", [35 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s - found pending output packet %d\0A\00", [59 x i8] zeroinitializer }, align 32
@xboxone_init_packets = internal constant { [13 x %struct.xboxone_init_packet], [36 x i8] } { [13 x %struct.xboxone_init_packet] [%struct.xboxone_init_packet { i16 3695, i16 357, ptr @xboxone_hori_init, i8 13 }, %struct.xboxone_init_packet { i16 3853, i16 103, ptr @xboxone_hori_init, i8 13 }, %struct.xboxone_init_packet { i16 0, i16 0, ptr @xboxone_fw2015_init, i8 5 }, %struct.xboxone_init_packet { i16 1118, i16 746, ptr @xboxone_s_init, i8 5 }, %struct.xboxone_init_packet { i16 1118, i16 2816, ptr @xboxone_s_init, i8 5 }, %struct.xboxone_init_packet { i16 3695, i16 0, ptr @xboxone_pdp_init1, i8 7 }, %struct.xboxone_init_packet { i16 3695, i16 0, ptr @xboxone_pdp_init2, i8 6 }, %struct.xboxone_init_packet { i16 9414, i16 21530, ptr @xboxone_rumblebegin_init, i8 13 }, %struct.xboxone_init_packet { i16 9414, i16 21546, ptr @xboxone_rumblebegin_init, i8 13 }, %struct.xboxone_init_packet { i16 9414, i16 21562, ptr @xboxone_rumblebegin_init, i8 13 }, %struct.xboxone_init_packet { i16 9414, i16 21530, ptr @xboxone_rumbleend_init, i8 13 }, %struct.xboxone_init_packet { i16 9414, i16 21546, ptr @xboxone_rumbleend_init, i8 13 }, %struct.xboxone_init_packet { i16 9414, i16 21562, ptr @xboxone_rumbleend_init, i8 13 }], [36 x i8] zeroinitializer }, align 32
@xboxone_hori_init = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01 \00\09\00\04 :\00\00\00\80\00", [19 x i8] zeroinitializer }, align 32
@xboxone_fw2015_init = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\05 \00\01\00", [27 x i8] zeroinitializer }, align 32
@xboxone_s_init = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\05 \00\0F\06", [27 x i8] zeroinitializer }, align 32
@xboxone_pdp_init1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\0A \00\03\00\01\14", [25 x i8] zeroinitializer }, align 32
@xboxone_pdp_init2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\06 \00\02\01\00", [26 x i8] zeroinitializer }, align 32
@xboxone_rumblebegin_init = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\09\00\00\09\00\0F\00\00\1D\1D\FF\00\00", [19 x i8] zeroinitializer }, align 32
@xboxone_rumbleend_init = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\09\00\00\09\00\0F\00\00\00\00\00\00\00", [19 x i8] zeroinitializer }, align 32
@xpad_irq_in.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.221, ptr @.str.207, ptr @.str.216, i8 0, i8 -19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.221 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xpad_irq_in\00", [20 x i8] zeroinitializer }, align 32
@xpad_irq_in.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.221, ptr @.str.207, ptr @.str.217, i8 0, i8 -18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@xpad_irq_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.221, ptr @.str.207, i32 975, ptr @.str.208, ptr @.str.209 }, [40 x i8] zeroinitializer }, align 32
@xpad_irq_in._entry_ptr = internal global ptr @xpad_irq_in._entry, section ".printk_index", align 4
@xpad360w_process_packet.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.222 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.223 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.225 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@xpadone_ack_mode_report.mode_report_ack = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01 \00\09\00\07 \02\00\00\00\00\00", [19 x i8] zeroinitializer }, align 32
@xpad_try_sending_next_out_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.226, ptr @.str.207, i32 1055, ptr @.str.208, ptr @.str.209 }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"xpad_try_sending_next_out_packet\00", [63 x i8] zeroinitializer }, align 32
@xpad_try_sending_next_out_packet._entry_ptr = internal global ptr @xpad_try_sending_next_out_packet._entry, section ".printk_index", align 4
@xpad_play_effect.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.227, ptr @.str.207, ptr @.str.228, i8 1, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.227 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xpad_play_effect\00", [47 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s - rumble command sent to unsupported xpad type: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xpad%d\00", [25 x i8] zeroinitializer }, align 32
@xpad_stop_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.231, ptr @.str.207, i32 1155, ptr @.str.232, ptr @.str.209 }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"timed out waiting for output URB to complete, killing\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xpad_stop_output\00", [47 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@xpad_stop_output._entry_ptr = internal global ptr @xpad_stop_output._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.233 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.234 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 32]
@__sancov_gen_cov_switch_values.235 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.236 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 16, i64 17]
@__sancov_gen_cov_switch_values.237 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.238 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.239 = private unnamed_addr constant [16 x i8] c"dpad_to_buttons\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 92, i32 13 }
@___asan_gen_.242 = private unnamed_addr constant [20 x i8] c"triggers_to_buttons\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 96, i32 13 }
@___asan_gen_.245 = private unnamed_addr constant [15 x i8] c"sticks_to_null\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 100, i32 13 }
@___asan_gen_.248 = private unnamed_addr constant [14 x i8] c"auto_poweroff\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 104, i32 13 }
@___asan_gen_.251 = private unnamed_addr constant [12 x i8] c"xpad_driver\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1969, i32 26 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1979, i32 1 }
@___asan_gen_.257 = private unnamed_addr constant [11 x i8] c"xpad_table\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 419, i32 35 }
@___asan_gen_.260 = private unnamed_addr constant [12 x i8] c"xpad_device\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 114, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1762, i32 22 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1782, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 115, i32 20 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 116, i32 20 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 118, i32 20 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 119, i32 20 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 120, i32 20 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 121, i32 20 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 122, i32 20 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 123, i32 20 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 124, i32 20 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 125, i32 20 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 126, i32 20 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 127, i32 20 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 128, i32 20 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 129, i32 20 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 130, i32 20 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 131, i32 20 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 132, i32 20 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 133, i32 20 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 134, i32 20 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 135, i32 20 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 136, i32 20 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 137, i32 20 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 138, i32 20 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 139, i32 20 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 140, i32 20 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 141, i32 20 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 142, i32 20 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 143, i32 20 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 144, i32 20 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 145, i32 20 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 146, i32 20 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 148, i32 20 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 149, i32 20 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 150, i32 20 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 151, i32 20 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 152, i32 20 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 153, i32 20 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 154, i32 20 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 155, i32 20 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 156, i32 20 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 158, i32 20 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 159, i32 20 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 160, i32 20 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 161, i32 20 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 162, i32 20 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 163, i32 20 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 164, i32 20 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 165, i32 20 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 166, i32 20 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 167, i32 20 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 168, i32 20 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 169, i32 20 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 170, i32 20 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 172, i32 20 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 173, i32 20 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 174, i32 20 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 176, i32 20 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 177, i32 20 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 178, i32 20 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 179, i32 20 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 180, i32 20 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 181, i32 20 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 182, i32 20 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 183, i32 20 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 184, i32 20 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 185, i32 20 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 186, i32 20 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 187, i32 20 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 188, i32 20 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 189, i32 20 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 191, i32 20 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 192, i32 20 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 193, i32 20 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 194, i32 20 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 195, i32 20 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 196, i32 20 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 197, i32 20 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 198, i32 20 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 199, i32 20 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 200, i32 20 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 201, i32 20 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 202, i32 20 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 203, i32 20 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 204, i32 20 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 205, i32 20 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 206, i32 20 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 207, i32 20 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 208, i32 20 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 209, i32 20 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 210, i32 20 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 214, i32 20 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 215, i32 20 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 216, i32 20 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 217, i32 20 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 218, i32 20 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 219, i32 20 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 222, i32 20 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 223, i32 20 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 224, i32 20 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 227, i32 20 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 231, i32 20 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 232, i32 20 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 235, i32 20 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 236, i32 20 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 237, i32 20 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 238, i32 20 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 239, i32 20 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 240, i32 20 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 241, i32 20 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 242, i32 20 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 243, i32 20 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 244, i32 20 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 245, i32 20 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 246, i32 20 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 247, i32 20 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 248, i32 20 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 249, i32 20 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 250, i32 20 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 251, i32 20 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 253, i32 20 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 254, i32 20 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 255, i32 20 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 256, i32 20 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 257, i32 20 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 258, i32 20 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 259, i32 20 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 260, i32 20 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 261, i32 20 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 262, i32 20 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 263, i32 20 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 264, i32 20 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 265, i32 20 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 266, i32 20 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 267, i32 20 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 268, i32 20 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 269, i32 20 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 270, i32 20 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 271, i32 20 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 273, i32 20 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 274, i32 20 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 275, i32 20 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 276, i32 20 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 278, i32 20 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 279, i32 20 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 280, i32 20 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 281, i32 20 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 282, i32 20 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 283, i32 20 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 284, i32 20 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 285, i32 20 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 286, i32 20 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 287, i32 20 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 288, i32 20 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 289, i32 20 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 290, i32 20 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 291, i32 20 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 292, i32 20 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 293, i32 20 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 294, i32 20 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 295, i32 20 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 296, i32 20 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 297, i32 20 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 298, i32 20 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 299, i32 20 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 300, i32 20 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 301, i32 20 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 302, i32 20 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 303, i32 20 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 304, i32 20 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 305, i32 20 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 306, i32 20 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 307, i32 20 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 308, i32 20 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 309, i32 20 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 310, i32 20 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 311, i32 20 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 312, i32 20 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 313, i32 20 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 315, i32 20 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 317, i32 20 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 318, i32 20 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 319, i32 20 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 320, i32 20 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 321, i32 20 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 322, i32 20 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 323, i32 20 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 324, i32 20 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 325, i32 20 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 326, i32 20 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 327, i32 20 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 328, i32 20 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 329, i32 20 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 330, i32 20 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 331, i32 20 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 332, i32 20 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 333, i32 20 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 334, i32 20 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 337, i32 20 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 338, i32 20 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 339, i32 20 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 340, i32 20 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.918, i32 912, i32 31 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 781, i32 4 }
@___asan_gen_.896 = private unnamed_addr constant [13 x i8] c"xpad_pad_seq\00", align 1
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1358, i32 8 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1127, i32 2 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.918, i32 1367, i32 2 }
@___asan_gen_.914 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.918 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.918, i32 1368, i32 2 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1086, i32 3 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1092, i32 3 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1101, i32 4 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1026, i32 4 }
@___asan_gen_.941 = private unnamed_addr constant [21 x i8] c"xboxone_init_packets\00", align 1
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 549, i32 41 }
@___asan_gen_.944 = private unnamed_addr constant [18 x i8] c"xboxone_hori_init\00", align 1
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 500, i32 17 }
@___asan_gen_.947 = private unnamed_addr constant [20 x i8] c"xboxone_fw2015_init\00", align 1
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 481, i32 17 }
@___asan_gen_.950 = private unnamed_addr constant [15 x i8] c"xboxone_s_init\00", align 1
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 491, i32 17 }
@___asan_gen_.953 = private unnamed_addr constant [18 x i8] c"xboxone_pdp_init1\00", align 1
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 510, i32 17 }
@___asan_gen_.956 = private unnamed_addr constant [18 x i8] c"xboxone_pdp_init2\00", align 1
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 519, i32 17 }
@___asan_gen_.959 = private unnamed_addr constant [25 x i8] c"xboxone_rumblebegin_init\00", align 1
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 527, i32 17 }
@___asan_gen_.962 = private unnamed_addr constant [23 x i8] c"xboxone_rumbleend_init\00", align 1
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 538, i32 17 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 948, i32 3 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 974, i32 3 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 831, i32 8 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 695, i32 2 }
@___asan_gen_.981 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 723, i32 2 }
@___asan_gen_.983 = private unnamed_addr constant [16 x i8] c"mode_report_ack\00", align 1
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1228, i32 18 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1053, i32 4 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1326, i32 3 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1465, i32 41 }
@___asan_gen_.1001 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1010 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1011 = private constant [33 x i8] c"../drivers/input/joystick/xpad.c\00", align 1
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1154, i32 4 }
@llvm.compiler.used = appending global [282 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_auto_poweroff239, ptr @__UNIQUE_ID_auto_powerofftype238, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_dpad_to_buttons233, ptr @__UNIQUE_ID_dpad_to_buttonstype232, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__UNIQUE_ID_sticks_to_null237, ptr @__UNIQUE_ID_sticks_to_nulltype236, ptr @__UNIQUE_ID_triggers_to_buttons235, ptr @__UNIQUE_ID_triggers_to_buttonstype234, ptr @__exitcall_xpad_driver_exit, ptr @__initcall__kmod_xpad__252_1979_xpad_driver_init6, ptr @__param_auto_poweroff, ptr @__param_dpad_to_buttons, ptr @__param_sticks_to_null, ptr @__param_triggers_to_buttons, ptr @xpad_driver_exit, ptr @xpad_irq_in._entry, ptr @xpad_irq_in._entry_ptr, ptr @xpad_irq_out._entry, ptr @xpad_irq_out._entry_ptr, ptr @xpad_presence_work._entry, ptr @xpad_presence_work._entry_ptr, ptr @xpad_stop_output._entry, ptr @xpad_stop_output._entry_ptr, ptr @xpad_try_sending_next_out_packet._entry, ptr @xpad_try_sending_next_out_packet._entry_ptr, ptr @dpad_to_buttons, ptr @triggers_to_buttons, ptr @sticks_to_null, ptr @auto_poweroff, ptr @xpad_driver, ptr @.str, ptr @xpad_table, ptr @xpad_device, ptr @.str.1, ptr @xpad_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @xpad_pad_seq, ptr @.str.210, ptr @xpad_init_output.__key, ptr @.str.211, ptr @init_usb_anchor.__key, ptr @.str.212, ptr @init_usb_anchor.__key.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @xboxone_init_packets, ptr @xboxone_hori_init, ptr @xboxone_fw2015_init, ptr @xboxone_s_init, ptr @xboxone_pdp_init1, ptr @xboxone_pdp_init2, ptr @xboxone_rumblebegin_init, ptr @xboxone_rumbleend_init, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @xpadone_ack_mode_report.mode_report_ack, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232], section "llvm.metadata"
@0 = internal global [258 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpad_to_buttons to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @triggers_to_buttons to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sticks_to_null to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auto_poweroff to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpad_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpad_table to i32), i32 1512, i32 1888, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpad_device to i32), i32 2712, i32 3392, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpad_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpad_presence_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpad_pad_seq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpad_init_output.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.213 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpad_irq_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xboxone_init_packets to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xboxone_hori_init to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xboxone_fw2015_init to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xboxone_s_init to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xboxone_pdp_init1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xboxone_pdp_init2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xboxone_rumblebegin_init to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xboxone_rumbleend_init to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpad_irq_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpadone_ack_mode_report.mode_report_ack to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpad_try_sending_next_out_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpad_stop_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xpad_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @xpad_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xpad_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @xpad_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpad_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.not = icmp eq i8 %5, 2
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %idProduct = getelementptr i8, ptr %1, i32 938
  %idVendor2 = getelementptr i8, ptr %1, i32 936
  %6 = ptrtoint ptr %idVendor2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %idVendor2, align 8
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %9 = phi i16 [ 121, %for.cond.preheader ], [ %16, %for.inc.for.body_crit_edge ]
  %i.0256 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %9)
  %cmp7 = icmp eq i16 %8, %9
  br i1 %cmp7, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %10 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %idProduct, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %idProduct12 = getelementptr [226 x %struct.xpad_device], ptr @xpad_device, i32 0, i32 %i.0256, i32 1
  %13 = ptrtoint ptr %idProduct12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %idProduct12, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp14 = icmp eq i16 %12, %14
  br i1 %cmp14, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %i.0256, 1
  %arrayidx = getelementptr [226 x %struct.xpad_device], ptr @xpad_device, i32 0, i32 %inc
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx, align 4
  %tobool.not = icmp eq i16 %16, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.0256, %land.lhs.true.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 540) #13
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %for.end.cleanup_crit_edge, label %if.end21

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %for.end
  %phys = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 20
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.204, ptr noundef %21, ptr noundef %devpath.i) #10
  %call25 = tail call i32 @strlcat(ptr noundef %phys, ptr noundef nonnull @.str.1, i32 noundef 64) #10
  %idata_dma = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 8
  %call26 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i, i32 noundef 64, i32 noundef 3264, ptr noundef %idata_dma) #10
  %idata = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %idata to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call26, ptr %idata, align 8
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %if.end21.err_free_mem_crit_edge, label %if.end30

if.end21.err_free_mem_crit_edge:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_mem

if.end30:                                         ; preds = %if.end21
  %call31 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %irq_in = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %irq_in to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call31, ptr %irq_in, align 4
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.end30.err_free_idata_crit_edge, label %if.end35

if.end30.err_free_idata_crit_edge:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_idata

if.end35:                                         ; preds = %if.end30
  %udev36 = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %udev36 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i, ptr %udev36, align 8
  %intf37 = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %intf37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %intf, ptr %intf37, align 4
  %mapping = getelementptr [226 x %struct.xpad_device], ptr @xpad_device, i32 0, i32 %i.0.lcssa, i32 3
  %26 = ptrtoint ptr %mapping to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mapping, align 4
  %conv39 = zext i8 %27 to i32
  %mapping40 = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 21
  %28 = ptrtoint ptr %mapping40 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv39, ptr %mapping40, align 8
  %xtype = getelementptr [226 x %struct.xpad_device], ptr @xpad_device, i32 0, i32 %i.0.lcssa, i32 4
  %29 = ptrtoint ptr %xtype to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %xtype, align 1
  %conv42 = zext i8 %30 to i32
  %xtype43 = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 22
  %31 = ptrtoint ptr %xtype43 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv42, ptr %xtype43, align 4
  %name = getelementptr [226 x %struct.xpad_device], ptr @xpad_device, i32 0, i32 %i.0.lcssa, i32 2
  %32 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name, align 4
  %name45 = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 24
  %34 = ptrtoint ptr %name45 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %name45, align 4
  %work = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 25
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #10
  %35 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 25, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @xpad_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry49 = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 25, i32 1
  %36 = ptrtoint ptr %entry49 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %entry49, ptr %entry49, align 4
  %prev.i = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 25, i32 1, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %entry49, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 25, i32 2
  %38 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @xpad_presence_work, ptr %func, align 4
  %39 = ptrtoint ptr %xtype43 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %xtype43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %cmp52 = icmp eq i32 %40, 4
  br i1 %cmp52, label %if.then54, label %if.end35.if.end97_crit_edge

if.end35.if.end97_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

if.then54:                                        ; preds = %if.end35
  %41 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bInterfaceClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %cmp58 = icmp eq i8 %44, -1
  br i1 %cmp58, label %if.then60, label %if.then54.if.end82_crit_edge

if.then54.if.end82_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then60:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  %bInterfaceProtocol = getelementptr inbounds %struct.usb_interface_descriptor, ptr %42, i32 0, i32 7
  %45 = ptrtoint ptr %bInterfaceProtocol to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bInterfaceProtocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -48, i8 %46)
  %switch.selectcmp = icmp eq i8 %46, -48
  %switch.select = select i1 %switch.selectcmp, i32 3, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %46)
  %switch.selectcmp261 = icmp eq i8 %46, -127
  %switch.select262 = select i1 %switch.selectcmp261, i32 2, i32 %switch.select
  br label %if.end82

if.end82:                                         ; preds = %if.then60, %if.then54.if.end82_crit_edge
  %.sink = phi i32 [ %switch.select262, %if.then60 ], [ 0, %if.then54.if.end82_crit_edge ]
  %47 = ptrtoint ptr %xtype43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink, ptr %xtype43, align 4
  %48 = load i8, ptr @dpad_to_buttons, align 1, !range !571
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool83.not = icmp eq i8 %48, 0
  br i1 %tobool83.not, label %if.end82.if.end86_crit_edge, label %if.then84

if.end82.if.end86_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then84:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %mapping40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mapping40, align 8
  %or = or i32 %50, 1
  store i32 %or, ptr %mapping40, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.end82.if.end86_crit_edge
  %51 = load i8, ptr @triggers_to_buttons, align 1, !range !571
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool87.not = icmp eq i8 %51, 0
  br i1 %tobool87.not, label %if.end86.if.end91_crit_edge, label %if.then88

if.end86.if.end91_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then88:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %mapping40 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mapping40, align 8
  %or90 = or i32 %53, 2
  store i32 %or90, ptr %mapping40, align 8
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %if.end86.if.end91_crit_edge
  %54 = load i8, ptr @sticks_to_null, align 1, !range !571
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool92.not = icmp eq i8 %54, 0
  br i1 %tobool92.not, label %if.end91.if.end97thread-pre-split_crit_edge, label %if.then93

if.end91.if.end97thread-pre-split_crit_edge:      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97thread-pre-split

if.then93:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %mapping40 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mapping40, align 8
  %or95 = or i32 %56, 4
  store i32 %or95, ptr %mapping40, align 8
  br label %if.end97thread-pre-split

if.end97thread-pre-split:                         ; preds = %if.then93, %if.end91.if.end97thread-pre-split_crit_edge
  %57 = ptrtoint ptr %xtype43 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr = load i32, ptr %xtype43, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.end97thread-pre-split, %if.end35.if.end97_crit_edge
  %58 = phi i32 [ %.pr, %if.end97thread-pre-split ], [ %40, %if.end35.if.end97_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %58)
  %cmp99 = icmp eq i32 %58, 3
  br i1 %cmp99, label %land.lhs.true101, label %if.end97.if.end108_crit_edge

if.end97.if.end108_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

land.lhs.true101:                                 ; preds = %if.end97
  %59 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp105.not = icmp eq i8 %62, 0
  br i1 %cmp105.not, label %land.lhs.true101.if.end108_crit_edge, label %land.lhs.true101.err_free_in_urb_crit_edge

land.lhs.true101.err_free_in_urb_crit_edge:       ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_in_urb

land.lhs.true101.if.end108_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.end108:                                        ; preds = %land.lhs.true101.if.end108_crit_edge, %if.end97.if.end108_crit_edge
  %63 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur_altsetting, align 4
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %endpoint, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bmAttributes.i, align 1
  %69 = and i8 %68, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %69)
  %cmp.i.not = icmp eq i8 %69, 3
  br i1 %cmp.i.not, label %if.then118, label %if.end108.if.end124_crit_edge

if.end108.if.end124_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then118:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %66, i32 0, i32 2
  %70 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %71)
  %tobool120.not = icmp sgt i8 %71, -1
  %ep_irq_in.0.arrayidx114 = select i1 %tobool120.not, ptr null, ptr %66
  %arrayidx114.ep_irq_out.0 = select i1 %tobool120.not, ptr %66, ptr null
  br label %if.end124

if.end124:                                        ; preds = %if.then118, %if.end108.if.end124_crit_edge
  %ep_irq_in.1 = phi ptr [ null, %if.end108.if.end124_crit_edge ], [ %ep_irq_in.0.arrayidx114, %if.then118 ]
  %ep_irq_out.1 = phi ptr [ null, %if.end108.if.end124_crit_edge ], [ %arrayidx114.ep_irq_out.0, %if.then118 ]
  %bmAttributes.i.1 = getelementptr %struct.usb_host_endpoint, ptr %66, i32 1, i32 0, i32 3
  %72 = ptrtoint ptr %bmAttributes.i.1 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bmAttributes.i.1, align 1
  %74 = and i8 %73, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %74)
  %cmp.i.not.1 = icmp eq i8 %74, 3
  br i1 %cmp.i.not.1, label %if.then118.1, label %if.end124.if.end124.1_crit_edge

if.end124.if.end124.1_crit_edge:                  ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124.1

if.then118.1:                                     ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx114.1 = getelementptr %struct.usb_host_endpoint, ptr %66, i32 1
  %bEndpointAddress.i.1 = getelementptr %struct.usb_host_endpoint, ptr %66, i32 1, i32 0, i32 2
  %75 = ptrtoint ptr %bEndpointAddress.i.1 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %bEndpointAddress.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %76)
  %tobool120.not.1 = icmp sgt i8 %76, -1
  %ep_irq_in.0.arrayidx114.1 = select i1 %tobool120.not.1, ptr %ep_irq_in.1, ptr %arrayidx114.1
  %arrayidx114.ep_irq_out.0.1 = select i1 %tobool120.not.1, ptr %arrayidx114.1, ptr %ep_irq_out.1
  br label %if.end124.1

if.end124.1:                                      ; preds = %if.then118.1, %if.end124.if.end124.1_crit_edge
  %ep_irq_in.1.1 = phi ptr [ %ep_irq_in.1, %if.end124.if.end124.1_crit_edge ], [ %ep_irq_in.0.arrayidx114.1, %if.then118.1 ]
  %ep_irq_out.1.1 = phi ptr [ %ep_irq_out.1, %if.end124.if.end124.1_crit_edge ], [ %arrayidx114.ep_irq_out.0.1, %if.then118.1 ]
  %tobool128.not = icmp eq ptr %ep_irq_in.1.1, null
  %tobool129.not = icmp eq ptr %ep_irq_out.1.1, null
  %or.cond = select i1 %tobool128.not, i1 true, i1 %tobool129.not
  br i1 %or.cond, label %if.end124.1.err_free_in_urb_crit_edge, label %if.end131

if.end124.1.err_free_in_urb_crit_edge:            ; preds = %if.end124.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_in_urb

if.end131:                                        ; preds = %if.end124.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %58)
  %cmp.i247 = icmp eq i32 %58, 4
  br i1 %cmp.i247, label %if.end131.if.end135_crit_edge, label %if.end.i

if.end131.if.end135_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.end.i:                                         ; preds = %if.end131
  %irq_out_anchor.i = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 10
  %77 = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 10, i32 1
  %78 = call ptr @memset(ptr %77, i32 0, i32 104)
  %79 = ptrtoint ptr %irq_out_anchor.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %irq_out_anchor.i, ptr %irq_out_anchor.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %irq_out_anchor.i, ptr %prev.i.i.i, align 8
  tail call void @__init_waitqueue_head(ptr noundef %77, ptr noundef nonnull @.str.212, ptr noundef nonnull @init_usb_anchor.__key) #10
  %lock.i.i = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 10, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.214, ptr noundef nonnull @init_usb_anchor.__key.213, i16 noundef signext 3) #10
  %81 = ptrtoint ptr %udev36 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %udev36, align 8
  %odata_dma.i = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 14
  %call.i248 = tail call ptr @usb_alloc_coherent(ptr noundef %82, i32 noundef 64, i32 noundef 3264, ptr noundef %odata_dma.i) #10
  %odata.i = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 13
  %83 = ptrtoint ptr %odata.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call.i248, ptr %odata.i, align 8
  %tobool.not.i = icmp eq ptr %call.i248, null
  br i1 %tobool.not.i, label %if.end.i.err_free_in_urb_crit_edge, label %do.body.i

if.end.i.err_free_in_urb_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_in_urb

do.body.i:                                        ; preds = %if.end.i
  %odata_lock.i = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %odata_lock.i, ptr noundef nonnull @.str.211, ptr noundef nonnull @xpad_init_output.__key, i16 noundef signext 3) #10
  %call5.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %irq_out.i = getelementptr inbounds %struct.usb_xpad, ptr %call7.i.i, i32 0, i32 9
  %84 = ptrtoint ptr %irq_out.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call5.i, ptr %irq_out.i, align 8
  %tobool7.not.i = icmp eq ptr %call5.i, null
  %85 = ptrtoint ptr %udev36 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %udev36, align 8
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %odata.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %odata.i, align 8
  %89 = ptrtoint ptr %odata_dma.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %odata_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %86, i32 noundef 64, ptr noundef %88, i32 noundef %90) #10
  br label %err_free_in_urb

if.end9.i:                                        ; preds = %do.body.i
  %bEndpointAddress.i249 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep_irq_out.1.1, i32 0, i32 2
  %91 = ptrtoint ptr %bEndpointAddress.i249 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %bEndpointAddress.i249, align 1
  %conv.i = zext i8 %92 to i32
  %93 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %86, align 8
  %shl.i.i = shl i32 %94, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or.i = or i32 %or.i.i, 1073741824
  %95 = ptrtoint ptr %odata.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %odata.i, align 8
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep_irq_out.1.1, i32 0, i32 5
  %97 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %bInterval.i, align 1
  %conv15.i = zext i8 %98 to i32
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 8
  %99 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %86, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 10
  %100 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %or.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 14
  %101 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %96, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 19
  %102 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 64, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 28
  %103 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @xpad_irq_out, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 27
  %104 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call7.i.i, ptr %context4.i.i, align 4
  %speed.i.i = getelementptr inbounds %struct.usb_device, ptr %86, i32 0, i32 4
  %105 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %106)
  %cmp.i.i = icmp eq i32 %106, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %106)
  %cmp6.i.i = icmp ugt i32 %106, 4
  %or.cond.i.i = or i1 %cmp.i.i, %cmp6.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.end9.i.usb_fill_int_urb.exit.i_crit_edge

if.end9.i.usb_fill_int_urb.exit.i_crit_edge:      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_fill_int_urb.exit.i

if.then.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %107 = tail call i32 @llvm.smax.i32(i32 %conv15.i, i32 1) #10
  %108 = tail call i32 @llvm.umin.i32(i32 %107, i32 16) #10
  %sub.i.i = add nsw i32 %108, -1
  %shl.i1.i = shl nuw nsw i32 1, %sub.i.i
  br label %usb_fill_int_urb.exit.i

usb_fill_int_urb.exit.i:                          ; preds = %if.then.i.i, %if.end9.i.usb_fill_int_urb.exit.i_crit_edge
  %interval.sink.i.i = phi i32 [ %shl.i1.i, %if.then.i.i ], [ %conv15.i, %if.end9.i.usb_fill_int_urb.exit.i_crit_edge ]
  %109 = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 25
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %interval.sink.i.i, ptr %109, align 4
  %start_frame.i.i = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 23
  %111 = ptrtoint ptr %start_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -1, ptr %start_frame.i.i, align 4
  %112 = ptrtoint ptr %odata_dma.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %odata_dma.i, align 4
  %114 = ptrtoint ptr %irq_out.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %irq_out.i, align 8
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %115, i32 0, i32 15
  %116 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %113, ptr %transfer_dma.i, align 4
  %117 = load ptr, ptr %irq_out.i, align 8
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %117, i32 0, i32 13
  %118 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %transfer_flags.i, align 4
  %or19.i = or i32 %119, 4
  store i32 %or19.i, ptr %transfer_flags.i, align 4
  br label %if.end135

if.end135:                                        ; preds = %usb_fill_int_urb.exit.i, %if.end131.if.end135_crit_edge
  %120 = ptrtoint ptr %irq_in to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %irq_in, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep_irq_in.1.1, i32 0, i32 2
  %122 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %bEndpointAddress, align 1
  %conv137 = zext i8 %123 to i32
  %124 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %125, 8
  %shl1.i = shl nuw nsw i32 %conv137, 15
  %or.i250 = or i32 %shl1.i, %shl.i
  %or140 = or i32 %or.i250, 1073741952
  %126 = ptrtoint ptr %idata to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %idata, align 8
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep_irq_in.1.1, i32 0, i32 5
  %128 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %bInterval, align 1
  %conv142 = zext i8 %129 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %121, i32 0, i32 8
  %130 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %121, i32 0, i32 10
  %131 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %or140, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %121, i32 0, i32 14
  %132 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %127, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %121, i32 0, i32 19
  %133 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 64, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %121, i32 0, i32 28
  %134 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @xpad_irq_in, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %121, i32 0, i32 27
  %135 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %1, i32 -100
  %136 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %137)
  %cmp.i251 = icmp eq i32 %137, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %137)
  %cmp6.i = icmp ugt i32 %137, 4
  %or.cond.i = or i1 %cmp.i251, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end135.usb_fill_int_urb.exit_crit_edge

if.end135.usb_fill_int_urb.exit_crit_edge:        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  %138 = tail call i32 @llvm.smax.i32(i32 %conv142, i32 1) #10
  %139 = tail call i32 @llvm.umin.i32(i32 %138, i32 16) #10
  %sub.i = add nsw i32 %139, -1
  %shl.i252 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end135.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i252, %if.then.i ], [ %conv142, %if.end135.usb_fill_int_urb.exit_crit_edge ]
  %140 = getelementptr inbounds %struct.urb, ptr %121, i32 0, i32 25
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %interval.sink.i, ptr %140, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %121, i32 0, i32 23
  %142 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -1, ptr %start_frame.i, align 4
  %143 = ptrtoint ptr %idata_dma to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %idata_dma, align 4
  %145 = ptrtoint ptr %irq_in to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %irq_in, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %146, i32 0, i32 15
  %147 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %144, ptr %transfer_dma, align 4
  %148 = load ptr, ptr %irq_in, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %148, i32 0, i32 13
  %149 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %transfer_flags, align 4
  %or146 = or i32 %150, 4
  store i32 %or146, ptr %transfer_flags, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %151 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %152 = ptrtoint ptr %xtype43 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %xtype43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %153)
  %cmp148 = icmp eq i32 %153, 2
  br i1 %cmp148, label %if.then150, label %if.else156

if.then150:                                       ; preds = %usb_fill_int_urb.exit
  %call151 = tail call fastcc i32 @xpad360w_start_input(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end154, label %if.then150.err_deinit_output_crit_edge

if.then150.err_deinit_output_crit_edge:           ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_deinit_output

if.end154:                                        ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #12
  %quirks = getelementptr i8, ptr %1, i32 1128
  %154 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %quirks, align 8
  %or155 = or i32 %155, 2
  store i32 %or155, ptr %quirks, align 8
  br label %cleanup

if.else156:                                       ; preds = %usb_fill_int_urb.exit
  %call157 = tail call fastcc i32 @xpad_init_input(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.else156.cleanup_crit_edge, label %if.else156.err_deinit_output_crit_edge

if.else156.err_deinit_output_crit_edge:           ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_deinit_output

if.else156.cleanup_crit_edge:                     ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_deinit_output:                                ; preds = %if.else156.err_deinit_output_crit_edge, %if.then150.err_deinit_output_crit_edge
  %error.0 = phi i32 [ %call151, %if.then150.err_deinit_output_crit_edge ], [ %call157, %if.else156.err_deinit_output_crit_edge ]
  tail call fastcc void @xpad_deinit_output(ptr noundef nonnull %call7.i.i)
  br label %err_free_in_urb

err_free_in_urb:                                  ; preds = %err_deinit_output, %if.then8.i, %if.end.i.err_free_in_urb_crit_edge, %if.end124.1.err_free_in_urb_crit_edge, %land.lhs.true101.err_free_in_urb_crit_edge
  %error.1 = phi i32 [ %error.0, %err_deinit_output ], [ -19, %land.lhs.true101.err_free_in_urb_crit_edge ], [ -19, %if.end124.1.err_free_in_urb_crit_edge ], [ -12, %if.then8.i ], [ -12, %if.end.i.err_free_in_urb_crit_edge ]
  %156 = ptrtoint ptr %irq_in to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %irq_in, align 4
  tail call void @usb_free_urb(ptr noundef %157) #10
  br label %err_free_idata

err_free_idata:                                   ; preds = %err_free_in_urb, %if.end30.err_free_idata_crit_edge
  %error.2 = phi i32 [ %error.1, %err_free_in_urb ], [ -12, %if.end30.err_free_idata_crit_edge ]
  %158 = ptrtoint ptr %idata to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %idata, align 8
  %160 = ptrtoint ptr %idata_dma to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %idata_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef 64, ptr noundef %159, i32 noundef %161) #10
  br label %err_free_mem

err_free_mem:                                     ; preds = %err_free_idata, %if.end21.err_free_mem_crit_edge
  %error.3 = phi i32 [ %error.2, %err_free_idata ], [ -12, %if.end21.err_free_mem_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %if.else156.cleanup_crit_edge, %if.end154, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.3, %err_free_mem ], [ -19, %entry.cleanup_crit_edge ], [ -12, %for.end.cleanup_crit_edge ], [ 0, %if.else156.cleanup_crit_edge ], [ 0, %if.end154 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xpad_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %xtype = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %xtype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq_in.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq_in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_in.i, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #10
  %work.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 25
  %call.i = tail call zeroext i1 @flush_work(ptr noundef %work.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %input_created.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %input_created.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %input_created.i, align 1, !range !571
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.xpad_deinit_input.exit_crit_edge, label %if.then.i

if.end.xpad_deinit_input.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_deinit_input.exit

if.then.i:                                        ; preds = %if.end
  %8 = ptrtoint ptr %input_created.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %input_created.i, align 1
  %led.i.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %led.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %led.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.then.i.xpad_led_disconnect.exit.i_crit_edge, label %if.then.i.i

if.then.i.xpad_led_disconnect.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_led_disconnect.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %led_cdev.i.i = getelementptr inbounds %struct.xpad_led, ptr %10, i32 0, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_cdev.i.i) #10
  %pad_nr.i.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 23
  %11 = ptrtoint ptr %pad_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pad_nr.i.i, align 4
  tail call void @ida_free(ptr noundef nonnull @xpad_pad_seq, i32 noundef %12) #10
  tail call void @kfree(ptr noundef nonnull %10) #10
  br label %xpad_led_disconnect.exit.i

xpad_led_disconnect.exit.i:                       ; preds = %if.then.i.i, %if.then.i.xpad_led_disconnect.exit.i_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void @input_unregister_device(ptr noundef %14) #10
  br label %xpad_deinit_input.exit

xpad_deinit_input.exit:                           ; preds = %xpad_led_disconnect.exit.i, %if.end.xpad_deinit_input.exit_crit_edge
  %15 = ptrtoint ptr %xtype to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 4
  br i1 %cmp.not.i, label %xpad_deinit_input.exit.xpad_deinit_output.exit_crit_edge, label %if.then.i13

xpad_deinit_input.exit.xpad_deinit_output.exit_crit_edge: ; preds = %xpad_deinit_input.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_deinit_output.exit

if.then.i13:                                      ; preds = %xpad_deinit_input.exit
  %irq_out_anchor.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 10
  %call.i11 = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %irq_out_anchor.i, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool.not.i12 = icmp eq i32 %call.i11, 0
  br i1 %tobool.not.i12, label %do.end.i, label %if.then.i13.xpad_stop_output.exit_crit_edge

if.then.i13.xpad_stop_output.exit_crit_edge:      ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_stop_output.exit

do.end.i:                                         ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #12
  %intf.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %18, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.230) #14
  tail call void @usb_kill_anchored_urbs(ptr noundef %irq_out_anchor.i) #10
  br label %xpad_stop_output.exit

xpad_stop_output.exit:                            ; preds = %do.end.i, %if.then.i13.xpad_stop_output.exit_crit_edge
  %19 = ptrtoint ptr %xtype to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %xtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp.not.i15 = icmp eq i32 %.pr, 4
  br i1 %cmp.not.i15, label %xpad_stop_output.exit.xpad_deinit_output.exit_crit_edge, label %if.then.i16

xpad_stop_output.exit.xpad_deinit_output.exit_crit_edge: ; preds = %xpad_stop_output.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_deinit_output.exit

if.then.i16:                                      ; preds = %xpad_stop_output.exit
  call void @__sanitizer_cov_trace_pc() #12
  %irq_out.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %irq_out.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irq_out.i, align 4
  tail call void @usb_free_urb(ptr noundef %21) #10
  %udev.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udev.i, align 4
  %odata.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 13
  %24 = ptrtoint ptr %odata.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %odata.i, align 4
  %odata_dma.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 14
  %26 = ptrtoint ptr %odata_dma.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %odata_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %23, i32 noundef 64, ptr noundef %25, i32 noundef %27) #10
  br label %xpad_deinit_output.exit

xpad_deinit_output.exit:                          ; preds = %if.then.i16, %xpad_stop_output.exit.xpad_deinit_output.exit_crit_edge, %xpad_deinit_input.exit.xpad_deinit_output.exit_crit_edge
  %irq_in = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %irq_in to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %irq_in, align 4
  tail call void @usb_free_urb(ptr noundef %29) #10
  %udev = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %udev, align 4
  %idata = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %idata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %idata, align 4
  %idata_dma = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 8
  %34 = ptrtoint ptr %idata_dma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idata_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %31, i32 noundef 64, ptr noundef %33, i32 noundef %35) #10
  tail call void @kfree(ptr noundef %1) #10
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpad_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %xtype = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %xtype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %irq_in.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq_in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_in.i, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #10
  %work.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 25
  %call.i = tail call zeroext i1 @flush_work(ptr noundef %work.i) #10
  %6 = load i8, ptr @auto_poweroff, align 1, !range !571
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then.if.end7_crit_edge, label %land.lhs.true

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %if.then
  %pad_present = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %pad_present to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pad_present, align 4, !range !571
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end7_crit_edge, label %if.then2

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then2:                                         ; preds = %land.lhs.true
  %out_packets.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 16
  %odata_lock.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 15
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %odata_lock.i) #10
  %9 = ptrtoint ptr %out_packets.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %out_packets.i, align 1
  %arrayidx7.i = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 8, ptr %arrayidx9.i, align 1
  %arrayidx11.i = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -64, ptr %arrayidx11.i, align 1
  %arrayidx13.i = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 4
  %len.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 0, ptr %arrayidx13.i, align 1
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 12, ptr %len.i, align 1
  %pending.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 0, i32 2
  %15 = ptrtoint ptr %pending.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %pending.i, align 1
  %last_out_packet.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %last_out_packet.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %last_out_packet.i, align 4
  %irq_out_active.i.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %irq_out_active.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %irq_out_active.i.i, align 4, !range !571
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then2.xpad360w_poweroff_controller.exit_crit_edge

if.then2.xpad360w_poweroff_controller.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad360w_poweroff_controller.exit

land.lhs.true.i.i:                                ; preds = %if.then2
  %call.i.i = tail call fastcc zeroext i1 @xpad_prepare_next_out_packet(ptr noundef %1) #10
  br i1 %call.i.i, label %if.then.i.i, label %land.lhs.true.i.i.xpad360w_poweroff_controller.exit_crit_edge

land.lhs.true.i.i.xpad360w_poweroff_controller.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad360w_poweroff_controller.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %irq_out.i.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %irq_out.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_out.i.i, align 4
  %irq_out_anchor.i.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 10
  tail call void @usb_anchor_urb(ptr noundef %20, ptr noundef %irq_out_anchor.i.i) #10
  %21 = ptrtoint ptr %irq_out.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_out.i.i, align 4
  %call2.i.i = tail call i32 @usb_submit_urb(ptr noundef %22, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %intf.i.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %intf.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.usb_interface, ptr %24, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.226, i32 noundef %call2.i.i) #14
  %25 = ptrtoint ptr %irq_out.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irq_out.i.i, align 4
  tail call void @usb_unanchor_urb(ptr noundef %26) #10
  br label %xpad360w_poweroff_controller.exit

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %irq_out_active.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %irq_out_active.i.i, align 4
  br label %xpad360w_poweroff_controller.exit

xpad360w_poweroff_controller.exit:                ; preds = %if.end.i.i, %do.end.i.i, %land.lhs.true.i.i.xpad360w_poweroff_controller.exit_crit_edge, %if.then2.xpad360w_poweroff_controller.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %odata_lock.i, i32 noundef %call2.i) #10
  br label %if.end7

if.else:                                          ; preds = %entry
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call3 = tail call zeroext i1 @input_device_enabled(ptr noundef %29) #10
  br i1 %call3, label %if.then4, label %if.else.if.end5_crit_edge

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %irq_in.i16 = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %irq_in.i16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %irq_in.i16, align 4
  tail call void @usb_kill_urb(ptr noundef %31) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.else.if.end5_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %if.end7

if.end7:                                          ; preds = %if.end5, %xpad360w_poweroff_controller.exit, %land.lhs.true.if.end7_crit_edge, %if.then.if.end7_crit_edge
  %32 = ptrtoint ptr %xtype to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %xtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp.not.i = icmp eq i32 %33, 4
  br i1 %cmp.not.i, label %if.end7.xpad_stop_output.exit_crit_edge, label %if.then.i

if.end7.xpad_stop_output.exit_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_stop_output.exit

if.then.i:                                        ; preds = %if.end7
  %irq_out_anchor.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 10
  %call.i17 = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %irq_out_anchor.i, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool.not.i = icmp eq i32 %call.i17, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i.xpad_stop_output.exit_crit_edge

if.then.i.xpad_stop_output.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_stop_output.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %intf.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %35, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.230) #14
  tail call void @usb_kill_anchored_urbs(ptr noundef %irq_out_anchor.i) #10
  br label %xpad_stop_output.exit

xpad_stop_output.exit:                            ; preds = %do.end.i, %if.then.i.xpad_stop_output.exit_crit_edge, %if.end7.xpad_stop_output.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpad_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %xtype = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %xtype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call fastcc i32 @xpad360w_start_input(ptr noundef %1)
  br label %if.end13

if.else:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call3 = tail call zeroext i1 @input_device_enabled(ptr noundef %5) #10
  br i1 %call3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  %irq_in.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %irq_in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_in.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.if.end11_crit_edge

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end.i:                                         ; preds = %if.then4
  %8 = ptrtoint ptr %xtype to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp.i = icmp eq i32 %9, 3
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end11_crit_edge

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then1.i:                                       ; preds = %if.end.i
  %call2.i = tail call fastcc i32 @xpad_start_xbox_one(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then1.i.if.end11_crit_edge, label %if.then4.i

if.then1.i.if.end11_crit_edge:                    ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then4.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %irq_in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_in.i, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #10
  br label %if.end11

if.else6:                                         ; preds = %if.else
  %12 = ptrtoint ptr %xtype to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp8 = icmp eq i32 %13, 3
  br i1 %cmp8, label %if.then9, label %if.else6.if.end11_crit_edge

if.else6.if.end11_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call fastcc i32 @xpad_start_xbox_one(ptr noundef %1)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.else6.if.end11_crit_edge, %if.then4.i, %if.then1.i.if.end11_crit_edge, %if.end.i.if.end11_crit_edge, %if.then4.if.end11_crit_edge
  %retval1.0 = phi i32 [ %call10, %if.then9 ], [ 0, %if.else6.if.end11_crit_edge ], [ %call2.i, %if.then4.i ], [ -5, %if.then4.if.end11_crit_edge ], [ 0, %if.then1.i.if.end11_crit_edge ], [ 0, %if.end.i.if.end11_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.then
  %retval1.1 = phi i32 [ %call2, %if.then ], [ %retval1.0, %if.end11 ]
  ret i32 %retval1.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xpad_presence_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -496
  %pad_present = getelementptr i8, ptr %work, i32 -480
  %0 = ptrtoint ptr %pad_present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pad_present, align 4, !range !571
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body48, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @xpad_init_input(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  br i1 %tobool1.not, label %do.body4, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev3 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.205, i32 noundef %call) #14
  br label %if.end56

do.body4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !572
  %x360w_dev30 = getelementptr i8, ptr %work, i32 -492
  %4 = ptrtoint ptr %x360w_dev30 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %x360w_dev30, align 4
  br label %if.end56

do.body48:                                        ; preds = %entry
  %x360w_dev49 = getelementptr i8, ptr %work, i32 -492
  %5 = ptrtoint ptr %x360w_dev49 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr null, ptr %x360w_dev49, align 4
  tail call void @synchronize_rcu() #10
  %input_created.i = getelementptr i8, ptr %work, i32 -479
  %6 = ptrtoint ptr %input_created.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %input_created.i, align 1, !range !571
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %do.body48.if.end56_crit_edge, label %if.then.i

do.body48.if.end56_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then.i:                                        ; preds = %do.body48
  %8 = ptrtoint ptr %input_created.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %input_created.i, align 1
  %led.i.i = getelementptr i8, ptr %work, i32 -84
  %9 = ptrtoint ptr %led.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %led.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.then.i.xpad_led_disconnect.exit.i_crit_edge, label %if.then.i.i

if.then.i.xpad_led_disconnect.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_led_disconnect.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %led_cdev.i.i = getelementptr inbounds %struct.xpad_led, ptr %10, i32 0, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_cdev.i.i) #10
  %pad_nr.i.i = getelementptr i8, ptr %work, i32 -8
  %11 = ptrtoint ptr %pad_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pad_nr.i.i, align 4
  tail call void @ida_free(ptr noundef nonnull @xpad_pad_seq, i32 noundef %12) #10
  tail call void @kfree(ptr noundef nonnull %10) #10
  br label %xpad_led_disconnect.exit.i

xpad_led_disconnect.exit.i:                       ; preds = %if.then.i.i, %if.then.i.xpad_led_disconnect.exit.i_crit_edge
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  tail call void @input_unregister_device(ptr noundef %14) #10
  br label %if.end56

if.end56:                                         ; preds = %xpad_led_disconnect.exit.i, %do.body48.if.end56_crit_edge, %do.body4, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xpad_irq_in(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %intf = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %status2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status2, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body5 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge78
    i32 -108, label %entry.do.body_crit_edge79
  ]

entry.do.body_crit_edge79:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge78:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge78, %entry.do.body_crit_edge79
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xpad_irq_in.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xpad_irq_in, %if.then)) #10
          to label %cleanup [label %if.then], !srcloc !573

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xpad_irq_in.__UNIQUE_ID_ddebug246, ptr noundef %dev1, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.221, i32 noundef %5) #10
  br label %cleanup

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xpad_irq_in.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xpad_irq_in, %if.then17)) #10
          to label %exit [label %if.then17], !srcloc !573

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xpad_irq_in.__UNIQUE_ID_ddebug247, ptr noundef %dev1, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.221, i32 noundef %5) #10
  br label %exit

sw.epilog:                                        ; preds = %entry
  %xtype = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 22
  %7 = ptrtoint ptr %xtype to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xtype, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.233)
  switch i32 %8, label %sw.default27 [
    i32 1, label %sw.bb21
    i32 2, label %sw.bb23
    i32 3, label %sw.bb25
  ]

sw.bb21:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %idata = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %idata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %idata, align 4
  tail call fastcc void @xpad360_process_packet(ptr noundef %1, ptr noundef %11, ptr noundef %13)
  br label %exit

sw.bb23:                                          ; preds = %sw.epilog
  %idata24 = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %idata24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %idata24, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %18 = and i8 %17, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %sw.bb23.if.end15.i_crit_edge, label %if.then.i

sw.bb23.if.end15.i_crit_edge:                     ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i:                                        ; preds = %sw.bb23
  %arrayidx1.i = getelementptr i8, ptr %15, i32 1
  %19 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx1.i, align 1
  %pad_present.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %pad_present.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pad_present.i, align 4, !range !571
  %.lobit2.i = lshr i8 %20, 7
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %.lobit2.i)
  %cmp9.not.i = icmp eq i8 %22, %.lobit2.i
  br i1 %cmp9.not.i, label %if.then.i.if.end15.i_crit_edge, label %if.then11.i

if.then.i.if.end15.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %pad_present.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.lobit2.i, ptr %pad_present.i, align 4
  %work.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %work.i) #10
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.then.i.if.end15.i_crit_edge, %sw.bb23.if.end15.i_crit_edge
  %arrayidx16.i = getelementptr i8, ptr %15, i32 1
  %25 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp18.not.i = icmp eq i8 %26, 1
  br i1 %cmp18.not.i, label %if.end21.i, label %if.end15.i.exit_crit_edge

if.end15.i.exit_crit_edge:                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end21.i:                                       ; preds = %if.end15.i
  %27 = tail call i32 @llvm.read_register.i32(metadata !561) #10
  %and.i.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !574
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.end21.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end21.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end21.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.223, i32 noundef 696, ptr noundef nonnull @.str.224) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end21.i.rcu_read_lock.exit.i_crit_edge
  %x360w_dev.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %x360w_dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %x360w_dev.i, align 4
  %call23.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end32.i_crit_edge

rcu_read_lock.exit.i.do.end32.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call25.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %land.lhs.true.i.do.end32.i_crit_edge, label %land.lhs.true27.i

land.lhs.true.i.do.end32.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32.i

land.lhs.true27.i:                                ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @xpad360w_process_packet.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true27.i.do.end32.i_crit_edge, label %if.then29.i

land.lhs.true27.i.do.end32.i_crit_edge:           ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32.i

if.then29.i:                                      ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @xpad360w_process_packet.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.207, i32 noundef 831, ptr noundef nonnull @.str.222) #10
  br label %do.end32.i

do.end32.i:                                       ; preds = %if.then29.i, %land.lhs.true27.i.do.end32.i_crit_edge, %land.lhs.true.i.do.end32.i_crit_edge, %rcu_read_lock.exit.i.do.end32.i_crit_edge
  %tobool34.not.i = icmp eq ptr %32, null
  br i1 %tobool34.not.i, label %do.end32.i.if.end37.i_crit_edge, label %if.then35.i

do.end32.i.if.end37.i_crit_edge:                  ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then35.i:                                      ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx36.i = getelementptr i8, ptr %15, i32 4
  tail call fastcc void @xpad360_process_packet(ptr noundef %1, ptr noundef nonnull %32, ptr noundef %arrayidx36.i) #10
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then35.i, %do.end32.i.if.end37.i_crit_edge
  %call.i3.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i3.i, label %if.end37.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i6.i

if.end37.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i6.i:                               ; preds = %if.end37.i
  %call1.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.223, i32 noundef 724, ptr noundef nonnull @.str.225) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i6.i.rcu_read_unlock.exit.i_crit_edge, %if.end37.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !575
  %33 = tail call i32 @llvm.read_register.i32(metadata !561) #10
  %and.i.i.i.i.i10.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i10.i to ptr
  %preempt_count.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i11.i, align 4
  %sub.i.i.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i11.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %exit

sw.bb25:                                          ; preds = %sw.epilog
  %idata26 = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 7
  %37 = ptrtoint ptr %idata26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %idata26, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %38, align 1
  %43 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.234)
  switch i8 %42, label %sw.bb25.exit_crit_edge [
    i8 7, label %if.then.i60
    i8 32, label %if.end17.i
  ]

sw.bb25.exit_crit_edge:                           ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then.i60:                                      ; preds = %sw.bb25
  %arrayidx3.i = getelementptr i8, ptr %38, i32 1
  %44 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %45)
  %cmp5.i = icmp eq i8 %45, 48
  br i1 %cmp5.i, label %if.then7.i, label %if.then.i60.if.end.i_crit_edge

if.then.i60.if.end.i_crit_edge:                   ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then7.i:                                       ; preds = %if.then.i60
  %arrayidx8.i = getelementptr i8, ptr %38, i32 2
  %46 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx8.i, align 1
  %out_packets.i.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 16
  %odata_lock.i.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 15
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %odata_lock.i.i) #10
  %len.i.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 0, i32 1
  %48 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 13, ptr %len.i.i, align 1
  %49 = call ptr @memcpy(ptr %out_packets.i.i, ptr @xpadone_ack_mode_report.mode_report_ack, i32 13)
  %arrayidx8.i.i = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 2
  %50 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %47, ptr %arrayidx8.i.i, align 1
  %pending.i.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 0, i32 2
  %51 = ptrtoint ptr %pending.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %pending.i.i, align 1
  %last_out_packet.i.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 17
  %52 = ptrtoint ptr %last_out_packet.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %last_out_packet.i.i, align 4
  %irq_out_active.i.i.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 11
  %53 = ptrtoint ptr %irq_out_active.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %irq_out_active.i.i.i, align 4, !range !571
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i.i.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %if.then7.i.xpadone_ack_mode_report.exit.i_crit_edge

if.then7.i.xpadone_ack_mode_report.exit.i_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpadone_ack_mode_report.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then7.i
  %call.i.i.i61 = tail call fastcc zeroext i1 @xpad_prepare_next_out_packet(ptr noundef %1) #10
  br i1 %call.i.i.i61, label %if.then.i.i.i, label %land.lhs.true.i.i.i.xpadone_ack_mode_report.exit.i_crit_edge

land.lhs.true.i.i.i.xpadone_ack_mode_report.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpadone_ack_mode_report.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %irq_out.i.i.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 9
  %55 = ptrtoint ptr %irq_out.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %irq_out.i.i.i, align 4
  %irq_out_anchor.i.i.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 10
  tail call void @usb_anchor_urb(ptr noundef %56, ptr noundef %irq_out_anchor.i.i.i) #10
  %57 = ptrtoint ptr %irq_out.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %irq_out.i.i.i, align 4
  %call2.i.i.i = tail call i32 @usb_submit_urb(ptr noundef %58, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %intf, align 4
  %dev.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %60, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.226, i32 noundef %call2.i.i.i) #14
  %61 = ptrtoint ptr %irq_out.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %irq_out.i.i.i, align 4
  tail call void @usb_unanchor_urb(ptr noundef %62) #10
  br label %xpadone_ack_mode_report.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %irq_out_active.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %irq_out_active.i.i.i, align 4
  br label %xpadone_ack_mode_report.exit.i

xpadone_ack_mode_report.exit.i:                   ; preds = %if.end.i.i.i, %do.end.i.i.i, %land.lhs.true.i.i.i.xpadone_ack_mode_report.exit.i_crit_edge, %if.then7.i.xpadone_ack_mode_report.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %odata_lock.i.i, i32 noundef %call2.i.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %xpadone_ack_mode_report.exit.i, %if.then.i60.if.end.i_crit_edge
  %arrayidx9.i = getelementptr i8, ptr %38, i32 4
  %64 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx9.i, align 1
  %66 = and i8 %65, 1
  %67 = zext i8 %66 to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 1, i32 noundef 316, i32 noundef %67) #10
  br label %cleanup.sink.split.i

if.end17.i:                                       ; preds = %sw.bb25
  %arrayidx18.i = getelementptr i8, ptr %38, i32 4
  %68 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx18.i, align 1
  %70 = lshr i8 %69, 2
  %.lobit.i = and i8 %70, 1
  %71 = zext i8 %.lobit.i to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 1, i32 noundef 315, i32 noundef %71) #10
  %72 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx18.i, align 1
  %74 = lshr i8 %73, 3
  %.lobit35.i = and i8 %74, 1
  %75 = zext i8 %.lobit35.i to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 1, i32 noundef 314, i32 noundef %75) #10
  %mapping.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 21
  %76 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mapping.i, align 4
  %and24.i = and i32 %77, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool.not.i62 = icmp eq i32 %and24.i, 0
  br i1 %tobool.not.i62, label %if.end17.i.if.end29.i_crit_edge, label %if.then25.i

if.end17.i.if.end29.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then25.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx26.i = getelementptr i8, ptr %38, i32 22
  %78 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx26.i, align 1
  %80 = and i8 %79, 1
  %81 = zext i8 %80 to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 1, i32 noundef 167, i32 noundef %81) #10
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then25.i, %if.end17.i.if.end29.i_crit_edge
  %82 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx18.i, align 1
  %84 = lshr i8 %83, 4
  %.lobit36.i = and i8 %84, 1
  %85 = zext i8 %.lobit36.i to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 1, i32 noundef 304, i32 noundef %85) #10
  %86 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx18.i, align 1
  %88 = lshr i8 %87, 5
  %.lobit37.i = and i8 %88, 1
  %89 = zext i8 %.lobit37.i to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 1, i32 noundef 305, i32 noundef %89) #10
  %90 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx18.i, align 1
  %92 = lshr i8 %91, 6
  %.lobit38.i = and i8 %92, 1
  %93 = zext i8 %.lobit38.i to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 1, i32 noundef 307, i32 noundef %93) #10
  %94 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx18.i, align 1
  %.lobit39.i = lshr i8 %95, 7
  %96 = zext i8 %.lobit39.i to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 1, i32 noundef 308, i32 noundef %96) #10
  %97 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mapping.i, align 4
  %and43.i = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %arrayidx59.i = getelementptr i8, ptr %38, i32 5
  %99 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx59.i, align 1
  br i1 %tobool44.not.i, label %if.else58.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %101 = lshr i8 %100, 2
  %.lobit40.i = and i8 %101, 1
  %102 = zext i8 %.lobit40.i to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 1, i32 noundef 704, i32 noundef %102) #10
  %103 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx59.i, align 1
  %105 = lshr i8 %104, 3
  %.lobit41.i = and i8 %105, 1
  %106 = zext i8 %.lobit41.i to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 1, i32 noundef 705, i32 noundef %106) #10
  %107 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx59.i, align 1
  %109 = and i8 %108, 1
  %110 = zext i8 %109 to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 1, i32 noundef 706, i32 noundef %110) #10
  %111 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx59.i, align 1
  %113 = lshr i8 %112, 1
  %.lobit42.i = and i8 %113, 1
  %114 = zext i8 %.lobit42.i to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 1, i32 noundef 707, i32 noundef %114) #10
  br label %if.end89.i

if.else58.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv60.i = zext i8 %100 to i32
  %and61.i = lshr i32 %conv60.i, 3
  %and61.lobit.i = and i32 %and61.i, 1
  %115 = shl i32 %conv60.i, 29
  %116 = ashr i32 %115, 31
  %sub.i = add nsw i32 %116, %and61.lobit.i
  tail call void @input_event(ptr noundef %40, i32 noundef 3, i32 noundef 16, i32 noundef %sub.i) #10
  %117 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx59.i, align 1
  %conv73.i = zext i8 %118 to i32
  %and74.i = lshr i32 %conv73.i, 1
  %and74.lobit.i = and i32 %and74.i, 1
  %and82.i = and i32 %conv73.i, 1
  %sub88.i = sub nsw i32 %and74.lobit.i, %and82.i
  tail call void @input_event(ptr noundef %40, i32 noundef 3, i32 noundef 17, i32 noundef %sub88.i) #10
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.else58.i, %if.then45.i
  %119 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx59.i, align 1
  %121 = lshr i8 %120, 4
  %.lobit43.i = and i8 %121, 1
  %122 = zext i8 %.lobit43.i to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 1, i32 noundef 310, i32 noundef %122) #10
  %123 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx59.i, align 1
  %125 = lshr i8 %124, 5
  %.lobit44.i = and i8 %125, 1
  %126 = zext i8 %.lobit44.i to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 1, i32 noundef 311, i32 noundef %126) #10
  %127 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx59.i, align 1
  %129 = lshr i8 %128, 6
  %.lobit45.i = and i8 %129, 1
  %130 = zext i8 %.lobit45.i to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 1, i32 noundef 317, i32 noundef %130) #10
  %131 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx59.i, align 1
  %.lobit46.i = lshr i8 %132, 7
  %133 = zext i8 %.lobit46.i to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 1, i32 noundef 318, i32 noundef %133) #10
  %134 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %mapping.i, align 4
  %and103.i = and i32 %135, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i)
  %tobool104.not.i = icmp eq i32 %and103.i, 0
  br i1 %tobool104.not.i, label %if.then105.i, label %if.end89.i.if.end117.i_crit_edge

if.end89.i.if.end117.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117.i

if.then105.i:                                     ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %38, i32 10
  %136 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %add.ptr.i, align 2
  %138 = tail call i16 @llvm.bswap.i16(i16 %137) #10
  %conv106.i = sext i16 %138 to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 3, i32 noundef 0, i32 noundef %conv106.i) #10
  %add.ptr107.i = getelementptr i8, ptr %38, i32 12
  %139 = ptrtoint ptr %add.ptr107.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %add.ptr107.i, align 2
  %141 = xor i16 %140, -1
  %142 = tail call i16 @llvm.bswap.i16(i16 %141) #10
  %neg.i = sext i16 %142 to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 3, i32 noundef 1, i32 noundef %neg.i) #10
  %add.ptr110.i = getelementptr i8, ptr %38, i32 14
  %143 = ptrtoint ptr %add.ptr110.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %add.ptr110.i, align 2
  %145 = tail call i16 @llvm.bswap.i16(i16 %144) #10
  %conv112.i = sext i16 %145 to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 3, i32 noundef 3, i32 noundef %conv112.i) #10
  %add.ptr113.i = getelementptr i8, ptr %38, i32 16
  %146 = ptrtoint ptr %add.ptr113.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %add.ptr113.i, align 2
  %148 = xor i16 %147, -1
  %149 = tail call i16 @llvm.bswap.i16(i16 %148) #10
  %neg116.i = sext i16 %149 to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 3, i32 noundef 4, i32 noundef %neg116.i) #10
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.then105.i, %if.end89.i.if.end117.i_crit_edge
  %150 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %mapping.i, align 4
  %and119.i = and i32 %151, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119.i)
  %tobool120.not.i = icmp eq i32 %and119.i, 0
  %add.ptr129.i = getelementptr i8, ptr %38, i32 6
  %152 = ptrtoint ptr %add.ptr129.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %add.ptr129.i, align 2
  br i1 %tobool120.not.i, label %if.else128.i, label %if.then121.i

if.then121.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %153)
  %tobool.i31.i = icmp ne i16 %153, 0
  %lnot.ext.i32.i = zext i1 %tobool.i31.i to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 1, i32 noundef 312, i32 noundef %lnot.ext.i32.i) #10
  %add.ptr125.i = getelementptr i8, ptr %38, i32 8
  %154 = ptrtoint ptr %add.ptr125.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %add.ptr125.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %155)
  %tobool.i33.i = icmp ne i16 %155, 0
  %lnot.ext.i34.i = zext i1 %tobool.i33.i to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 1, i32 noundef 313, i32 noundef %lnot.ext.i34.i) #10
  br label %cleanup.sink.split.i

if.else128.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #12
  %156 = tail call i16 @llvm.bswap.i16(i16 %153) #10
  %conv131.i = zext i16 %156 to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 3, i32 noundef 2, i32 noundef %conv131.i) #10
  %add.ptr132.i = getelementptr i8, ptr %38, i32 8
  %157 = ptrtoint ptr %add.ptr132.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %add.ptr132.i, align 2
  %159 = tail call i16 @llvm.bswap.i16(i16 %158) #10
  %conv134.i = zext i16 %159 to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 3, i32 noundef 5, i32 noundef %conv134.i) #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else128.i, %if.then121.i, %if.end.i
  tail call void @input_event(ptr noundef %40, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  br label %exit

sw.default27:                                     ; preds = %sw.epilog
  %idata28 = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 7
  %160 = ptrtoint ptr %idata28 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %idata28, align 4
  %162 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %1, align 4
  %mapping.i63 = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 21
  %164 = ptrtoint ptr %mapping.i63 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %mapping.i63, align 4
  %and.i = and i32 %165, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i64 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i64, label %if.then.i67, label %sw.default27.if.end.i68_crit_edge

sw.default27.if.end.i68_crit_edge:                ; preds = %sw.default27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i68

if.then.i67:                                      ; preds = %sw.default27
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i65 = getelementptr i8, ptr %161, i32 12
  %166 = ptrtoint ptr %add.ptr.i65 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %add.ptr.i65, align 2
  %168 = tail call i16 @llvm.bswap.i16(i16 %167) #10
  %conv.i = sext i16 %168 to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 3, i32 noundef 0, i32 noundef %conv.i) #10
  %add.ptr2.i = getelementptr i8, ptr %161, i32 14
  %169 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %add.ptr2.i, align 2
  %171 = xor i16 %170, -1
  %172 = tail call i16 @llvm.bswap.i16(i16 %171) #10
  %neg.i66 = sext i16 %172 to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 3, i32 noundef 1, i32 noundef %neg.i66) #10
  %add.ptr5.i = getelementptr i8, ptr %161, i32 16
  %173 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %add.ptr5.i, align 2
  %175 = tail call i16 @llvm.bswap.i16(i16 %174) #10
  %conv7.i = sext i16 %175 to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 3, i32 noundef 3, i32 noundef %conv7.i) #10
  %add.ptr8.i = getelementptr i8, ptr %161, i32 18
  %176 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %add.ptr8.i, align 2
  %178 = xor i16 %177, -1
  %179 = tail call i16 @llvm.bswap.i16(i16 %178) #10
  %neg11.i = sext i16 %179 to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 3, i32 noundef 4, i32 noundef %neg11.i) #10
  br label %if.end.i68

if.end.i68:                                       ; preds = %if.then.i67, %sw.default27.if.end.i68_crit_edge
  %180 = ptrtoint ptr %mapping.i63 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %mapping.i63, align 4
  %and13.i = and i32 %181, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %arrayidx19.i = getelementptr i8, ptr %161, i32 10
  %182 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx19.i, align 1
  br i1 %tobool14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool.i.i = icmp ne i8 %183, 0
  %lnot.ext.i.i = zext i1 %tobool.i.i to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 1, i32 noundef 312, i32 noundef %lnot.ext.i.i) #10
  %arrayidx17.i = getelementptr i8, ptr %161, i32 11
  %184 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool.i1.i = icmp ne i8 %185, 0
  %lnot.ext.i2.i = zext i1 %tobool.i1.i to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 1, i32 noundef 313, i32 noundef %lnot.ext.i2.i) #10
  br label %if.end23.i

if.else.i:                                        ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #12
  %conv20.i = zext i8 %183 to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 3, i32 noundef 2, i32 noundef %conv20.i) #10
  %arrayidx21.i = getelementptr i8, ptr %161, i32 11
  %186 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %187 to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 3, i32 noundef 5, i32 noundef %conv22.i) #10
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else.i, %if.then15.i
  %188 = ptrtoint ptr %mapping.i63 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %mapping.i63, align 4
  %and25.i = and i32 %189, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i69 = icmp eq i32 %and25.i, 0
  %arrayidx41.i = getelementptr i8, ptr %161, i32 2
  %190 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx41.i, align 1
  br i1 %tobool26.not.i69, label %if.else40.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %192 = lshr i8 %191, 2
  %.lobit.i70 = and i8 %192, 1
  %193 = zext i8 %.lobit.i70 to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 1, i32 noundef 704, i32 noundef %193) #10
  %194 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx41.i, align 1
  %196 = lshr i8 %195, 3
  %.lobit31.i = and i8 %196, 1
  %197 = zext i8 %.lobit31.i to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 1, i32 noundef 705, i32 noundef %197) #10
  %198 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx41.i, align 1
  %200 = and i8 %199, 1
  %201 = zext i8 %200 to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 1, i32 noundef 706, i32 noundef %201) #10
  %202 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx41.i, align 1
  %204 = lshr i8 %203, 1
  %.lobit32.i = and i8 %204, 1
  %205 = zext i8 %.lobit32.i to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 1, i32 noundef 707, i32 noundef %205) #10
  br label %xpad_process_packet.exit

if.else40.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv42.i = zext i8 %191 to i32
  %and43.i71 = lshr i32 %conv42.i, 3
  %and43.lobit.i = and i32 %and43.i71, 1
  %206 = shl i32 %conv42.i, 29
  %207 = ashr i32 %206, 31
  %sub.i72 = add nsw i32 %207, %and43.lobit.i
  tail call void @input_event(ptr noundef %163, i32 noundef 3, i32 noundef 16, i32 noundef %sub.i72) #10
  %208 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx41.i, align 1
  %conv55.i = zext i8 %209 to i32
  %and56.i = lshr i32 %conv55.i, 1
  %and56.lobit.i = and i32 %and56.i, 1
  %and64.i = and i32 %conv55.i, 1
  %sub70.i = sub nsw i32 %and56.lobit.i, %and64.i
  tail call void @input_event(ptr noundef %163, i32 noundef 3, i32 noundef 17, i32 noundef %sub70.i) #10
  br label %xpad_process_packet.exit

xpad_process_packet.exit:                         ; preds = %if.else40.i, %if.then27.i
  %210 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx41.i, align 1
  %212 = lshr i8 %211, 4
  %.lobit33.i = and i8 %212, 1
  %213 = zext i8 %.lobit33.i to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 1, i32 noundef 315, i32 noundef %213) #10
  %214 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx41.i, align 1
  %216 = lshr i8 %215, 5
  %.lobit34.i = and i8 %216, 1
  %217 = zext i8 %.lobit34.i to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 1, i32 noundef 314, i32 noundef %217) #10
  %218 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx41.i, align 1
  %220 = lshr i8 %219, 6
  %.lobit35.i73 = and i8 %220, 1
  %221 = zext i8 %.lobit35.i73 to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 1, i32 noundef 317, i32 noundef %221) #10
  %222 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx41.i, align 1
  %.lobit36.i74 = lshr i8 %223, 7
  %224 = zext i8 %.lobit36.i74 to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 1, i32 noundef 318, i32 noundef %224) #10
  %arrayidx84.i = getelementptr i8, ptr %161, i32 4
  %225 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx84.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool.i19.i = icmp ne i8 %226, 0
  %lnot.ext.i20.i = zext i1 %tobool.i19.i to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 1, i32 noundef 304, i32 noundef %lnot.ext.i20.i) #10
  %arrayidx86.i = getelementptr i8, ptr %161, i32 5
  %227 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx86.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %tobool.i21.i = icmp ne i8 %228, 0
  %lnot.ext.i22.i = zext i1 %tobool.i21.i to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 1, i32 noundef 305, i32 noundef %lnot.ext.i22.i) #10
  %arrayidx88.i = getelementptr i8, ptr %161, i32 6
  %229 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %arrayidx88.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %tobool.i23.i = icmp ne i8 %230, 0
  %lnot.ext.i24.i = zext i1 %tobool.i23.i to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 1, i32 noundef 307, i32 noundef %lnot.ext.i24.i) #10
  %arrayidx90.i75 = getelementptr i8, ptr %161, i32 7
  %231 = ptrtoint ptr %arrayidx90.i75 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx90.i75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool.i25.i = icmp ne i8 %232, 0
  %lnot.ext.i26.i = zext i1 %tobool.i25.i to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 1, i32 noundef 308, i32 noundef %lnot.ext.i26.i) #10
  %arrayidx92.i = getelementptr i8, ptr %161, i32 8
  %233 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx92.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %tobool.i27.i = icmp ne i8 %234, 0
  %lnot.ext.i28.i = zext i1 %tobool.i27.i to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 1, i32 noundef 306, i32 noundef %lnot.ext.i28.i) #10
  %arrayidx94.i = getelementptr i8, ptr %161, i32 9
  %235 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx94.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %236)
  %tobool.i29.i = icmp ne i8 %236, 0
  %lnot.ext.i30.i = zext i1 %tobool.i29.i to i32
  tail call void @input_event(ptr noundef %163, i32 noundef 1, i32 noundef 309, i32 noundef %lnot.ext.i30.i) #10
  tail call void @input_event(ptr noundef %163, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  br label %exit

exit:                                             ; preds = %xpad_process_packet.exit, %cleanup.sink.split.i, %sw.bb25.exit_crit_edge, %rcu_read_unlock.exit.i, %if.end15.i.exit_crit_edge, %sw.bb21, %if.then17, %do.body5
  %call30 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %exit.cleanup_crit_edge, label %do.end35

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end35:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.221, i32 noundef %call30) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %exit.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xpad360w_start_input(ptr noundef %xpad) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_in = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 6
  %0 = ptrtoint ptr %irq_in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_in, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %1, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %out_packets.i = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 16
  %odata_lock.i = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 15
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %odata_lock.i) #10
  %2 = ptrtoint ptr %out_packets.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %out_packets.i, align 1
  %arrayidx8.i = getelementptr %struct.usb_xpad, ptr %xpad, i32 0, i32 16, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx8.i, align 1
  %arrayidx10.i = getelementptr %struct.usb_xpad, ptr %xpad, i32 0, i32 16, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 15, ptr %arrayidx10.i, align 1
  %arrayidx12.i = getelementptr %struct.usb_xpad, ptr %xpad, i32 0, i32 16, i32 0, i32 0, i32 3
  %5 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -64, ptr %arrayidx12.i, align 1
  %arrayidx14.i = getelementptr %struct.usb_xpad, ptr %xpad, i32 0, i32 16, i32 0, i32 0, i32 4
  %len.i = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 16, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %arrayidx14.i, align 1
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 12, ptr %len.i, align 1
  %pending.i = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 16, i32 0, i32 2
  %8 = ptrtoint ptr %pending.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %pending.i, align 1
  %last_out_packet.i = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 17
  %9 = ptrtoint ptr %last_out_packet.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %last_out_packet.i, align 4
  %irq_out_active.i.i = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 11
  %10 = ptrtoint ptr %irq_out_active.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %irq_out_active.i.i, align 4, !range !571
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end.xpad_inquiry_pad_presence.exit.thread_crit_edge

if.end.xpad_inquiry_pad_presence.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_inquiry_pad_presence.exit.thread

land.lhs.true.i.i:                                ; preds = %if.end
  %call.i.i = tail call fastcc zeroext i1 @xpad_prepare_next_out_packet(ptr noundef %xpad) #10
  br i1 %call.i.i, label %if.then.i.i, label %land.lhs.true.i.i.xpad_inquiry_pad_presence.exit.thread_crit_edge

land.lhs.true.i.i.xpad_inquiry_pad_presence.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_inquiry_pad_presence.exit.thread

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %irq_out.i.i = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 9
  %12 = ptrtoint ptr %irq_out.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_out.i.i, align 4
  %irq_out_anchor.i.i = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 10
  tail call void @usb_anchor_urb(ptr noundef %13, ptr noundef %irq_out_anchor.i.i) #10
  %14 = ptrtoint ptr %irq_out.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_out.i.i, align 4
  %call2.i.i = tail call i32 @usb_submit_urb(ptr noundef %15, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i, label %if.then3

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %irq_out_active.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %irq_out_active.i.i, align 4
  br label %xpad_inquiry_pad_presence.exit.thread

xpad_inquiry_pad_presence.exit.thread:            ; preds = %if.end.i.i, %land.lhs.true.i.i.xpad_inquiry_pad_presence.exit.thread_crit_edge, %if.end.xpad_inquiry_pad_presence.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %odata_lock.i, i32 noundef %call3.i) #10
  br label %cleanup

if.then3:                                         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %intf.i.i = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 3
  %17 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %intf.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.usb_interface, ptr %18, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.226, i32 noundef %call2.i.i) #14
  %19 = ptrtoint ptr %irq_out.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_out.i.i, align 4
  tail call void @usb_unanchor_urb(ptr noundef %20) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %odata_lock.i, i32 noundef %call3.i) #10
  %21 = ptrtoint ptr %irq_in to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_in, align 4
  tail call void @usb_kill_urb(ptr noundef %22) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %xpad_inquiry_pad_presence.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then3 ], [ -5, %entry.cleanup_crit_edge ], [ 0, %xpad_inquiry_pad_presence.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xpad_init_input(ptr noundef %xpad) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @input_allocate_device() #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %xpad to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %xpad, align 4
  %name = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 24
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %3 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %call, align 8
  %phys = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 20
  %phys2 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %phys2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %phys, ptr %phys2, align 4
  %udev = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 2
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 3, ptr %id, align 2
  %idVendor.i = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 16, i32 7
  %8 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %idVendor.i, align 8
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #10
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %vendor.i, align 2
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 16, i32 8
  %12 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %idProduct.i, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #10
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %product.i, align 2
  %bcdDevice.i = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 16, i32 9
  %16 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bcdDevice.i, align 4
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #10
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %version.i, align 2
  %xtype = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 22
  %20 = ptrtoint ptr %xtype to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp = icmp eq i32 %21, 2
  br i1 %cmp, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 673, ptr %product.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %intf = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 3
  %23 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %intf, align 4
  %dev6 = getelementptr inbounds %struct.usb_interface, ptr %24, i32 0, i32 7
  %parent = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 1
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev6, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %xpad, ptr %driver_data.i.i, align 4
  %27 = ptrtoint ptr %xtype to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp9.not = icmp eq i32 %28, 2
  br i1 %cmp9.not, label %if.end5.if.end11_crit_edge, label %if.then10

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %open = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 31
  %29 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @xpad_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 32
  %30 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @xpad_close, ptr %close, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end5.if.end11_crit_edge
  %mapping = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 21
  %31 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mapping, align 4
  %and = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %for.body.preheader, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.body.preheader:                               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @xpad_set_up_abs(ptr noundef nonnull %call, i16 noundef signext 0)
  tail call fastcc void @xpad_set_up_abs(ptr noundef nonnull %call, i16 noundef signext 1)
  tail call fastcc void @xpad_set_up_abs(ptr noundef nonnull %call, i16 noundef signext 3)
  tail call fastcc void @xpad_set_up_abs(ptr noundef nonnull %call, i16 noundef signext 4)
  br label %if.end17

if.end17:                                         ; preds = %for.body.preheader, %if.end11.if.end17_crit_edge
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 304) #10
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 305) #10
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 307) #10
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 308) #10
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 315) #10
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 314) #10
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 317) #10
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 318) #10
  %33 = ptrtoint ptr %xtype to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %xtype, align 4
  %.off = add i32 %34, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %for.body45.preheader, label %for.body61.preheader

for.body61.preheader:                             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 306) #10
  br label %if.end67.sink.split

for.body45.preheader:                             ; preds = %if.end17
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 310) #10
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 311) #10
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 316) #10
  %35 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mapping, align 4
  %and52 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %for.body45.preheader.if.end67_crit_edge, label %for.body45.preheader.if.end67.sink.split_crit_edge

for.body45.preheader.if.end67.sink.split_crit_edge: ; preds = %for.body45.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.sink.split

for.body45.preheader.if.end67_crit_edge:          ; preds = %for.body45.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.end67.sink.split:                              ; preds = %for.body45.preheader.if.end67.sink.split_crit_edge, %for.body61.preheader
  %.sink = phi i32 [ 309, %for.body61.preheader ], [ 167, %for.body45.preheader.if.end67.sink.split_crit_edge ]
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef %.sink) #10
  br label %if.end67

if.end67:                                         ; preds = %if.end67.sink.split, %for.body45.preheader.if.end67_crit_edge
  %37 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mapping, align 4
  %and69 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end67.if.end83_crit_edge, label %for.body77.preheader

if.end67.if.end83_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

for.body77.preheader:                             ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 704) #10
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 705) #10
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 706) #10
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 707) #10
  br label %if.end83

if.end83:                                         ; preds = %for.body77.preheader, %if.end67.if.end83_crit_edge
  %39 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mapping, align 4
  %and85 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end83.if.then91_crit_edge, label %lor.lhs.false87

if.end83.if.then91_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then91

lor.lhs.false87:                                  ; preds = %if.end83
  %41 = ptrtoint ptr %xtype to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %xtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp89 = icmp eq i32 %42, 2
  br i1 %cmp89, label %lor.lhs.false87.if.then91_crit_edge, label %lor.lhs.false87.if.end102_crit_edge

lor.lhs.false87.if.end102_crit_edge:              ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

lor.lhs.false87.if.then91_crit_edge:              ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then91

if.then91:                                        ; preds = %lor.lhs.false87.if.then91_crit_edge, %if.end83.if.then91_crit_edge
  tail call fastcc void @xpad_set_up_abs(ptr noundef nonnull %call, i16 noundef signext 16)
  tail call fastcc void @xpad_set_up_abs(ptr noundef nonnull %call, i16 noundef signext 17)
  br label %if.end102

if.end102:                                        ; preds = %if.then91, %lor.lhs.false87.if.end102_crit_edge
  %43 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mapping, align 4
  %and104 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %for.body124.preheader, label %for.body112.preheader

for.body112.preheader:                            ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 312) #10
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 313) #10
  br label %if.end129

for.body124.preheader:                            ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @xpad_set_up_abs(ptr noundef nonnull %call, i16 noundef signext 2)
  tail call fastcc void @xpad_set_up_abs(ptr noundef nonnull %call, i16 noundef signext 5)
  br label %if.end129

if.end129:                                        ; preds = %for.body124.preheader, %for.body112.preheader
  %45 = ptrtoint ptr %xtype to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %xtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %cmp.i = icmp eq i32 %46, 4
  br i1 %cmp.i, label %if.end129.if.end133_crit_edge, label %xpad_init_ff.exit

if.end129.if.end133_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133

xpad_init_ff.exit:                                ; preds = %if.end129
  %47 = ptrtoint ptr %xpad to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %xpad, align 4
  tail call void @input_set_capability(ptr noundef %48, i32 noundef 21, i32 noundef 80) #10
  %49 = ptrtoint ptr %xpad to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %xpad, align 4
  %call.i = tail call i32 @input_ff_create_memless(ptr noundef %50, ptr noundef null, ptr noundef nonnull @xpad_play_effect) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool131.not = icmp eq i32 %call.i, 0
  br i1 %tobool131.not, label %xpad_init_ff.exit.if.end133_crit_edge, label %xpad_init_ff.exit.err_free_input_crit_edge

xpad_init_ff.exit.err_free_input_crit_edge:       ; preds = %xpad_init_ff.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_input

xpad_init_ff.exit.if.end133_crit_edge:            ; preds = %xpad_init_ff.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133

if.end133:                                        ; preds = %xpad_init_ff.exit.if.end133_crit_edge, %if.end129.if.end133_crit_edge
  %51 = ptrtoint ptr %xtype to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %xtype, align 4
  %.off.i = add i32 %52, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end.i213, label %if.end133.if.end137_crit_edge

if.end133.if.end137_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

if.end.i213:                                      ; preds = %if.end133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %53 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3520, i32 noundef 420) #13
  %led3.i = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 19
  %54 = ptrtoint ptr %led3.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i.i, ptr %led3.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i213.err_destroy_ff_crit_edge, label %if.end5.i

if.end.i213.err_destroy_ff_crit_edge:             ; preds = %if.end.i213
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_destroy_ff

if.end5.i:                                        ; preds = %if.end.i213
  %call6.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @xpad_pad_seq, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #10
  %pad_nr.i = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 23
  %55 = ptrtoint ptr %pad_nr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call6.i, ptr %pad_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp8.i = icmp slt i32 %call6.i, 0
  br i1 %cmp8.i, label %if.end5.i.err_free_mem.i_crit_edge, label %if.end11.i

if.end5.i.err_free_mem.i_crit_edge:               ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_mem.i

if.end11.i:                                       ; preds = %if.end5.i
  %call13.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 16, ptr noundef nonnull @.str.229, i32 noundef %call6.i) #10
  %xpad14.i = getelementptr inbounds %struct.xpad_led, ptr %call7.i.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %xpad14.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %xpad, ptr %xpad14.i, align 8
  %led_cdev15.i = getelementptr inbounds %struct.xpad_led, ptr %call7.i.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %led_cdev15.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i.i.i, ptr %led_cdev15.i, align 8
  %brightness_set.i = getelementptr inbounds %struct.xpad_led, ptr %call7.i.i.i, i32 0, i32 1, i32 5
  %58 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @xpad_led_set, ptr %brightness_set.i, align 4
  %flags.i = getelementptr inbounds %struct.xpad_led, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %59 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 65536, ptr %flags.i, align 4
  %60 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %udev, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %61, i32 0, i32 15
  %call.i.i = tail call i32 @led_classdev_register_ext(ptr noundef %dev.i, ptr noundef %led_cdev15.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool20.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %err_free_id.i

if.end22.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %led3.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %led3.i, align 4
  %led_cdev.i.i = getelementptr inbounds %struct.xpad_led, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %pad_nr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pad_nr.i, align 4
  %rem.i.i = srem i32 %65, 4
  %add.i.i = add nsw i32 %rem.i.i, 2
  tail call void @led_set_brightness(ptr noundef %led_cdev.i.i, i32 noundef %add.i.i) #10
  br label %if.end137

err_free_id.i:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %pad_nr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pad_nr.i, align 4
  tail call void @ida_free(ptr noundef nonnull @xpad_pad_seq, i32 noundef %67) #10
  br label %err_free_mem.i

err_free_mem.i:                                   ; preds = %err_free_id.i, %if.end5.i.err_free_mem.i_crit_edge
  %error.0.i = phi i32 [ %call.i.i, %err_free_id.i ], [ %call6.i, %if.end5.i.err_free_mem.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %68 = ptrtoint ptr %led3.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %led3.i, align 4
  br label %err_destroy_ff

if.end137:                                        ; preds = %if.end22.i, %if.end133.if.end137_crit_edge
  %69 = ptrtoint ptr %xpad to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %xpad, align 4
  %call139 = tail call i32 @input_register_device(ptr noundef %70) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end142, label %err_disconnect_led

if.end142:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  %input_created = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 5
  %71 = ptrtoint ptr %input_created to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %input_created, align 1
  br label %cleanup

err_disconnect_led:                               ; preds = %if.end137
  %led.i = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 19
  %72 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %led.i, align 4
  %tobool.not.i215 = icmp eq ptr %73, null
  br i1 %tobool.not.i215, label %err_disconnect_led.err_destroy_ff_crit_edge, label %if.then.i

err_disconnect_led.err_destroy_ff_crit_edge:      ; preds = %err_disconnect_led
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_destroy_ff

if.then.i:                                        ; preds = %err_disconnect_led
  call void @__sanitizer_cov_trace_pc() #12
  %led_cdev.i = getelementptr inbounds %struct.xpad_led, ptr %73, i32 0, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_cdev.i) #10
  %pad_nr.i216 = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 23
  %74 = ptrtoint ptr %pad_nr.i216 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pad_nr.i216, align 4
  tail call void @ida_free(ptr noundef nonnull @xpad_pad_seq, i32 noundef %75) #10
  tail call void @kfree(ptr noundef nonnull %73) #10
  br label %err_destroy_ff

err_destroy_ff:                                   ; preds = %if.then.i, %err_disconnect_led.err_destroy_ff_crit_edge, %err_free_mem.i, %if.end.i213.err_destroy_ff_crit_edge
  %error.0 = phi i32 [ %error.0.i, %err_free_mem.i ], [ -12, %if.end.i213.err_destroy_ff_crit_edge ], [ %call139, %err_disconnect_led.err_destroy_ff_crit_edge ], [ %call139, %if.then.i ]
  tail call void @input_ff_destroy(ptr noundef nonnull %call) #10
  br label %err_free_input

err_free_input:                                   ; preds = %err_destroy_ff, %xpad_init_ff.exit.err_free_input_crit_edge
  %error.1 = phi i32 [ %call.i, %xpad_init_ff.exit.err_free_input_crit_edge ], [ %error.0, %err_destroy_ff ]
  tail call void @input_free_device(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_input, %if.end142, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %err_free_input ], [ 0, %if.end142 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xpad_deinit_output(ptr nocapture noundef readonly %xpad) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xtype = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 22
  %0 = ptrtoint ptr %xtype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq_out = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 9
  %2 = ptrtoint ptr %irq_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_out, align 4
  tail call void @usb_free_urb(ptr noundef %3) #10
  %udev = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 2
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %odata = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 13
  %6 = ptrtoint ptr %odata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %odata, align 4
  %odata_dma = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 14
  %8 = ptrtoint ptr %odata_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %odata_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %5, i32 noundef 64, ptr noundef %7, i32 noundef %9) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xpad_irq_out(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %intf = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %status2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status2, align 4
  %odata_lock = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 15
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %odata_lock) #10
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.235)
  switch i32 %5, label %do.body18 [
    i32 0, label %sw.bb
    i32 -104, label %entry.do.body9_crit_edge
    i32 -2, label %entry.do.body9_crit_edge69
    i32 -108, label %entry.do.body9_crit_edge70
  ]

entry.do.body9_crit_edge70:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9

entry.do.body9_crit_edge69:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call fastcc zeroext i1 @xpad_prepare_next_out_packet(ptr noundef %1)
  %irq_out_active = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 11
  %frombool = zext i1 %call7 to i8
  %7 = ptrtoint ptr %irq_out_active to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %irq_out_active, align 4
  br label %sw.epilog

do.body9:                                         ; preds = %entry.do.body9_crit_edge, %entry.do.body9_crit_edge69, %entry.do.body9_crit_edge70
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xpad_irq_out.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xpad_irq_out, %if.then)) #10
          to label %do.end16 [label %if.then], !srcloc !573

if.then:                                          ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xpad_irq_out.__UNIQUE_ID_ddebug249, ptr noundef %dev1, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.215, i32 noundef %5) #10
  br label %do.end16

do.end16:                                         ; preds = %if.then, %do.body9
  %irq_out_active17 = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %irq_out_active17 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %irq_out_active17, align 4
  br label %sw.epilog

do.body18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xpad_irq_out.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xpad_irq_out, %if.then30)) #10
          to label %sw.epilog [label %if.then30], !srcloc !573

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xpad_irq_out.__UNIQUE_ID_ddebug250, ptr noundef %dev1, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.215, i32 noundef %5) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then30, %do.body18, %do.end16, %sw.bb
  %irq_out_active34 = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %irq_out_active34 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %irq_out_active34, align 4, !range !571
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool35.not = icmp eq i8 %10, 0
  br i1 %tobool35.not, label %sw.epilog.if.end45_crit_edge, label %if.then36

sw.epilog.if.end45_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then36:                                        ; preds = %sw.epilog
  %irq_out_anchor = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 10
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %irq_out_anchor) #10
  %call37 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then36.if.end45_crit_edge, label %do.end42

if.then36.if.end45_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

do.end42:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.215, i32 noundef %call37) #14
  tail call void @usb_unanchor_urb(ptr noundef %urb) #10
  %11 = ptrtoint ptr %irq_out_active34 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %irq_out_active34, align 4
  br label %if.end45

if.end45:                                         ; preds = %do.end42, %if.then36.if.end45_crit_edge, %sw.epilog.if.end45_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %odata_lock, i32 noundef %call4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @xpad_prepare_next_out_packet(ptr noundef %xpad) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xtype.i = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 22
  %0 = ptrtoint ptr %xtype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 3
  br i1 %cmp.not.i, label %while.cond.preheader.i, label %entry.xpad_prepare_next_init_packet.exit_crit_edge

entry.xpad_prepare_next_init_packet.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_prepare_next_init_packet.exit

while.cond.preheader.i:                           ; preds = %entry
  %init_seq.i = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 18
  %2 = ptrtoint ptr %init_seq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %init_seq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %3)
  %cmp146.i = icmp ult i32 %3, 13
  br i1 %cmp146.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.xpad_prepare_next_init_packet.exit_crit_edge

while.cond.preheader.i.xpad_prepare_next_init_packet.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_prepare_next_init_packet.exit

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %4 = phi i32 [ %inc.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %3, %while.cond.preheader.i.while.body.i_crit_edge ]
  %inc.i = add i32 %4, 1
  %5 = ptrtoint ptr %init_seq.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc.i, ptr %init_seq.i, align 4
  %arrayidx.i = getelementptr [13 x %struct.xboxone_init_packet], ptr @xboxone_init_packets, i32 0, i32 %4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp3.not.i = icmp eq i16 %7, 0
  br i1 %cmp3.not.i, label %while.body.i.if.end11.i_crit_edge, label %land.lhs.true.i

while.body.i.if.end11.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %8 = ptrtoint ptr %xpad to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xpad, align 4
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vendor.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %11)
  %cmp8.not.i = icmp eq i16 %7, %11
  br i1 %cmp8.not.i, label %land.lhs.true.i.if.end11.i_crit_edge, label %land.lhs.true.i.while.cond.backedge.i_crit_edge

land.lhs.true.i.while.cond.backedge.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.i

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

while.cond.backedge.i:                            ; preds = %land.lhs.true15.i.while.cond.backedge.i_crit_edge, %land.lhs.true.i.while.cond.backedge.i_crit_edge
  %exitcond.not = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not, label %while.cond.backedge.i.xpad_prepare_next_init_packet.exit_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.cond.backedge.i.xpad_prepare_next_init_packet.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_prepare_next_init_packet.exit

if.end11.i:                                       ; preds = %land.lhs.true.i.if.end11.i_crit_edge, %while.body.i.if.end11.i_crit_edge
  %12 = lshr i32 100, %4
  %13 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp13.not.not.i = icmp eq i32 %13, 0
  br i1 %cmp13.not.not.i, label %land.lhs.true15.i, label %if.end11.i.xpad_prepare_next_init_packet.exit.thread_crit_edge

if.end11.i.xpad_prepare_next_init_packet.exit.thread_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_prepare_next_init_packet.exit.thread

land.lhs.true15.i:                                ; preds = %if.end11.i
  %idProduct.i = getelementptr [13 x %struct.xboxone_init_packet], ptr @xboxone_init_packets, i32 0, i32 %4, i32 1
  %14 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %idProduct.i, align 2
  %16 = ptrtoint ptr %xpad to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xpad, align 4
  %product.i = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %product.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %product.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %19)
  %cmp21.not.i = icmp eq i16 %15, %19
  br i1 %cmp21.not.i, label %land.lhs.true15.i.xpad_prepare_next_init_packet.exit.thread_crit_edge, label %land.lhs.true15.i.while.cond.backedge.i_crit_edge

land.lhs.true15.i.while.cond.backedge.i_crit_edge: ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.i

land.lhs.true15.i.xpad_prepare_next_init_packet.exit.thread_crit_edge: ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_prepare_next_init_packet.exit.thread

xpad_prepare_next_init_packet.exit.thread:        ; preds = %land.lhs.true15.i.xpad_prepare_next_init_packet.exit.thread_crit_edge, %if.end11.i.xpad_prepare_next_init_packet.exit.thread_crit_edge
  %odata.i = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 13
  %20 = ptrtoint ptr %odata.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %odata.i, align 4
  %data.i = getelementptr [13 x %struct.xboxone_init_packet], ptr @xboxone_init_packets, i32 0, i32 %4, i32 2
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr [13 x %struct.xboxone_init_packet], ptr @xboxone_init_packets, i32 0, i32 %4, i32 3
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %len.i, align 4
  %conv25.i = zext i8 %25 to i32
  %26 = call ptr @memcpy(ptr %21, ptr %23, i32 %conv25.i)
  %irq_out.i = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 9
  %27 = ptrtoint ptr %irq_out.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %irq_out.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv25.i, ptr %transfer_buffer_length.i, align 4
  %odata_serial.i = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 12
  %30 = ptrtoint ptr %odata_serial.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %odata_serial.i, align 1
  %inc28.i = add i8 %31, 1
  store i8 %inc28.i, ptr %odata_serial.i, align 1
  %32 = load ptr, ptr %odata.i, align 4
  %arrayidx30.i = getelementptr i8, ptr %32, i32 2
  %33 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %31, ptr %arrayidx30.i, align 1
  br label %cleanup

xpad_prepare_next_init_packet.exit:               ; preds = %while.cond.backedge.i.xpad_prepare_next_init_packet.exit_crit_edge, %while.cond.preheader.i.xpad_prepare_next_init_packet.exit_crit_edge, %entry.xpad_prepare_next_init_packet.exit_crit_edge
  %last_out_packet = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 17
  %34 = ptrtoint ptr %last_out_packet to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %last_out_packet, align 4
  %inc = add i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp1 = icmp sgt i32 %inc, 2
  %spec.select = select i1 %cmp1, i32 0, i32 %inc
  %36 = ptrtoint ptr %last_out_packet to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.select, ptr %last_out_packet, align 4
  %pending = getelementptr %struct.usb_xpad, ptr %xpad, i32 0, i32 16, i32 %spec.select, i32 2
  %37 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pending, align 1, !range !571
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not = icmp eq i8 %38, 0
  br i1 %tobool.not, label %for.cond, label %xpad_prepare_next_init_packet.exit.do.body_crit_edge

xpad_prepare_next_init_packet.exit.do.body_crit_edge: ; preds = %xpad_prepare_next_init_packet.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.cond:                                         ; preds = %xpad_prepare_next_init_packet.exit
  %39 = ptrtoint ptr %last_out_packet to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %last_out_packet, align 4
  %inc.1 = add i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.1)
  %cmp1.1 = icmp sgt i32 %inc.1, 2
  %spec.select.1 = select i1 %cmp1.1, i32 0, i32 %inc.1
  %41 = ptrtoint ptr %last_out_packet to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %spec.select.1, ptr %last_out_packet, align 4
  %pending.1 = getelementptr %struct.usb_xpad, ptr %xpad, i32 0, i32 16, i32 %spec.select.1, i32 2
  %42 = ptrtoint ptr %pending.1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pending.1, align 1, !range !571
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.1 = icmp eq i8 %43, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.do.body_crit_edge

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.cond.1:                                       ; preds = %for.cond
  %44 = ptrtoint ptr %last_out_packet to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %last_out_packet, align 4
  %inc.2 = add i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.2)
  %cmp1.2 = icmp sgt i32 %inc.2, 2
  %spec.select.2 = select i1 %cmp1.2, i32 0, i32 %inc.2
  %46 = ptrtoint ptr %last_out_packet to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spec.select.2, ptr %last_out_packet, align 4
  %pending.2 = getelementptr %struct.usb_xpad, ptr %xpad, i32 0, i32 16, i32 %spec.select.2, i32 2
  %47 = ptrtoint ptr %pending.2 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pending.2, align 1, !range !571
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.2 = icmp eq i8 %48, 0
  br i1 %tobool.not.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.1.do.body_crit_edge

for.cond.1.do.body_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %for.cond.1.do.body_crit_edge, %for.cond.do.body_crit_edge, %xpad_prepare_next_init_packet.exit.do.body_crit_edge
  %spec.select.lcssa = phi i32 [ %spec.select, %xpad_prepare_next_init_packet.exit.do.body_crit_edge ], [ %spec.select.1, %for.cond.do.body_crit_edge ], [ %spec.select.2, %for.cond.1.do.body_crit_edge ]
  %arrayidx.le = getelementptr %struct.usb_xpad, ptr %xpad, i32 0, i32 16, i32 %spec.select.lcssa
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xpad_prepare_next_out_packet.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xpad_prepare_next_out_packet, %if.then11)) #10
          to label %for.end [label %if.then11], !srcloc !573

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %intf = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 3
  %49 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %last_out_packet to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %last_out_packet, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xpad_prepare_next_out_packet.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.219, i32 noundef %52) #10
  br label %for.end

for.end:                                          ; preds = %if.then11, %do.body
  %tobool16.not = icmp eq ptr %arrayidx.le, null
  br i1 %tobool16.not, label %for.end.cleanup_crit_edge, label %if.then17

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %odata = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 13
  %53 = ptrtoint ptr %odata to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %odata, align 4
  %len = getelementptr %struct.usb_xpad, ptr %xpad, i32 0, i32 16, i32 %spec.select.lcssa, i32 1
  %55 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %len, align 1
  %conv = zext i8 %56 to i32
  %57 = call ptr @memcpy(ptr %54, ptr %arrayidx.le, i32 %conv)
  %58 = load i8, ptr %len, align 1
  %conv19 = zext i8 %58 to i32
  %irq_out = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 9
  %59 = ptrtoint ptr %irq_out to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %irq_out, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 19
  %61 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv19, ptr %transfer_buffer_length, align 4
  %pending20 = getelementptr %struct.usb_xpad, ptr %xpad, i32 0, i32 16, i32 %spec.select.lcssa, i32 2
  %62 = ptrtoint ptr %pending20 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %pending20, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %for.end.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %xpad_prepare_next_init_packet.exit.thread
  %retval.0 = phi i1 [ true, %if.then17 ], [ false, %for.end.cleanup_crit_edge ], [ true, %xpad_prepare_next_init_packet.exit.thread ], [ false, %for.cond.1.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xpad360_process_packet(ptr nocapture noundef readonly %xpad, ptr noundef %dev, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %mapping = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 21
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mapping, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %if.then2

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx3 = getelementptr i8, ptr %data, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %6 = lshr i8 %5, 2
  %.lobit = and i8 %6, 1
  %7 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 704, i32 noundef %7) #10
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx3, align 1
  %10 = lshr i8 %9, 3
  %.lobit33 = and i8 %10, 1
  %11 = zext i8 %.lobit33 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 705, i32 noundef %11) #10
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx3, align 1
  %14 = and i8 %13, 1
  %15 = zext i8 %14 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 706, i32 noundef %15) #10
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx3, align 1
  %18 = lshr i8 %17, 1
  %.lobit34 = and i8 %18, 1
  %19 = zext i8 %.lobit34 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 707, i32 noundef %19) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then2, %if.end.if.end15_crit_edge
  %20 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mapping, align 4
  %and17 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.then21_crit_edge, label %lor.lhs.false

if.end15.if.then21_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.end15
  %xtype = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 22
  %22 = ptrtoint ptr %xtype to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp19 = icmp eq i32 %23, 2
  br i1 %cmp19, label %lor.lhs.false.if.then21_crit_edge, label %lor.lhs.false.if.end52_crit_edge

lor.lhs.false.if.end52_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %if.end15.if.then21_crit_edge
  %arrayidx22 = getelementptr i8, ptr %data, i32 2
  %24 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %25 to i32
  %and24 = lshr i32 %conv23, 3
  %and24.lobit = and i32 %and24, 1
  %26 = shl i32 %conv23, 29
  %27 = ashr i32 %26, 31
  %sub = add nsw i32 %27, %and24.lobit
  tail call void @input_event(ptr noundef %dev, i32 noundef 3, i32 noundef 16, i32 noundef %sub) #10
  %28 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx22, align 1
  %conv36 = zext i8 %29 to i32
  %and37 = lshr i32 %conv36, 1
  %and37.lobit = and i32 %and37, 1
  %and45 = and i32 %conv36, 1
  %sub51 = sub nsw i32 %and37.lobit, %and45
  tail call void @input_event(ptr noundef %dev, i32 noundef 3, i32 noundef 17, i32 noundef %sub51) #10
  br label %if.end52

if.end52:                                         ; preds = %if.then21, %lor.lhs.false.if.end52_crit_edge
  %arrayidx53 = getelementptr i8, ptr %data, i32 2
  %30 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx53, align 1
  %32 = lshr i8 %31, 4
  %.lobit35 = and i8 %32, 1
  %33 = zext i8 %.lobit35 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 315, i32 noundef %33) #10
  %34 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx53, align 1
  %36 = lshr i8 %35, 5
  %.lobit36 = and i8 %36, 1
  %37 = zext i8 %.lobit36 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 314, i32 noundef %37) #10
  %38 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx53, align 1
  %40 = lshr i8 %39, 6
  %.lobit37 = and i8 %40, 1
  %41 = zext i8 %.lobit37 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 317, i32 noundef %41) #10
  %42 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx53, align 1
  %.lobit38 = lshr i8 %43, 7
  %44 = zext i8 %.lobit38 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 318, i32 noundef %44) #10
  %arrayidx65 = getelementptr i8, ptr %data, i32 3
  %45 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx65, align 1
  %47 = lshr i8 %46, 4
  %.lobit39 = and i8 %47, 1
  %48 = zext i8 %.lobit39 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 304, i32 noundef %48) #10
  %49 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx65, align 1
  %51 = lshr i8 %50, 5
  %.lobit40 = and i8 %51, 1
  %52 = zext i8 %.lobit40 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 305, i32 noundef %52) #10
  %53 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx65, align 1
  %55 = lshr i8 %54, 6
  %.lobit41 = and i8 %55, 1
  %56 = zext i8 %.lobit41 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 307, i32 noundef %56) #10
  %57 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx65, align 1
  %.lobit42 = lshr i8 %58, 7
  %59 = zext i8 %.lobit42 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 308, i32 noundef %59) #10
  %60 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx65, align 1
  %62 = and i8 %61, 1
  %63 = zext i8 %62 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 310, i32 noundef %63) #10
  %64 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx65, align 1
  %66 = lshr i8 %65, 1
  %.lobit43 = and i8 %66, 1
  %67 = zext i8 %.lobit43 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 311, i32 noundef %67) #10
  %68 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx65, align 1
  %70 = lshr i8 %69, 2
  %.lobit44 = and i8 %70, 1
  %71 = zext i8 %.lobit44 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 316, i32 noundef %71) #10
  %72 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mapping, align 4
  %and87 = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.then89, label %if.end52.if.end101_crit_edge

if.end52.if.end101_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then89:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %data, i32 6
  %74 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr, align 2
  %76 = tail call i16 @llvm.bswap.i16(i16 %75) #10
  %conv90 = sext i16 %76 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 3, i32 noundef 0, i32 noundef %conv90) #10
  %add.ptr91 = getelementptr i8, ptr %data, i32 8
  %77 = ptrtoint ptr %add.ptr91 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %add.ptr91, align 2
  %79 = xor i16 %78, -1
  %80 = tail call i16 @llvm.bswap.i16(i16 %79)
  %neg = sext i16 %80 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 3, i32 noundef 1, i32 noundef %neg) #10
  %add.ptr94 = getelementptr i8, ptr %data, i32 10
  %81 = ptrtoint ptr %add.ptr94 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %add.ptr94, align 2
  %83 = tail call i16 @llvm.bswap.i16(i16 %82) #10
  %conv96 = sext i16 %83 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 3, i32 noundef 3, i32 noundef %conv96) #10
  %add.ptr97 = getelementptr i8, ptr %data, i32 12
  %84 = ptrtoint ptr %add.ptr97 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %add.ptr97, align 2
  %86 = xor i16 %85, -1
  %87 = tail call i16 @llvm.bswap.i16(i16 %86)
  %neg100 = sext i16 %87 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 3, i32 noundef 4, i32 noundef %neg100) #10
  br label %if.end101

if.end101:                                        ; preds = %if.then89, %if.end52.if.end101_crit_edge
  %88 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mapping, align 4
  %and103 = and i32 %89, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  %arrayidx110 = getelementptr i8, ptr %data, i32 4
  %90 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx110, align 1
  br i1 %tobool104.not, label %if.else, label %if.then105

if.then105:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.i29 = icmp ne i8 %91, 0
  %lnot.ext.i30 = zext i1 %tobool.i29 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 312, i32 noundef %lnot.ext.i30) #10
  %arrayidx108 = getelementptr i8, ptr %data, i32 5
  %92 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx108, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.i31 = icmp ne i8 %93, 0
  %lnot.ext.i32 = zext i1 %tobool.i31 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 313, i32 noundef %lnot.ext.i32) #10
  br label %if.end114

if.else:                                          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  %conv111 = zext i8 %91 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 3, i32 noundef 2, i32 noundef %conv111) #10
  %arrayidx112 = getelementptr i8, ptr %data, i32 5
  %94 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %95 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 3, i32 noundef 5, i32 noundef %conv113) #10
  br label %if.end114

if.end114:                                        ; preds = %if.else, %if.then105
  tail call void @input_event(ptr noundef %dev, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  br label %return

return:                                           ; preds = %if.end114, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpad_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq_in.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq_in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_in.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %3, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.xpad_start_input.exit_crit_edge

entry.xpad_start_input.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_start_input.exit

if.end.i:                                         ; preds = %entry
  %xtype.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %xtype.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i = icmp eq i32 %5, 3
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.xpad_start_input.exit_crit_edge

if.end.i.xpad_start_input.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_start_input.exit

if.then1.i:                                       ; preds = %if.end.i
  %call2.i = tail call fastcc i32 @xpad_start_xbox_one(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then1.i.xpad_start_input.exit_crit_edge, label %if.then4.i

if.then1.i.xpad_start_input.exit_crit_edge:       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_start_input.exit

if.then4.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %irq_in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_in.i, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #10
  br label %xpad_start_input.exit

xpad_start_input.exit:                            ; preds = %if.then4.i, %if.then1.i.xpad_start_input.exit_crit_edge, %if.end.i.xpad_start_input.exit_crit_edge, %entry.xpad_start_input.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.then4.i ], [ -5, %entry.xpad_start_input.exit_crit_edge ], [ 0, %if.then1.i.xpad_start_input.exit_crit_edge ], [ 0, %if.end.i.xpad_start_input.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xpad_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq_in.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq_in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_in.i, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xpad_set_up_abs(ptr noundef %input_dev, i16 noundef signext %abs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i16 %abs to i32
  %0 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.236)
  switch i32 %conv, label %sw.default [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge19
    i32 3, label %entry.sw.bb_crit_edge20
    i32 4, label %entry.sw.bb_crit_edge21
    i32 2, label %entry.sw.bb2_crit_edge
    i32 5, label %entry.sw.bb2_crit_edge22
    i32 16, label %entry.sw.bb6_crit_edge
    i32 17, label %entry.sw.bb6_crit_edge23
  ]

entry.sw.bb6_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

entry.sw.bb2_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge20:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge19:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge19, %entry.sw.bb_crit_edge20, %entry.sw.bb_crit_edge21
  tail call void @input_set_abs_params(ptr noundef %input_dev, i32 noundef %conv, i32 noundef -32768, i32 noundef 32767, i32 noundef 16, i32 noundef 128) #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge22
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 40, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %xtype = getelementptr inbounds %struct.usb_xpad, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %xtype to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %xtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_set_abs_params(ptr noundef %input_dev, i32 noundef %conv, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #10
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_set_abs_params(ptr noundef %input_dev, i32 noundef %conv, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge23
  tail call void @input_set_abs_params(ptr noundef %input_dev, i32 noundef %conv, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_set_abs_params(ptr noundef %input_dev, i32 noundef %conv, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %if.else, %if.then, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_ff_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xpad_start_xbox_one(ptr noundef %xpad) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %odata_lock = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 15
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %odata_lock) #10
  %init_seq = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 18
  %0 = ptrtoint ptr %init_seq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %init_seq, align 4
  %irq_out_active.i = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 11
  %1 = ptrtoint ptr %irq_out_active.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %irq_out_active.i, align 4, !range !571
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.xpad_try_sending_next_out_packet.exit_crit_edge

entry.xpad_try_sending_next_out_packet.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_try_sending_next_out_packet.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call fastcc zeroext i1 @xpad_prepare_next_out_packet(ptr noundef %xpad) #10
  br i1 %call.i, label %if.then.i, label %land.lhs.true.i.xpad_try_sending_next_out_packet.exit_crit_edge

land.lhs.true.i.xpad_try_sending_next_out_packet.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_try_sending_next_out_packet.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %irq_out.i = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 9
  %3 = ptrtoint ptr %irq_out.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %irq_out.i, align 4
  %irq_out_anchor.i = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 10
  tail call void @usb_anchor_urb(ptr noundef %4, ptr noundef %irq_out_anchor.i) #10
  %5 = ptrtoint ptr %irq_out.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq_out.i, align 4
  %call2.i = tail call i32 @usb_submit_urb(ptr noundef %6, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %intf.i = getelementptr inbounds %struct.usb_xpad, ptr %xpad, i32 0, i32 3
  %7 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.226, i32 noundef %call2.i) #14
  %9 = ptrtoint ptr %irq_out.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_out.i, align 4
  tail call void @usb_unanchor_urb(ptr noundef %10) #10
  br label %xpad_try_sending_next_out_packet.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %irq_out_active.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %irq_out_active.i, align 4
  br label %xpad_try_sending_next_out_packet.exit

xpad_try_sending_next_out_packet.exit:            ; preds = %if.end.i, %do.end.i, %land.lhs.true.i.xpad_try_sending_next_out_packet.exit_crit_edge, %entry.xpad_try_sending_next_out_packet.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %do.end.i ], [ 0, %if.end.i ], [ 0, %land.lhs.true.i.xpad_try_sending_next_out_packet.exit_crit_edge ], [ 0, %entry.xpad_try_sending_next_out_packet.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %odata_lock, i32 noundef %call3) #10
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpad_play_effect(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1
  %2 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %effect, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %3)
  %cmp.not = icmp eq i16 %3, 80
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %u, align 4
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %weak_magnitude, align 2
  %odata_lock = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 15
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %odata_lock) #10
  %xtype = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %xtype to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xtype, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.237)
  switch i32 %9, label %do.body121 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb28
    i32 2, label %sw.bb53
    i32 3, label %sw.bb86
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx, align 1
  %arrayidx14 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 6, ptr %arrayidx14, align 1
  %arrayidx16 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx16, align 1
  %14 = lshr i16 %5, 8
  %conv18 = trunc i16 %14 to i8
  %arrayidx20 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv18, ptr %arrayidx20, align 1
  %arrayidx22 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx22, align 1
  %17 = lshr i16 %7, 8
  %conv25 = trunc i16 %17 to i8
  %arrayidx27 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 5
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv25, ptr %arrayidx27, align 1
  %len = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 1
  %19 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 6, ptr %len, align 1
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx, align 1
  %arrayidx32 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 8, ptr %arrayidx32, align 1
  %arrayidx34 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx34, align 1
  %23 = lshr i16 %5, 8
  %conv37 = trunc i16 %23 to i8
  %arrayidx39 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv37, ptr %arrayidx39, align 1
  %25 = lshr i16 %7, 8
  %conv42 = trunc i16 %25 to i8
  %arrayidx44 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv42, ptr %arrayidx44, align 1
  %arrayidx46 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 5
  %27 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx46, align 1
  %arrayidx48 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 6
  %28 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx48, align 1
  %arrayidx50 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 7
  %29 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx50, align 1
  %len51 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 1
  %30 = ptrtoint ptr %len51 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 8, ptr %len51, align 1
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx, align 1
  %arrayidx57 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %arrayidx57, align 1
  %arrayidx59 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 15, ptr %arrayidx59, align 1
  %arrayidx61 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 3
  %34 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -64, ptr %arrayidx61, align 1
  %arrayidx63 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 4
  %35 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx63, align 1
  %36 = lshr i16 %5, 8
  %conv66 = trunc i16 %36 to i8
  %arrayidx68 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 5
  %37 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv66, ptr %arrayidx68, align 1
  %38 = lshr i16 %7, 8
  %conv71 = trunc i16 %38 to i8
  %arrayidx73 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 6
  %39 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv71, ptr %arrayidx73, align 1
  %arrayidx75 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 7
  %len84 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 1
  %40 = call ptr @memset(ptr %arrayidx75, i32 0, i32 5)
  %41 = ptrtoint ptr %len84 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 12, ptr %len84, align 1
  br label %sw.epilog

sw.bb86:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 9, ptr %arrayidx, align 1
  %arrayidx90 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx90, align 1
  %odata_serial = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 12
  %44 = ptrtoint ptr %odata_serial to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %odata_serial, align 1
  %inc = add i8 %45, 1
  store i8 %inc, ptr %odata_serial, align 1
  %arrayidx92 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 2
  %46 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx92, align 1
  %arrayidx94 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 3
  %47 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 9, ptr %arrayidx94, align 1
  %arrayidx96 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 4
  %48 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %arrayidx96, align 1
  %arrayidx98 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 5
  %49 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 15, ptr %arrayidx98, align 1
  %arrayidx100 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 6
  %50 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %arrayidx100, align 1
  %arrayidx102 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 7
  %51 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %arrayidx102, align 1
  %52 = lshr i16 %5, 9
  %conv105 = trunc i16 %52 to i8
  %arrayidx107 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 8
  %53 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv105, ptr %arrayidx107, align 1
  %54 = lshr i16 %7, 9
  %conv110 = trunc i16 %54 to i8
  %arrayidx112 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 9
  %55 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv110, ptr %arrayidx112, align 1
  %arrayidx114 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 10
  %56 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %arrayidx114, align 1
  %arrayidx116 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 11
  %57 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %arrayidx116, align 1
  %arrayidx118 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 12
  %58 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %arrayidx118, align 1
  %len119 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 1
  %59 = ptrtoint ptr %len119 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 13, ptr %len119, align 1
  br label %sw.epilog

do.body121:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xpad_play_effect.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xpad_play_effect, %if.then126)) #10
          to label %out [label %if.then126], !srcloc !573

if.then126:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %dev128 = getelementptr inbounds %struct.input_dev, ptr %61, i32 0, i32 40
  %62 = ptrtoint ptr %xtype to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %xtype, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xpad_play_effect.__UNIQUE_ID_ddebug251, ptr noundef %dev128, ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.227, i32 noundef %63) #10
  br label %out

sw.epilog:                                        ; preds = %sw.bb86, %sw.bb53, %sw.bb28, %sw.bb
  %pending120 = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 1, i32 2
  %64 = ptrtoint ptr %pending120 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %pending120, align 1
  %irq_out_active.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 11
  %65 = ptrtoint ptr %irq_out_active.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %irq_out_active.i, align 4, !range !571
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i = icmp eq i8 %66, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true.i:                                  ; preds = %sw.epilog
  %call.i = tail call fastcc zeroext i1 @xpad_prepare_next_out_packet(ptr noundef %1) #10
  br i1 %call.i, label %if.then.i, label %land.lhs.true.i.out_crit_edge

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.i:                                        ; preds = %land.lhs.true.i
  %irq_out.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 9
  %67 = ptrtoint ptr %irq_out.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %irq_out.i, align 4
  %irq_out_anchor.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 10
  tail call void @usb_anchor_urb(ptr noundef %68, ptr noundef %irq_out_anchor.i) #10
  %69 = ptrtoint ptr %irq_out.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %irq_out.i, align 4
  %call2.i = tail call i32 @usb_submit_urb(ptr noundef %70, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %intf.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 3
  %71 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %72, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.226, i32 noundef %call2.i) #14
  %73 = ptrtoint ptr %irq_out.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %irq_out.i, align 4
  tail call void @usb_unanchor_urb(ptr noundef %74) #10
  br label %out

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %irq_out_active.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %irq_out_active.i, align 4
  br label %out

out:                                              ; preds = %if.end.i, %do.end.i, %land.lhs.true.i.out_crit_edge, %sw.epilog.out_crit_edge, %if.then126, %do.body121
  %retval1.0 = phi i32 [ -22, %if.then126 ], [ -22, %do.body121 ], [ -5, %do.end.i ], [ 0, %if.end.i ], [ 0, %land.lhs.true.i.out_crit_edge ], [ 0, %sw.epilog.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %odata_lock, i32 noundef %call8) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xpad_led_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xpad = getelementptr i8, ptr %led_cdev, i32 400
  %0 = ptrtoint ptr %xpad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xpad, align 4
  %arrayidx.i = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 2
  %rem.i = srem i32 %value, 16
  %odata_lock.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 15
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %odata_lock.i) #10
  %xtype.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %xtype.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xtype.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.238)
  switch i32 %3, label %entry.sw.epilog.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb11.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %arrayidx.i, align 1
  %arrayidx7.i = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 2, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %arrayidx7.i, align 1
  %conv8.i = trunc i32 %rem.i to i8
  %arrayidx10.i = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 2, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv8.i, ptr %arrayidx10.i, align 1
  %len.i = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 2, i32 1
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %len.i, align 1
  br label %sw.epilog.sink.split.i

sw.bb11.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx.i, align 1
  %arrayidx15.i = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 2, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx15.i, align 1
  %arrayidx17.i = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 2, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 8, ptr %arrayidx17.i, align 1
  %12 = trunc i32 %rem.i to i8
  %conv18.i = add nsw i8 %12, 64
  %arrayidx20.i = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 2, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv18.i, ptr %arrayidx20.i, align 1
  %arrayidx22.i = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 2, i32 0, i32 4
  %len37.i = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 0, ptr %arrayidx22.i, align 1
  %15 = ptrtoint ptr %len37.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 12, ptr %len37.i, align 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb11.i, %sw.bb.i
  %pending38.i = getelementptr %struct.usb_xpad, ptr %1, i32 0, i32 16, i32 2, i32 2
  %16 = ptrtoint ptr %pending38.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %pending38.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %entry.sw.epilog.i_crit_edge
  %irq_out_active.i.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %irq_out_active.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %irq_out_active.i.i, align 4, !range !571
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %sw.epilog.i.xpad_send_led_command.exit_crit_edge

sw.epilog.i.xpad_send_led_command.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_send_led_command.exit

land.lhs.true.i.i:                                ; preds = %sw.epilog.i
  %call.i.i = tail call fastcc zeroext i1 @xpad_prepare_next_out_packet(ptr noundef %1) #10
  br i1 %call.i.i, label %if.then.i.i, label %land.lhs.true.i.i.xpad_send_led_command.exit_crit_edge

land.lhs.true.i.i.xpad_send_led_command.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xpad_send_led_command.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %irq_out.i.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %irq_out.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_out.i.i, align 4
  %irq_out_anchor.i.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 10
  tail call void @usb_anchor_urb(ptr noundef %20, ptr noundef %irq_out_anchor.i.i) #10
  %21 = ptrtoint ptr %irq_out.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_out.i.i, align 4
  %call2.i.i = tail call i32 @usb_submit_urb(ptr noundef %22, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %intf.i.i = getelementptr inbounds %struct.usb_xpad, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %intf.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.usb_interface, ptr %24, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.226, i32 noundef %call2.i.i) #14
  %25 = ptrtoint ptr %irq_out.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irq_out.i.i, align 4
  tail call void @usb_unanchor_urb(ptr noundef %26) #10
  br label %xpad_send_led_command.exit

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %irq_out_active.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %irq_out_active.i.i, align 4
  br label %xpad_send_led_command.exit

xpad_send_led_command.exit:                       ; preds = %if.end.i.i, %do.end.i.i, %land.lhs.true.i.i.xpad_send_led_command.exit_crit_edge, %sw.epilog.i.xpad_send_led_command.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %odata_lock.i, i32 noundef %call2.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_set_brightness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_wait_anchor_empty_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 258)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 258)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !30, !32, !34, !36, !37, !38, !39, !40, !42, !43, !45, !47, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !459, !460, !461, !462, !463, !464, !466, !467, !469, !470, !472, !473, !475, !476, !478, !479, !480, !482, !483, !485, !486, !487, !489, !490, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !510, !512, !514, !515, !517, !518, !520, !521, !522, !524, !525, !527, !529, !530, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !550, !551, !553, !555, !556, !557, !558, !559}
!llvm.named.register.sp = !{!561}
!llvm.module.flags = !{!562, !563, !564, !565, !566, !567, !568, !569}
!llvm.ident = !{!570}

!0 = !{ptr @__param_dpad_to_buttons, !1, !"__param_dpad_to_buttons", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/xpad.c", i32 93, i32 1}
!2 = !{ptr @__UNIQUE_ID_dpad_to_buttonstype232, !1, !"__UNIQUE_ID_dpad_to_buttonstype232", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dpad_to_buttons233, !4, !"__UNIQUE_ID_dpad_to_buttons233", i1 false, i1 false}
!4 = !{!"../drivers/input/joystick/xpad.c", i32 94, i32 1}
!5 = !{ptr @__param_triggers_to_buttons, !6, !"__param_triggers_to_buttons", i1 false, i1 false}
!6 = !{!"../drivers/input/joystick/xpad.c", i32 97, i32 1}
!7 = !{ptr @__UNIQUE_ID_triggers_to_buttonstype234, !6, !"__UNIQUE_ID_triggers_to_buttonstype234", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_triggers_to_buttons235, !9, !"__UNIQUE_ID_triggers_to_buttons235", i1 false, i1 false}
!9 = !{!"../drivers/input/joystick/xpad.c", i32 98, i32 1}
!10 = !{ptr @__param_sticks_to_null, !11, !"__param_sticks_to_null", i1 false, i1 false}
!11 = !{!"../drivers/input/joystick/xpad.c", i32 101, i32 1}
!12 = !{ptr @__UNIQUE_ID_sticks_to_nulltype236, !11, !"__UNIQUE_ID_sticks_to_nulltype236", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_sticks_to_null237, !14, !"__UNIQUE_ID_sticks_to_null237", i1 false, i1 false}
!14 = !{!"../drivers/input/joystick/xpad.c", i32 102, i32 1}
!15 = !{ptr @__param_auto_poweroff, !16, !"__param_auto_poweroff", i1 false, i1 false}
!16 = !{!"../drivers/input/joystick/xpad.c", i32 105, i32 1}
!17 = !{ptr @__UNIQUE_ID_auto_powerofftype238, !16, !"__UNIQUE_ID_auto_powerofftype238", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_auto_poweroff239, !19, !"__UNIQUE_ID_auto_poweroff239", i1 false, i1 false}
!19 = !{!"../drivers/input/joystick/xpad.c", i32 106, i32 1}
!20 = !{ptr @__initcall__kmod_xpad__252_1979_xpad_driver_init6, !21, !"__initcall__kmod_xpad__252_1979_xpad_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/input/joystick/xpad.c", i32 1979, i32 1}
!22 = !{ptr @__exitcall_xpad_driver_exit, !21, !"__exitcall_xpad_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_author253, !24, !"__UNIQUE_ID_author253", i1 false, i1 false}
!24 = !{!"../drivers/input/joystick/xpad.c", i32 1981, i32 1}
!25 = !{ptr @__UNIQUE_ID_description254, !26, !"__UNIQUE_ID_description254", i1 false, i1 false}
!26 = !{!"../drivers/input/joystick/xpad.c", i32 1982, i32 1}
!27 = !{ptr @__UNIQUE_ID_file255, !28, !"__UNIQUE_ID_file255", i1 false, i1 false}
!28 = !{!"../drivers/input/joystick/xpad.c", i32 1983, i32 1}
!29 = !{ptr @__UNIQUE_ID_license256, !28, !"__UNIQUE_ID_license256", i1 false, i1 false}
!30 = !{ptr @dpad_to_buttons, !31, !"dpad_to_buttons", i1 false, i1 false}
!31 = !{!"../drivers/input/joystick/xpad.c", i32 92, i32 13}
!32 = !{ptr @triggers_to_buttons, !33, !"triggers_to_buttons", i1 false, i1 false}
!33 = !{!"../drivers/input/joystick/xpad.c", i32 96, i32 13}
!34 = !{ptr @sticks_to_null, !35, !"sticks_to_null", i1 false, i1 false}
!35 = !{!"../drivers/input/joystick/xpad.c", i32 100, i32 13}
!36 = !{ptr @__param_str_dpad_to_buttons, !1, !"__param_str_dpad_to_buttons", i1 false, i1 false}
!37 = !{ptr @__param_str_triggers_to_buttons, !6, !"__param_str_triggers_to_buttons", i1 false, i1 false}
!38 = !{ptr @__param_str_sticks_to_null, !11, !"__param_str_sticks_to_null", i1 false, i1 false}
!39 = !{ptr @__param_str_auto_poweroff, !16, !"__param_str_auto_poweroff", i1 false, i1 false}
!40 = !{ptr @auto_poweroff, !41, !"auto_poweroff", i1 false, i1 false}
!41 = !{!"../drivers/input/joystick/xpad.c", i32 104, i32 13}
!42 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @xpad_driver, !44, !"xpad_driver", i1 false, i1 false}
!44 = !{!"../drivers/input/joystick/xpad.c", i32 1969, i32 26}
!45 = !{ptr @.str.1, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/joystick/xpad.c", i32 1762, i32 22}
!47 = !{ptr @xpad_probe.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/input/joystick/xpad.c", i32 1782, i32 2}
!49 = !{ptr @.str.2, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.3, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/joystick/xpad.c", i32 115, i32 20}
!52 = !{ptr @.str.4, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/joystick/xpad.c", i32 116, i32 20}
!54 = !{ptr @.str.5, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/joystick/xpad.c", i32 118, i32 20}
!56 = !{ptr @.str.6, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/joystick/xpad.c", i32 119, i32 20}
!58 = !{ptr @.str.7, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/joystick/xpad.c", i32 120, i32 20}
!60 = !{ptr @.str.8, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/joystick/xpad.c", i32 121, i32 20}
!62 = !{ptr @.str.9, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/joystick/xpad.c", i32 122, i32 20}
!64 = !{ptr @.str.10, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/joystick/xpad.c", i32 123, i32 20}
!66 = !{ptr @.str.11, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/joystick/xpad.c", i32 124, i32 20}
!68 = !{ptr @.str.12, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/joystick/xpad.c", i32 125, i32 20}
!70 = !{ptr @.str.13, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/joystick/xpad.c", i32 126, i32 20}
!72 = !{ptr @.str.14, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/joystick/xpad.c", i32 127, i32 20}
!74 = !{ptr @.str.15, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/joystick/xpad.c", i32 128, i32 20}
!76 = !{ptr @.str.16, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/joystick/xpad.c", i32 129, i32 20}
!78 = !{ptr @.str.17, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/joystick/xpad.c", i32 130, i32 20}
!80 = !{ptr @.str.18, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/joystick/xpad.c", i32 131, i32 20}
!82 = !{ptr @.str.19, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/joystick/xpad.c", i32 132, i32 20}
!84 = !{ptr @.str.20, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/joystick/xpad.c", i32 133, i32 20}
!86 = !{ptr @.str.21, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/joystick/xpad.c", i32 134, i32 20}
!88 = !{ptr @.str.22, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/joystick/xpad.c", i32 135, i32 20}
!90 = !{ptr @.str.23, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/joystick/xpad.c", i32 136, i32 20}
!92 = !{ptr @.str.24, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/joystick/xpad.c", i32 137, i32 20}
!94 = !{ptr @.str.25, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/joystick/xpad.c", i32 138, i32 20}
!96 = !{ptr @.str.26, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/input/joystick/xpad.c", i32 139, i32 20}
!98 = !{ptr @.str.27, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/joystick/xpad.c", i32 140, i32 20}
!100 = !{ptr @.str.28, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/input/joystick/xpad.c", i32 141, i32 20}
!102 = !{ptr @.str.29, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/input/joystick/xpad.c", i32 142, i32 20}
!104 = !{ptr @.str.30, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/input/joystick/xpad.c", i32 143, i32 20}
!106 = !{ptr @.str.31, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/input/joystick/xpad.c", i32 144, i32 20}
!108 = !{ptr @.str.32, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/input/joystick/xpad.c", i32 145, i32 20}
!110 = !{ptr @.str.33, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/input/joystick/xpad.c", i32 146, i32 20}
!112 = !{ptr @.str.34, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/input/joystick/xpad.c", i32 148, i32 20}
!114 = !{ptr @.str.35, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/input/joystick/xpad.c", i32 149, i32 20}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/input/joystick/xpad.c", i32 150, i32 20}
!118 = !{ptr @.str.37, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/input/joystick/xpad.c", i32 151, i32 20}
!120 = !{ptr @.str.38, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/input/joystick/xpad.c", i32 152, i32 20}
!122 = !{ptr @.str.39, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/input/joystick/xpad.c", i32 153, i32 20}
!124 = !{ptr @.str.40, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/input/joystick/xpad.c", i32 154, i32 20}
!126 = !{ptr @.str.41, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/input/joystick/xpad.c", i32 155, i32 20}
!128 = !{ptr @.str.42, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/input/joystick/xpad.c", i32 156, i32 20}
!130 = !{ptr @.str.43, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/input/joystick/xpad.c", i32 158, i32 20}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/input/joystick/xpad.c", i32 159, i32 20}
!134 = !{ptr @.str.45, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/input/joystick/xpad.c", i32 160, i32 20}
!136 = !{ptr @.str.46, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/input/joystick/xpad.c", i32 161, i32 20}
!138 = !{ptr @.str.47, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/input/joystick/xpad.c", i32 162, i32 20}
!140 = !{ptr @.str.48, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/input/joystick/xpad.c", i32 163, i32 20}
!142 = !{ptr @.str.49, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/input/joystick/xpad.c", i32 164, i32 20}
!144 = !{ptr @.str.50, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/input/joystick/xpad.c", i32 165, i32 20}
!146 = !{ptr @.str.51, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/input/joystick/xpad.c", i32 166, i32 20}
!148 = !{ptr @.str.52, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/input/joystick/xpad.c", i32 167, i32 20}
!150 = !{ptr @.str.53, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/input/joystick/xpad.c", i32 168, i32 20}
!152 = !{ptr @.str.54, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/input/joystick/xpad.c", i32 169, i32 20}
!154 = !{ptr @.str.55, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/input/joystick/xpad.c", i32 170, i32 20}
!156 = !{ptr @.str.56, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/input/joystick/xpad.c", i32 172, i32 20}
!158 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/input/joystick/xpad.c", i32 173, i32 20}
!160 = !{ptr @.str.58, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/input/joystick/xpad.c", i32 174, i32 20}
!162 = !{ptr @.str.59, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/input/joystick/xpad.c", i32 176, i32 20}
!164 = !{ptr @.str.60, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/input/joystick/xpad.c", i32 177, i32 20}
!166 = !{ptr @.str.61, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/input/joystick/xpad.c", i32 178, i32 20}
!168 = !{ptr @.str.62, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/input/joystick/xpad.c", i32 179, i32 20}
!170 = !{ptr @.str.63, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/input/joystick/xpad.c", i32 180, i32 20}
!172 = !{ptr @.str.64, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/input/joystick/xpad.c", i32 181, i32 20}
!174 = !{ptr @.str.65, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/input/joystick/xpad.c", i32 182, i32 20}
!176 = !{ptr @.str.66, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/input/joystick/xpad.c", i32 183, i32 20}
!178 = !{ptr @.str.67, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/input/joystick/xpad.c", i32 184, i32 20}
!180 = !{ptr @.str.68, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/input/joystick/xpad.c", i32 185, i32 20}
!182 = !{ptr @.str.69, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/input/joystick/xpad.c", i32 186, i32 20}
!184 = !{ptr @.str.70, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/input/joystick/xpad.c", i32 187, i32 20}
!186 = !{ptr @.str.71, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/input/joystick/xpad.c", i32 188, i32 20}
!188 = !{ptr @.str.72, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/input/joystick/xpad.c", i32 189, i32 20}
!190 = !{ptr @.str.73, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/input/joystick/xpad.c", i32 191, i32 20}
!192 = !{ptr @.str.74, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/input/joystick/xpad.c", i32 192, i32 20}
!194 = !{ptr @.str.75, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/input/joystick/xpad.c", i32 193, i32 20}
!196 = !{ptr @.str.76, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/input/joystick/xpad.c", i32 194, i32 20}
!198 = !{ptr @.str.77, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/input/joystick/xpad.c", i32 195, i32 20}
!200 = !{ptr @.str.78, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/input/joystick/xpad.c", i32 196, i32 20}
!202 = !{ptr @.str.79, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/input/joystick/xpad.c", i32 197, i32 20}
!204 = !{ptr @.str.80, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/input/joystick/xpad.c", i32 198, i32 20}
!206 = !{ptr @.str.81, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/input/joystick/xpad.c", i32 199, i32 20}
!208 = !{ptr @.str.82, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/input/joystick/xpad.c", i32 200, i32 20}
!210 = !{ptr @.str.83, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/input/joystick/xpad.c", i32 201, i32 20}
!212 = !{ptr @.str.84, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/input/joystick/xpad.c", i32 202, i32 20}
!214 = !{ptr @.str.85, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/input/joystick/xpad.c", i32 203, i32 20}
!216 = !{ptr @.str.86, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/input/joystick/xpad.c", i32 204, i32 20}
!218 = !{ptr @.str.87, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/input/joystick/xpad.c", i32 205, i32 20}
!220 = !{ptr @.str.88, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/input/joystick/xpad.c", i32 206, i32 20}
!222 = !{ptr @.str.89, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/input/joystick/xpad.c", i32 207, i32 20}
!224 = !{ptr @.str.90, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/input/joystick/xpad.c", i32 208, i32 20}
!226 = !{ptr @.str.91, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/input/joystick/xpad.c", i32 209, i32 20}
!228 = !{ptr @.str.92, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/input/joystick/xpad.c", i32 210, i32 20}
!230 = !{ptr @.str.93, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/input/joystick/xpad.c", i32 214, i32 20}
!232 = !{ptr @.str.94, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/input/joystick/xpad.c", i32 215, i32 20}
!234 = !{ptr @.str.95, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/input/joystick/xpad.c", i32 216, i32 20}
!236 = !{ptr @.str.96, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/input/joystick/xpad.c", i32 217, i32 20}
!238 = !{ptr @.str.97, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/input/joystick/xpad.c", i32 218, i32 20}
!240 = !{ptr @.str.98, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/input/joystick/xpad.c", i32 219, i32 20}
!242 = !{ptr @.str.99, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/input/joystick/xpad.c", i32 222, i32 20}
!244 = !{ptr @.str.100, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/input/joystick/xpad.c", i32 223, i32 20}
!246 = !{ptr @.str.101, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/input/joystick/xpad.c", i32 224, i32 20}
!248 = !{ptr @.str.102, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/input/joystick/xpad.c", i32 227, i32 20}
!250 = !{ptr @.str.103, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/input/joystick/xpad.c", i32 231, i32 20}
!252 = !{ptr @.str.104, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/input/joystick/xpad.c", i32 232, i32 20}
!254 = !{ptr @.str.105, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/input/joystick/xpad.c", i32 235, i32 20}
!256 = !{ptr @.str.106, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/input/joystick/xpad.c", i32 236, i32 20}
!258 = !{ptr @.str.107, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/input/joystick/xpad.c", i32 237, i32 20}
!260 = !{ptr @.str.108, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/input/joystick/xpad.c", i32 238, i32 20}
!262 = !{ptr @.str.109, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/input/joystick/xpad.c", i32 239, i32 20}
!264 = !{ptr @.str.110, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/input/joystick/xpad.c", i32 240, i32 20}
!266 = !{ptr @.str.111, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/input/joystick/xpad.c", i32 241, i32 20}
!268 = !{ptr @.str.112, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/input/joystick/xpad.c", i32 242, i32 20}
!270 = !{ptr @.str.113, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/input/joystick/xpad.c", i32 243, i32 20}
!272 = !{ptr @.str.114, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/input/joystick/xpad.c", i32 244, i32 20}
!274 = !{ptr @.str.115, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/input/joystick/xpad.c", i32 245, i32 20}
!276 = !{ptr @.str.116, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/input/joystick/xpad.c", i32 246, i32 20}
!278 = !{ptr @.str.117, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/input/joystick/xpad.c", i32 247, i32 20}
!280 = !{ptr @.str.118, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/input/joystick/xpad.c", i32 248, i32 20}
!282 = !{ptr @.str.119, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/input/joystick/xpad.c", i32 249, i32 20}
!284 = !{ptr @.str.120, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/input/joystick/xpad.c", i32 250, i32 20}
!286 = !{ptr @.str.121, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/input/joystick/xpad.c", i32 251, i32 20}
!288 = !{ptr @.str.122, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/input/joystick/xpad.c", i32 253, i32 20}
!290 = !{ptr @.str.123, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/input/joystick/xpad.c", i32 254, i32 20}
!292 = !{ptr @.str.124, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/input/joystick/xpad.c", i32 255, i32 20}
!294 = !{ptr @.str.125, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/input/joystick/xpad.c", i32 256, i32 20}
!296 = !{ptr @.str.126, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/input/joystick/xpad.c", i32 257, i32 20}
!298 = !{ptr @.str.127, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/input/joystick/xpad.c", i32 258, i32 20}
!300 = !{ptr @.str.128, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/input/joystick/xpad.c", i32 259, i32 20}
!302 = !{ptr @.str.129, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/input/joystick/xpad.c", i32 260, i32 20}
!304 = !{ptr @.str.130, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/input/joystick/xpad.c", i32 261, i32 20}
!306 = !{ptr @.str.131, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/input/joystick/xpad.c", i32 262, i32 20}
!308 = !{ptr @.str.132, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/input/joystick/xpad.c", i32 263, i32 20}
!310 = !{ptr @.str.133, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/input/joystick/xpad.c", i32 264, i32 20}
!312 = !{ptr @.str.134, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/input/joystick/xpad.c", i32 265, i32 20}
!314 = !{ptr @.str.135, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/input/joystick/xpad.c", i32 266, i32 20}
!316 = !{ptr @.str.136, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/input/joystick/xpad.c", i32 267, i32 20}
!318 = !{ptr @.str.137, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/input/joystick/xpad.c", i32 268, i32 20}
!320 = !{ptr @.str.138, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/input/joystick/xpad.c", i32 269, i32 20}
!322 = !{ptr @.str.139, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/input/joystick/xpad.c", i32 270, i32 20}
!324 = !{ptr @.str.140, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/input/joystick/xpad.c", i32 271, i32 20}
!326 = !{ptr @.str.141, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/input/joystick/xpad.c", i32 273, i32 20}
!328 = !{ptr @.str.142, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/input/joystick/xpad.c", i32 274, i32 20}
!330 = !{ptr @.str.143, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/input/joystick/xpad.c", i32 275, i32 20}
!332 = !{ptr @.str.144, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/input/joystick/xpad.c", i32 276, i32 20}
!334 = !{ptr @.str.145, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/input/joystick/xpad.c", i32 278, i32 20}
!336 = !{ptr @.str.146, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/input/joystick/xpad.c", i32 279, i32 20}
!338 = !{ptr @.str.147, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/input/joystick/xpad.c", i32 280, i32 20}
!340 = !{ptr @.str.148, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/input/joystick/xpad.c", i32 281, i32 20}
!342 = !{ptr @.str.149, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/input/joystick/xpad.c", i32 282, i32 20}
!344 = !{ptr @.str.150, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/input/joystick/xpad.c", i32 283, i32 20}
!346 = !{ptr @.str.151, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/input/joystick/xpad.c", i32 284, i32 20}
!348 = !{ptr @.str.152, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/input/joystick/xpad.c", i32 285, i32 20}
!350 = !{ptr @.str.153, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/input/joystick/xpad.c", i32 286, i32 20}
!352 = !{ptr @.str.154, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/input/joystick/xpad.c", i32 287, i32 20}
!354 = !{ptr @.str.155, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/input/joystick/xpad.c", i32 288, i32 20}
!356 = !{ptr @.str.156, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/input/joystick/xpad.c", i32 289, i32 20}
!358 = !{ptr @.str.157, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/input/joystick/xpad.c", i32 290, i32 20}
!360 = !{ptr @.str.158, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/input/joystick/xpad.c", i32 291, i32 20}
!362 = !{ptr @.str.159, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/input/joystick/xpad.c", i32 292, i32 20}
!364 = !{ptr @.str.160, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/input/joystick/xpad.c", i32 293, i32 20}
!366 = !{ptr @.str.161, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/input/joystick/xpad.c", i32 294, i32 20}
!368 = !{ptr @.str.162, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/input/joystick/xpad.c", i32 295, i32 20}
!370 = !{ptr @.str.163, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/input/joystick/xpad.c", i32 296, i32 20}
!372 = !{ptr @.str.164, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/input/joystick/xpad.c", i32 297, i32 20}
!374 = !{ptr @.str.165, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/input/joystick/xpad.c", i32 298, i32 20}
!376 = !{ptr @.str.166, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/input/joystick/xpad.c", i32 299, i32 20}
!378 = !{ptr @.str.167, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/input/joystick/xpad.c", i32 300, i32 20}
!380 = !{ptr @.str.168, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/input/joystick/xpad.c", i32 301, i32 20}
!382 = !{ptr @.str.169, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/input/joystick/xpad.c", i32 302, i32 20}
!384 = !{ptr @.str.170, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/input/joystick/xpad.c", i32 303, i32 20}
!386 = !{ptr @.str.171, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/input/joystick/xpad.c", i32 304, i32 20}
!388 = !{ptr @.str.172, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/input/joystick/xpad.c", i32 305, i32 20}
!390 = !{ptr @.str.173, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/input/joystick/xpad.c", i32 306, i32 20}
!392 = !{ptr @.str.174, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/input/joystick/xpad.c", i32 307, i32 20}
!394 = !{ptr @.str.175, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/input/joystick/xpad.c", i32 308, i32 20}
!396 = !{ptr @.str.176, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/input/joystick/xpad.c", i32 309, i32 20}
!398 = !{ptr @.str.177, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/input/joystick/xpad.c", i32 310, i32 20}
!400 = !{ptr @.str.178, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/input/joystick/xpad.c", i32 311, i32 20}
!402 = !{ptr @.str.179, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/input/joystick/xpad.c", i32 312, i32 20}
!404 = !{ptr @.str.180, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/input/joystick/xpad.c", i32 313, i32 20}
!406 = !{ptr @.str.181, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/input/joystick/xpad.c", i32 315, i32 20}
!408 = !{ptr @.str.182, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/input/joystick/xpad.c", i32 317, i32 20}
!410 = !{ptr @.str.183, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/input/joystick/xpad.c", i32 318, i32 20}
!412 = !{ptr @.str.184, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/input/joystick/xpad.c", i32 319, i32 20}
!414 = !{ptr @.str.185, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/input/joystick/xpad.c", i32 320, i32 20}
!416 = !{ptr @.str.186, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/input/joystick/xpad.c", i32 321, i32 20}
!418 = !{ptr @.str.187, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/input/joystick/xpad.c", i32 322, i32 20}
!420 = !{ptr @.str.188, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/input/joystick/xpad.c", i32 323, i32 20}
!422 = !{ptr @.str.189, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/input/joystick/xpad.c", i32 324, i32 20}
!424 = !{ptr @.str.190, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/input/joystick/xpad.c", i32 325, i32 20}
!426 = !{ptr @.str.191, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/input/joystick/xpad.c", i32 326, i32 20}
!428 = !{ptr @.str.192, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/input/joystick/xpad.c", i32 327, i32 20}
!430 = !{ptr @.str.193, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/input/joystick/xpad.c", i32 328, i32 20}
!432 = !{ptr @.str.194, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/input/joystick/xpad.c", i32 329, i32 20}
!434 = !{ptr @.str.195, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/input/joystick/xpad.c", i32 330, i32 20}
!436 = !{ptr @.str.196, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/input/joystick/xpad.c", i32 331, i32 20}
!438 = !{ptr @.str.197, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/input/joystick/xpad.c", i32 332, i32 20}
!440 = !{ptr @.str.198, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/input/joystick/xpad.c", i32 333, i32 20}
!442 = !{ptr @.str.199, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/input/joystick/xpad.c", i32 334, i32 20}
!444 = !{ptr @.str.200, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/input/joystick/xpad.c", i32 337, i32 20}
!446 = !{ptr @.str.201, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/input/joystick/xpad.c", i32 338, i32 20}
!448 = !{ptr @.str.202, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/input/joystick/xpad.c", i32 339, i32 20}
!450 = !{ptr @.str.203, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/input/joystick/xpad.c", i32 340, i32 20}
!452 = !{ptr @xpad_device, !453, !"xpad_device", i1 false, i1 false}
!453 = !{!"../drivers/input/joystick/xpad.c", i32 114, i32 3}
!454 = !{ptr @.str.204, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../include/linux/usb.h", i32 912, i32 31}
!456 = !{ptr @.str.205, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/input/joystick/xpad.c", i32 781, i32 4}
!458 = !{ptr @.str.206, !457, !"<string literal>", i1 false, i1 false}
!459 = !{ptr @.str.207, !457, !"<string literal>", i1 false, i1 false}
!460 = !{ptr @.str.208, !457, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @.str.209, !457, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @xpad_presence_work._entry, !457, !"_entry", i1 false, i1 false}
!463 = !{ptr @xpad_presence_work._entry_ptr, !457, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @.str.210, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/input/joystick/xpad.c", i32 1358, i32 8}
!466 = !{ptr @xpad_pad_seq, !465, !"xpad_pad_seq", i1 false, i1 false}
!467 = !{ptr @xpad_init_output.__key, !468, !"__key", i1 false, i1 false}
!468 = !{!"../drivers/input/joystick/xpad.c", i32 1127, i32 2}
!469 = !{ptr @.str.211, !468, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @init_usb_anchor.__key, !471, !"__key", i1 false, i1 false}
!471 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!472 = !{ptr @.str.212, !471, !"<string literal>", i1 false, i1 false}
!473 = !{ptr @init_usb_anchor.__key.213, !474, !"__key", i1 false, i1 false}
!474 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!475 = !{ptr @.str.214, !474, !"<string literal>", i1 false, i1 false}
!476 = !{ptr @.str.215, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/input/joystick/xpad.c", i32 1086, i32 3}
!478 = !{ptr @.str.216, !477, !"<string literal>", i1 false, i1 false}
!479 = !{ptr @xpad_irq_out.__UNIQUE_ID_ddebug249, !477, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!480 = !{ptr @.str.217, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/input/joystick/xpad.c", i32 1092, i32 3}
!482 = !{ptr @xpad_irq_out.__UNIQUE_ID_ddebug250, !481, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!483 = !{ptr @.str.218, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/input/joystick/xpad.c", i32 1101, i32 4}
!485 = !{ptr @xpad_irq_out._entry, !484, !"_entry", i1 false, i1 false}
!486 = !{ptr @xpad_irq_out._entry_ptr, !484, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @.str.219, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/input/joystick/xpad.c", i32 1026, i32 4}
!489 = !{ptr @.str.220, !488, !"<string literal>", i1 false, i1 false}
!490 = !{ptr @xpad_prepare_next_out_packet.__UNIQUE_ID_ddebug248, !488, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!491 = !{ptr @xboxone_init_packets, !492, !"xboxone_init_packets", i1 false, i1 false}
!492 = !{!"../drivers/input/joystick/xpad.c", i32 549, i32 41}
!493 = !{ptr @xboxone_hori_init, !494, !"xboxone_hori_init", i1 false, i1 false}
!494 = !{!"../drivers/input/joystick/xpad.c", i32 500, i32 17}
!495 = !{ptr @xboxone_fw2015_init, !496, !"xboxone_fw2015_init", i1 false, i1 false}
!496 = !{!"../drivers/input/joystick/xpad.c", i32 481, i32 17}
!497 = !{ptr @xboxone_s_init, !498, !"xboxone_s_init", i1 false, i1 false}
!498 = !{!"../drivers/input/joystick/xpad.c", i32 491, i32 17}
!499 = !{ptr @xboxone_pdp_init1, !500, !"xboxone_pdp_init1", i1 false, i1 false}
!500 = !{!"../drivers/input/joystick/xpad.c", i32 510, i32 17}
!501 = !{ptr @xboxone_pdp_init2, !502, !"xboxone_pdp_init2", i1 false, i1 false}
!502 = !{!"../drivers/input/joystick/xpad.c", i32 519, i32 17}
!503 = !{ptr @xboxone_rumblebegin_init, !504, !"xboxone_rumblebegin_init", i1 false, i1 false}
!504 = !{!"../drivers/input/joystick/xpad.c", i32 527, i32 17}
!505 = !{ptr @xboxone_rumbleend_init, !506, !"xboxone_rumbleend_init", i1 false, i1 false}
!506 = !{!"../drivers/input/joystick/xpad.c", i32 538, i32 17}
!507 = !{ptr @.str.221, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/input/joystick/xpad.c", i32 948, i32 3}
!509 = !{ptr @xpad_irq_in.__UNIQUE_ID_ddebug246, !508, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!510 = !{ptr @xpad_irq_in.__UNIQUE_ID_ddebug247, !511, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!511 = !{!"../drivers/input/joystick/xpad.c", i32 952, i32 3}
!512 = !{ptr @xpad_irq_in._entry, !513, !"_entry", i1 false, i1 false}
!513 = !{!"../drivers/input/joystick/xpad.c", i32 974, i32 3}
!514 = !{ptr @xpad_irq_in._entry_ptr, !513, !"_entry_ptr", i1 false, i1 false}
!515 = distinct !{null, !516, !"__warned", i1 false, i1 false}
!516 = !{!"../drivers/input/joystick/xpad.c", i32 831, i32 8}
!517 = !{ptr @.str.222, !516, !"<string literal>", i1 false, i1 false}
!518 = distinct !{null, !519, !"__warned", i1 false, i1 false}
!519 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!520 = !{ptr @.str.223, !519, !"<string literal>", i1 false, i1 false}
!521 = !{ptr @.str.224, !519, !"<string literal>", i1 false, i1 false}
!522 = distinct !{null, !523, !"__warned", i1 false, i1 false}
!523 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!524 = !{ptr @.str.225, !523, !"<string literal>", i1 false, i1 false}
!525 = !{ptr @xpadone_ack_mode_report.mode_report_ack, !526, !"mode_report_ack", i1 false, i1 false}
!526 = !{!"../drivers/input/joystick/xpad.c", i32 1228, i32 18}
!527 = !{ptr @.str.226, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/input/joystick/xpad.c", i32 1053, i32 4}
!529 = !{ptr @xpad_try_sending_next_out_packet._entry, !528, !"_entry", i1 false, i1 false}
!530 = !{ptr @xpad_try_sending_next_out_packet._entry_ptr, !528, !"_entry_ptr", i1 false, i1 false}
!531 = distinct !{null, !532, !"xpad_abs", i1 false, i1 false}
!532 = !{!"../drivers/input/joystick/xpad.c", i32 375, i32 27}
!533 = distinct !{null, !534, !"xpad_common_btn", i1 false, i1 false}
!534 = !{!"../drivers/input/joystick/xpad.c", i32 344, i32 27}
!535 = distinct !{null, !536, !"xpad360_btn", i1 false, i1 false}
!536 = !{!"../drivers/input/joystick/xpad.c", i32 369, i32 27}
!537 = distinct !{null, !538, !"xpad_btn", i1 false, i1 false}
!538 = !{!"../drivers/input/joystick/xpad.c", i32 351, i32 27}
!539 = distinct !{null, !540, !"xpad_btn_pad", i1 false, i1 false}
!540 = !{!"../drivers/input/joystick/xpad.c", i32 357, i32 27}
!541 = distinct !{null, !542, !"xpad_abs_pad", i1 false, i1 false}
!542 = !{!"../drivers/input/joystick/xpad.c", i32 382, i32 27}
!543 = distinct !{null, !544, !"xpad_btn_triggers", i1 false, i1 false}
!544 = !{!"../drivers/input/joystick/xpad.c", i32 364, i32 27}
!545 = distinct !{null, !546, !"xpad_abs_triggers", i1 false, i1 false}
!546 = !{!"../drivers/input/joystick/xpad.c", i32 388, i32 27}
!547 = !{ptr @.str.227, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/input/joystick/xpad.c", i32 1326, i32 3}
!549 = !{ptr @.str.228, !548, !"<string literal>", i1 false, i1 false}
!550 = !{ptr @xpad_play_effect.__UNIQUE_ID_ddebug251, !548, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!551 = !{ptr @.str.229, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/input/joystick/xpad.c", i32 1465, i32 41}
!553 = !{ptr @.str.230, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/input/joystick/xpad.c", i32 1154, i32 4}
!555 = !{ptr @.str.231, !554, !"<string literal>", i1 false, i1 false}
!556 = !{ptr @.str.232, !554, !"<string literal>", i1 false, i1 false}
!557 = !{ptr @xpad_stop_output._entry, !554, !"_entry", i1 false, i1 false}
!558 = !{ptr @xpad_stop_output._entry_ptr, !554, !"_entry_ptr", i1 false, i1 false}
!559 = !{ptr @xpad_table, !560, !"xpad_table", i1 false, i1 false}
!560 = !{!"../drivers/input/joystick/xpad.c", i32 419, i32 35}
!561 = !{!"sp"}
!562 = !{i32 1, !"wchar_size", i32 2}
!563 = !{i32 1, !"min_enum_size", i32 4}
!564 = !{i32 8, !"branch-target-enforcement", i32 0}
!565 = !{i32 8, !"sign-return-address", i32 0}
!566 = !{i32 8, !"sign-return-address-all", i32 0}
!567 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!568 = !{i32 7, !"uwtable", i32 1}
!569 = !{i32 7, !"frame-pointer", i32 2}
!570 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!571 = !{i8 0, i8 2}
!572 = !{i64 2154100760}
!573 = !{i64 2148754755, i64 2148754760, i64 2148754773, i64 2148754817, i64 2148754851, i64 2148754872}
!574 = !{i64 2149443601}
!575 = !{i64 2149443867}
