; ModuleID = '/llk/IR_all_yes/drivers/media/usb/tm6000/tm6000-input.c_pt.bc'
source_filename = "../drivers/media/usb/tm6000/tm6000-input.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tm6000_core = type { [30 x i8], i32, i32, i32, [256 x i8], i32, i64, i32, i32, i32, %struct.tm6000_capabilities, %struct.work_struct, i32, i32, %struct.tm6000_gpio, ptr, i8, i32, i32, %struct.i2c_adapter, %struct.i2c_client, %struct.list_head, i32, ptr, i8, %struct.video_device, %struct.video_device, %struct.tm6000_dmaqueue, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, i32, [3 x %struct.tm6000_input], %struct.tm6000_input, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.work_struct, %struct.atomic_t, ptr, %struct.mutex, %struct.mutex, ptr, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, i32, %struct.usb_isoc_ctl, %struct.spinlock, ptr, ptr, i32, i32 }
%struct.tm6000_capabilities = type { i8, [3 x i8] }
%struct.tm6000_gpio = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.tm6000_dmaqueue = type { %struct.list_head, %struct.list_head, ptr, %struct.wait_queue_head, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.tm6000_input = type { i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tm6000_endpoint = type { ptr, i8, i8, i32 }
%struct.usb_isoc_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.tm6000_IR = type { ptr, ptr, [32 x i8], [32 x i8], i32, %struct.delayed_work, i8, ptr, i64 }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }

@__param_str_ir_debug = internal constant [16 x i8] c"tm6000.ir_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ir_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ir_debug = internal constant %struct.kernel_param { ptr @__param_str_ir_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @ir_debug } }, section "__param", align 4
@__UNIQUE_ID_ir_debugtype303 = internal constant [29 x i8] c"tm6000.parmtype=ir_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ir_debug304 = internal constant [41 x i8] c"tm6000.parm=ir_debug:debug message level\00", section ".modinfo", align 1
@__param_str_enable_ir = internal constant [17 x i8] c"tm6000.enable_ir\00", align 1
@enable_ir = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_enable_ir = internal constant %struct.kernel_param { ptr @__param_str_enable_ir, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @enable_ir } }, section "__param", align 4
@__UNIQUE_ID_enable_irtype305 = internal constant [30 x i8] c"tm6000.parmtype=enable_ir:int\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_ir306 = internal constant [52 x i8] c"tm6000.parm=enable_ir:enable ir (default is enable)\00", section ".modinfo", align 1
@__param_str_ir_clock_mhz = internal constant [20 x i8] c"tm6000.ir_clock_mhz\00", align 1
@ir_clock_mhz = internal global { i32, [28 x i8] } { i32 12, [28 x i8] zeroinitializer }, align 32
@__param_ir_clock_mhz = internal constant %struct.kernel_param { ptr @__param_str_ir_clock_mhz, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @ir_clock_mhz } }, section "__param", align 4
@__UNIQUE_ID_ir_clock_mhztype307 = internal constant [33 x i8] c"tm6000.parmtype=ir_clock_mhz:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ir_clock_mhz308 = internal constant [42 x i8] c"tm6000.parm=ir_clock_mhz:ir clock, in MHz\00", section ".modinfo", align 1
@tm6000_ir_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s/ir: %s: %i\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tm6000_ir_wait\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/tm6000/tm6000-input.c\00", [56 x i8] zeroinitializer }, align 32
@tm6000_ir_wait._entry_ptr = internal global ptr @tm6000_ir_wait._entry, section ".printk_index", align 4
@tm6000_ir_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017%s/ir: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tm6000_ir_init\00", [17 x i8] zeroinitializer }, align 32
@tm6000_ir_init._entry_ptr = internal global ptr @tm6000_ir_init._entry, section ".printk_index", align 4
@tm6000_ir_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&(&ir->work)->work)\00", [58 x i8] zeroinitializer }, align 32
@tm6000_ir_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&(&ir->work)->timer\00", [44 x i8] zeroinitializer }, align 32
@tm6000_ir_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tm6000_ir_init.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tm5600/60x0 IR (%s)\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tm6000\00", [25 x i8] zeroinitializer }, align 32
@tm6000_ir_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.13, ptr @.str.2, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tm6000_ir_fini\00", [17 x i8] zeroinitializer }, align 32
@tm6000_ir_fini._entry_ptr = internal global ptr @tm6000_ir_fini._entry, section ".printk_index", align 4
@__tm6000_ir_int_start._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.14, ptr @.str.2, i32 333, ptr null, ptr null }, align 1
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__tm6000_ir_int_start\00", [42 x i8] zeroinitializer }, align 32
@__tm6000_ir_int_start._entry_ptr = internal global ptr @__tm6000_ir_int_start._entry, section ".printk_index", align 4
@__tm6000_ir_int_start._entry.15 = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 344, ptr null, ptr null }, align 1
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s/ir: IR max size: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__tm6000_ir_int_start._entry_ptr.17 = internal global ptr @__tm6000_ir_int_start._entry.15, section ".printk_index", align 4
@__tm6000_ir_int_start._entry.18 = internal constant %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 351, ptr null, ptr null }, align 1
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s/ir: int interval: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@__tm6000_ir_int_start._entry_ptr.20 = internal global ptr @__tm6000_ir_int_start._entry.18, section ".printk_index", align 4
@tm6000_ir_urb_received._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.22, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tm6000_ir_urb_received\00", [41 x i8] zeroinitializer }, align 32
@tm6000_ir_urb_received._entry_ptr = internal global ptr @tm6000_ir_urb_received._entry, section ".printk_index", align 4
@tm6000_ir_urb_received._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016tm6000: IR URB failure: status: %i, length %i\0A\00", [47 x i8] zeroinitializer }, align 32
@tm6000_ir_urb_received._entry_ptr.25 = internal global ptr @tm6000_ir_urb_received._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tm6000: IR data: \00", [46 x i8] zeroinitializer }, align 32
@tm6000_ir_keydown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s/ir: %s, protocol: 0x%04x, scancode: 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tm6000_ir_keydown\00", [46 x i8] zeroinitializer }, align 32
@tm6000_ir_keydown._entry_ptr = internal global ptr @tm6000_ir_keydown._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tm6000_ir_int_stop._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.30, ptr @.str.2, i32 371, ptr null, ptr null }, align 1
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__tm6000_ir_int_stop\00", [43 x i8] zeroinitializer }, align 32
@__tm6000_ir_int_stop._entry_ptr = internal global ptr @__tm6000_ir_int_stop._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tm6000_ir_change_protocol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.31, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tm6000_ir_change_protocol\00", [38 x i8] zeroinitializer }, align 32
@tm6000_ir_change_protocol._entry_ptr = internal global ptr @tm6000_ir_change_protocol._entry, section ".printk_index", align 4
@tm6000_ir_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.32, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tm6000_ir_config\00", [47 x i8] zeroinitializer }, align 32
@tm6000_ir_config._entry_ptr = internal global ptr @tm6000_ir_config._entry, section ".printk_index", align 4
@tm6000_ir_config._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s/ir: %s: %s, %d MHz, leader = 0x%04x, pulse = 0x%06x \0A\00", [37 x i8] zeroinitializer }, align 32
@tm6000_ir_config._entry_ptr.35 = internal global ptr @tm6000_ir_config._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NEC\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RC-5\00", [27 x i8] zeroinitializer }, align 32
@tm6000_ir_int_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s/ir: %s, submit_urb = %d, pwled = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tm6000_ir_int_work\00", [45 x i8] zeroinitializer }, align 32
@tm6000_ir_int_work._entry_ptr = internal global ptr @tm6000_ir_int_work._entry, section ".printk_index", align 4
@tm6000_ir_int_work._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s/ir: Resubmit urb\0A\00", [41 x i8] zeroinitializer }, align 32
@tm6000_ir_int_work._entry_ptr.42 = internal global ptr @tm6000_ir_int_work._entry.40, section ".printk_index", align 4
@tm6000_ir_int_work._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013tm6000: Can't submit an IR interrupt. Error %i\0A\00", [46 x i8] zeroinitializer }, align 32
@tm6000_ir_int_work._entry_ptr.45 = internal global ptr @tm6000_ir_int_work._entry.43, section ".printk_index", align 4
@tm6000_ir_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.46, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tm6000_ir_start\00", [16 x i8] zeroinitializer }, align 32
@tm6000_ir_start._entry_ptr = internal global ptr @tm6000_ir_start._entry, section ".printk_index", align 4
@tm6000_ir_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.47, ptr @.str.2, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tm6000_ir_stop\00", [17 x i8] zeroinitializer }, align 32
@tm6000_ir_stop._entry_ptr = internal global ptr @tm6000_ir_stop._entry, section ".printk_index", align 4
@tm6000_ir_handle_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.48, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tm6000_ir_handle_key\00", [43 x i8] zeroinitializer }, align 32
@tm6000_ir_handle_key._entry_ptr = internal global ptr @tm6000_ir_handle_key._entry, section ".printk_index", align 4
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.51 = private unnamed_addr constant [9 x i8] c"ir_debug\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 20, i32 21 }
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"enable_ir\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 24, i32 21 }
@___asan_gen_.57 = private unnamed_addr constant [13 x i8] c"ir_clock_mhz\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 28, i32 21 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 71, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 420, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 436, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 441, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 444, i32 39 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 448, i32 20 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 460, i32 20 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 486, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 333, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 344, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 351, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 190, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 192, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 201, i32 18 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 201, i32 30 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 179, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 371, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 313, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 84, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 115, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 257, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 261, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 266, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 290, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 301, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.214 = private constant [43 x i8] c"../drivers/media/usb/tm6000/tm6000-input.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 226, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 912, i32 31 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_enable_ir306, ptr @__UNIQUE_ID_enable_irtype305, ptr @__UNIQUE_ID_ir_clock_mhz308, ptr @__UNIQUE_ID_ir_clock_mhztype307, ptr @__UNIQUE_ID_ir_debug304, ptr @__UNIQUE_ID_ir_debugtype303, ptr @__param_enable_ir, ptr @__param_ir_clock_mhz, ptr @__param_ir_debug, ptr @__tm6000_ir_int_start._entry, ptr @__tm6000_ir_int_start._entry.15, ptr @__tm6000_ir_int_start._entry.18, ptr @__tm6000_ir_int_start._entry_ptr, ptr @__tm6000_ir_int_start._entry_ptr.17, ptr @__tm6000_ir_int_start._entry_ptr.20, ptr @__tm6000_ir_int_stop._entry, ptr @__tm6000_ir_int_stop._entry_ptr, ptr @tm6000_ir_change_protocol._entry, ptr @tm6000_ir_change_protocol._entry_ptr, ptr @tm6000_ir_config._entry, ptr @tm6000_ir_config._entry.33, ptr @tm6000_ir_config._entry_ptr, ptr @tm6000_ir_config._entry_ptr.35, ptr @tm6000_ir_fini._entry, ptr @tm6000_ir_fini._entry_ptr, ptr @tm6000_ir_handle_key._entry, ptr @tm6000_ir_handle_key._entry_ptr, ptr @tm6000_ir_init._entry, ptr @tm6000_ir_init._entry_ptr, ptr @tm6000_ir_int_work._entry, ptr @tm6000_ir_int_work._entry.40, ptr @tm6000_ir_int_work._entry.43, ptr @tm6000_ir_int_work._entry_ptr, ptr @tm6000_ir_int_work._entry_ptr.42, ptr @tm6000_ir_int_work._entry_ptr.45, ptr @tm6000_ir_keydown._entry, ptr @tm6000_ir_keydown._entry_ptr, ptr @tm6000_ir_start._entry, ptr @tm6000_ir_start._entry_ptr, ptr @tm6000_ir_stop._entry, ptr @tm6000_ir_stop._entry_ptr, ptr @tm6000_ir_urb_received._entry, ptr @tm6000_ir_urb_received._entry.23, ptr @tm6000_ir_urb_received._entry_ptr, ptr @tm6000_ir_urb_received._entry_ptr.25, ptr @tm6000_ir_wait._entry, ptr @tm6000_ir_wait._entry_ptr, ptr @ir_debug, ptr @enable_ir, ptr @ir_clock_mhz, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @tm6000_ir_init.__key, ptr @.str.5, ptr @tm6000_ir_init.__key.6, ptr @.str.7, ptr @tm6000_ir_init.__key.8, ptr @tm6000_ir_init.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_ir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_clock_mhz to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_ir_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_ir_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_ir_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_ir_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_ir_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_ir_init.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_ir_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_ir_urb_received._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_ir_urb_received._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_ir_keydown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_ir_change_protocol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_ir_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_ir_config._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_ir_int_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_ir_int_work._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_ir_int_work._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_ir_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_ir_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_ir_handle_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tm6000_ir_wait(ptr nocapture noundef readonly %dev, i8 noundef zeroext %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ir1 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %ir1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %do.end, label %do.body.do.end7_crit_edge

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 2
  %wait = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %wait to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %wait, align 8
  %bf.lshr = lshr i8 %bf.load, 7
  %conv = zext i8 %bf.lshr to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef %conv) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool8.not = icmp eq i8 %state, 0
  %wait12 = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %wait12 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load13 = load i8, ptr %wait12, align 8
  %bf.clear14 = and i8 %bf.load13, 127
  %masksel = select i1 %tobool8.not, i8 0, i8 -128
  %bf.set.sink = or i8 %bf.clear14, %masksel
  store i8 %bf.set.sink, ptr %wait12, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tm6000_ir_int_start(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ir1 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %ir1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rc = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rc, align 4
  %call = tail call i32 @__tm6000_ir_int_start(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__tm6000_ir_int_start(ptr nocapture noundef readonly %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %do.end, label %if.end.do.end6_crit_edge

if.end.do.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull @.str.14) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %if.end.do.end6_crit_edge
  %call7 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #9
  %int_urb = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %int_urb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7, ptr %int_urb, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %do.end6.cleanup_crit_edge, label %if.end11

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %do.end6
  %udev = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 47
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 8
  %int_in = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 52
  %8 = ptrtoint ptr %int_in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %int_in, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bEndpointAddress, align 2
  %12 = and i8 %11, 15
  %and = zext i8 %12 to i32
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %7, align 8
  %shl.i = shl i32 %14, 8
  %shl1.i = shl nuw nsw i32 %and, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or13 = or i32 %or.i, 1073741952
  %15 = lshr i32 %or.i, 15
  %and.i = and i32 %15, 15
  %arrayidx57.i = getelementptr %struct.usb_device, ptr %7, i32 0, i32 21, i32 %and.i
  %16 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx57.i, align 4
  %tobool59.not.i = icmp eq ptr %17, null
  br i1 %tobool59.not.i, label %if.end11.usb_maxpacket.exit_crit_edge, label %if.end61.i

if.end11.usb_maxpacket.exit_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_maxpacket.exit

if.end61.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %20 = and i16 %19, -249
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #9
  %phi.cast = zext i16 %21 to i32
  br label %usb_maxpacket.exit

usb_maxpacket.exit:                               ; preds = %if.end61.i, %if.end11.usb_maxpacket.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.end61.i ], [ 0, %if.end11.usb_maxpacket.exit_crit_edge ]
  %22 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp20.not = icmp eq i32 %22, 0
  br i1 %cmp20.not, label %usb_maxpacket.exit.if.end8.i.i_crit_edge, label %do.end25

usb_maxpacket.exit.if.end8.i.i_crit_edge:         ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

do.end25:                                         ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #11
  %name27 = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 2
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name27, i32 noundef %retval.0.i) #12
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end25, %usb_maxpacket.exit.if.end8.i.i_crit_edge
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 2848) #13
  %23 = ptrtoint ptr %int_urb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %int_urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9.i.i, ptr %transfer_buffer, align 4
  %26 = load ptr, ptr %int_urb, align 4
  %transfer_buffer36 = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %transfer_buffer36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %transfer_buffer36, align 4
  %tobool37.not = icmp eq ptr %28, null
  br i1 %tobool37.not, label %if.then38, label %do.body41

if.then38:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_free_urb(ptr noundef %26) #9
  br label %cleanup

do.body41:                                        ; preds = %if.end8.i.i
  %29 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp42.not = icmp eq i32 %29, 0
  br i1 %cmp42.not, label %do.body41.do.end58_crit_edge, label %do.end47

do.body41.do.end58_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end58

do.end47:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  %name49 = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %int_in to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %int_in, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bInterval, align 2
  %conv54 = zext i8 %33 to i32
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name49, i32 noundef %conv54) #12
  br label %do.end58

do.end58:                                         ; preds = %do.end47, %do.body41.do.end58_crit_edge
  %34 = ptrtoint ptr %int_urb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %int_urb, align 4
  %36 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %udev, align 8
  %38 = ptrtoint ptr %int_in to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %int_in, align 4
  %bInterval66 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %bInterval66 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bInterval66, align 2
  %conv67 = zext i8 %41 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 8
  %42 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %37, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 10
  %43 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or13, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 19
  %44 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %retval.0.i, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 28
  %45 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @tm6000_ir_urb_received, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 27
  %46 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %3, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 4
  %47 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp.i = icmp eq i32 %48, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp6.i = icmp ugt i32 %48, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %do.end58.usb_fill_int_urb.exit_crit_edge

do.end58.usb_fill_int_urb.exit_crit_edge:         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #11
  %49 = tail call i32 @llvm.smax.i32(i32 %conv67, i32 1) #9
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 16) #9
  %sub.i = add nsw i32 %50, -1
  %shl.i97 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %do.end58.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i97, %if.then.i ], [ %conv67, %do.end58.usb_fill_int_urb.exit_crit_edge ]
  %51 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 25
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %interval.sink.i, ptr %51, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 23
  %53 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %start_frame.i, align 4
  %submit_urb = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 6
  %54 = ptrtoint ptr %submit_urb to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load = load i8, ptr %submit_urb, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %submit_urb, align 8
  %work = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %55 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %55, ptr noundef %work, i32 noundef 10) #9
  br label %cleanup

cleanup:                                          ; preds = %usb_fill_int_urb.exit, %if.then38, %do.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %usb_fill_int_urb.exit ], [ -12, %if.then38 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %do.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tm6000_ir_int_stop(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ir1 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %ir1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rc = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rc, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %priv.i = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %int_urb.i = getelementptr inbounds %struct.tm6000_IR, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %int_urb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %int_urb.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %do.body.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i:                                        ; preds = %lor.lhs.false.i
  %8 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp ugt i32 %8, 1
  br i1 %cmp.i, label %do.end.i, label %do.body.i.do.end6.i_crit_edge

do.body.i.do.end6.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.tm6000_IR, ptr %5, i32 0, i32 2
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name.i, ptr noundef nonnull @.str.30) #12
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %do.body.i.do.end6.i_crit_edge
  %9 = ptrtoint ptr %int_urb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %int_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %10) #9
  %11 = ptrtoint ptr %int_urb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %int_urb.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %transfer_buffer.i, align 4
  tail call void @kfree(ptr noundef %14) #9
  %15 = ptrtoint ptr %int_urb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %int_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %16) #9
  %17 = ptrtoint ptr %int_urb.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %int_urb.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end6.i, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__tm6000_ir_int_stop(ptr nocapture noundef readonly %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %int_urb = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %int_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %int_urb, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  %4 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %do.end, label %do.body.do.end6_crit_edge

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull @.str.30) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %5 = ptrtoint ptr %int_urb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %int_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %6) #9
  %7 = ptrtoint ptr %int_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %int_urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %10) #9
  %11 = ptrtoint ptr %int_urb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %int_urb, align 4
  tail call void @usb_free_urb(ptr noundef %12) #9
  %13 = ptrtoint ptr %int_urb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %int_urb, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tm6000_ir_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %rc_proto = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rc_proto) #9
  %0 = load i32, ptr @enable_ir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %caps = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 10
  %1 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %caps, align 4
  %2 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ir_codes = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 15
  %3 = ptrtoint ptr %ir_codes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ir_codes, align 8
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 192) #14
  %call7 = tail call ptr @rc_allocate_device(i32 noundef 0) #9
  %tobool8.not = icmp eq ptr %call7.i.i, null
  %tobool9.not = icmp eq ptr %call7, null
  %or.cond = select i1 %tobool8.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %if.end6.out_crit_edge, label %do.body

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body:                                          ; preds = %if.end6
  %6 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  br i1 %cmp, label %do.end, label %do.body.do.end17_crit_edge

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.tm6000_IR, ptr %call7.i.i, i32 0, i32 2
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull @.str.4) #12
  br label %do.end17

do.end17:                                         ; preds = %do.end, %do.body.do.end17_crit_edge
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %call7.i.i, align 8
  %ir19 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 44
  %8 = ptrtoint ptr %ir19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %ir19, align 4
  %rc20 = getelementptr inbounds %struct.tm6000_IR, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %rc20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7, ptr %rc20, align 4
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %call7, i32 0, i32 16
  %10 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 516, ptr %allowed_protocols, align 8
  %scancode_mask = getelementptr inbounds %struct.rc_dev, ptr %call7, i32 0, i32 22
  %11 = ptrtoint ptr %scancode_mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 65535, ptr %scancode_mask, align 4
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call7, i32 0, i32 24
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %priv, align 4
  %change_protocol = getelementptr inbounds %struct.rc_dev, ptr %call7, i32 0, i32 47
  %13 = ptrtoint ptr %change_protocol to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @tm6000_ir_change_protocol, ptr %change_protocol, align 4
  %int_in = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 52
  %14 = ptrtoint ptr %int_in to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %int_in, align 4
  %tobool21.not = icmp eq ptr %15, null
  %open43 = getelementptr inbounds %struct.rc_dev, ptr %call7, i32 0, i32 48
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %open43 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @__tm6000_ir_int_start, ptr %open43, align 8
  %close = getelementptr inbounds %struct.rc_dev, ptr %call7, i32 0, i32 49
  %17 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @__tm6000_ir_int_stop, ptr %close, align 4
  %work = getelementptr inbounds %struct.tm6000_IR, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %18 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.tm6000_IR, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @tm6000_ir_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry32 = getelementptr inbounds %struct.tm6000_IR, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %19 = ptrtoint ptr %entry32 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry32, ptr %entry32, align 8
  br label %if.end72

if.else:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %open43 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @tm6000_ir_start, ptr %open43, align 8
  %close44 = getelementptr inbounds %struct.rc_dev, ptr %call7, i32 0, i32 49
  %21 = ptrtoint ptr %close44 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @tm6000_ir_stop, ptr %close44, align 4
  %polling = getelementptr inbounds %struct.tm6000_IR, ptr %call7.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %polling to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 50, ptr %polling, align 8
  %work47 = getelementptr inbounds %struct.tm6000_IR, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %work47, i32 noundef 0) #9
  %23 = ptrtoint ptr %work47 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %work47, align 4
  %lockdep_map56 = getelementptr inbounds %struct.tm6000_IR, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map56, ptr noundef nonnull @.str.5, ptr noundef nonnull @tm6000_ir_init.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry59 = getelementptr inbounds %struct.tm6000_IR, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %24 = ptrtoint ptr %entry59 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry59, ptr %entry59, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.else, %if.then22
  %entry59.sink = phi ptr [ %entry59, %if.else ], [ %entry32, %if.then22 ]
  %tm6000_ir_handle_key.sink = phi ptr [ @tm6000_ir_handle_key, %if.else ], [ @tm6000_ir_int_work, %if.then22 ]
  %tm6000_ir_init.__key.9.sink = phi ptr [ @tm6000_ir_init.__key.9, %if.else ], [ @tm6000_ir_init.__key.6, %if.then22 ]
  %prev.i163 = getelementptr inbounds %struct.tm6000_IR, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i163 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry59.sink, ptr %prev.i163, align 4
  %func62 = getelementptr inbounds %struct.tm6000_IR, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %26 = ptrtoint ptr %func62 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %tm6000_ir_handle_key.sink, ptr %func62, align 8
  %timer67 = getelementptr inbounds %struct.tm6000_IR, ptr %call7.i.i, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %timer67, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull %tm6000_ir_init.__key.9.sink) #9
  %name73 = getelementptr inbounds %struct.tm6000_IR, ptr %call7.i.i, i32 0, i32 2
  %call77 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name73, i32 noundef 32, ptr noundef nonnull @.str.10, ptr noundef %dev)
  %udev = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 47
  %27 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %udev, align 8
  %phys = getelementptr inbounds %struct.tm6000_IR, ptr %call7.i.i, i32 0, i32 3
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 1
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.49, ptr noundef %32, ptr noundef %devpath.i) #9
  %call82 = tail call i32 @strlcat(ptr noundef %phys, ptr noundef nonnull @.str.11, i32 noundef 32) #9
  %33 = ptrtoint ptr %rc_proto to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1, ptr %rc_proto, align 8
  %call83 = call i32 @tm6000_ir_change_protocol(ptr noundef nonnull %call7, ptr noundef nonnull %rc_proto)
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call7, i32 0, i32 3
  %34 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %name73, ptr %device_name, align 8
  %input_phys = getelementptr inbounds %struct.rc_dev, ptr %call7, i32 0, i32 4
  %35 = ptrtoint ptr %input_phys to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %phys, ptr %input_phys, align 4
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call7, i32 0, i32 5
  %36 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 3, ptr %input_id, align 8
  %version = getelementptr inbounds %struct.rc_dev, ptr %call7, i32 0, i32 5, i32 3
  %37 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %version, align 2
  %38 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %udev, align 8
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %39, i32 0, i32 16, i32 7
  %40 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %idVendor, align 8
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %vendor = getelementptr inbounds %struct.rc_dev, ptr %call7, i32 0, i32 5, i32 1
  %43 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %vendor, align 2
  %44 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %udev, align 8
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %45, i32 0, i32 16, i32 8
  %46 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %idProduct, align 2
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  %product = getelementptr inbounds %struct.rc_dev, ptr %call7, i32 0, i32 5, i32 2
  %49 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %product, align 4
  %50 = ptrtoint ptr %ir_codes to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ir_codes, align 8
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call7, i32 0, i32 7
  %52 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %map_name, align 4
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call7, i32 0, i32 6
  %53 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.12, ptr %driver_name, align 8
  %54 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %udev, align 8
  %dev96 = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 15
  %parent = getelementptr inbounds %struct.device, ptr %call7, i32 0, i32 1
  %56 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %dev96, ptr %parent, align 8
  %call98 = tail call i32 @rc_register_device(ptr noundef nonnull %call7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end72.cleanup_crit_edge, label %if.end72.out_crit_edge

if.end72.out_crit_edge:                           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out:                                              ; preds = %if.end72.out_crit_edge, %if.end6.out_crit_edge
  %err.0 = phi i32 [ %call98, %if.end72.out_crit_edge ], [ -12, %if.end6.out_crit_edge ]
  %ir102 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 44
  %57 = ptrtoint ptr %ir102 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %ir102, align 4
  tail call void @rc_free_device(ptr noundef %call7) #9
  tail call void @kfree(ptr noundef %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end72.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %if.end72.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rc_proto) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm6000_ir_change_protocol(ptr nocapture noundef readonly %rc, ptr nocapture noundef readonly %rc_proto) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %do.end5, label %do.end5.thread

do.end5.thread:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %rc_proto to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rc_proto, align 8
  %rc_proto611 = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %rc_proto611 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %rc_proto611, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  br label %do.end4.i

do.end5:                                          ; preds = %do.body
  %name = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull @.str.31) #12
  %.pr = load i32, ptr @ir_debug, align 4
  %8 = ptrtoint ptr %rc_proto to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rc_proto, align 8
  %rc_proto6 = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %rc_proto6 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %rc_proto6, align 8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp.i = icmp ugt i32 %.pr, 1
  br i1 %cmp.i, label %do.end.i, label %do.end5.do.end4.i_crit_edge

do.end5.do.end4.i_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4.i

do.end.i:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull @.str.32) #12
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %do.end5.do.end4.i_crit_edge, %do.end5.thread
  %13 = phi ptr [ %7, %do.end5.thread ], [ %12, %do.end.i ], [ %12, %do.end5.do.end4.i_crit_edge ]
  %rc_proto613 = phi ptr [ %rc_proto611, %do.end5.thread ], [ %rc_proto6, %do.end.i ], [ %rc_proto6, %do.end5.do.end4.i_crit_edge ]
  %14 = ptrtoint ptr %rc_proto613 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rc_proto613, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %15)
  %cond42.i = icmp eq i64 %15, 512
  %..i = select i1 %cond42.i, i32 700, i32 1780
  %16 = load i32, ptr @ir_clock_mhz, align 4
  %mul.i = mul i32 %..i, %16
  %mul6.i = mul i32 %16, 900
  %or.i = or i32 %mul6.i, 32768
  %leader.1.i = select i1 %cond42.i, i32 %or.i, i32 %mul6.i
  %17 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp12.i = icmp ugt i32 %17, 1
  br i1 %cmp12.i, label %do.end16.i, label %do.end4.i.tm6000_ir_config.exit_crit_edge

do.end4.i.tm6000_ir_config.exit_crit_edge:        ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tm6000_ir_config.exit

do.end16.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %name18.i = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 2
  %cond.i = select i1 %cond42.i, ptr @.str.36, ptr @.str.37
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name18.i, ptr noundef nonnull @.str.32, ptr noundef nonnull %cond.i, i32 noundef %16, i32 noundef %leader.1.i, i32 noundef %mul.i) #12
  br label %tm6000_ir_config.exit

tm6000_ir_config.exit:                            ; preds = %do.end16.i, %do.end4.i.tm6000_ir_config.exit_crit_edge
  %call26.i = tail call i32 @tm6000_set_reg(ptr noundef %13, i8 noundef zeroext 7, i16 noundef zeroext 229, i16 noundef zeroext 254) #9
  %call27.i = tail call i32 @tm6000_set_reg(ptr noundef %13, i8 noundef zeroext 7, i16 noundef zeroext 216, i16 noundef zeroext 47) #9
  %call28.i = tail call i32 @tm6000_set_reg(ptr noundef %13, i8 noundef zeroext 7, i16 noundef zeroext 218, i16 noundef zeroext 255) #9
  %call29.i = tail call i32 @tm6000_set_reg(ptr noundef %13, i8 noundef zeroext 7, i16 noundef zeroext 219, i16 noundef zeroext 255) #9
  %shr.i = lshr i32 %leader.1.i, 8
  %conv.i = trunc i32 %shr.i to i16
  %call30.i = tail call i32 @tm6000_set_reg(ptr noundef %13, i8 noundef zeroext 7, i16 noundef zeroext 220, i16 noundef zeroext %conv.i) #9
  %conv31.i = trunc i32 %leader.1.i to i16
  %call32.i = tail call i32 @tm6000_set_reg(ptr noundef %13, i8 noundef zeroext 7, i16 noundef zeroext 221, i16 noundef zeroext %conv31.i) #9
  %shr33.i = lshr i32 %mul.i, 8
  %conv34.i = trunc i32 %shr33.i to i16
  %call35.i = tail call i32 @tm6000_set_reg(ptr noundef %13, i8 noundef zeroext 7, i16 noundef zeroext 222, i16 noundef zeroext %conv34.i) #9
  %conv36.i = trunc i32 %mul.i to i16
  %call37.i = tail call i32 @tm6000_set_reg(ptr noundef %13, i8 noundef zeroext 7, i16 noundef zeroext 223, i16 noundef zeroext %conv36.i) #9
  %polling.i = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %polling.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %polling.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp ne i32 %19, 0
  %.1.i = zext i1 %tobool.not.i to i16
  %call40.i = tail call i32 @tm6000_set_reg(ptr noundef %13, i8 noundef zeroext 4, i16 noundef zeroext 2, i16 noundef zeroext %.1.i) #9
  tail call void @msleep(i32 noundef 10) #9
  tail call void @tm6000_flash_led(ptr noundef %13, i8 noundef zeroext 0) #9
  tail call void @msleep(i32 noundef 100) #9
  tail call void @tm6000_flash_led(ptr noundef %13, i8 noundef zeroext 1) #9
  %pwled.i = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %pwled.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %pwled.i, align 8
  %bf.clear.i = and i8 %bf.load.i, -97
  %bf.set.i = or i8 %bf.clear.i, 32
  store i8 %bf.set.i, ptr %pwled.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %tm6000_ir_config.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tm6000_ir_int_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -76
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp ugt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr i8, ptr %work, i32 -68
  %submit_urb = getelementptr i8, ptr %work, i32 100
  %3 = ptrtoint ptr %submit_urb to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %submit_urb, align 8
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %conv = zext i8 %bf.clear to i32
  %bf.lshr5 = lshr i8 %bf.load, 5
  %bf.clear6 = and i8 %bf.lshr5, 3
  %conv7 = zext i8 %bf.clear6 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name, ptr noundef nonnull @.str.39, i32 noundef %conv, i32 noundef %conv7) #12
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %submit_urb10 = getelementptr i8, ptr %work, i32 100
  %4 = ptrtoint ptr %submit_urb10 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load11 = load i8, ptr %submit_urb10, align 8
  %5 = and i8 %bf.load11, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.end9.if.end46_crit_edge, label %do.body15

do.end9.if.end46_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

do.body15:                                        ; preds = %do.end9
  %6 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp16 = icmp ugt i32 %6, 2
  br i1 %cmp16, label %do.end21, label %do.body15.do.end28_crit_edge

do.body15.do.end28_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

do.end21:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  %name23 = getelementptr i8, ptr %work, i32 -68
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name23) #12
  br label %do.end28

do.end28:                                         ; preds = %do.end21, %do.body15.do.end28_crit_edge
  %call29 = tail call i32 @tm6000_set_reg(ptr noundef %1, i8 noundef zeroext 4, i16 noundef zeroext 2, i16 noundef zeroext 0) #9
  %int_urb = getelementptr i8, ptr %work, i32 104
  %7 = ptrtoint ptr %int_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %int_urb, align 4
  %call30 = tail call i32 @usb_submit_urb(ptr noundef %8, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end36, label %if.end42

do.end36:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %call30) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work, i32 noundef 10) #9
  br label %cleanup

if.end42:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %submit_urb10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load44 = load i8, ptr %submit_urb10, align 8
  %bf.clear45 = and i8 %bf.load44, -17
  store i8 %bf.clear45, ptr %submit_urb10, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.end42, %do.end9.if.end46_crit_edge
  %11 = ptrtoint ptr %submit_urb10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load48 = load i8, ptr %submit_urb10, align 8
  %bf.lshr49 = lshr i8 %bf.load48, 5
  %trunc = trunc i8 %bf.lshr49 to i2
  %12 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc, label %if.end46.cleanup_crit_edge [
    i2 -2, label %if.then54
    i2 0, label %if.then67
  ]

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then54:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tm6000_flash_led(ptr noundef %1, i8 noundef zeroext 0) #9
  %13 = ptrtoint ptr %submit_urb10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load56 = load i8, ptr %submit_urb10, align 8
  %bf.clear57 = and i8 %bf.load56, -97
  store i8 %bf.clear57, ptr %submit_urb10, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i92 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %work, i32 noundef 10) #9
  br label %cleanup

if.then67:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tm6000_flash_led(ptr noundef %1, i8 noundef zeroext 1) #9
  %15 = ptrtoint ptr %submit_urb10 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load69 = load i8, ptr %submit_urb10, align 8
  %bf.clear70 = and i8 %bf.load69, -97
  %bf.set71 = or i8 %bf.clear70, 32
  store i8 %bf.set71, ptr %submit_urb10, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %if.then54, %if.end46.cleanup_crit_edge, %do.end36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm6000_ir_start(ptr nocapture noundef readonly %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull @.str.46) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %work = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work, i32 noundef 0) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tm6000_ir_stop(ptr nocapture noundef readonly %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull @.str.47) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %work = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 5
  %call4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tm6000_ir_handle_key(ptr noundef %work) #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -76
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #9
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !138
  %3 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !138
  %wait = getelementptr i8, ptr %work, i32 100
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %wait, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %6 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp ugt i32 %6, 2
  br i1 %cmp, label %do.end, label %do.body.do.end7_crit_edge

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr i8, ptr %work, i32 -68
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull @.str.48) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %call9 = call i32 @tm6000_read_write_usb(ptr noundef %1, i8 noundef zeroext -64, i8 noundef zeroext 2, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf, i16 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end7.cleanup_crit_edge, label %if.end12

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %do.end7
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp13 = icmp eq i8 %8, -1
  br i1 %cmp13, label %if.then15, label %if.end24

if.then15:                                        ; preds = %if.end12
  %9 = ptrtoint ptr %wait to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load16 = load i8, ptr %wait, align 8
  %10 = and i8 %bf.load16, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool18.not = icmp eq i8 %10, 0
  br i1 %tobool18.not, label %if.then19, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  call void @tm6000_flash_led(ptr noundef %1, i8 noundef zeroext 1) #9
  %11 = ptrtoint ptr %wait to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load21 = load i8, ptr %wait, align 8
  %bf.clear22 = and i8 %bf.load21, -97
  %bf.set = or i8 %bf.clear22, 32
  store i8 %bf.set, ptr %wait, align 8
  br label %cleanup

if.end24:                                         ; preds = %if.end12
  %12 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call9, label %cond.true.i [
    i32 0, label %if.end24.tm6000_ir_keydown.exit_crit_edge
    i32 1, label %if.end24.cond.end.i_crit_edge
  ]

if.end24.cond.end.i_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

if.end24.tm6000_ir_keydown.exit_crit_edge:        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %tm6000_ir_keydown.exit

cond.true.i:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %3, align 1
  %phi.cast.i = zext i8 %14 to i32
  %phi.bo.i = shl nuw nsw i32 %phi.cast.i, 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end24.cond.end.i_crit_edge
  %cond.i = phi i32 [ %phi.bo.i, %cond.true.i ], [ 0, %if.end24.cond.end.i_crit_edge ]
  %rc_proto.i = getelementptr i8, ptr %work, i32 108
  %15 = ptrtoint ptr %rc_proto.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %rc_proto.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %16)
  %switch.selectcmp.i = icmp eq i64 %16, 512
  %switch.select.i = select i1 %switch.selectcmp.i, i32 9, i32 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %16)
  %switch.selectcmp36.i = icmp eq i64 %16, 4
  %switch.select37.i = select i1 %switch.selectcmp36.i, i32 2, i32 %switch.select.i
  %conv13.pn.i = zext i8 %8 to i32
  %scancode.0.i = or i32 %cond.i, %conv13.pn.i
  %17 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp15.not.i = icmp eq i32 %17, 0
  br i1 %cmp15.not.i, label %cond.end.i.do.end21.i_crit_edge, label %do.end.i

cond.end.i.do.end21.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i

do.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr i8, ptr %work, i32 -68
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name.i, ptr noundef nonnull @.str.29, i32 noundef %switch.select37.i, i32 noundef %scancode.0.i) #12
  br label %do.end21.i

do.end21.i:                                       ; preds = %do.end.i, %cond.end.i.do.end21.i_crit_edge
  %rc.i = getelementptr i8, ptr %work, i32 -72
  %18 = ptrtoint ptr %rc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rc.i, align 4
  %conv22.i = zext i32 %scancode.0.i to i64
  call void @rc_keydown(ptr noundef %19, i32 noundef %switch.select37.i, i64 noundef %conv22.i, i8 noundef zeroext 0) #9
  br label %tm6000_ir_keydown.exit

tm6000_ir_keydown.exit:                           ; preds = %do.end21.i, %if.end24.tm6000_ir_keydown.exit_crit_edge
  call void @tm6000_flash_led(ptr noundef %1, i8 noundef zeroext 0) #9
  %20 = ptrtoint ptr %wait to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load27 = load i8, ptr %wait, align 8
  %bf.clear28 = and i8 %bf.load27, -97
  store i8 %bf.clear28, ptr %wait, align 8
  %polling = getelementptr i8, ptr %work, i32 -4
  %21 = ptrtoint ptr %polling to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %polling, align 8
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %22) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %23 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %work, i32 noundef %call2.i) #9
  br label %cleanup

cleanup:                                          ; preds = %tm6000_ir_keydown.exit, %if.then19, %if.then15.cleanup_crit_edge, %do.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #9
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tm6000_ir_fini(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ir1 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %ir1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %do.end, label %do.body.do.end6_crit_edge

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull @.str.13) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %polling = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %polling to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %polling, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %if.then8, label %do.end6.if.end9_crit_edge

do.end6.if.end9_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %do.end6
  %rc = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rc, align 4
  %priv.i = getelementptr inbounds %struct.rc_dev, ptr %6, i32 0, i32 24
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then8.if.end9_crit_edge, label %lor.lhs.false.i

if.then8.if.end9_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

lor.lhs.false.i:                                  ; preds = %if.then8
  %int_urb.i = getelementptr inbounds %struct.tm6000_IR, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %int_urb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %int_urb.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end9_crit_edge, label %do.body.i

lor.lhs.false.i.if.end9_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.body.i:                                        ; preds = %lor.lhs.false.i
  %11 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp ugt i32 %11, 1
  br i1 %cmp.i, label %do.end.i, label %do.body.i.do.end6.i_crit_edge

do.body.i.do.end6.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.tm6000_IR, ptr %8, i32 0, i32 2
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name.i, ptr noundef nonnull @.str.30) #12
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %do.body.i.do.end6.i_crit_edge
  %12 = ptrtoint ptr %int_urb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %int_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #9
  %14 = ptrtoint ptr %int_urb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %int_urb.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %transfer_buffer.i, align 4
  tail call void @kfree(ptr noundef %17) #9
  %18 = ptrtoint ptr %int_urb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %int_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %19) #9
  %20 = ptrtoint ptr %int_urb.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %int_urb.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %do.end6.i, %lor.lhs.false.i.if.end9_crit_edge, %if.then8.if.end9_crit_edge, %do.end6.if.end9_crit_edge
  %rc10 = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %rc10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rc10, align 4
  %priv.i22 = getelementptr inbounds %struct.rc_dev, ptr %22, i32 0, i32 24
  %23 = ptrtoint ptr %priv.i22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv.i22, align 4
  %25 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i23 = icmp ugt i32 %25, 1
  br i1 %cmp.i23, label %do.end.i26, label %if.end9.tm6000_ir_stop.exit_crit_edge

if.end9.tm6000_ir_stop.exit_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %tm6000_ir_stop.exit

do.end.i26:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %name.i24 = getelementptr inbounds %struct.tm6000_IR, ptr %24, i32 0, i32 2
  %call.i25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name.i24, ptr noundef nonnull @.str.47) #12
  br label %tm6000_ir_stop.exit

tm6000_ir_stop.exit:                              ; preds = %do.end.i26, %if.end9.tm6000_ir_stop.exit_crit_edge
  %work.i = getelementptr inbounds %struct.tm6000_IR, ptr %24, i32 0, i32 5
  %call4.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work.i) #9
  tail call void @tm6000_flash_led(ptr noundef %dev, i8 noundef zeroext 0) #9
  %pwled = getelementptr inbounds %struct.tm6000_IR, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %pwled to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %pwled, align 8
  %bf.clear = and i8 %bf.load, -97
  store i8 %bf.clear, ptr %pwled, align 8
  %27 = ptrtoint ptr %rc10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rc10, align 4
  tail call void @rc_unregister_device(ptr noundef %28) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  %29 = ptrtoint ptr %ir1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %ir1, align 4
  br label %cleanup

cleanup:                                          ; preds = %tm6000_ir_stop.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tm6000_flash_led(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tm6000_ir_urb_received(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %ir1 = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %ir1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ir1, align 4
  %4 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.tm6000_IR, ptr %3, i32 0, i32 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull @.str.22) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5 = icmp slt i32 %6, 0
  br i1 %cmp5, label %do.end4.do.end10_crit_edge, label %lor.lhs.false

do.end4.do.end10_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

lor.lhs.false:                                    ; preds = %do.end4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %7 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %lor.lhs.false.do.end10_crit_edge, label %if.end17

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end10:                                         ; preds = %lor.lhs.false.do.end10_crit_edge, %do.end4.do.end10_crit_edge
  %actual_length13 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %9 = ptrtoint ptr %actual_length13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual_length13, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %6, i32 noundef %10) #12
  %submit_urb = getelementptr inbounds %struct.tm6000_IR, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %submit_urb to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %submit_urb, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %submit_urb, align 8
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %12 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end17.if.end20_crit_edge, label %if.then18

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %transfer_buffer, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %14, i32 noundef %8, i1 noundef zeroext false) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end17.if.end20_crit_edge
  %15 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %transfer_buffer, align 4
  %17 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i = icmp eq i32 %18, 0
  br i1 %cmp.i, label %if.end20.tm6000_ir_keydown.exit_crit_edge, label %if.end.i

if.end20.tm6000_ir_keydown.exit_crit_edge:        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %tm6000_ir_keydown.exit

if.end.i:                                         ; preds = %if.end20
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp1.not.i = icmp eq i32 %18, 1
  br i1 %cmp1.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.i = getelementptr i8, ptr %16, i32 1
  %21 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx2.i, align 1
  %phi.cast.i = zext i8 %22 to i32
  %phi.bo.i = shl nuw nsw i32 %phi.cast.i, 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %phi.bo.i, %cond.true.i ], [ 0, %if.end.i.cond.end.i_crit_edge ]
  %rc_proto.i = getelementptr inbounds %struct.tm6000_IR, ptr %3, i32 0, i32 8
  %23 = ptrtoint ptr %rc_proto.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rc_proto.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %24)
  %switch.selectcmp.i = icmp eq i64 %24, 512
  %switch.select.i = select i1 %switch.selectcmp.i, i32 9, i32 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %24)
  %switch.selectcmp36.i = icmp eq i64 %24, 4
  %switch.select37.i = select i1 %switch.selectcmp36.i, i32 2, i32 %switch.select.i
  %conv13.pn.i = zext i8 %20 to i32
  %scancode.0.i = or i32 %cond.i, %conv13.pn.i
  %25 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp15.not.i = icmp eq i32 %25, 0
  br i1 %cmp15.not.i, label %cond.end.i.do.end21.i_crit_edge, label %do.end.i

cond.end.i.do.end21.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i

do.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.tm6000_IR, ptr %3, i32 0, i32 2
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name.i, ptr noundef nonnull @.str.29, i32 noundef %switch.select37.i, i32 noundef %scancode.0.i) #12
  br label %do.end21.i

do.end21.i:                                       ; preds = %do.end.i, %cond.end.i.do.end21.i_crit_edge
  %rc.i = getelementptr inbounds %struct.tm6000_IR, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %rc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rc.i, align 4
  %conv22.i = zext i32 %scancode.0.i to i64
  tail call void @rc_keydown(ptr noundef %27, i32 noundef %switch.select37.i, i64 noundef %conv22.i, i8 noundef zeroext 0) #9
  br label %tm6000_ir_keydown.exit

tm6000_ir_keydown.exit:                           ; preds = %do.end21.i, %if.end20.tm6000_ir_keydown.exit_crit_edge
  %call23 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  %pwled = getelementptr inbounds %struct.tm6000_IR, ptr %3, i32 0, i32 6
  %28 = ptrtoint ptr %pwled to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load24 = load i8, ptr %pwled, align 8
  %bf.clear25 = and i8 %bf.load24, -97
  %bf.set26 = or i8 %bf.clear25, 64
  store i8 %bf.set26, ptr %pwled, align 8
  br label %cleanup

cleanup:                                          ; preds = %tm6000_ir_keydown.exit, %do.end10
  %.sink47 = phi i32 [ 1, %tm6000_ir_keydown.exit ], [ 10, %do.end10 ]
  %work27 = getelementptr inbounds %struct.tm6000_IR, ptr %3, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i46 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %work27, i32 noundef %.sink47) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_set_reg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_read_write_usb(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !36, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !70, !71, !73, !74, !75, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__param_ir_debug, !1, !"__param_ir_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_ir_debugtype303, !1, !"__UNIQUE_ID_ir_debugtype303", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_ir_debug304, !4, !"__UNIQUE_ID_ir_debug304", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 22, i32 1}
!5 = !{ptr @__param_enable_ir, !6, !"__param_enable_ir", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 25, i32 1}
!7 = !{ptr @__UNIQUE_ID_enable_irtype305, !6, !"__UNIQUE_ID_enable_irtype305", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_enable_ir306, !9, !"__UNIQUE_ID_enable_ir306", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 26, i32 1}
!10 = !{ptr @__param_ir_clock_mhz, !11, !"__param_ir_clock_mhz", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 29, i32 1}
!12 = !{ptr @__UNIQUE_ID_ir_clock_mhztype307, !11, !"__UNIQUE_ID_ir_clock_mhztype307", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_ir_clock_mhz308, !14, !"__UNIQUE_ID_ir_clock_mhz308", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 30, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 71, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @tm6000_ir_wait._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @tm6000_ir_wait._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 420, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tm6000_ir_init._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @tm6000_ir_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @tm6000_ir_init.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 436, i32 3}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @tm6000_ir_init.__key.6, !27, !"__key", i1 false, i1 false}
!30 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @tm6000_ir_init.__key.8, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 441, i32 3}
!33 = !{ptr @tm6000_ir_init.__key.9, !32, !"__key", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 444, i32 39}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 448, i32 20}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 460, i32 20}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 486, i32 2}
!42 = !{ptr @tm6000_ir_fini._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tm6000_ir_fini._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @ir_debug, !45, !"ir_debug", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 20, i32 21}
!46 = !{ptr @__param_str_ir_debug, !1, !"__param_str_ir_debug", i1 false, i1 false}
!47 = !{ptr @__param_str_enable_ir, !6, !"__param_str_enable_ir", i1 false, i1 false}
!48 = !{ptr @enable_ir, !49, !"enable_ir", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 24, i32 21}
!50 = !{ptr @__param_str_ir_clock_mhz, !11, !"__param_str_ir_clock_mhz", i1 false, i1 false}
!51 = !{ptr @ir_clock_mhz, !52, !"ir_clock_mhz", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 28, i32 21}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 333, i32 2}
!55 = !{ptr @__tm6000_ir_int_start._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @__tm6000_ir_int_start._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 344, i32 2}
!59 = !{ptr @__tm6000_ir_int_start._entry.15, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @__tm6000_ir_int_start._entry_ptr.17, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 351, i32 2}
!63 = !{ptr @__tm6000_ir_int_start._entry.18, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @__tm6000_ir_int_start._entry_ptr.20, !62, !"_entry_ptr", i1 false, i1 false}
!65 = distinct !{null, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 190, i32 2}
!69 = !{ptr @tm6000_ir_urb_received._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @tm6000_ir_urb_received._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 192, i32 3}
!73 = !{ptr @tm6000_ir_urb_received._entry.23, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @tm6000_ir_urb_received._entry_ptr.25, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 201, i32 18}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 201, i32 30}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 179, i32 2}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @tm6000_ir_keydown._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @tm6000_ir_keydown._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 371, i32 2}
!86 = !{ptr @__tm6000_ir_int_stop._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @__tm6000_ir_int_stop._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 313, i32 2}
!90 = !{ptr @tm6000_ir_change_protocol._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @tm6000_ir_change_protocol._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 84, i32 2}
!94 = !{ptr @tm6000_ir_config._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @tm6000_ir_config._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 115, i32 2}
!98 = !{ptr @tm6000_ir_config._entry.33, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @tm6000_ir_config._entry_ptr.35, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 257, i32 2}
!104 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @tm6000_ir_int_work._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @tm6000_ir_int_work._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 261, i32 3}
!109 = !{ptr @tm6000_ir_int_work._entry.40, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @tm6000_ir_int_work._entry_ptr.42, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 266, i32 4}
!113 = !{ptr @tm6000_ir_int_work._entry.43, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @tm6000_ir_int_work._entry_ptr.45, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 290, i32 2}
!117 = !{ptr @tm6000_ir_start._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @tm6000_ir_start._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 301, i32 2}
!121 = !{ptr @tm6000_ir_stop._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @tm6000_ir_stop._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/tm6000/tm6000-input.c", i32 226, i32 2}
!125 = !{ptr @tm6000_ir_handle_key._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @tm6000_ir_handle_key._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../include/linux/usb.h", i32 912, i32 31}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{!"auto-init"}
