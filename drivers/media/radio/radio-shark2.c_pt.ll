; ModuleID = '/llk/IR_all_yes/drivers/media/radio/radio-shark2.c_pt.bc'
source_filename = "../drivers/media/radio/radio-shark2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.radio_tea5777_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.shark_device = type { ptr, %struct.v4l2_device, %struct.radio_tea5777, %struct.work_struct, [2 x %struct.led_classdev], [2 x [32 x i8]], [2 x %struct.atomic_t], i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.radio_tea5777 = type { ptr, %struct.v4l2_file_operations, %struct.video_device, i8, i8, i8, i32, i32, i32, i32, i32, i32, i64, %struct.mutex, ptr, ptr, [32 x i8], [32 x i8], %struct.v4l2_ctrl_handler }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }

@__UNIQUE_ID_author297 = internal constant [50 x i8] c"shark2.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [66 x i8] c"shark2.description=Griffin radioSHARK2, USB radio receiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [39 x i8] c"shark2.file=drivers/media/radio/shark2\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [19 x i8] c"shark2.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [13 x i8] c"shark2.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype301 = internal constant [26 x i8] c"shark2.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug302 = internal constant [36 x i8] c"shark2.parm=debug:Debug level (0-1)\00", section ".modinfo", align 1
@__initcall__kmod_shark2__303_385_usb_shark_driver_init6 = internal global ptr @usb_shark_driver_init, section ".initcall6.init", align 4
@usb_shark_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @usb_shark_probe, ptr @usb_shark_disconnect, ptr null, ptr @usb_shark_suspend, ptr @usb_shark_resume, ptr @usb_shark_resume, ptr null, ptr null, ptr @usb_shark_device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usb_shark_driver_exit = internal global ptr @usb_shark_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"shark2\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"radioshark2\00", [20 x i8] zeroinitializer }, align 32
@usb_shark_device_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 143, i16 1917, i16 25210, i16 16, i16 16, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@shark_instance = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@usb_shark_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: couldn't register v4l2_device\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb_shark_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/radio/radio-shark2.c\00", [61 x i8] zeroinitializer }, align 32
@usb_shark_probe._entry_ptr = internal global ptr @usb_shark_probe._entry, section ".printk_index", align 4
@shark_tea_ops = internal constant { %struct.radio_tea5777_ops, [24 x i8] } { %struct.radio_tea5777_ops { ptr @shark_write_reg, ptr @shark_read_reg }, [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Griffin radioSHARK2\00", [44 x i8] zeroinitializer }, align 32
@usb_shark_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: couldn't init tea5777\0A\00", [35 x i8] zeroinitializer }, align 32
@usb_shark_probe._entry_ptr.8 = internal global ptr @usb_shark_probe._entry.6, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@shark_register_leds.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&shark->led_work)\00", [60 x i8] zeroinitializer }, align 32
@shark_led_templates = internal constant { [2 x %struct.led_classdev], [192 x i8] } { [2 x %struct.led_classdev] [%struct.led_classdev { ptr @.str.14, i32 0, i32 127, i32 0, i32 0, ptr @shark_led_set_blue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, i32 0, %struct.timer_list zeroinitializer, i32 0, i32 0, ptr null, %struct.work_struct zeroinitializer, i32 0, %struct.rw_semaphore zeroinitializer, ptr null, %struct.list_head zeroinitializer, ptr null, i8 0, ptr null, i32 0, ptr null, %struct.mutex zeroinitializer }, %struct.led_classdev { ptr @.str.15, i32 0, i32 1, i32 0, i32 0, ptr @shark_led_set_red, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, i32 0, %struct.timer_list zeroinitializer, i32 0, i32 0, ptr null, %struct.work_struct zeroinitializer, i32 0, %struct.rw_semaphore zeroinitializer, ptr null, %struct.list_head zeroinitializer, ptr null, i8 0, ptr null, i32 0, ptr null, %struct.mutex zeroinitializer }], [192 x i8] zeroinitializer }, align 32
@shark_register_leds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: couldn't register led: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"shark_register_leds\00", [44 x i8] zeroinitializer }, align 32
@shark_register_leds._entry_ptr = internal global ptr @shark_register_leds._entry, section ".printk_index", align 4
@shark_led_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: set LED %s error: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"shark_led_work\00", [17 x i8] zeroinitializer }, align 32
@shark_led_work._entry_ptr = internal global ptr @shark_led_work._entry, section ".printk_index", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s:blue:\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s:red:\00", [24 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@shark_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: shark2-write: %*ph\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"shark_write_reg\00", [16 x i8] zeroinitializer }, align 32
@shark_write_reg._entry_ptr = internal global ptr @shark_write_reg._entry, section ".printk_index", align 4
@shark_write_reg._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: write error: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@shark_write_reg._entry_ptr.20 = internal global ptr @shark_write_reg._entry.18, section ".printk_index", align 4
@shark_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: request-read error: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"shark_read_reg\00", [17 x i8] zeroinitializer }, align 32
@shark_read_reg._entry_ptr = internal global ptr @shark_read_reg._entry, section ".printk_index", align 4
@shark_read_reg._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: read error: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@shark_read_reg._entry_ptr.25 = internal global ptr @shark_read_reg._entry.23, section ".printk_index", align 4
@shark_read_reg._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.4, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: shark2-read: %*ph\0A\00", [39 x i8] zeroinitializer }, align 32
@shark_read_reg._entry_ptr.28 = internal global ptr @shark_read_reg._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 43, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"usb_shark_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 374, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 385, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 375, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [23 x i8] c"usb_shark_device_table\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 361, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"shark_instance\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 73, i32 17 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 303, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"shark_tea_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 136, i32 39 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 313, i32 27 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 320, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 209, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [20 x i8] c"shark_led_templates\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 189, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 217, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 162, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 191, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 197, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 85, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 93, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 113, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 122, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private constant [38 x i8] c"../drivers/media/radio/radio-shark2.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 129, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 912, i32 31 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_debug302, ptr @__UNIQUE_ID_debugtype301, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_usb_shark_driver_exit, ptr @__initcall__kmod_shark2__303_385_usb_shark_driver_init6, ptr @__param_debug, ptr @shark_led_work._entry, ptr @shark_led_work._entry_ptr, ptr @shark_read_reg._entry, ptr @shark_read_reg._entry.23, ptr @shark_read_reg._entry.26, ptr @shark_read_reg._entry_ptr, ptr @shark_read_reg._entry_ptr.25, ptr @shark_read_reg._entry_ptr.28, ptr @shark_register_leds._entry, ptr @shark_register_leds._entry_ptr, ptr @shark_write_reg._entry, ptr @shark_write_reg._entry.18, ptr @shark_write_reg._entry_ptr, ptr @shark_write_reg._entry_ptr.20, ptr @usb_shark_driver_exit, ptr @usb_shark_probe._entry, ptr @usb_shark_probe._entry.6, ptr @usb_shark_probe._entry_ptr, ptr @usb_shark_probe._entry_ptr.8, ptr @debug, ptr @usb_shark_driver, ptr @.str, ptr @.str.1, ptr @usb_shark_device_table, ptr @shark_instance, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @shark_tea_ops, ptr @.str.5, ptr @.str.7, ptr @shark_register_leds.__key, ptr @.str.9, ptr @shark_led_templates, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_shark_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_shark_device_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shark_instance to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_shark_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shark_tea_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_shark_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shark_register_leds.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shark_led_templates to i32), i32 800, i32 992, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shark_register_leds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shark_led_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shark_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shark_write_reg._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shark_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shark_read_reg._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shark_read_reg._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_shark_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @usb_shark_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_shark_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @usb_shark_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_shark_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2848) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 7) #11
  %transfer_buffer = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 8
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %transfer_buffer, align 8
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.end.err_alloc_buffer_crit_edge, label %if.end6

if.end.err_alloc_buffer_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_alloc_buffer

if.end6:                                          ; preds = %if.end
  %v4l2_dev = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 1
  %call7 = tail call i32 @v4l2_device_set_name(ptr noundef %v4l2_dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @shark_instance) #8
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %brightness.i = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %brightness.i, i32 noundef 4) #8
  %3 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 127, ptr %brightness.i, align 4
  %led_work.i = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %led_work.i, i32 noundef 0) #8
  %4 = ptrtoint ptr %led_work.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %led_work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @shark_register_leds.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry5.i = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry5.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @shark_led_work, ptr %func.i, align 4
  %name12.i = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 1, i32 4
  %arrayidx7.i = getelementptr %struct.shark_device, ptr %call7.i.i, i32 0, i32 4, i32 0
  %8 = call ptr @memcpy(ptr %arrayidx7.i, ptr @shark_led_templates, i32 400)
  %arrayidx9.i = getelementptr %struct.shark_device, ptr %call7.i.i, i32 0, i32 5, i32 0
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx9.i, i32 noundef 32, ptr noundef nonnull @.str.14, ptr noundef %name12.i) #8
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx9.i, ptr %arrayidx7.i, align 4
  %call.i.i = tail call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %arrayidx7.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.end6.shark_register_leds.exit_crit_edge

if.end6.shark_register_leds.exit_crit_edge:       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %shark_register_leds.exit

for.cond.i:                                       ; preds = %if.end6
  %arrayidx7.1.i = getelementptr %struct.shark_device, ptr %call7.i.i, i32 0, i32 4, i32 1
  %10 = call ptr @memcpy(ptr %arrayidx7.1.i, ptr getelementptr inbounds ([2 x %struct.led_classdev], ptr @shark_led_templates, i32 0, i32 1), i32 400)
  %arrayidx9.1.i = getelementptr %struct.shark_device, ptr %call7.i.i, i32 0, i32 5, i32 1
  %call.1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx9.1.i, i32 noundef 32, ptr noundef nonnull @.str.15, ptr noundef %name12.i) #8
  %11 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx9.1.i, ptr %arrayidx7.1.i, align 4
  %call.i.1.i = tail call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %arrayidx7.1.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.1.i, label %if.end11, label %for.cond.i.shark_register_leds.exit_crit_edge

for.cond.i.shark_register_leds.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %shark_register_leds.exit

shark_register_leds.exit:                         ; preds = %for.cond.i.shark_register_leds.exit_crit_edge, %if.end6.shark_register_leds.exit_crit_edge
  %arrayidx9.lcssa.i = phi ptr [ %arrayidx9.i, %if.end6.shark_register_leds.exit_crit_edge ], [ %arrayidx9.1.i, %for.cond.i.shark_register_leds.exit_crit_edge ]
  %call.i.lcssa.i = phi i32 [ %call.i.i, %if.end6.shark_register_leds.exit_crit_edge ], [ %call.i.1.i, %for.cond.i.shark_register_leds.exit_crit_edge ]
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name12.i, ptr noundef %arrayidx9.lcssa.i) #12
  br label %err_reg_leds

if.end11:                                         ; preds = %for.cond.i
  %release = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 1, i32 9
  %12 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @usb_shark_release, ptr %release, align 8
  %call15 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef %v4l2_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end20, label %do.end

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name12.i) #12
  br label %err_reg_dev

if.end20:                                         ; preds = %if.end11
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 -128
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %tea = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %tea to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %v4l2_dev, ptr %tea, align 8
  %private_data = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 2, i32 15
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %private_data, align 8
  %ops = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 2, i32 14
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @shark_tea_ops, ptr %ops, align 4
  %has_am = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %has_am to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %has_am, align 8
  %write_before_read = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %write_before_read to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %write_before_read, align 1
  %card = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 2, i32 16
  %call30 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.5, i32 noundef 32) #8
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call7.i.i, align 8
  %bus_info = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 2, i32 17
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 1
  %call.i81 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.29, ptr noundef %26, ptr noundef %devpath.i) #8
  %call36 = tail call i32 @radio_tea5777_init(ptr noundef %tea, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end20.cleanup_crit_edge, label %do.end41

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end41:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name12.i) #12
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #8
  br label %err_reg_dev

err_reg_dev:                                      ; preds = %do.end41, %do.end
  %retval1.0 = phi i32 [ %call15, %do.end ], [ %call36, %do.end41 ]
  tail call fastcc void @shark_unregister_leds(ptr noundef nonnull %call7.i.i)
  br label %err_reg_leds

err_reg_leds:                                     ; preds = %err_reg_dev, %shark_register_leds.exit
  %retval1.1 = phi i32 [ %call.i.lcssa.i, %shark_register_leds.exit ], [ %retval1.0, %err_reg_dev ]
  %27 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %transfer_buffer, align 8
  tail call void @kfree(ptr noundef %28) #8
  br label %err_alloc_buffer

err_alloc_buffer:                                 ; preds = %err_reg_leds, %if.end.err_alloc_buffer_crit_edge
  %retval1.2 = phi i32 [ %retval1.1, %err_reg_leds ], [ -12, %if.end.err_alloc_buffer_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_alloc_buffer, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.2, %err_alloc_buffer ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_shark_disconnect(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tea = getelementptr i8, ptr %1, i32 132
  %mutex = getelementptr i8, ptr %1, i32 1564
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @v4l2_device_disconnect(ptr noundef %1) #8
  tail call void @radio_tea5777_exit(ptr noundef %tea) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %arrayidx.i = getelementptr i8, ptr %1, i32 1960
  tail call void @led_classdev_unregister(ptr noundef %arrayidx.i) #8
  %arrayidx.1.i = getelementptr i8, ptr %1, i32 2360
  tail call void @led_classdev_unregister(ptr noundef %arrayidx.1.i) #8
  %led_work.i = getelementptr i8, ptr %1, i32 1916
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %led_work.i) #8
  %call6 = tail call i32 @v4l2_device_put(ptr noundef %1) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usb_shark_suspend(ptr nocapture noundef readnone %intf, [1 x i32] %message.coerce) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_shark_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tea = getelementptr i8, ptr %1, i32 132
  %mutex = getelementptr i8, ptr %1, i32 1564
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call2 = tail call i32 @radio_tea5777_set_freq(ptr noundef %tea) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %brightness_new.i = getelementptr i8, ptr %1, i32 2832
  tail call void @_set_bit(i32 noundef 0, ptr noundef %brightness_new.i) #8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %brightness_new.i) #8
  %led_work.i = getelementptr i8, ptr %1, i32 1916
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %led_work.i) #8
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_set_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_shark_release(ptr noundef %v4l2_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %v4l2_dev, i32 -4
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #8
  %transfer_buffer = getelementptr i8, ptr %v4l2_dev, i32 2836
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 8
  tail call void @kfree(ptr noundef %1) #8
  tail call void @kfree(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radio_tea5777_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @shark_unregister_leds(ptr noundef %shark) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.shark_device, ptr %shark, i32 0, i32 4, i32 0
  tail call void @led_classdev_unregister(ptr noundef %arrayidx) #8
  %arrayidx.1 = getelementptr %struct.shark_device, ptr %shark, i32 0, i32 4, i32 1
  tail call void @led_classdev_unregister(ptr noundef %arrayidx.1) #8
  %led_work = getelementptr inbounds %struct.shark_device, ptr %shark, i32 0, i32 3
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %led_work) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shark_led_work(ptr noundef %work) #2 align 64 {
entry:
  %actual_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1920
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len) #8
  %0 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual_len, align 4, !annotation !93
  %brightness_new = getelementptr i8, ptr %work, i32 916
  %transfer_buffer = getelementptr i8, ptr %work, i32 920
  %name = getelementptr i8, ptr %work, i32 -1856
  %led_names = getelementptr i8, ptr %work, i32 844
  %call = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %brightness_new) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %entry
  %brightness1 = getelementptr i8, ptr %work, i32 908
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %brightness1, i32 noundef 4) #8
  %1 = ptrtoint ptr %brightness1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %brightness1, align 4
  %3 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %transfer_buffer, align 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 7)
  %6 = load ptr, ptr %transfer_buffer, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -125, ptr %6, align 1
  %conv5 = trunc i32 %2 to i8
  %8 = load ptr, ptr %transfer_buffer, align 8
  %arrayidx7 = getelementptr i8, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv5, ptr %arrayidx7, align 1
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i = shl i32 %13, 8
  %or = or i32 %shl.i, 1073905664
  %14 = load ptr, ptr %transfer_buffer, align 8
  %call11 = call i32 @usb_interrupt_msg(ptr noundef %11, i32 noundef %or, ptr noundef %14, i32 noundef 7, ptr noundef nonnull %actual_len, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef %led_names, i32 noundef %call11) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %call.1 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %brightness_new) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %arrayidx.1 = getelementptr i8, ptr %work, i32 912
  %call.i.i.1 = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.1, i32 noundef 4) #8
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.1, align 4
  %17 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %transfer_buffer, align 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 7)
  %20 = load ptr, ptr %transfer_buffer, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -124, ptr %20, align 1
  %conv5.1 = trunc i32 %16 to i8
  %22 = load ptr, ptr %transfer_buffer, align 8
  %arrayidx7.1 = getelementptr i8, ptr %22, i32 1
  %23 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv5.1, ptr %arrayidx7.1, align 1
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.1 = shl i32 %27, 8
  %or.1 = or i32 %shl.i.1, 1073905664
  %28 = load ptr, ptr %transfer_buffer, align 8
  %call11.1 = call i32 @usb_interrupt_msg(ptr noundef %25, i32 noundef %or.1, ptr noundef %28, i32 noundef 7, ptr noundef nonnull %actual_len, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.1)
  %cmp12.1 = icmp slt i32 %call11.1, 0
  br i1 %cmp12.1, label %do.end.1, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

do.end.1:                                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx16.1 = getelementptr i8, ptr %work, i32 876
  %call18.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef %arrayidx16.1, i32 noundef %call11.1) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end.1, %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len) #8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interrupt_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shark_led_set_blue(ptr noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %brightness = getelementptr i8, ptr %led_cdev, i32 864
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %brightness, i32 noundef 4) #8
  %0 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 %value, ptr %brightness, align 4
  %brightness_new = getelementptr i8, ptr %led_cdev, i32 872
  tail call void @_set_bit(i32 noundef 0, ptr noundef %brightness_new) #8
  %led_work = getelementptr i8, ptr %led_cdev, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i3 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %led_work) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shark_led_set_red(ptr noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %led_cdev, i32 468
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 %value, ptr %arrayidx, align 4
  %brightness_new = getelementptr i8, ptr %led_cdev, i32 472
  tail call void @_set_bit(i32 noundef 1, ptr noundef %brightness_new) #8
  %led_work = getelementptr i8, ptr %led_cdev, i32 -444
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i3 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %led_work) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shark_write_reg(ptr nocapture noundef readonly %tea, i64 noundef %reg) #2 align 64 {
entry:
  %actual_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 15
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len) #8
  %2 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %actual_len, align 4, !annotation !93
  %transfer_buffer = getelementptr inbounds %struct.shark_device, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %transfer_buffer, align 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 7)
  %6 = load ptr, ptr %transfer_buffer, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -127, ptr %6, align 1
  %shr = lshr i64 %reg, 40
  %conv = trunc i64 %shr to i8
  %8 = load ptr, ptr %transfer_buffer, align 8
  %arrayidx3 = getelementptr i8, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx3, align 1
  %shr.1 = lshr i64 %reg, 32
  %conv.1 = trunc i64 %shr.1 to i8
  %10 = load ptr, ptr %transfer_buffer, align 8
  %arrayidx3.1 = getelementptr i8, ptr %10, i32 2
  %11 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.1, ptr %arrayidx3.1, align 1
  %shr.2 = lshr i64 %reg, 24
  %conv.2 = trunc i64 %shr.2 to i8
  %12 = load ptr, ptr %transfer_buffer, align 8
  %arrayidx3.2 = getelementptr i8, ptr %12, i32 3
  %13 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.2, ptr %arrayidx3.2, align 1
  %shr.3 = lshr i64 %reg, 16
  %conv.3 = trunc i64 %shr.3 to i8
  %14 = load ptr, ptr %transfer_buffer, align 8
  %arrayidx3.3 = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.3, ptr %arrayidx3.3, align 1
  %shr.4 = lshr i64 %reg, 8
  %conv.4 = trunc i64 %shr.4 to i8
  %16 = load ptr, ptr %transfer_buffer, align 8
  %arrayidx3.4 = getelementptr i8, ptr %16, i32 5
  %17 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.4, ptr %arrayidx3.4, align 1
  %conv.5 = trunc i64 %reg to i8
  %18 = load ptr, ptr %transfer_buffer, align 8
  %arrayidx3.5 = getelementptr i8, ptr %18, i32 6
  %19 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.5, ptr %arrayidx3.5, align 1
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp4 = icmp sgt i32 %20, 0
  br i1 %cmp4, label %do.end, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %tea to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tea, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %transfer_buffer, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name, i32 noundef 7, ptr noundef %24) #12
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i = shl i32 %28, 8
  %or = or i32 %shl.i, 1073905664
  %29 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %transfer_buffer, align 8
  %call13 = call i32 @usb_interrupt_msg(ptr noundef %26, i32 noundef %or, ptr noundef %30, i32 noundef 7, ptr noundef nonnull %actual_len, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end19, label %do.end9.cleanup_crit_edge

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end19:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %tea to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tea, align 8
  %name22 = getelementptr inbounds %struct.v4l2_device, ptr %32, i32 0, i32 4
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name22, i32 noundef %call13) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %do.end19 ], [ 0, %do.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shark_read_reg(ptr nocapture noundef readonly %tea, ptr nocapture noundef writeonly %reg_ret) #2 align 64 {
entry:
  %actual_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 15
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len) #8
  %2 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %actual_len, align 4, !annotation !93
  %transfer_buffer = getelementptr inbounds %struct.shark_device, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %transfer_buffer, align 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 7)
  %6 = load ptr, ptr %transfer_buffer, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -126, ptr %6, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i = shl i32 %11, 8
  %or = or i32 %shl.i, 1073905664
  %12 = load ptr, ptr %transfer_buffer, align 8
  %call4 = call i32 @usb_interrupt_msg(ptr noundef %9, i32 noundef %or, ptr noundef %12, i32 noundef 7, ptr noundef nonnull %actual_len, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %tea to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tea, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %14, i32 0, i32 4
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name, i32 noundef %call4) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i69 = shl i32 %18, 8
  %or10 = or i32 %shl.i69, 1078034560
  %19 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %transfer_buffer, align 8
  %call12 = call i32 @usb_interrupt_msg(ptr noundef %16, i32 noundef %or10, ptr noundef %20, i32 noundef 7, ptr noundef nonnull %actual_len, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %21 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %transfer_buffer, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv = zext i8 %24 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %arrayidx26.1 = getelementptr i8, ptr %22, i32 1
  %25 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx26.1, align 1
  %conv.1 = zext i8 %26 to i32
  %shl.1 = shl nuw nsw i32 %conv.1, 8
  %or27.1 = or i32 %shl.1, %shl
  %arrayidx26.2 = getelementptr i8, ptr %22, i32 2
  %27 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx26.2, align 1
  %conv.2 = zext i8 %28 to i32
  %or27.2 = or i32 %or27.1, %conv.2
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp29 = icmp sgt i32 %29, 0
  br i1 %cmp29, label %do.end34, label %for.cond.preheader.do.end43_crit_edge

for.cond.preheader.do.end43_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %tea to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tea, align 8
  %name20 = getelementptr inbounds %struct.v4l2_device, ptr %31, i32 0, i32 4
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name20, i32 noundef %call12) #12
  br label %cleanup

do.end34:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %tea to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tea, align 8
  %name37 = getelementptr inbounds %struct.v4l2_device, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %transfer_buffer, align 8
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name37, i32 noundef 3, ptr noundef %35) #12
  br label %do.end43

do.end43:                                         ; preds = %do.end34, %for.cond.preheader.do.end43_crit_edge
  %36 = ptrtoint ptr %reg_ret to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or27.2, ptr %reg_ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %do.end17, %do.end
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call12, %do.end17 ], [ 0, %do.end43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radio_tea5777_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radio_tea5777_set_freq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !18, !19, !21, !23, !25, !26, !27, !28, !29, !31, !33, !34, !35, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__UNIQUE_ID_author297, !1, !"__UNIQUE_ID_author297", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/radio-shark2.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_description298, !3, !"__UNIQUE_ID_description298", i1 false, i1 false}
!3 = !{!"../drivers/media/radio/radio-shark2.c", i32 40, i32 1}
!4 = !{ptr @__UNIQUE_ID_file299, !5, !"__UNIQUE_ID_file299", i1 false, i1 false}
!5 = !{!"../drivers/media/radio/radio-shark2.c", i32 41, i32 1}
!6 = !{ptr @__UNIQUE_ID_license300, !5, !"__UNIQUE_ID_license300", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/radio/radio-shark2.c", i32 44, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype301, !8, !"__UNIQUE_ID_debugtype301", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug302, !11, !"__UNIQUE_ID_debug302", i1 false, i1 false}
!11 = !{!"../drivers/media/radio/radio-shark2.c", i32 45, i32 1}
!12 = !{ptr @__initcall__kmod_shark2__303_385_usb_shark_driver_init6, !13, !"__initcall__kmod_shark2__303_385_usb_shark_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/radio/radio-shark2.c", i32 385, i32 1}
!14 = !{ptr @__exitcall_usb_shark_driver_exit, !13, !"__exitcall_usb_shark_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/radio/radio-shark2.c", i32 43, i32 12}
!17 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/radio/radio-shark2.c", i32 375, i32 12}
!21 = !{ptr @usb_shark_driver, !22, !"usb_shark_driver", i1 false, i1 false}
!22 = !{!"../drivers/media/radio/radio-shark2.c", i32 374, i32 26}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/radio/radio-shark2.c", i32 303, i32 3}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @usb_shark_probe._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @usb_shark_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/radio/radio-shark2.c", i32 313, i32 27}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/radio/radio-shark2.c", i32 320, i32 3}
!33 = !{ptr @usb_shark_probe._entry.6, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @usb_shark_probe._entry_ptr.8, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @shark_instance, !36, !"shark_instance", i1 false, i1 false}
!36 = !{!"../drivers/media/radio/radio-shark2.c", i32 73, i32 17}
!37 = !{ptr @shark_register_leds.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/media/radio/radio-shark2.c", i32 209, i32 2}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/radio/radio-shark2.c", i32 217, i32 4}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @shark_register_leds._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @shark_register_leds._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/radio/radio-shark2.c", i32 162, i32 4}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @shark_led_work._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @shark_led_work._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/radio/radio-shark2.c", i32 191, i32 12}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/radio/radio-shark2.c", i32 197, i32 12}
!54 = !{ptr @shark_led_templates, !55, !"shark_led_templates", i1 false, i1 false}
!55 = !{!"../drivers/media/radio/radio-shark2.c", i32 189, i32 34}
!56 = !{ptr @shark_tea_ops, !57, !"shark_tea_ops", i1 false, i1 false}
!57 = !{!"../drivers/media/radio/radio-shark2.c", i32 136, i32 39}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/radio/radio-shark2.c", i32 85, i32 2}
!60 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @shark_write_reg._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @shark_write_reg._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/radio/radio-shark2.c", i32 93, i32 3}
!65 = !{ptr @shark_write_reg._entry.18, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @shark_write_reg._entry_ptr.20, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/radio/radio-shark2.c", i32 113, i32 3}
!69 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @shark_read_reg._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @shark_read_reg._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/radio/radio-shark2.c", i32 122, i32 3}
!74 = !{ptr @shark_read_reg._entry.23, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @shark_read_reg._entry_ptr.25, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/radio/radio-shark2.c", i32 129, i32 2}
!78 = !{ptr @shark_read_reg._entry.26, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @shark_read_reg._entry_ptr.28, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/usb.h", i32 912, i32 31}
!82 = !{ptr @usb_shark_device_table, !83, !"usb_shark_device_table", i1 false, i1 false}
!83 = !{!"../drivers/media/radio/radio-shark2.c", i32 361, i32 35}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"auto-init"}
