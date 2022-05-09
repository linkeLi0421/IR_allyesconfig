; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-gt683r.c_pt.bc'
source_filename = "../drivers/hid/hid-gt683r.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.gt683r_led = type { ptr, [3 x %struct.led_classdev], %struct.mutex, %struct.work_struct, [3 x i32], i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_hid_gt683r__223_306_gt683r_led_driver_init6 = internal global ptr @gt683r_led_driver_init, section ".initcall6.init", align 4
@gt683r_led_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @gt683r_led_id, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @gt683r_led_probe, ptr @gt683r_led_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gt683r_led_driver_exit = internal global ptr @gt683r_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [35 x i8] c"hid_gt683r.author=Janne Kanniainen\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [45 x i8] c"hid_gt683r.description=MSI GT683R led driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [39 x i8] c"hid_gt683r.file=drivers/hid/hid-gt683r\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [23 x i8] c"hid_gt683r.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hid_gt683r\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gt683r_led\00", [21 x i8] zeroinitializer }, align 32
@gt683r_led_id = internal constant { [2 x %struct.hid_device_id], [32 x i8] } { [2 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 6000, i32 65280, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gt683r_led_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&led->lock\00", [21 x i8] zeroinitializer }, align 32
@gt683r_led_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&led->work)\00", [34 x i8] zeroinitializer }, align 32
@gt683r_led_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 245, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hid parsing failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gt683r_led_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/hid/hid-gt683r.c\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gt683r_led_probe._entry_ptr = internal global ptr @gt683r_led_probe._entry, section ".printk_index", align 4
@gt683r_led_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 251, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@gt683r_led_probe._entry_ptr.12 = internal global ptr @gt683r_led_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s::%s\00", [25 x i8] zeroinitializer }, align 32
@gt683r_led_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @gt683r_led_group, ptr null], [24 x i8] zeroinitializer }, align 32
@gt683r_led_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 274, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not register led device\0A\00", [33 x i8] zeroinitializer }, align 32
@gt683r_led_probe._entry_ptr.16 = internal global ptr @gt683r_led_probe._entry.14, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gt683r_led_snd_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.7, i32 131, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to send set report request: %i\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gt683r_led_snd_msg\00", [45 x i8] zeroinitializer }, align 32
@gt683r_led_snd_msg._entry_ptr = internal global ptr @gt683r_led_snd_msg._entry, section ".printk_index", align 4
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"back\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"side\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"front\00", [26 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@gt683r_led_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.22, ptr null, ptr null, ptr @gt683r_led_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gt683r\00", [25 x i8] zeroinitializer }, align 32
@gt683r_led_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_mode, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mode_show, ptr @mode_store }, [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"gt683r_led_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 299, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 306, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 302, i32 10 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"gt683r_led_id\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 53, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 236, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 237, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 245, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 251, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 265, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"gt683r_led_groups\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 218, i32 38 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 274, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 130, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 39, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 40, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 41, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"gt683r_led_group\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 213, i32 37 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 214, i32 10 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"gt683r_led_attrs\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 208, i32 26 }
@___asan_gen_.112 = private unnamed_addr constant [14 x i8] c"dev_attr_mode\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 206, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [28 x i8] c"../drivers/hid/hid-gt683r.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 93, i32 35 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_gt683r_led_driver_exit, ptr @__initcall__kmod_hid_gt683r__223_306_gt683r_led_driver_init6, ptr @gt683r_led_driver_exit, ptr @gt683r_led_probe._entry, ptr @gt683r_led_probe._entry.10, ptr @gt683r_led_probe._entry.14, ptr @gt683r_led_probe._entry_ptr, ptr @gt683r_led_probe._entry_ptr.12, ptr @gt683r_led_probe._entry_ptr.16, ptr @gt683r_led_snd_msg._entry, ptr @gt683r_led_snd_msg._entry_ptr, ptr @gt683r_led_driver, ptr @.str, ptr @.str.1, ptr @gt683r_led_id, ptr @gt683r_led_probe.__key, ptr @.str.2, ptr @gt683r_led_probe.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @gt683r_led_groups, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @gt683r_led_group, ptr @.str.22, ptr @gt683r_led_attrs, ptr @dev_attr_mode, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt683r_led_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt683r_led_id to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt683r_led_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt683r_led_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt683r_led_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt683r_led_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt683r_led_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt683r_led_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt683r_led_snd_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt683r_led_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt683r_led_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gt683r_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @gt683r_led_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gt683r_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hid_unregister_driver(ptr noundef nonnull @gt683r_led_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gt683r_led_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1356, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.gt683r_led, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @gt683r_led_probe.__key) #8
  %work = getelementptr inbounds %struct.gt683r_led, ptr %call.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %0 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.gt683r_led, ptr %call.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @gt683r_led_probe.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry5 = getelementptr inbounds %struct.gt683r_led, ptr %call.i, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.gt683r_led, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.gt683r_led, ptr %call.i, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @gt683r_led_work, ptr %func, align 4
  %mode = getelementptr inbounds %struct.gt683r_led, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5, ptr %mode, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hdev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i117 = tail call i32 @hid_open_report(ptr noundef %hdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool11.not = icmp eq i32 %call.i117, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end17:                                         ; preds = %do.body
  %call18 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.cond.preheader, label %do.end23

for.cond.preheader:                               ; preds = %if.end17
  %init_name.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %for.cond.preheader.dev_name.exit_crit_edge

for.cond.preheader.dev_name.exit_crit_edge:       ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  br label %cleanup

if.end.i:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %for.cond.preheader.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %for.cond.preheader.dev_name.exit_crit_edge ]
  %call28 = tail call i32 @strlen(ptr noundef %retval.0.i) #12
  %add30 = add i32 %call28, 7
  %call.i118 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add30, i32 noundef 3520) #8
  %tobool33.not = icmp eq ptr %call.i118, null
  br i1 %tobool33.not, label %dev_name.exit.for.end65_crit_edge, label %if.end35

dev_name.exit.for.end65_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end65

if.end35:                                         ; preds = %dev_name.exit
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i120 = icmp eq ptr %12, null
  br i1 %tobool.not.i120, label %if.end.i121, label %if.end35.dev_name.exit123_crit_edge

if.end35.dev_name.exit123_crit_edge:              ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit123

if.end.i121:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  br label %dev_name.exit123

dev_name.exit123:                                 ; preds = %if.end.i121, %if.end35.dev_name.exit123_crit_edge
  %retval.0.i122 = phi ptr [ %14, %if.end.i121 ], [ %12, %if.end35.dev_name.exit123_crit_edge ]
  %call39 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i118, i32 noundef %add30, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i122, ptr noundef nonnull @.str.19)
  %arrayidx40 = getelementptr %struct.gt683r_led, ptr %call.i, i32 0, i32 1, i32 0
  %15 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i118, ptr %arrayidx40, align 4
  %max_brightness = getelementptr %struct.gt683r_led, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %max_brightness, align 4
  %brightness_set = getelementptr %struct.gt683r_led, ptr %call.i, i32 0, i32 1, i32 0, i32 5
  %17 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @gt683r_brightness_set, ptr %brightness_set, align 4
  %groups = getelementptr %struct.gt683r_led, ptr %call.i, i32 0, i32 1, i32 0, i32 12
  %18 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @gt683r_led_groups, ptr %groups, align 4
  %call.i124 = tail call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %arrayidx40, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool52.not = icmp eq i32 %call.i124, 0
  br i1 %tobool52.not, label %for.inc, label %fail

for.inc:                                          ; preds = %dev_name.exit123
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i.1 = icmp eq ptr %20, null
  br i1 %tobool.not.i.1, label %if.end.i.1, label %for.inc.dev_name.exit.1_crit_edge

for.inc.dev_name.exit.1_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.1

if.end.i.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.1

dev_name.exit.1:                                  ; preds = %if.end.i.1, %for.inc.dev_name.exit.1_crit_edge
  %retval.0.i.1 = phi ptr [ %22, %if.end.i.1 ], [ %20, %for.inc.dev_name.exit.1_crit_edge ]
  %call28.1 = tail call i32 @strlen(ptr noundef %retval.0.i.1) #12
  %add30.1 = add i32 %call28.1, 7
  %call.i118.1 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add30.1, i32 noundef 3520) #8
  %tobool33.not.1 = icmp eq ptr %call.i118.1, null
  br i1 %tobool33.not.1, label %dev_name.exit.1.for.body61_crit_edge, label %if.end35.1

dev_name.exit.1.for.body61_crit_edge:             ; preds = %dev_name.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body61

if.end35.1:                                       ; preds = %dev_name.exit.1
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i120.1 = icmp eq ptr %24, null
  br i1 %tobool.not.i120.1, label %if.end.i121.1, label %if.end35.1.dev_name.exit123.1_crit_edge

if.end35.1.dev_name.exit123.1_crit_edge:          ; preds = %if.end35.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit123.1

if.end.i121.1:                                    ; preds = %if.end35.1
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  br label %dev_name.exit123.1

dev_name.exit123.1:                               ; preds = %if.end.i121.1, %if.end35.1.dev_name.exit123.1_crit_edge
  %retval.0.i122.1 = phi ptr [ %26, %if.end.i121.1 ], [ %24, %if.end35.1.dev_name.exit123.1_crit_edge ]
  %call39.1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i118.1, i32 noundef %add30.1, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i122.1, ptr noundef nonnull @.str.20)
  %arrayidx40.1 = getelementptr %struct.gt683r_led, ptr %call.i, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i118.1, ptr %arrayidx40.1, align 4
  %max_brightness.1 = getelementptr %struct.gt683r_led, ptr %call.i, i32 0, i32 1, i32 1, i32 2
  %28 = ptrtoint ptr %max_brightness.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %max_brightness.1, align 4
  %brightness_set.1 = getelementptr %struct.gt683r_led, ptr %call.i, i32 0, i32 1, i32 1, i32 5
  %29 = ptrtoint ptr %brightness_set.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @gt683r_brightness_set, ptr %brightness_set.1, align 4
  %groups.1 = getelementptr %struct.gt683r_led, ptr %call.i, i32 0, i32 1, i32 1, i32 12
  %30 = ptrtoint ptr %groups.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @gt683r_led_groups, ptr %groups.1, align 4
  %call.i124.1 = tail call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %arrayidx40.1, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.1)
  %tobool52.not.1 = icmp eq i32 %call.i124.1, 0
  br i1 %tobool52.not.1, label %for.inc.1, label %dev_name.exit123.1.fail.thread147_crit_edge

dev_name.exit123.1.fail.thread147_crit_edge:      ; preds = %dev_name.exit123.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.thread147

for.inc.1:                                        ; preds = %dev_name.exit123.1
  %31 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i.2 = icmp eq ptr %32, null
  br i1 %tobool.not.i.2, label %if.end.i.2, label %for.inc.1.dev_name.exit.2_crit_edge

for.inc.1.dev_name.exit.2_crit_edge:              ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.2

if.end.i.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.2

dev_name.exit.2:                                  ; preds = %if.end.i.2, %for.inc.1.dev_name.exit.2_crit_edge
  %retval.0.i.2 = phi ptr [ %34, %if.end.i.2 ], [ %32, %for.inc.1.dev_name.exit.2_crit_edge ]
  %call28.2 = tail call i32 @strlen(ptr noundef %retval.0.i.2) #12
  %add30.2 = add i32 %call28.2, 8
  %call.i118.2 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add30.2, i32 noundef 3520) #8
  %tobool33.not.2 = icmp eq ptr %call.i118.2, null
  br i1 %tobool33.not.2, label %dev_name.exit.2.for.body61_crit_edge, label %if.end35.2

dev_name.exit.2.for.body61_crit_edge:             ; preds = %dev_name.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body61

if.end35.2:                                       ; preds = %dev_name.exit.2
  %35 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i120.2 = icmp eq ptr %36, null
  br i1 %tobool.not.i120.2, label %if.end.i121.2, label %if.end35.2.dev_name.exit123.2_crit_edge

if.end35.2.dev_name.exit123.2_crit_edge:          ; preds = %if.end35.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit123.2

if.end.i121.2:                                    ; preds = %if.end35.2
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  br label %dev_name.exit123.2

dev_name.exit123.2:                               ; preds = %if.end.i121.2, %if.end35.2.dev_name.exit123.2_crit_edge
  %retval.0.i122.2 = phi ptr [ %38, %if.end.i121.2 ], [ %36, %if.end35.2.dev_name.exit123.2_crit_edge ]
  %call39.2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i118.2, i32 noundef %add30.2, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i122.2, ptr noundef nonnull @.str.21)
  %arrayidx40.2 = getelementptr %struct.gt683r_led, ptr %call.i, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i118.2, ptr %arrayidx40.2, align 4
  %max_brightness.2 = getelementptr %struct.gt683r_led, ptr %call.i, i32 0, i32 1, i32 2, i32 2
  %40 = ptrtoint ptr %max_brightness.2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %max_brightness.2, align 4
  %brightness_set.2 = getelementptr %struct.gt683r_led, ptr %call.i, i32 0, i32 1, i32 2, i32 5
  %41 = ptrtoint ptr %brightness_set.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @gt683r_brightness_set, ptr %brightness_set.2, align 4
  %groups.2 = getelementptr %struct.gt683r_led, ptr %call.i, i32 0, i32 1, i32 2, i32 12
  %42 = ptrtoint ptr %groups.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @gt683r_led_groups, ptr %groups.2, align 4
  %call.i124.2 = tail call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %arrayidx40.2, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.2)
  %tobool52.not.2 = icmp eq i32 %call.i124.2, 0
  br i1 %tobool52.not.2, label %dev_name.exit123.2.cleanup_crit_edge, label %dev_name.exit123.2.fail.thread147_crit_edge

dev_name.exit123.2.fail.thread147_crit_edge:      ; preds = %dev_name.exit123.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.thread147

dev_name.exit123.2.cleanup_crit_edge:             ; preds = %dev_name.exit123.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

fail.thread147:                                   ; preds = %dev_name.exit123.2.fail.thread147_crit_edge, %dev_name.exit123.1.fail.thread147_crit_edge
  %call.i124.lcssa.ph = phi i32 [ %call.i124.2, %dev_name.exit123.2.fail.thread147_crit_edge ], [ %call.i124.1, %dev_name.exit123.1.fail.thread147_crit_edge ]
  %i.0128.lcssa132.ph = phi i32 [ 2, %dev_name.exit123.2.fail.thread147_crit_edge ], [ 1, %dev_name.exit123.1.fail.thread147_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #11
  br label %for.body61

fail:                                             ; preds = %dev_name.exit123
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #11
  br label %for.end65

for.body61:                                       ; preds = %fail.thread147, %dev_name.exit.2.for.body61_crit_edge, %dev_name.exit.1.for.body61_crit_edge
  %ret.0140 = phi i32 [ %call.i124.lcssa.ph, %fail.thread147 ], [ -12, %dev_name.exit.1.for.body61_crit_edge ], [ -12, %dev_name.exit.2.for.body61_crit_edge ]
  %i.0128134139 = phi i32 [ %i.0128.lcssa132.ph, %fail.thread147 ], [ 1, %dev_name.exit.1.for.body61_crit_edge ], [ 2, %dev_name.exit.2.for.body61_crit_edge ]
  %i.1131 = add nsw i32 %i.0128134139, -1
  %arrayidx63 = getelementptr %struct.gt683r_led, ptr %call.i, i32 0, i32 1, i32 %i.1131
  tail call void @led_classdev_unregister(ptr noundef %arrayidx63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0128134139)
  %cmp60 = icmp ugt i32 %i.0128134139, 1
  br i1 %cmp60, label %for.body61.1, label %for.body61.for.end65_crit_edge

for.body61.for.end65_crit_edge:                   ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end65

for.body61.1:                                     ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #10
  %i.1131.1 = add nsw i32 %i.0128134139, -2
  %arrayidx63.1 = getelementptr %struct.gt683r_led, ptr %call.i, i32 0, i32 1, i32 %i.1131.1
  tail call void @led_classdev_unregister(ptr noundef %arrayidx63.1) #8
  br label %for.end65

for.end65:                                        ; preds = %for.body61.1, %for.body61.for.end65_crit_edge, %fail, %dev_name.exit.for.end65_crit_edge
  %ret.0141 = phi i32 [ %call.i124, %fail ], [ -12, %dev_name.exit.for.end65_crit_edge ], [ %ret.0140, %for.body61.1 ], [ %ret.0140, %for.body61.for.end65_crit_edge ]
  tail call void @hid_hw_stop(ptr noundef %hdev) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end65, %dev_name.exit123.2.cleanup_crit_edge, %do.end23, %do.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i117, %do.end15 ], [ %call18, %do.end23 ], [ %ret.0141, %for.end65 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %dev_name.exit123.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gt683r_led_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.gt683r_led, ptr %1, i32 0, i32 1, i32 0
  tail call void @led_classdev_unregister(ptr noundef %arrayidx) #8
  %arrayidx.1 = getelementptr %struct.gt683r_led, ptr %1, i32 0, i32 1, i32 1
  tail call void @led_classdev_unregister(ptr noundef %arrayidx.1) #8
  %arrayidx.2 = getelementptr %struct.gt683r_led, ptr %1, i32 0, i32 1, i32 2
  tail call void @led_classdev_unregister(ptr noundef %arrayidx.2) #8
  %work = getelementptr inbounds %struct.gt683r_led, ptr %1, i32 0, i32 3
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %work) #8
  tail call void @hid_hw_stop(ptr noundef %hdev) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gt683r_led_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %brightnesses = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %brightnesses to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %brightnesses, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp ne i32 %1, 0
  %conv1 = zext i1 %tobool.not to i8
  %arrayidx.1 = getelementptr i8, ptr %work, i32 48
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.1 = icmp eq i32 %3, 0
  %conv1.1 = select i1 %tobool.not.1, i8 0, i8 2
  %leds.1.1 = or i8 %conv1.1, %conv1
  %arrayidx.2 = getelementptr i8, ptr %work, i32 52
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.2 = icmp eq i32 %5, 0
  %conv1.2 = select i1 %tobool.not.2, i8 0, i8 4
  %leds.1.2 = or i8 %conv1.2, %leds.1.1
  %add.ptr = getelementptr i8, ptr %work, i32 -1296
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 8) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.fail_crit_edge, label %if.end.i

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %call7.i.i.i, align 8
  %arrayidx1.i = getelementptr i8, ptr %call7.i.i.i, i32 1
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %call7.i.i.i, i32 2
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 48, ptr %arrayidx2.i, align 2
  %arrayidx3.i = getelementptr i8, ptr %call7.i.i.i, i32 3
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %leds.1.2, ptr %arrayidx3.i, align 1
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %call.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %12, i8 noundef zeroext 1, ptr noundef nonnull %call7.i.i.i, i32 noundef 8, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 8
  br i1 %cmp.not.i.i, label %if.end4, label %if.end.i.fail.sink.split.sink.split_crit_edge

if.end.i.fail.sink.split.sink.split_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.sink.split.sink.split

if.end4:                                          ; preds = %if.end.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %leds.1.2)
  %tobool5.not = icmp eq i8 %leds.1.2, 0
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %mode7 = getelementptr i8, ptr %work, i32 56
  %13 = ptrtoint ptr %mode7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode7, align 4
  %conv8 = trunc i32 %14 to i8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %mode.0 = phi i8 [ %conv8, %if.then6 ], [ 0, %if.end4.if.end9_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 8) #13
  %tobool.not.i23 = icmp eq ptr %call7.i.i.i22, null
  br i1 %tobool.not.i23, label %if.end9.fail_crit_edge, label %if.end.i29

if.end9.fail_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end.i29:                                       ; preds = %if.end9
  %16 = ptrtoint ptr %call7.i.i.i22 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %call7.i.i.i22, align 8
  %arrayidx1.i24 = getelementptr i8, ptr %call7.i.i.i22, i32 1
  %17 = ptrtoint ptr %arrayidx1.i24 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %arrayidx1.i24, align 1
  %arrayidx2.i25 = getelementptr i8, ptr %call7.i.i.i22, i32 2
  %18 = ptrtoint ptr %arrayidx2.i25 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 32, ptr %arrayidx2.i25, align 2
  %arrayidx3.i26 = getelementptr i8, ptr %call7.i.i.i22, i32 3
  %19 = ptrtoint ptr %arrayidx3.i26 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %mode.0, ptr %arrayidx3.i26, align 1
  %arrayidx4.i = getelementptr i8, ptr %call7.i.i.i22, i32 4
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %arrayidx4.i, align 4
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 4
  %call.i.i27 = tail call i32 @hid_hw_raw_request(ptr noundef %22, i8 noundef zeroext 1, ptr noundef nonnull %call7.i.i.i22, i32 noundef 8, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i.i27)
  %cmp.not.i.i28 = icmp eq i32 %call.i.i27, 8
  br i1 %cmp.not.i.i28, label %if.end.i29.fail.sink.split_crit_edge, label %if.end.i29.fail.sink.split.sink.split_crit_edge

if.end.i29.fail.sink.split.sink.split_crit_edge:  ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.sink.split.sink.split

if.end.i29.fail.sink.split_crit_edge:             ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.sink.split

fail.sink.split.sink.split:                       ; preds = %if.end.i29.fail.sink.split.sink.split_crit_edge, %if.end.i.fail.sink.split.sink.split_crit_edge
  %call.i.i27.sink = phi i32 [ %call.i.i, %if.end.i.fail.sink.split.sink.split_crit_edge ], [ %call.i.i27, %if.end.i29.fail.sink.split.sink.split_crit_edge ]
  %call7.i.i.i22.sink.ph = phi ptr [ %call7.i.i.i, %if.end.i.fail.sink.split.sink.split_crit_edge ], [ %call7.i.i.i22, %if.end.i29.fail.sink.split.sink.split_crit_edge ]
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %dev.i.i30 = getelementptr inbounds %struct.hid_device, ptr %24, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i30, ptr noundef nonnull @.str.17, i32 noundef %call.i.i27.sink) #11
  br label %fail.sink.split

fail.sink.split:                                  ; preds = %fail.sink.split.sink.split, %if.end.i29.fail.sink.split_crit_edge
  %call7.i.i.i22.sink = phi ptr [ %call7.i.i.i22, %if.end.i29.fail.sink.split_crit_edge ], [ %call7.i.i.i22.sink.ph, %fail.sink.split.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i22.sink) #8
  br label %fail

fail:                                             ; preds = %fail.sink.split, %if.end9.fail_crit_edge, %entry.fail_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gt683r_brightness_set(ptr noundef readonly %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr i8, ptr %3, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.gt683r_led, ptr %5, i32 0, i32 1, i32 0
  %cmp2 = icmp eq ptr %arrayidx, %led_cdev
  br i1 %cmp2, label %entry.for.end_crit_edge, label %for.cond.1

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.1:                                       ; preds = %entry
  %arrayidx.1 = getelementptr %struct.gt683r_led, ptr %5, i32 0, i32 1, i32 1
  %cmp2.1 = icmp eq ptr %arrayidx.1, %led_cdev
  br i1 %cmp2.1, label %for.cond.1.for.end_crit_edge, label %for.cond.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.2 = getelementptr %struct.gt683r_led, ptr %5, i32 0, i32 1, i32 2
  %cmp2.2 = icmp eq ptr %arrayidx.2, %led_cdev
  %spec.select = select i1 %cmp2.2, i32 2, i32 3
  %spec.select15 = select i1 %cmp2.2, i1 true, i1 false
  br label %for.end

for.end:                                          ; preds = %for.cond.2, %for.cond.1.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %for.cond.1.for.end_crit_edge ], [ %spec.select, %for.cond.2 ]
  %cmp.lcssa = phi i1 [ true, %entry.for.end_crit_edge ], [ true, %for.cond.1.for.end_crit_edge ], [ %spec.select15, %for.cond.2 ]
  br i1 %cmp.lcssa, label %if.then4, label %for.end.if.end7_crit_edge

for.end.if.end7_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5 = getelementptr %struct.gt683r_led, ptr %5, i32 0, i32 4, i32 %i.0.lcssa
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %brightness, ptr %arrayidx5, align 4
  %work = getelementptr inbounds %struct.gt683r_led, ptr %5, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %for.end.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.gt683r_led, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch.selectcmp = icmp eq i32 %5, 2
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %switch.selectcmp8 = icmp eq i32 %5, 5
  %switch.select9 = select i1 %switch.selectcmp8, i32 0, i32 %switch.select
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.24, i32 noundef %switch.select9) #8
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %sysfs_mode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sysfs_mode) #8
  %0 = ptrtoint ptr %sysfs_mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %sysfs_mode, align 1, !annotation !76
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr i8, ptr %2, i32 164
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %sysfs_mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %sysfs_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sysfs_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp = icmp ugt i8 %6, 2
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.gt683r_led, ptr %4, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %7 = ptrtoint ptr %sysfs_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sysfs_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %switch.selectcmp = icmp eq i8 %8, 1
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %switch.selectcmp25 = icmp eq i8 %8, 0
  %switch.select26 = select i1 %switch.selectcmp25, i32 5, i32 %switch.select
  %mode11 = getelementptr inbounds %struct.gt683r_led, ptr %4, i32 0, i32 5
  %9 = ptrtoint ptr %mode11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %switch.select26, ptr %mode11, align 4
  call void @mutex_unlock(ptr noundef %lock) #8
  %work = getelementptr inbounds %struct.gt683r_led, ptr %4, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %work) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sysfs_mode) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !20, !22, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_hid_gt683r__223_306_gt683r_led_driver_init6, !1, !"__initcall__kmod_hid_gt683r__223_306_gt683r_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-gt683r.c", i32 306, i32 1}
!2 = !{ptr @__exitcall_gt683r_led_driver_exit, !1, !"__exitcall_gt683r_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-gt683r.c", i32 308, i32 1}
!5 = !{ptr @__UNIQUE_ID_description225, !6, !"__UNIQUE_ID_description225", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-gt683r.c", i32 309, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-gt683r.c", i32 310, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-gt683r.c", i32 302, i32 10}
!13 = !{ptr @gt683r_led_driver, !14, !"gt683r_led_driver", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-gt683r.c", i32 299, i32 26}
!15 = !{ptr @gt683r_led_id, !16, !"gt683r_led_id", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-gt683r.c", i32 53, i32 35}
!17 = !{ptr @gt683r_led_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-gt683r.c", i32 236, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @gt683r_led_probe.__key.3, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/hid/hid-gt683r.c", i32 237, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hid/hid-gt683r.c", i32 245, i32 3}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @gt683r_led_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @gt683r_led_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hid/hid-gt683r.c", i32 251, i32 3}
!33 = !{ptr @gt683r_led_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @gt683r_led_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hid/hid-gt683r.c", i32 265, i32 27}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-gt683r.c", i32 274, i32 4}
!39 = !{ptr @gt683r_led_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @gt683r_led_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-gt683r.c", i32 130, i32 3}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @gt683r_led_snd_msg._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @gt683r_led_snd_msg._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hid/hid-gt683r.c", i32 39, i32 2}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hid/hid-gt683r.c", i32 40, i32 2}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hid/hid-gt683r.c", i32 41, i32 2}
!52 = distinct !{null, !53, !"gt683r_panel_names", i1 false, i1 false}
!53 = !{!"../drivers/hid/hid-gt683r.c", i32 38, i32 27}
!54 = !{ptr @gt683r_led_groups, !55, !"gt683r_led_groups", i1 false, i1 false}
!55 = !{!"../drivers/hid/hid-gt683r.c", i32 218, i32 38}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hid/hid-gt683r.c", i32 214, i32 10}
!58 = !{ptr @gt683r_led_group, !59, !"gt683r_led_group", i1 false, i1 false}
!59 = !{!"../drivers/hid/hid-gt683r.c", i32 213, i32 37}
!60 = !{ptr @gt683r_led_attrs, !61, !"gt683r_led_attrs", i1 false, i1 false}
!61 = !{!"../drivers/hid/hid-gt683r.c", i32 208, i32 26}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hid/hid-gt683r.c", i32 206, i32 8}
!64 = !{ptr @dev_attr_mode, !63, !"dev_attr_mode", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hid/hid-gt683r.c", i32 93, i32 35}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"auto-init"}
