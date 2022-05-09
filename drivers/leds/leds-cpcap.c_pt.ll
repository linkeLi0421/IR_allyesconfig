; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-cpcap.c_pt.bc'
source_filename = "../drivers/leds/leds-cpcap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpcap_led_info = type { i16, i16, i16, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cpcap_led = type { %struct.led_classdev, ptr, ptr, ptr, %struct.mutex, ptr, i8, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_leds_cpcap__288_222_cpcap_led_driver_init6 = internal global ptr @cpcap_led_driver_init, section ".initcall6.init", align 4
@cpcap_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cpcap_led_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cpcap_led_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cpcap_led_driver_exit = internal global ptr @cpcap_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [40 x i8] c"leds_cpcap.description=CPCAP LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [53 x i8] c"leds_cpcap.author=Sebastian Reichel <sre@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [40 x i8] c"leds_cpcap.file=drivers/leds/leds-cpcap\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"leds_cpcap.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cpcap-led\00", [22 x i8] zeroinitializer }, align 32
@cpcap_led_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,cpcap-led-red\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cpcap_led_red }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,cpcap-led-green\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cpcap_led_green }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,cpcap-led-blue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cpcap_led_blue }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,cpcap-led-adl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cpcap_led_adl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,cpcap-led-cp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cpcap_led_cp }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@cpcap_led_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 172, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unsupported LED\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cpcap_led_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/leds/leds-cpcap.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cpcap_led_probe._entry_ptr = internal global ptr @cpcap_led_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@cpcap_led_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 183, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Couldn't get regulator: %d\00", [37 x i8] zeroinitializer }, align 32
@cpcap_led_probe._entry_ptr.9 = internal global ptr @cpcap_led_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@cpcap_led_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't read LED label: %d\00", [36 x i8] zeroinitializer }, align 32
@cpcap_led_probe._entry_ptr.13 = internal global ptr @cpcap_led_probe._entry.11, section ".printk_index", align 4
@cpcap_led_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 197, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"regmap failed: %d\00", [46 x i8] zeroinitializer }, align 32
@cpcap_led_probe._entry_ptr.16 = internal global ptr @cpcap_led_probe._entry.14, section ".printk_index", align 4
@cpcap_led_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&led->update_lock\00", [46 x i8] zeroinitializer }, align 32
@cpcap_led_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Couldn't register LED: %d\00", [38 x i8] zeroinitializer }, align 32
@cpcap_led_probe._entry_ptr.20 = internal global ptr @cpcap_led_probe._entry.18, section ".printk_index", align 4
@cpcap_led_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.21, ptr @.str.3, i32 122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpcap_led_set\00", [18 x i8] zeroinitializer }, align 32
@cpcap_led_set._entry_ptr = internal global ptr @cpcap_led_set._entry, section ".printk_index", align 4
@cpcap_led_set._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.21, ptr @.str.3, i32 134, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@cpcap_led_set._entry_ptr.23 = internal global ptr @cpcap_led_set._entry.22, section ".printk_index", align 4
@cpcap_led_set_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 94, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"regulator failure: %d\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpcap_led_set_power\00", [44 x i8] zeroinitializer }, align 32
@cpcap_led_set_power._entry_ptr = internal global ptr @cpcap_led_set_power._entry, section ".printk_index", align 4
@cpcap_led_red = internal constant { %struct.cpcap_led_info, [22 x i8] } { %struct.cpcap_led_info { i16 4108, i16 1023, i16 31, i16 0, i16 0 }, [22 x i8] zeroinitializer }, align 32
@cpcap_led_green = internal constant { %struct.cpcap_led_info, [22 x i8] } { %struct.cpcap_led_info { i16 4112, i16 1023, i16 31, i16 0, i16 0 }, [22 x i8] zeroinitializer }, align 32
@cpcap_led_blue = internal constant { %struct.cpcap_led_info, [22 x i8] } { %struct.cpcap_led_info { i16 4116, i16 1023, i16 31, i16 0, i16 0 }, [22 x i8] zeroinitializer }, align 32
@cpcap_led_adl = internal constant { %struct.cpcap_led_info, [22 x i8] } { %struct.cpcap_led_info { i16 4104, i16 15, i16 1, i16 32767, i16 24560 }, [22 x i8] zeroinitializer }, align 32
@cpcap_led_cp = internal constant { %struct.cpcap_led_info, [22 x i8] } { %struct.cpcap_led_info { i16 4132, i16 7, i16 1, i16 1023, i16 8 }, [22 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"cpcap_led_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 215, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 218, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"cpcap_led_of_match\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 149, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 172, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 180, i32 44 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 183, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 187, i32 48 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 189, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 197, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 202, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 208, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 122, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 134, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 94, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"cpcap_led_red\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 25, i32 36 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"cpcap_led_green\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 31, i32 36 }
@___asan_gen_.113 = private unnamed_addr constant [15 x i8] c"cpcap_led_blue\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 37, i32 36 }
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"cpcap_led_adl\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 44, i32 36 }
@___asan_gen_.119 = private unnamed_addr constant [13 x i8] c"cpcap_led_cp\00", align 1
@___asan_gen_.120 = private constant [29 x i8] c"../drivers/leds/leds-cpcap.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 53, i32 36 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_cpcap_led_driver_exit, ptr @__initcall__kmod_leds_cpcap__288_222_cpcap_led_driver_init6, ptr @cpcap_led_driver_exit, ptr @cpcap_led_probe._entry, ptr @cpcap_led_probe._entry.11, ptr @cpcap_led_probe._entry.14, ptr @cpcap_led_probe._entry.18, ptr @cpcap_led_probe._entry.7, ptr @cpcap_led_probe._entry_ptr, ptr @cpcap_led_probe._entry_ptr.13, ptr @cpcap_led_probe._entry_ptr.16, ptr @cpcap_led_probe._entry_ptr.20, ptr @cpcap_led_probe._entry_ptr.9, ptr @cpcap_led_set._entry, ptr @cpcap_led_set._entry.22, ptr @cpcap_led_set._entry_ptr, ptr @cpcap_led_set._entry_ptr.23, ptr @cpcap_led_set_power._entry, ptr @cpcap_led_set_power._entry_ptr, ptr @cpcap_led_driver, ptr @.str, ptr @cpcap_led_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @cpcap_led_probe.__key, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @cpcap_led_red, ptr @cpcap_led_green, ptr @cpcap_led_blue, ptr @cpcap_led_adl, ptr @cpcap_led_cp], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_led_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_led_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_led_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_led_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_led_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_led_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_led_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_led_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_led_set._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_led_set_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_led_red to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_led_green to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_led_blue to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_led_adl to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_led_cp to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cpcap_led_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cpcap_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @cpcap_led_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_led_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 516, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @device_get_match_data(ptr noundef %dev) #4
  %info = getelementptr inbounds %struct.cpcap_led, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %info, align 4
  %dev4 = getelementptr inbounds %struct.cpcap_led, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev4, align 4
  %3 = ptrtoint ptr %call2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %call2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp = icmp eq i16 %4, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %call11 = tail call ptr @dev_get_regmap(ptr noundef %6, ptr noundef null) #4
  %regmap = getelementptr inbounds %struct.cpcap_led, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %regmap, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %call17 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #4
  %vdd = getelementptr inbounds %struct.cpcap_led, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call17, ptr %vdd, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end27

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %call17 to i32
  %10 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.8, i32 noundef %9) #7
  br label %cleanup

if.end27:                                         ; preds = %if.end15
  %call30 = tail call i32 @device_property_read_string(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end37, label %do.end35

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.12, i32 noundef %call30) #7
  br label %cleanup

if.end37:                                         ; preds = %if.end27
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info, align 4
  %init_mask = getelementptr inbounds %struct.cpcap_led_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %init_mask to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %init_mask, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool39.not = icmp eq i16 %17, 0
  br i1 %tobool39.not, label %if.end37.do.body59_crit_edge, label %if.then40

if.end37.do.body59_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body59

if.then40:                                        ; preds = %if.end37
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %15, align 2
  %conv44 = zext i16 %21 to i32
  %conv47 = zext i16 %17 to i32
  %init_val = getelementptr inbounds %struct.cpcap_led_info, ptr %15, i32 0, i32 4
  %22 = ptrtoint ptr %init_val to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %init_val, align 2
  %conv49 = zext i16 %23 to i32
  %call.i119 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %conv44, i32 noundef %conv47, i32 noundef %conv49, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool51.not = icmp eq i32 %call.i119, 0
  br i1 %tobool51.not, label %if.then40.do.body59_crit_edge, label %do.end55

if.then40.do.body59_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body59

do.end55:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.15, i32 noundef %call.i119) #7
  br label %cleanup

do.body59:                                        ; preds = %if.then40.do.body59_crit_edge, %if.end37.do.body59_crit_edge
  %update_lock = getelementptr inbounds %struct.cpcap_led, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @cpcap_led_probe.__key) #4
  %26 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info, align 4
  %limit = getelementptr inbounds %struct.cpcap_led_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %limit to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %limit, align 2
  %conv63 = zext i16 %29 to i32
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 2
  %30 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv63, ptr %max_brightness, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 6
  %31 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @cpcap_led_set, ptr %brightness_set_blocking, align 4
  %call.i120 = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool69.not = icmp eq i32 %call.i120, 0
  br i1 %tobool69.not, label %do.body59.cleanup_crit_edge, label %do.end73

do.body59.cleanup_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end73:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.19, i32 noundef %call.i120) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %do.body59.cleanup_crit_edge, %do.end55, %do.end35, %if.then20, %if.end9.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %9, %if.then20 ], [ %call30, %do.end35 ], [ %call.i119, %do.end55 ], [ %call.i120, %do.end73 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end9.cleanup_crit_edge ], [ 0, %do.body59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_led_set(ptr noundef %ledc, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %update_lock = getelementptr inbounds %struct.cpcap_led, ptr %ledc, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp.not = icmp eq i32 %value, 0
  br i1 %cmp.not, label %if.then4, label %if.then

if.then:                                          ; preds = %entry
  %powered.i = getelementptr inbounds %struct.cpcap_led, ptr %ledc, i32 0, i32 6
  %0 = ptrtoint ptr %powered.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %powered.i, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i = icmp eq i8 %1, 1
  br i1 %cmp.i, label %if.then.if.else_crit_edge, label %if.end.i

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.end.i:                                         ; preds = %if.then
  %vdd.i = getelementptr inbounds %struct.cpcap_led, ptr %ledc, i32 0, i32 5
  %2 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdd.i, align 4
  %call.i = tail call i32 @regulator_enable(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %cpcap_led_set_power.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %powered.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %powered.i, align 4
  br label %if.else

cpcap_led_set_power.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.cpcap_led, ptr %ledc, i32 0, i32 2
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.24, i32 noundef %call.i) #7
  br label %exit

if.then4:                                         ; preds = %entry
  %regmap = getelementptr inbounds %struct.cpcap_led, ptr %ledc, i32 0, i32 3
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %info = getelementptr inbounds %struct.cpcap_led, ptr %ledc, i32 0, i32 1
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 2
  %conv = zext i16 %12 to i32
  %mask = getelementptr inbounds %struct.cpcap_led_info, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mask, align 2
  %conv6 = zext i16 %14 to i32
  %call.i62 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %conv, i32 noundef %conv6, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool8.not = icmp eq i32 %call.i62, 0
  br i1 %tobool8.not, label %if.then4.if.end17_crit_edge, label %do.end

if.then4.if.end17_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.cpcap_led, ptr %ledc, i32 0, i32 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.15, i32 noundef %call.i62) #7
  br label %exit

if.else:                                          ; preds = %if.end11.i, %if.then.if.else_crit_edge
  %17 = shl i32 %value, 4
  %shl.i = and i32 %17, 496
  %or.i = or i32 %shl.i, 1
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then4.if.end17_crit_edge
  %brightness.0.in = phi i32 [ %or.i, %if.else ], [ 0, %if.then4.if.end17_crit_edge ]
  %regmap18 = getelementptr inbounds %struct.cpcap_led, ptr %ledc, i32 0, i32 3
  %18 = ptrtoint ptr %regmap18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap18, align 4
  %info19 = getelementptr inbounds %struct.cpcap_led, ptr %ledc, i32 0, i32 1
  %20 = ptrtoint ptr %info19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info19, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 2
  %conv21 = zext i16 %23 to i32
  %mask23 = getelementptr inbounds %struct.cpcap_led_info, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %mask23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mask23, align 2
  %conv24 = zext i16 %25 to i32
  %call.i63 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %conv21, i32 noundef %conv24, i32 noundef %brightness.0.in, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool26.not = icmp eq i32 %call.i63, 0
  br i1 %tobool26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %dev31 = getelementptr inbounds %struct.cpcap_led, ptr %ledc, i32 0, i32 2
  %26 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.15, i32 noundef %call.i63) #7
  br label %exit

if.end32:                                         ; preds = %if.end17
  br i1 %cmp.not, label %if.then35, label %if.end32.exit_crit_edge

if.end32.exit_crit_edge:                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.then35:                                        ; preds = %if.end32
  %powered.i64 = getelementptr inbounds %struct.cpcap_led, ptr %ledc, i32 0, i32 6
  %28 = ptrtoint ptr %powered.i64 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %powered.i64, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.i65 = icmp eq i8 %29, 0
  br i1 %cmp.i65, label %if.then35.exit_crit_edge, label %if.end.i67

if.then35.exit_crit_edge:                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end.i67:                                       ; preds = %if.then35
  %vdd.i66 = getelementptr inbounds %struct.cpcap_led, ptr %ledc, i32 0, i32 5
  %30 = ptrtoint ptr %vdd.i66 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vdd.i66, align 4
  %call7.i = tail call i32 @regulator_disable(ptr noundef %31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool9.not.i68 = icmp eq i32 %call7.i, 0
  br i1 %tobool9.not.i68, label %if.end11.i71, label %do.end.i70

do.end.i70:                                       ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i69 = getelementptr inbounds %struct.cpcap_led, ptr %ledc, i32 0, i32 2
  %32 = ptrtoint ptr %dev.i69 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i69, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.24, i32 noundef %call7.i) #7
  br label %exit

if.end11.i71:                                     ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %powered.i64 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %powered.i64, align 4
  br label %exit

exit:                                             ; preds = %if.end11.i71, %do.end.i70, %if.then35.exit_crit_edge, %if.end32.exit_crit_edge, %do.end30, %do.end, %cpcap_led_set_power.exit
  %err.0 = phi i32 [ %call.i, %cpcap_led_set_power.exit ], [ %call.i62, %do.end ], [ %call.i63, %do.end30 ], [ 0, %if.end32.exit_crit_edge ], [ %call7.i, %do.end.i70 ], [ 0, %if.end11.i71 ], [ 0, %if.then35.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #4
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !54, !55, !56, !57, !59, !61, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_leds_cpcap__288_222_cpcap_led_driver_init6, !1, !"__initcall__kmod_leds_cpcap__288_222_cpcap_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-cpcap.c", i32 222, i32 1}
!2 = !{ptr @__exitcall_cpcap_led_driver_exit, !1, !"__exitcall_cpcap_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-cpcap.c", i32 224, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-cpcap.c", i32 225, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-cpcap.c", i32 226, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-cpcap.c", i32 218, i32 11}
!12 = !{ptr @cpcap_led_driver, !13, !"cpcap_led_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-cpcap.c", i32 215, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-cpcap.c", i32 172, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cpcap_led_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @cpcap_led_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-cpcap.c", i32 180, i32 44}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/leds/leds-cpcap.c", i32 183, i32 3}
!26 = !{ptr @cpcap_led_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cpcap_led_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/leds/leds-cpcap.c", i32 187, i32 48}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/leds/leds-cpcap.c", i32 189, i32 3}
!32 = !{ptr @cpcap_led_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cpcap_led_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/leds/leds-cpcap.c", i32 197, i32 4}
!36 = !{ptr @cpcap_led_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @cpcap_led_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @cpcap_led_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/leds/leds-cpcap.c", i32 202, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/leds/leds-cpcap.c", i32 208, i32 3}
!43 = !{ptr @cpcap_led_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @cpcap_led_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/leds/leds-cpcap.c", i32 122, i32 4}
!47 = !{ptr @cpcap_led_set._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @cpcap_led_set._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @cpcap_led_set._entry.22, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/leds/leds-cpcap.c", i32 134, i32 3}
!51 = !{ptr @cpcap_led_set._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/leds/leds-cpcap.c", i32 94, i32 3}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @cpcap_led_set_power._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @cpcap_led_set_power._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @cpcap_led_of_match, !58, !"cpcap_led_of_match", i1 false, i1 false}
!58 = !{!"../drivers/leds/leds-cpcap.c", i32 149, i32 34}
!59 = !{ptr @cpcap_led_red, !60, !"cpcap_led_red", i1 false, i1 false}
!60 = !{!"../drivers/leds/leds-cpcap.c", i32 25, i32 36}
!61 = !{ptr @cpcap_led_green, !62, !"cpcap_led_green", i1 false, i1 false}
!62 = !{!"../drivers/leds/leds-cpcap.c", i32 31, i32 36}
!63 = !{ptr @cpcap_led_blue, !64, !"cpcap_led_blue", i1 false, i1 false}
!64 = !{!"../drivers/leds/leds-cpcap.c", i32 37, i32 36}
!65 = !{ptr @cpcap_led_adl, !66, !"cpcap_led_adl", i1 false, i1 false}
!66 = !{!"../drivers/leds/leds-cpcap.c", i32 44, i32 36}
!67 = !{ptr @cpcap_led_cp, !68, !"cpcap_led_cp", i1 false, i1 false}
!68 = !{!"../drivers/leds/leds-cpcap.c", i32 53, i32 36}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i8 0, i8 2}
