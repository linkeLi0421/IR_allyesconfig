; ModuleID = '/llk/IR_all_yes/drivers/media/radio/radio-shark.c_pt.bc'
source_filename = "../drivers/media/radio/radio-shark.c"
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
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_tea575x_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.shark_device = type { ptr, %struct.v4l2_device, %struct.snd_tea575x, %struct.work_struct, [3 x %struct.led_classdev], [3 x [32 x i8]], [3 x %struct.atomic_t], i32, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.snd_tea575x = type { ptr, %struct.v4l2_file_operations, %struct.video_device, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.mutex, ptr, ptr, [32 x i8], [32 x i8], %struct.v4l2_ctrl_handler, ptr }
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

@__UNIQUE_ID_author297 = internal constant [55 x i8] c"radio_shark.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [70 x i8] c"radio_shark.description=Griffin radioSHARK, USB radio receiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [49 x i8] c"radio_shark.file=drivers/media/radio/radio-shark\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [24 x i8] c"radio_shark.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_radio_shark__301_419_usb_shark_driver_init6 = internal global ptr @usb_shark_driver_init, section ".initcall6.init", align 4
@usb_shark_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @usb_shark_probe, ptr @usb_shark_disconnect, ptr null, ptr @usb_shark_suspend, ptr @usb_shark_resume, ptr @usb_shark_resume, ptr null, ptr null, ptr @usb_shark_device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usb_shark_driver_exit = internal global ptr @usb_shark_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"radio_shark\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"radioshark\00", [21 x i8] zeroinitializer }, align 32
@usb_shark_device_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 143, i16 1917, i16 25210, i16 1, i16 1, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@shark_instance = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@usb_shark_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: couldn't register v4l2_device\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb_shark_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/radio/radio-shark.c\00", [62 x i8] zeroinitializer }, align 32
@usb_shark_probe._entry_ptr = internal global ptr @usb_shark_probe._entry, section ".printk_index", align 4
@shark_tea_ops = internal constant { %struct.snd_tea575x_ops, [44 x i8] } { %struct.snd_tea575x_ops { ptr @shark_write_val, ptr @shark_read_val, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Griffin radioSHARK\00", [45 x i8] zeroinitializer }, align 32
@usb_shark_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: couldn't init tea5757\0A\00", [35 x i8] zeroinitializer }, align 32
@usb_shark_probe._entry_ptr.8 = internal global ptr @usb_shark_probe._entry.6, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@shark_register_leds.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&shark->led_work)\00", [60 x i8] zeroinitializer }, align 32
@shark_led_templates = internal constant { [3 x %struct.led_classdev], [304 x i8] } { [3 x %struct.led_classdev] [%struct.led_classdev { ptr @.str.14, i32 0, i32 127, i32 0, i32 0, ptr @shark_led_set_blue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, i32 0, %struct.timer_list zeroinitializer, i32 0, i32 0, ptr null, %struct.work_struct zeroinitializer, i32 0, %struct.rw_semaphore zeroinitializer, ptr null, %struct.list_head zeroinitializer, ptr null, i8 0, ptr null, i32 0, ptr null, %struct.mutex zeroinitializer }, %struct.led_classdev { ptr @.str.15, i32 0, i32 255, i32 0, i32 0, ptr @shark_led_set_blue_pulse, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, i32 0, %struct.timer_list zeroinitializer, i32 0, i32 0, ptr null, %struct.work_struct zeroinitializer, i32 0, %struct.rw_semaphore zeroinitializer, ptr null, %struct.list_head zeroinitializer, ptr null, i8 0, ptr null, i32 0, ptr null, %struct.mutex zeroinitializer }, %struct.led_classdev { ptr @.str.16, i32 0, i32 1, i32 0, i32 0, ptr @shark_led_set_red, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, i32 0, %struct.timer_list zeroinitializer, i32 0, i32 0, ptr null, %struct.work_struct zeroinitializer, i32 0, %struct.rw_semaphore zeroinitializer, ptr null, %struct.list_head zeroinitializer, ptr null, i8 0, ptr null, i32 0, ptr null, %struct.mutex zeroinitializer }], [304 x i8] zeroinitializer }, align 32
@shark_register_leds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: couldn't register led: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"shark_register_leds\00", [44 x i8] zeroinitializer }, align 32
@shark_register_leds._entry_ptr = internal global ptr @shark_register_leds._entry, section ".printk_index", align 4
@shark_led_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: set LED %s error: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"shark_led_work\00", [17 x i8] zeroinitializer }, align 32
@shark_led_work._entry_ptr = internal global ptr @shark_led_work._entry, section ".printk_index", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s:blue:\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s:blue-pulse:\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s:red:\00", [24 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@shark_write_val._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: set-freq error: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"shark_write_val\00", [16 x i8] zeroinitializer }, align 32
@shark_write_val._entry_ptr = internal global ptr @shark_write_val._entry, section ".printk_index", align 4
@shark_read_val._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: request-status error: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"shark_read_val\00", [17 x i8] zeroinitializer }, align 32
@shark_read_val._entry_ptr = internal global ptr @shark_read_val._entry, section ".printk_index", align 4
@shark_read_val._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: get-status error: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@shark_read_val._entry_ptr.23 = internal global ptr @shark_read_val._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"usb_shark_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 408, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 419, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 409, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [23 x i8] c"usb_shark_device_table\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 395, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"shark_instance\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 78, i32 17 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 337, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [14 x i8] c"shark_tea_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 149, i32 37 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 348, i32 27 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 355, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 243, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [20 x i8] c"shark_led_templates\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 217, i32 34 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 251, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 177, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 219, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 225, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 231, i32 12 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 101, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 117, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.122 = private constant [37 x i8] c"../drivers/media/radio/radio-shark.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 126, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 912, i32 31 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_usb_shark_driver_exit, ptr @__initcall__kmod_radio_shark__301_419_usb_shark_driver_init6, ptr @shark_led_work._entry, ptr @shark_led_work._entry_ptr, ptr @shark_read_val._entry, ptr @shark_read_val._entry.21, ptr @shark_read_val._entry_ptr, ptr @shark_read_val._entry_ptr.23, ptr @shark_register_leds._entry, ptr @shark_register_leds._entry_ptr, ptr @shark_write_val._entry, ptr @shark_write_val._entry_ptr, ptr @usb_shark_driver_exit, ptr @usb_shark_probe._entry, ptr @usb_shark_probe._entry.6, ptr @usb_shark_probe._entry_ptr, ptr @usb_shark_probe._entry_ptr.8, ptr @usb_shark_driver, ptr @.str, ptr @.str.1, ptr @usb_shark_device_table, ptr @shark_instance, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @shark_tea_ops, ptr @.str.5, ptr @.str.7, ptr @shark_register_leds.__key, ptr @.str.9, ptr @shark_led_templates, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_shark_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_shark_device_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shark_instance to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_shark_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shark_tea_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_shark_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shark_register_leds.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shark_led_templates to i32), i32 1200, i32 1504, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shark_register_leds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shark_led_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shark_write_val._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shark_read_val._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shark_read_val._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
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
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 3272) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 6) #11
  %transfer_buffer = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 8
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %transfer_buffer, align 4
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
  %10 = call ptr @memcpy(ptr %arrayidx7.1.i, ptr getelementptr inbounds ([3 x %struct.led_classdev], ptr @shark_led_templates, i32 0, i32 1), i32 400)
  %arrayidx9.1.i = getelementptr %struct.shark_device, ptr %call7.i.i, i32 0, i32 5, i32 1
  %call.1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx9.1.i, i32 noundef 32, ptr noundef nonnull @.str.15, ptr noundef %name12.i) #8
  %11 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx9.1.i, ptr %arrayidx7.1.i, align 4
  %call.i.1.i = tail call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %arrayidx7.1.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.shark_register_leds.exit_crit_edge

for.cond.i.shark_register_leds.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %shark_register_leds.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx7.2.i = getelementptr %struct.shark_device, ptr %call7.i.i, i32 0, i32 4, i32 2
  %12 = call ptr @memcpy(ptr %arrayidx7.2.i, ptr getelementptr inbounds ([3 x %struct.led_classdev], ptr @shark_led_templates, i32 0, i32 2), i32 400)
  %arrayidx9.2.i = getelementptr %struct.shark_device, ptr %call7.i.i, i32 0, i32 5, i32 2
  %call.2.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx9.2.i, i32 noundef 32, ptr noundef nonnull @.str.16, ptr noundef %name12.i) #8
  %13 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx9.2.i, ptr %arrayidx7.2.i, align 4
  %call.i.2.i = tail call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %arrayidx7.2.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %tobool.not.2.i = icmp eq i32 %call.i.2.i, 0
  br i1 %tobool.not.2.i, label %if.end11, label %for.cond.1.i.shark_register_leds.exit_crit_edge

for.cond.1.i.shark_register_leds.exit_crit_edge:  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %shark_register_leds.exit

shark_register_leds.exit:                         ; preds = %for.cond.1.i.shark_register_leds.exit_crit_edge, %for.cond.i.shark_register_leds.exit_crit_edge, %if.end6.shark_register_leds.exit_crit_edge
  %arrayidx9.lcssa.i = phi ptr [ %arrayidx9.i, %if.end6.shark_register_leds.exit_crit_edge ], [ %arrayidx9.1.i, %for.cond.i.shark_register_leds.exit_crit_edge ], [ %arrayidx9.2.i, %for.cond.1.i.shark_register_leds.exit_crit_edge ]
  %call.i.lcssa.i = phi i32 [ %call.i.i, %if.end6.shark_register_leds.exit_crit_edge ], [ %call.i.1.i, %for.cond.i.shark_register_leds.exit_crit_edge ], [ %call.i.2.i, %for.cond.1.i.shark_register_leds.exit_crit_edge ]
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name12.i, ptr noundef %arrayidx9.lcssa.i) #12
  br label %err_reg_leds

if.end11:                                         ; preds = %for.cond.1.i
  %release = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 1, i32 9
  %14 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %14)
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
  %15 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %16, i32 -128
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %tea = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %tea to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %v4l2_dev, ptr %tea, align 8
  %private_data = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 2, i32 16
  %19 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %private_data, align 8
  %radio_nr = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %radio_nr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %radio_nr, align 8
  %ops = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 2, i32 15
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @shark_tea_ops, ptr %ops, align 4
  %cannot_mute = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 2, i32 7
  %22 = ptrtoint ptr %cannot_mute to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %cannot_mute, align 1
  %has_am = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 2, i32 5
  %23 = ptrtoint ptr %has_am to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %has_am, align 1
  %card = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 2, i32 17
  %call31 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.5, i32 noundef 32) #8
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call7.i.i, align 8
  %bus_info = getelementptr inbounds %struct.shark_device, ptr %call7.i.i, i32 0, i32 2, i32 18
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 1
  %call.i83 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.24, ptr noundef %29, ptr noundef %devpath.i) #8
  %call37 = tail call i32 @snd_tea575x_init(ptr noundef %tea, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end20.cleanup_crit_edge, label %do.end42

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end42:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name12.i) #12
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #8
  br label %err_reg_dev

err_reg_dev:                                      ; preds = %do.end42, %do.end
  %retval1.0 = phi i32 [ %call15, %do.end ], [ %call37, %do.end42 ]
  tail call fastcc void @shark_unregister_leds(ptr noundef nonnull %call7.i.i)
  br label %err_reg_leds

err_reg_leds:                                     ; preds = %err_reg_dev, %shark_register_leds.exit
  %retval1.1 = phi i32 [ %call.i.lcssa.i, %shark_register_leds.exit ], [ %retval1.0, %err_reg_dev ]
  %30 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %31) #8
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
  %mutex = getelementptr i8, ptr %1, i32 1548
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @v4l2_device_disconnect(ptr noundef %1) #8
  tail call void @snd_tea575x_exit(ptr noundef %tea) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %arrayidx.i = getelementptr i8, ptr %1, i32 1944
  tail call void @led_classdev_unregister(ptr noundef %arrayidx.i) #8
  %arrayidx.1.i = getelementptr i8, ptr %1, i32 2344
  tail call void @led_classdev_unregister(ptr noundef %arrayidx.1.i) #8
  %arrayidx.2.i = getelementptr i8, ptr %1, i32 2744
  tail call void @led_classdev_unregister(ptr noundef %arrayidx.2.i) #8
  %led_work.i = getelementptr i8, ptr %1, i32 1900
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
  %mutex = getelementptr i8, ptr %1, i32 1548
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @snd_tea575x_set_freq(ptr noundef %tea) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %brightness_new.i = getelementptr i8, ptr %1, i32 3252
  %2 = ptrtoint ptr %brightness_new.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %brightness_new.i, align 4
  %4 = lshr i32 %3, 4
  %.lobit.i = and i32 %4, 1
  tail call void @_set_bit(i32 noundef %.lobit.i, ptr noundef %brightness_new.i) #8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %brightness_new.i) #8
  %led_work.i = getelementptr i8, ptr %1, i32 1900
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %led_work.i) #8
  ret i32 0
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
  %transfer_buffer = getelementptr i8, ptr %v4l2_dev, i32 3256
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 4
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
declare dso_local i32 @snd_tea575x_init(ptr noundef, ptr noundef) local_unnamed_addr #1

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
  %arrayidx.2 = getelementptr %struct.shark_device, ptr %shark, i32 0, i32 4, i32 2
  tail call void @led_classdev_unregister(ptr noundef %arrayidx.2) #8
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
  %add.ptr = getelementptr i8, ptr %work, i32 -1904
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len) #8
  %0 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual_len, align 4, !annotation !79
  %brightness_new = getelementptr i8, ptr %work, i32 1352
  %transfer_buffer = getelementptr i8, ptr %work, i32 1356
  %name = getelementptr i8, ptr %work, i32 -1840
  %led_names = getelementptr i8, ptr %work, i32 1244
  %call = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %brightness_new) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end14

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end14:                                         ; preds = %entry
  %brightness1 = getelementptr i8, ptr %work, i32 1340
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %brightness1, i32 noundef 4) #8
  %1 = ptrtoint ptr %brightness1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %brightness1, align 4
  %3 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %transfer_buffer, align 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 6)
  %6 = load ptr, ptr %transfer_buffer, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -96, ptr %6, align 1
  %conv7 = trunc i32 %2 to i8
  %8 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx9 = getelementptr i8, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv7, ptr %arrayidx9, align 1
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i = shl i32 %13, 8
  %or = or i32 %shl.i, 1073905664
  %14 = load ptr, ptr %transfer_buffer, align 4
  %call18 = call i32 @usb_interrupt_msg(ptr noundef %11, i32 noundef %or, ptr noundef %14, i32 noundef 6, ptr noundef nonnull %actual_len, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef %led_names, i32 noundef %call18) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end14.for.inc_crit_edge, %entry.for.inc_crit_edge
  %call.1 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %brightness_new) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end14.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end14.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr i8, ptr %work, i32 1344
  %call.i.i.1 = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.1, i32 noundef 4) #8
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.1, align 4
  %17 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %transfer_buffer, align 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 6)
  %20 = load ptr, ptr %transfer_buffer, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -95, ptr %20, align 1
  %conv7.1 = trunc i32 %16 to i8
  %22 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx9.1 = getelementptr i8, ptr %22, i32 1
  %23 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv7.1, ptr %arrayidx9.1, align 1
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.1 = shl i32 %27, 8
  %or.1 = or i32 %shl.i.1, 1073905664
  %28 = load ptr, ptr %transfer_buffer, align 4
  %call18.1 = call i32 @usb_interrupt_msg(ptr noundef %25, i32 noundef %or.1, ptr noundef %28, i32 noundef 6, ptr noundef nonnull %actual_len, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.1)
  %cmp19.1 = icmp slt i32 %call18.1, 0
  br i1 %cmp19.1, label %do.end.1, label %if.end14.1.for.inc.1_crit_edge

if.end14.1.for.inc.1_crit_edge:                   ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

do.end.1:                                         ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx23.1 = getelementptr i8, ptr %work, i32 1276
  %call25.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef %arrayidx23.1, i32 noundef %call18.1) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end.1, %if.end14.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %call.2 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %brightness_new) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end14.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.end14.2:                                       ; preds = %for.inc.1
  %arrayidx.2 = getelementptr i8, ptr %work, i32 1348
  %call.i.i.2 = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.2, i32 noundef 4) #8
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.2, align 4
  %31 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %transfer_buffer, align 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool10.not.2 = icmp eq i32 %30, 0
  %conv11.2 = select i1 %tobool10.not.2, i8 -88, i8 -87
  %34 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %transfer_buffer, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv11.2, ptr %35, align 1
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 8
  %shl.i.2 = shl i32 %40, 8
  %or.2 = or i32 %shl.i.2, 1073905664
  %41 = load ptr, ptr %transfer_buffer, align 4
  %call18.2 = call i32 @usb_interrupt_msg(ptr noundef %38, i32 noundef %or.2, ptr noundef %41, i32 noundef 6, ptr noundef nonnull %actual_len, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.2)
  %cmp19.2 = icmp slt i32 %call18.2, 0
  br i1 %cmp19.2, label %do.end.2, label %if.end14.2.for.inc.2_crit_edge

if.end14.2.for.inc.2_crit_edge:                   ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

do.end.2:                                         ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx23.2 = getelementptr i8, ptr %work, i32 1308
  %call25.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef %arrayidx23.2, i32 noundef %call18.2) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end.2, %if.end14.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
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
  %brightness = getelementptr i8, ptr %led_cdev, i32 1296
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %brightness, i32 noundef 4) #8
  %0 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 %value, ptr %brightness, align 4
  %brightness_new = getelementptr i8, ptr %led_cdev, i32 1308
  tail call void @_set_bit(i32 noundef 0, ptr noundef %brightness_new) #8
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %brightness_new) #8
  %led_work = getelementptr i8, ptr %led_cdev, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i5 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %led_work) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shark_led_set_blue_pulse(ptr noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %led_cdev, i32 900
  %sub = sub i32 256, %value
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 %sub, ptr %arrayidx, align 4
  %brightness_new = getelementptr i8, ptr %led_cdev, i32 908
  tail call void @_set_bit(i32 noundef 1, ptr noundef %brightness_new) #8
  tail call void @_set_bit(i32 noundef 4, ptr noundef %brightness_new) #8
  %led_work = getelementptr i8, ptr %led_cdev, i32 -444
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i5 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %led_work) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shark_led_set_red(ptr noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %led_cdev, i32 504
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 %value, ptr %arrayidx, align 4
  %brightness_new = getelementptr i8, ptr %led_cdev, i32 508
  tail call void @_set_bit(i32 noundef 2, ptr noundef %brightness_new) #8
  %led_work = getelementptr i8, ptr %led_cdev, i32 -844
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i3 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %led_work) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shark_write_val(ptr nocapture noundef readonly %tea, i32 noundef %val) #2 align 64 {
entry:
  %actual_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_tea575x, ptr %tea, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len) #8
  %2 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %actual_len, align 4, !annotation !79
  %last_val = getelementptr inbounds %struct.shark_device, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %last_val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_val, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %val)
  %cmp = icmp eq i32 %4, %val
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %transfer_buffer = getelementptr inbounds %struct.shark_device, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %transfer_buffer, align 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 6)
  %8 = load ptr, ptr %transfer_buffer, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -64, ptr %8, align 1
  %shr = lshr i32 %val, 24
  %10 = load ptr, ptr %transfer_buffer, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %13 = trunc i32 %shr to i8
  %conv5 = or i8 %12, %13
  store i8 %conv5, ptr %10, align 1
  %shr.1 = lshr i32 %val, 16
  %14 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx4.1 = getelementptr i8, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx4.1, align 1
  %17 = trunc i32 %shr.1 to i8
  %conv5.1 = or i8 %16, %17
  store i8 %conv5.1, ptr %arrayidx4.1, align 1
  %shr.2 = lshr i32 %val, 8
  %18 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx4.2 = getelementptr i8, ptr %18, i32 2
  %19 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx4.2, align 1
  %21 = trunc i32 %shr.2 to i8
  %conv5.2 = or i8 %20, %21
  store i8 %conv5.2, ptr %arrayidx4.2, align 1
  %22 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx4.3 = getelementptr i8, ptr %22, i32 3
  %23 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx4.3, align 1
  %25 = trunc i32 %val to i8
  %conv5.3 = or i8 %24, %25
  store i8 %conv5.3, ptr %arrayidx4.3, align 1
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i = shl i32 %29, 8
  %or7 = or i32 %shl.i, 1073905664
  %30 = load ptr, ptr %transfer_buffer, align 4
  %call9 = call i32 @usb_interrupt_msg(ptr noundef %27, i32 noundef %or7, ptr noundef %30, i32 noundef 6, ptr noundef nonnull %actual_len, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp10 = icmp sgt i32 %call9, -1
  br i1 %cmp10, label %if.then12, label %do.end

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %last_val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %val, ptr %last_val, align 8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.shark_device, ptr %1, i32 0, i32 1, i32 4
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name, i32 noundef %call9) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then12, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shark_read_val(ptr nocapture noundef readonly %tea) #2 align 64 {
entry:
  %actual_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_tea575x, ptr %tea, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len) #8
  %2 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %actual_len, align 4, !annotation !79
  %transfer_buffer = getelementptr inbounds %struct.shark_device, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %transfer_buffer, align 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 6)
  %6 = load ptr, ptr %transfer_buffer, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -128, ptr %6, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i = shl i32 %11, 8
  %or = or i32 %shl.i, 1073905664
  %12 = load ptr, ptr %transfer_buffer, align 4
  %call4 = call i32 @usb_interrupt_msg(ptr noundef %9, i32 noundef %or, ptr noundef %12, i32 noundef 6, ptr noundef nonnull %actual_len, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.shark_device, ptr %1, i32 0, i32 1, i32 4
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name, i32 noundef %call4) #12
  %last_val = getelementptr inbounds %struct.shark_device, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %last_val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_val, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i67 = shl i32 %18, 8
  %or10 = or i32 %shl.i67, 1078034560
  %19 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %transfer_buffer, align 4
  %call12 = call i32 @usb_interrupt_msg(ptr noundef %16, i32 noundef %or10, ptr noundef %20, i32 noundef 6, ptr noundef nonnull %actual_len, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %21 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %transfer_buffer, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv = zext i8 %24 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx27.1 = getelementptr i8, ptr %22, i32 1
  %25 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx27.1, align 1
  %conv.1 = zext i8 %26 to i32
  %shl.1 = shl nuw nsw i32 %conv.1, 16
  %or28.1 = or i32 %shl.1, %shl
  %arrayidx27.2 = getelementptr i8, ptr %22, i32 2
  %27 = ptrtoint ptr %arrayidx27.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx27.2, align 1
  %conv.2 = zext i8 %28 to i32
  %shl.2 = shl nuw nsw i32 %conv.2, 8
  %or28.2 = or i32 %shl.2, %or28.1
  %arrayidx27.3 = getelementptr i8, ptr %22, i32 3
  %29 = ptrtoint ptr %arrayidx27.3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx27.3, align 1
  %conv.3 = zext i8 %30 to i32
  %or28.3 = or i32 %or28.2, %conv.3
  %last_val29 = getelementptr inbounds %struct.shark_device, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %last_val29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or28.3, ptr %last_val29, align 8
  %32 = and i32 %conv.1, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %33 = icmp eq i32 %32, 0
  %stereo = getelementptr inbounds %struct.shark_device, ptr %1, i32 0, i32 2, i32 9
  br i1 %33, label %if.then33, label %if.else

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name20 = getelementptr inbounds %struct.shark_device, ptr %1, i32 0, i32 1, i32 4
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name20, i32 noundef %call12) #12
  %last_val23 = getelementptr inbounds %struct.shark_device, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %last_val23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %last_val23, align 8
  br label %cleanup

if.then33:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %stereo to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %stereo, align 1
  br label %cleanup

if.else:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %stereo to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %stereo, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then33, %do.end17, %do.end
  %retval.0 = phi i32 [ %14, %do.end ], [ %35, %do.end17 ], [ %or28.3, %if.else ], [ %or28.3, %if.then33 ]
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
declare dso_local void @snd_tea575x_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_tea575x_set_freq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !25, !26, !27, !29, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__UNIQUE_ID_author297, !1, !"__UNIQUE_ID_author297", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/radio-shark.c", i32 42, i32 1}
!2 = !{ptr @__UNIQUE_ID_description298, !3, !"__UNIQUE_ID_description298", i1 false, i1 false}
!3 = !{!"../drivers/media/radio/radio-shark.c", i32 43, i32 1}
!4 = !{ptr @__UNIQUE_ID_file299, !5, !"__UNIQUE_ID_file299", i1 false, i1 false}
!5 = !{!"../drivers/media/radio/radio-shark.c", i32 44, i32 1}
!6 = !{ptr @__UNIQUE_ID_license300, !5, !"__UNIQUE_ID_license300", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_radio_shark__301_419_usb_shark_driver_init6, !8, !"__initcall__kmod_radio_shark__301_419_usb_shark_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/radio/radio-shark.c", i32 419, i32 1}
!9 = !{ptr @__exitcall_usb_shark_driver_exit, !8, !"__exitcall_usb_shark_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/radio/radio-shark.c", i32 409, i32 12}
!13 = !{ptr @usb_shark_driver, !14, !"usb_shark_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/radio/radio-shark.c", i32 408, i32 26}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/radio/radio-shark.c", i32 337, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @usb_shark_probe._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @usb_shark_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/radio/radio-shark.c", i32 348, i32 27}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/radio/radio-shark.c", i32 355, i32 3}
!25 = !{ptr @usb_shark_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @usb_shark_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @shark_instance, !28, !"shark_instance", i1 false, i1 false}
!28 = !{!"../drivers/media/radio/radio-shark.c", i32 78, i32 17}
!29 = !{ptr @shark_register_leds.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/media/radio/radio-shark.c", i32 243, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/radio/radio-shark.c", i32 251, i32 4}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @shark_register_leds._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @shark_register_leds._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/radio/radio-shark.c", i32 177, i32 4}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @shark_led_work._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @shark_led_work._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/radio/radio-shark.c", i32 219, i32 12}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/radio/radio-shark.c", i32 225, i32 12}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/radio/radio-shark.c", i32 231, i32 12}
!48 = !{ptr @shark_led_templates, !49, !"shark_led_templates", i1 false, i1 false}
!49 = !{!"../drivers/media/radio/radio-shark.c", i32 217, i32 34}
!50 = !{ptr @shark_tea_ops, !51, !"shark_tea_ops", i1 false, i1 false}
!51 = !{!"../drivers/media/radio/radio-shark.c", i32 149, i32 37}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/radio/radio-shark.c", i32 101, i32 3}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @shark_write_val._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @shark_write_val._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/radio/radio-shark.c", i32 117, i32 3}
!59 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @shark_read_val._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @shark_read_val._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/radio/radio-shark.c", i32 126, i32 3}
!64 = !{ptr @shark_read_val._entry.21, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @shark_read_val._entry_ptr.23, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/usb.h", i32 912, i32 31}
!68 = !{ptr @usb_shark_device_table, !69, !"usb_shark_device_table", i1 false, i1 false}
!69 = !{!"../drivers/media/radio/radio-shark.c", i32 395, i32 35}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"auto-init"}
