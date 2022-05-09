; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-multitouch.c_pt.bc'
source_filename = "../drivers/hid/hid-multitouch.c"
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
%struct.hid_usage_id = type { i32, i32, i32 }
%struct.mt_class = type { i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.mt_device = type { %struct.mt_class, %struct.timer_list, ptr, i32, i8, i8, i8, i8, %struct.list_head, %struct.list_head }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.mt_report_data = type { %struct.list_head, ptr, ptr, i8 }
%struct.mt_application = type { %struct.list_head, i32, i32, %struct.list_head, i32, ptr, i32, ptr, i32, i32, ptr, i8, i8, i8, i8, i32, i32, i32, i32, i8 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.mt_usages = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_mt = type { i32, i32, i32, i32, i32, ptr, [0 x %struct.input_mt_slot] }
%struct.input_mt_slot = type { [14 x i32], i32, i32 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_author223 = internal constant [55 x i8] c"hid_multitouch.author=Stephane Chatty <chatty@enac.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_author224 = internal constant [72 x i8] c"hid_multitouch.author=Benjamin Tissoires <benjamin.tissoires@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [49 x i8] c"hid_multitouch.description=HID multitouch panels\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [47 x i8] c"hid_multitouch.file=drivers/hid/hid-multitouch\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [27 x i8] c"hid_multitouch.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_hid_multitouch__235_2216_mt_driver_init6 = internal global ptr @mt_driver_init, section ".initcall6.init", align 4
@mt_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @mt_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @mt_probe, ptr @mt_remove, ptr null, ptr null, ptr @mt_grabbed_usages, ptr @mt_event, ptr @mt_report, ptr null, ptr @mt_input_mapping, ptr @mt_input_mapped, ptr @mt_input_configured, ptr @mt_feature_mapping, ptr @mt_suspend, ptr @mt_resume, ptr @mt_reset_resume, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt_driver_exit = internal global ptr @mt_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hid_multitouch\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hid-multitouch\00", [17 x i8] zeroinitializer }, align 32
@mt_devices = internal constant { [91 x %struct.hid_device_id], [368 x i8] } { [91 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 2, i32 1430, i32 1280, i32 257 }, %struct.hid_device_id { i16 3, i16 2, i32 1430, i32 1282, i32 257 }, %struct.hid_device_id { i16 3, i16 2, i32 1430, i32 1286, i32 257 }, %struct.hid_device_id { i16 3, i16 2, i32 4400, i32 12545, i32 19 }, %struct.hid_device_id { i16 3, i16 4, i32 2821, i32 6205, i32 22 }, %struct.hid_device_id { i16 3, i16 4, i32 2821, i32 6218, i32 267 }, %struct.hid_device_id { i16 3, i16 2, i32 1003, i32 8472, i32 2 }, %struct.hid_device_id { i16 3, i16 2, i32 9299, i32 256, i32 10 }, %struct.hid_device_id { i16 3, i16 2, i32 8327, i32 2561, i32 7 }, %struct.hid_device_id { i16 3, i16 2, i32 8327, i32 3841, i32 7 }, %struct.hid_device_id { i16 3, i16 2, i32 8775, i32 1, i32 10 }, %struct.hid_device_id { i16 3, i16 2, i32 9400, i32 32, i32 10 }, %struct.hid_device_id { i16 3, i16 2, i32 9400, i32 64, i32 10 }, %struct.hid_device_id { i16 3, i16 2, i32 8183, i32 19, i32 10 }, %struct.hid_device_id { i16 3, i16 2, i32 3823, i32 1, i32 19 }, %struct.hid_device_id { i16 3, i16 2, i32 3823, i32 18445, i32 259 }, %struct.hid_device_id { i16 3, i16 2, i32 3823, i32 18446, i32 259 }, %struct.hid_device_id { i16 3, i16 2, i32 3823, i32 29191, i32 260 }, %struct.hid_device_id { i16 3, i16 2, i32 3823, i32 29196, i32 259 }, %struct.hid_device_id { i16 3, i16 2, i32 3823, i32 29220, i32 260 }, %struct.hid_device_id { i16 3, i16 2, i32 3823, i32 29226, i32 260 }, %struct.hid_device_id { i16 3, i16 2, i32 3823, i32 29278, i32 260 }, %struct.hid_device_id { i16 3, i16 2, i32 3823, i32 29282, i32 260 }, %struct.hid_device_id { i16 3, i16 2, i32 3823, i32 29291, i32 259 }, %struct.hid_device_id { i16 3, i16 2, i32 3823, i32 29345, i32 259 }, %struct.hid_device_id { i16 3, i16 2, i32 3823, i32 29354, i32 260 }, %struct.hid_device_id { i16 3, i16 0, i32 3823, i32 29380, i32 259 }, %struct.hid_device_id { i16 3, i16 0, i32 3823, i32 29392, i32 259 }, %struct.hid_device_id { i16 3, i16 2, i32 3823, i32 29434, i32 259 }, %struct.hid_device_id { i16 3, i16 2, i32 3823, i32 29442, i32 259 }, %struct.hid_device_id { i16 3, i16 2, i32 3823, i32 29513, i32 260 }, %struct.hid_device_id { i16 3, i16 2, i32 3823, i32 29687, i32 260 }, %struct.hid_device_id { i16 3, i16 2, i32 3823, i32 40961, i32 260 }, %struct.hid_device_id { i16 3, i16 2, i32 3823, i32 49154, i32 259 }, %struct.hid_device_id { i16 24, i16 4, i32 1267, i32 12602, i32 21 }, %struct.hid_device_id { i16 3, i16 2, i32 1020, i32 1496, i32 2 }, %struct.hid_device_id { i16 3, i16 2, i32 9653, i32 2, i32 263 }, %struct.hid_device_id { i16 3, i16 2, i32 4292, i32 33209, i32 2 }, %struct.hid_device_id { i16 3, i16 2, i32 3580, i32 3, i32 264 }, %struct.hid_device_id { i16 3, i16 2, i32 3580, i32 256, i32 265 }, %struct.hid_device_id { i16 3, i16 2, i32 3580, i32 257, i32 264 }, %struct.hid_device_id { i16 3, i16 2, i32 3580, i32 258, i32 265 }, %struct.hid_device_id { i16 3, i16 2, i32 3580, i32 262, i32 265 }, %struct.hid_device_id { i16 3, i16 2, i32 3580, i32 266, i32 265 }, %struct.hid_device_id { i16 3, i16 2, i32 3580, i32 57600, i32 265 }, %struct.hid_device_id { i16 5, i16 2, i32 9654, i32 2, i32 10 }, %struct.hid_device_id { i16 3, i16 2, i32 6829, i32 15, i32 10 }, %struct.hid_device_id { i16 3, i16 2, i32 8941, i32 4112, i32 6 }, %struct.hid_device_id { i16 3, i16 2, i32 8746, i32 1, i32 10 }, %struct.hid_device_id { i16 3, i16 0, i32 8146, i32 24583, i32 266 }, %struct.hid_device_id { i16 24, i16 1, i32 8146, i32 28688, i32 266 }, %struct.hid_device_id { i16 3, i16 4, i32 6127, i32 24739, i32 21 }, %struct.hid_device_id { i16 3, i16 4, i32 6127, i32 24757, i32 21 }, %struct.hid_device_id { i16 3, i16 2, i32 1158, i32 389, i32 5 }, %struct.hid_device_id { i16 3, i16 2, i32 1158, i32 390, i32 5 }, %struct.hid_device_id { i16 3, i16 2, i32 1578, i32 28928, i32 5 }, %struct.hid_device_id { i16 3, i16 2, i32 1539, i32 1536, i32 10 }, %struct.hid_device_id { i16 24, i16 4, i32 7062, i32 6917, i32 10 }, %struct.hid_device_id { i16 3, i16 2, i32 1242, i32 4164, i32 262 }, %struct.hid_device_id { i16 3, i16 2, i32 1242, i32 4173, i32 262 }, %struct.hid_device_id { i16 3, i16 2, i32 2362, i32 32769, i32 9 }, %struct.hid_device_id { i16 3, i16 2, i32 2362, i32 32770, i32 9 }, %struct.hid_device_id { i16 3, i16 2, i32 2362, i32 32771, i32 9 }, %struct.hid_device_id { i16 3, i16 2, i32 8327, i32 1795, i32 6 }, %struct.hid_device_id { i16 3, i16 2, i32 1032, i32 12289, i32 4 }, %struct.hid_device_id { i16 24, i16 4, i32 1739, i32 33571, i32 274 }, %struct.hid_device_id { i16 3, i16 2, i32 2956, i32 146, i32 275 }, %struct.hid_device_id { i16 3, i16 2, i32 1155, i32 12897, i32 3 }, %struct.hid_device_id { i16 24, i16 4, i32 1739, i32 52744, i32 21 }, %struct.hid_device_id { i16 24, i16 4, i32 1739, i32 52745, i32 21 }, %struct.hid_device_id { i16 3, i16 2, i32 6020, i32 22, i32 261 }, %struct.hid_device_id { i16 3, i16 2, i32 7774, i32 787, i32 10 }, %struct.hid_device_id { i16 3, i16 2, i32 8829, i32 1801, i32 10 }, %struct.hid_device_id { i16 3, i16 2, i32 8829, i32 2585, i32 10 }, %struct.hid_device_id { i16 3, i16 2, i32 774, i32 65343, i32 272 }, %struct.hid_device_id { i16 -1, i16 4, i32 1046, i32 49512, i32 23 }, %struct.hid_device_id { i16 3, i16 2, i32 4024, i32 4361, i32 10 }, %struct.hid_device_id { i16 3, i16 2, i32 9477, i32 544, i32 10 }, %struct.hid_device_id { i16 3, i16 2, i32 5239, i32 4102, i32 10 }, %struct.hid_device_id { i16 3, i16 2, i32 5239, i32 4103, i32 10 }, %struct.hid_device_id { i16 3, i16 2, i32 5239, i32 4110, i32 10 }, %struct.hid_device_id { i16 3, i16 2, i32 5239, i32 4129, i32 10 }, %struct.hid_device_id { i16 3, i16 2, i32 5239, i32 4131, i32 10 }, %struct.hid_device_id { i16 3, i16 2, i32 5239, i32 4130, i32 10 }, %struct.hid_device_id { i16 3, i16 2, i32 5239, i32 4132, i32 10 }, %struct.hid_device_id { i16 3, i16 2, i32 5239, i32 4134, i32 10 }, %struct.hid_device_id { i16 3, i16 2, i32 5239, i32 4133, i32 10 }, %struct.hid_device_id { i16 -1, i16 0, i32 6353, i32 20520, i32 273 }, %struct.hid_device_id { i16 -1, i16 2, i32 -1, i32 -1, i32 0 }, %struct.hid_device_id { i16 -1, i16 4, i32 -1, i32 -1, i32 18 }, %struct.hid_device_id zeroinitializer], [368 x i8] zeroinitializer }, align 32
@mt_grabbed_usages = internal constant { [2 x %struct.hid_usage_id], [40 x i8] } { [2 x %struct.hid_usage_id] [%struct.hid_usage_id { i32 -1, i32 -1, i32 -1 }, %struct.hid_usage_id { i32 -2, i32 -2, i32 -2 }], [40 x i8] zeroinitializer }, align 32
@mt_classes = internal constant { [29 x %struct.mt_class], [212 x i8] } { [29 x %struct.mt_class] [%struct.mt_class { i32 1, i32 4112, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.mt_class { i32 10, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.mt_class { i32 2, i32 16, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.mt_class { i32 3, i32 64, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.mt_class { i32 4, i32 66, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.mt_class { i32 5, i32 320, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.mt_class { i32 6, i32 34, i32 0, i32 0, i32 0, i32 0, i8 2, i8 0, i8 0 }, %struct.mt_class { i32 7, i32 40, i32 0, i32 0, i32 0, i32 0, i8 2, i8 0, i8 0 }, %struct.mt_class { i32 9, i32 40, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.mt_class { i32 18, i32 334864, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1 }, %struct.mt_class { i32 19, i32 4112, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1 }, %struct.mt_class { i32 21, i32 1383440, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1 }, %struct.mt_class { i32 22, i32 2432016, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1 }, %struct.mt_class { i32 23, i32 269328, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1 }, %struct.mt_class { i32 257, i32 32834, i32 2048, i32 128, i32 128, i32 0, i8 60, i8 0, i8 0 }, %struct.mt_class { i32 259, i32 34, i32 4096, i32 0, i32 0, i32 32, i8 0, i8 0, i8 0 }, %struct.mt_class { i32 260, i32 18, i32 4096, i32 0, i32 0, i32 32, i8 0, i8 0, i8 0 }, %struct.mt_class { i32 261, i32 16, i32 0, i32 0, i32 0, i32 0, i8 2, i8 1, i8 0 }, %struct.mt_class { i32 262, i32 1, i32 0, i32 0, i32 0, i32 0, i8 4, i8 0, i8 0 }, %struct.mt_class { i32 264, i32 35, i32 0, i32 0, i32 0, i32 0, i8 2, i8 0, i8 0 }, %struct.mt_class { i32 265, i32 3, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.mt_class { i32 263, i32 513, i32 2048, i32 0, i32 0, i32 0, i8 40, i8 0, i8 0 }, %struct.mt_class { i32 266, i32 23568, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.mt_class { i32 267, i32 135184, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.mt_class { i32 272, i32 12304, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.mt_class { i32 273, i32 6162, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.mt_class { i32 274, i32 269328, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.mt_class { i32 275, i32 529424, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.mt_class zeroinitializer], [212 x i8] zeroinitializer }, align 32
@mt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1713, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot allocate multitouch data\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mt_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/hid/hid-multitouch.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt_probe._entry_ptr = internal global ptr @mt_probe._entry, section ".printk_index", align 4
@mt_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&td->release_timer)\00", [43 x i8] zeroinitializer }, align 32
@mt_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mt_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1763, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot allocate sysfs group for %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mt_probe._entry_ptr.11 = internal global ptr @mt_probe._entry.8, section ".printk_index", align 4
@sysfs_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_quirks, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_quirks = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mt_show_quirks, ptr @mt_set_quirks }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"quirks\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@mt_need_to_apply_feature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 1460, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to allocate buffer for report\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt_need_to_apply_feature\00", [39 x i8] zeroinitializer }, align 32
@mt_need_to_apply_feature._entry_ptr = internal global ptr @mt_need_to_apply_feature._entry, section ".printk_index", align 4
@mzero = internal constant { i32, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mt_input_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 1319, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to allocate data for report\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt_input_mapping\00", [47 x i8] zeroinitializer }, align 32
@mt_input_mapping._entry_ptr = internal global ptr @mt_input_mapping._entry, section ".printk_index", align 4
@hid_map_usage._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@hid_map_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.hid_map_usage, ptr @.str.20, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_map_usage._entry_ptr = internal global ptr @hid_map_usage._entry, section ".printk_index", align 4
@mtrue = internal constant { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@mfalse = internal constant { i8, [31 x i8] } zeroinitializer, align 32
@mt_store_field.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 0, i8 -85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt_store_field\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ignoring duplicate usage on incomplete\00", [57 x i8] zeroinitializer }, align 32
@mt_input_configured._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.23, ptr @.str.4, i32 1574, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt_input_configured\00", [44 x i8] zeroinitializer }, align 32
@mt_input_configured._entry_ptr = internal global ptr @mt_input_configured._entry, section ".printk_index", align 4
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Custom Media Keys\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@mt_feature_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 489, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HID_DG_BUTTONTYPE out of range\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt_feature_mapping\00", [45 x i8] zeroinitializer }, align 32
@mt_feature_mapping._entry_ptr = internal global ptr @mt_feature_mapping._entry, section ".printk_index", align 4
@mt_get_feature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 458, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to fetch feature %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt_get_feature\00", [17 x i8] zeroinitializer }, align 32
@mt_get_feature._entry_ptr = internal global ptr @mt_get_feature._entry, section ".printk_index", align 4
@mt_get_feature._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 463, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to report feature\0A\00", [38 x i8] zeroinitializer }, align 32
@mt_get_feature._entry_ptr.33 = internal global ptr @mt_get_feature._entry.31, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [29 x i64] [i64 27, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10, i64 18, i64 19, i64 21, i64 22, i64 23, i64 257, i64 259, i64 260, i64 261, i64 262, i64 263, i64 264, i64 265, i64 266, i64 267, i64 272, i64 273, i64 274, i64 275]
@__sancov_gen_cov_switch_values.34 = internal global [11 x i64] [i64 9, i64 32, i64 65542, i64 65548, i64 65550, i64 65664, i64 786433, i64 851970, i64 851972, i64 851973, i64 4281401462]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 16, i64 16, i64 32, i64 53, i64 107, i64 108]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 65536, i64 589824, i64 851968, i64 4278190080]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 65584, i64 65585]
@__sancov_gen_cov_switch_values.38 = internal global [14 x i64] [i64 12, i64 32, i64 852016, i64 852018, i64 852019, i64 852031, i64 852034, i64 852039, i64 852040, i64 852041, i64 852049, i64 852052, i64 852053, i64 852054]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 18, i64 21, i64 22]
@__sancov_gen_cov_switch_values.40 = internal global [13 x i64] [i64 11, i64 32, i64 65538, i64 65542, i64 65543, i64 65548, i64 65550, i64 65664, i64 786433, i64 851972, i64 851973, i64 852000, i64 4281401462]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 852053, i64 852057, i64 4278190277]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 32, i64 852050, i64 852053, i64 852055, i64 852056, i64 852064]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 851972, i64 851973]
@___asan_gen_.44 = private unnamed_addr constant [10 x i8] c"mt_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 2198, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 2216, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 2199, i32 10 }
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"mt_devices\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1822, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"mt_grabbed_usages\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 2193, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"mt_classes\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 241, i32 30 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1713, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1747, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [19 x i8] c"mt_attribute_group\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 433, i32 37 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1762, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [12 x i8] c"sysfs_attrs\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 428, i32 26 }
@___asan_gen_.101 = private unnamed_addr constant [16 x i8] c"dev_attr_quirks\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 426, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 399, i32 22 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1459, i32 5 }
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"mzero\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 91, i32 20 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1319, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1036, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [6 x i8] c"mtrue\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 89, i32 19 }
@___asan_gen_.149 = private unnamed_addr constant [7 x i8] c"mfalse\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 90, i32 19 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 686, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1574, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1604, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1611, i32 12 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1620, i32 18 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 489, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 457, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [32 x i8] c"../drivers/hid/hid-multitouch.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 463, i32 4 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_mt_driver_exit, ptr @__initcall__kmod_hid_multitouch__235_2216_mt_driver_init6, ptr @hid_map_usage._entry, ptr @hid_map_usage._entry_ptr, ptr @mt_driver_exit, ptr @mt_feature_mapping._entry, ptr @mt_feature_mapping._entry_ptr, ptr @mt_get_feature._entry, ptr @mt_get_feature._entry.31, ptr @mt_get_feature._entry_ptr, ptr @mt_get_feature._entry_ptr.33, ptr @mt_input_configured._entry, ptr @mt_input_configured._entry_ptr, ptr @mt_input_mapping._entry, ptr @mt_input_mapping._entry_ptr, ptr @mt_need_to_apply_feature._entry, ptr @mt_need_to_apply_feature._entry_ptr, ptr @mt_probe._entry, ptr @mt_probe._entry.8, ptr @mt_probe._entry_ptr, ptr @mt_probe._entry_ptr.11, ptr @mt_driver, ptr @.str, ptr @.str.1, ptr @mt_devices, ptr @mt_grabbed_usages, ptr @mt_classes, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mt_probe.__key, ptr @.str.7, ptr @mt_attribute_group, ptr @.str.9, ptr @.str.10, ptr @sysfs_attrs, ptr @dev_attr_quirks, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @mzero, ptr @.str.16, ptr @.str.17, ptr @hid_map_usage._rs, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @mtrue, ptr @mfalse, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_devices to i32), i32 1456, i32 1824, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_grabbed_usages to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_classes to i32), i32 812, i32 1024, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_quirks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_need_to_apply_feature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mzero to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_input_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtrue to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfalse to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_input_configured._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_feature_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_get_feature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_get_feature._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @mt_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hid_unregister_driver(ptr noundef nonnull @mt_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.for.end_crit_edge [
    i32 275, label %for.end.fold.split124
    i32 10, label %for.end.fold.split
    i32 2, label %for.end.fold.split99
    i32 3, label %for.end.fold.split100
    i32 4, label %for.end.fold.split101
    i32 5, label %for.end.fold.split102
    i32 6, label %for.end.fold.split103
    i32 7, label %for.end.fold.split104
    i32 9, label %for.end.fold.split105
    i32 18, label %for.end.fold.split106
    i32 19, label %for.end.fold.split107
    i32 21, label %for.end.fold.split108
    i32 22, label %for.end.fold.split109
    i32 23, label %for.end.fold.split110
    i32 257, label %for.end.fold.split111
    i32 259, label %for.end.fold.split112
    i32 260, label %for.end.fold.split113
    i32 261, label %for.end.fold.split114
    i32 262, label %for.end.fold.split115
    i32 264, label %for.end.fold.split116
    i32 265, label %for.end.fold.split117
    i32 263, label %for.end.fold.split118
    i32 266, label %for.end.fold.split119
    i32 267, label %for.end.fold.split120
    i32 272, label %for.end.fold.split121
    i32 273, label %for.end.fold.split122
    i32 274, label %for.end.fold.split123
  ]

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split99:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split100:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split101:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split102:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split103:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split104:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split105:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split106:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split107:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split108:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split109:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split110:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split111:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split112:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split113:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split114:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split115:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split116:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split117:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split118:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split119:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split120:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split121:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split122:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split123:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split124:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.end.fold.split124, %for.end.fold.split123, %for.end.fold.split122, %for.end.fold.split121, %for.end.fold.split120, %for.end.fold.split119, %for.end.fold.split118, %for.end.fold.split117, %for.end.fold.split116, %for.end.fold.split115, %for.end.fold.split114, %for.end.fold.split113, %for.end.fold.split112, %for.end.fold.split111, %for.end.fold.split110, %for.end.fold.split109, %for.end.fold.split108, %for.end.fold.split107, %for.end.fold.split106, %for.end.fold.split105, %for.end.fold.split104, %for.end.fold.split103, %for.end.fold.split102, %for.end.fold.split101, %for.end.fold.split100, %for.end.fold.split99, %for.end.fold.split, %entry.for.end_crit_edge
  %mtclass.0 = phi ptr [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 1), %for.end.fold.split ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 2), %for.end.fold.split99 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 3), %for.end.fold.split100 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 4), %for.end.fold.split101 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 5), %for.end.fold.split102 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 6), %for.end.fold.split103 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 7), %for.end.fold.split104 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 8), %for.end.fold.split105 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 9), %for.end.fold.split106 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 10), %for.end.fold.split107 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 11), %for.end.fold.split108 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 12), %for.end.fold.split109 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 13), %for.end.fold.split110 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 14), %for.end.fold.split111 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 15), %for.end.fold.split112 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 16), %for.end.fold.split113 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 17), %for.end.fold.split114 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 18), %for.end.fold.split115 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 19), %for.end.fold.split116 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 20), %for.end.fold.split117 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 21), %for.end.fold.split118 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 22), %for.end.fold.split119 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 23), %for.end.fold.split120 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 24), %for.end.fold.split121 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 25), %for.end.fold.split122 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 26), %for.end.fold.split123 ], [ getelementptr inbounds ([29 x %struct.mt_class], ptr @mt_classes, i32 0, i32 27), %for.end.fold.split124 ], [ @mt_classes, %entry.for.end_crit_edge ]
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 104, i32 noundef 3520) #9
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end7:                                          ; preds = %for.end
  %hdev8 = getelementptr inbounds %struct.mt_device, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %hdev8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hdev, ptr %hdev8, align 4
  %4 = call ptr @memcpy(ptr %call.i, ptr %mtclass.0, i32 28)
  %inputmode_value = getelementptr inbounds %struct.mt_device, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %inputmode_value to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %inputmode_value, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %applications = getelementptr inbounds %struct.mt_device, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %applications to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %applications, ptr %applications, align 4
  %prev.i = getelementptr inbounds %struct.mt_device, ptr %call.i, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %applications, ptr %prev.i, align 4
  %reports = getelementptr inbounds %struct.mt_device, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %reports to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %reports, ptr %reports, align 4
  %prev.i95 = getelementptr inbounds %struct.mt_device, ptr %call.i, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %prev.i95 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %reports, ptr %prev.i95, align 4
  %vendor = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 2
  %11 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp10 = icmp eq i32 %12, -1
  br i1 %cmp10, label %land.lhs.true, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %product = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 3
  %13 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp11 = icmp eq i32 %14, -1
  br i1 %cmp11, label %if.then12, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %serial_maybe = getelementptr inbounds %struct.mt_device, ptr %call.i, i32 0, i32 7
  %15 = ptrtoint ptr %serial_maybe to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %serial_maybe, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %16 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %quirks, align 8
  %or15 = or i32 %17, -2147481600
  store i32 %or15, ptr %quirks, align 8
  %group = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 1
  %18 = ptrtoint ptr %group to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %group, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %19)
  %cmp16.not = icmp eq i16 %19, 4
  br i1 %cmp16.not, label %if.end13.if.end21_crit_edge, label %if.then18

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %or20 = or i32 %17, -2147481536
  %20 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or20, ptr %quirks, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end13.if.end21_crit_edge
  %quirks22 = getelementptr inbounds %struct.mt_class, ptr %mtclass.0, i32 0, i32 1
  %21 = ptrtoint ptr %quirks22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %quirks22, align 4
  %and = and i32 %22, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end21.do.body30_crit_edge, label %if.then24

if.end21.do.body30_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body30

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %quirks, align 8
  %and26 = and i32 %24, -2113
  %or28 = or i32 %and26, 64
  store i32 %or28, ptr %quirks, align 8
  br label %do.body30

do.body30:                                        ; preds = %if.then24, %if.end21.do.body30_crit_edge
  %release_timer = getelementptr inbounds %struct.mt_device, ptr %call.i, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %release_timer, ptr noundef nonnull @mt_expired_timeout, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @mt_probe.__key) #9
  %call.i96 = tail call i32 @hid_open_report(ptr noundef %hdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %cmp34.not = icmp eq i32 %call.i96, 0
  br i1 %cmp34.not, label %if.end37, label %do.body30.cleanup_crit_edge

do.body30.cleanup_crit_edge:                      ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %do.body30
  %25 = ptrtoint ptr %quirks22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %quirks22, align 4
  %and39 = and i32 %26, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end37.if.end42_crit_edge, label %if.then41

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then41:                                        ; preds = %if.end37
  %report_list.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 0, i32 1
  %27 = ptrtoint ptr %report_list.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %report.03.i = load ptr, ptr %report_list.i, align 4
  %cmp.not4.i = icmp eq ptr %report.03.i, %report_list.i
  br i1 %cmp.not4.i, label %if.then41.if.end42_crit_edge, label %if.then41.for.body.i_crit_edge

if.then41.for.body.i_crit_edge:                   ; preds = %if.then41
  br label %for.body.i

if.then41.if.end42_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

for.body.i:                                       ; preds = %for.inc14.i.for.body.i_crit_edge, %if.then41.for.body.i_crit_edge
  %report.05.i = phi ptr [ %report.0.i, %for.inc14.i.for.body.i_crit_edge ], [ %report.03.i, %if.then41.for.body.i_crit_edge ]
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %report.05.i, i32 0, i32 6
  %28 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc14.i_crit_edge, label %for.body.i.for.body7.i_crit_edge

for.body.i.for.body7.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body7.i

for.body.i.for.inc14.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc14.i

for.body7.i:                                      ; preds = %for.inc.i.for.body7.i_crit_edge, %for.body.i.for.body7.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.inc.i.for.body7.i_crit_edge ], [ 0, %for.body.i.for.body7.i_crit_edge ]
  %arrayidx8.i = getelementptr %struct.hid_report, ptr %report.05.i, i32 0, i32 5, i32 %i.02.i
  %30 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx8.i, align 4
  %maxusage.i = getelementptr inbounds %struct.hid_field, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %maxusage.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %maxusage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp9.not.i = icmp eq i32 %33, 0
  br i1 %cmp9.not.i, label %for.body7.i.for.inc.i_crit_edge, label %if.then10.i

for.body7.i.for.inc.i_crit_edge:                  ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then10.i:                                      ; preds = %for.body7.i
  %usage1.i.i = getelementptr inbounds %struct.hid_field, ptr %31, i32 0, i32 3
  %34 = ptrtoint ptr %usage1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %usage1.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 852049, i32 %37)
  %cmp.not.i.i = icmp eq i32 %37, 852049
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.then10.i.for.inc.i_crit_edge

if.then10.i.for.inc.i_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i.i:                                ; preds = %if.then10.i
  %flags.i.i = getelementptr inbounds %struct.hid_field, ptr %31, i32 0, i32 5
  %38 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i.for.inc.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and3.i.i = and i32 %39, -4
  %or.i.i = or i32 %and3.i.i, 2
  %40 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or.i.i, ptr %flags.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i, %lor.lhs.false.i.i.for.inc.i_crit_edge, %if.then10.i.for.inc.i_crit_edge, %for.body7.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.02.i, 1
  %41 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %maxfield.i, align 4
  %cmp6.i = icmp ult i32 %inc.i, %42
  br i1 %cmp6.i, label %for.inc.i.for.body7.i_crit_edge, label %for.inc.i.for.inc14.i_crit_edge

for.inc.i.for.inc14.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc14.i

for.inc.i.for.body7.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7.i

for.inc14.i:                                      ; preds = %for.inc.i.for.inc14.i_crit_edge, %for.body.i.for.inc14.i_crit_edge
  %43 = ptrtoint ptr %report.05.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %report.0.i = load ptr, ptr %report.05.i, align 4
  %cmp.not.i = icmp eq ptr %report.0.i, %report_list.i
  br i1 %cmp.not.i, label %for.inc14.i.if.end42_crit_edge, label %for.inc14.i.for.body.i_crit_edge

for.inc14.i.for.body.i_crit_edge:                 ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc14.i.if.end42_crit_edge:                   ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.end42:                                         ; preds = %for.inc14.i.if.end42_crit_edge, %if.then41.if.end42_crit_edge, %if.end37.if.end42_crit_edge
  %call43 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %call48 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @mt_attribute_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end46.if.end56_crit_edge, label %do.end53

if.end46.if.end56_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %name55 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 39
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %name55) #12
  br label %if.end56

if.end56:                                         ; preds = %do.end53, %if.end46.if.end56_crit_edge
  tail call fastcc void @mt_set_modes(ptr noundef %hdev, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.end42.cleanup_crit_edge, %do.body30.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end56 ], [ -12, %do.end ], [ %call.i96, %do.body30.cleanup_crit_edge ], [ %call43, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %release_timer = getelementptr inbounds %struct.mt_device, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @del_timer_sync(ptr noundef %release_timer) #9
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @mt_attribute_group) #9
  tail call void @hid_hw_stop(ptr noundef %hdev) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_event(ptr noundef %hid, ptr noundef %field, ptr noundef %usage, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %report = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 17
  %2 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %report, align 4
  %call1 = tail call fastcc ptr @mt_find_report_data(ptr noundef %1, ptr noundef %3)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %is_mt_collection = getelementptr inbounds %struct.mt_report_data, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %is_mt_collection to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_mt_collection, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %claimed.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 33
  %6 = ptrtoint ptr %claimed.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %claimed.i, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %land.lhs.true.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then
  %hiddev_hid_event.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 46
  %8 = ptrtoint ptr %hiddev_hid_event.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hiddev_hid_event.i, align 8
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %9(ptr noundef %hid, ptr noundef %field, ptr noundef %usage, i32 noundef %value) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then.cleanup_crit_edge ], [ 1, %land.lhs.true.i.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt_report(ptr nocapture noundef readonly %hid, ptr noundef %report) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 8
  %field1 = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 5
  %0 = ptrtoint ptr %field1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %field1, align 4
  %claimed = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 33
  %2 = ptrtoint ptr %claimed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %claimed, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call fastcc ptr @mt_find_report_data(ptr noundef %5, ptr noundef %report)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %is_mt_collection = getelementptr inbounds %struct.mt_report_data, ptr %call2, i32 0, i32 3
  %6 = ptrtoint ptr %is_mt_collection to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_mt_collection, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end6_crit_edge, label %if.then5

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %report1.i = getelementptr inbounds %struct.mt_report_data, ptr %call2, i32 0, i32 1
  %10 = ptrtoint ptr %report1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %report1.i, align 4
  %application.i = getelementptr inbounds %struct.mt_report_data, ptr %call2, i32 0, i32 2
  %12 = ptrtoint ptr %application.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %application.i, align 4
  %mt_io_flags.i = getelementptr inbounds %struct.mt_device, ptr %9, i32 0, i32 3
  %call2.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %mt_io_flags.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then5
  %scantime3.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %scantime3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %scantime3.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %prev_scantime.i.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 18
  %18 = ptrtoint ptr %prev_scantime.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prev_scantime.i.i, align 4
  %sub.i.i = sub i32 %17, %19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %jiffies.i.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 16
  %21 = ptrtoint ptr %jiffies.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %jiffies.i.i, align 4
  %sub1.i.i = sub i32 %20, %22
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef %sub1.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %24 = ptrtoint ptr %jiffies.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %jiffies.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.if.end.i.i_crit_edge

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %scantime_logical_max.i.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 6
  %25 = ptrtoint ptr %scantime_logical_max.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scantime_logical_max.i.i, align 4
  %add.i.i = add i32 %26, %sub.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %delta.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %sub.i.i, %if.end.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %call.i.i)
  %cmp3.i.i = icmp ugt i32 %call.i.i, 1000000
  br i1 %cmp3.i.i, label %if.end.i.i.mt_compute_timestamp.exit.i_crit_edge, label %if.else.i.i

if.end.i.i.mt_compute_timestamp.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt_compute_timestamp.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i.i = mul i32 %delta.0.i.i, 100
  %timestamp.i.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 17
  %27 = ptrtoint ptr %timestamp.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %timestamp.i.i, align 4
  %add5.i.i = add i32 %28, %mul.i.i
  br label %mt_compute_timestamp.exit.i

mt_compute_timestamp.exit.i:                      ; preds = %if.else.i.i, %if.end.i.i.mt_compute_timestamp.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %add5.i.i, %if.else.i.i ], [ 0, %if.end.i.i.mt_compute_timestamp.exit.i_crit_edge ]
  %timestamp.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 17
  %29 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i.i, ptr %timestamp.i, align 4
  %raw_cc.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 7
  %30 = ptrtoint ptr %raw_cc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %raw_cc.i, align 4
  %cmp.not.i = icmp eq ptr %31, @mzero
  br i1 %cmp.not.i, label %mt_compute_timestamp.exit.i.if.end24.i_crit_edge, label %if.end7.i

mt_compute_timestamp.exit.i.if.end24.i_crit_edge: ; preds = %mt_compute_timestamp.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.end7.i:                                        ; preds = %mt_compute_timestamp.exit.i
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp8.i = icmp sgt i32 %33, -1
  br i1 %cmp8.i, label %if.then9.i, label %if.end7.i.if.end24.i_crit_edge

if.end7.i.if.end24.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then9.i:                                       ; preds = %if.end7.i
  %quirks.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 4
  %34 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %35, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.then9.i.if.else.i_crit_edge, label %land.lhs.true.i

if.then9.i.if.else.i_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then9.i
  %num_received.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 11
  %36 = ptrtoint ptr %num_received.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %num_received.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp11.i = icmp eq i8 %37, 0
  br i1 %cmp11.i, label %land.lhs.true13.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true13.i:                                ; preds = %land.lhs.true.i
  %38 = ptrtoint ptr %prev_scantime.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %prev_scantime.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %17)
  %cmp14.not.i = icmp eq i32 %39, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool18.not.i = icmp eq i32 %33, 0
  %or.cond184.i = select i1 %cmp14.not.i, i1 %tobool18.not.i, i1 false
  br i1 %or.cond184.i, label %land.lhs.true13.i.if.end24.i_crit_edge, label %land.lhs.true13.i.if.end24.sink.split.i_crit_edge

land.lhs.true13.i.if.end24.sink.split.i_crit_edge: ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.sink.split.i

land.lhs.true13.i.if.end24.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then9.i.if.else.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool18.not.old.i = icmp eq i32 %33, 0
  br i1 %tobool18.not.old.i, label %if.else.i.if.end24.i_crit_edge, label %if.else.i.if.end24.sink.split.i_crit_edge

if.else.i.if.end24.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.sink.split.i

if.else.i.if.end24.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.end24.sink.split.i:                            ; preds = %if.else.i.if.end24.sink.split.i_crit_edge, %land.lhs.true13.i.if.end24.sink.split.i_crit_edge
  %conv17.i = trunc i32 %33 to i8
  %num_expected.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 12
  %40 = ptrtoint ptr %num_expected.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv17.i, ptr %num_expected.i, align 1
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end24.sink.split.i, %if.else.i.if.end24.i_crit_edge, %land.lhs.true13.i.if.end24.i_crit_edge, %if.end7.i.if.end24.i_crit_edge, %mt_compute_timestamp.exit.i.if.end24.i_crit_edge
  %41 = ptrtoint ptr %prev_scantime.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %17, ptr %prev_scantime.i.i, align 4
  %num_received26.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 11
  %42 = ptrtoint ptr %num_received26.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %num_received26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp28.i = icmp eq i8 %43, 0
  %field30.i = getelementptr inbounds %struct.hid_report, ptr %11, i32 0, i32 5
  %44 = ptrtoint ptr %field30.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %field30.i, align 4
  %hidinput.i = getelementptr inbounds %struct.hid_field, ptr %45, i32 0, i32 19
  %46 = ptrtoint ptr %hidinput.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hidinput.i, align 4
  %input31.i = getelementptr inbounds %struct.hid_input, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %input31.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %input31.i, align 4
  %mt_usages.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 3
  %50 = ptrtoint ptr %mt_usages.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %slot.0175.i = load ptr, ptr %mt_usages.i, align 4
  %cmp33.not176.i = icmp eq ptr %slot.0175.i, %mt_usages.i
  br i1 %cmp33.not176.i, label %if.end24.i.for.cond45.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end24.i.for.cond45.preheader.i_crit_edge:      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond45.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end24.i
  %mt1.i.i = getelementptr inbounds %struct.input_dev, ptr %49, i32 0, i32 25
  %quirks2.i.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 4
  %num_expected.i.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 12
  %maxcontacts.i.i = getelementptr inbounds %struct.mt_device, ptr %9, i32 0, i32 5
  %application.i.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 1
  %pending_palm_slots.i.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 10
  %absinfo.i.i.i = getelementptr inbounds %struct.input_dev, ptr %49, i32 0, i32 26
  br label %for.body.i

for.cond45.preheader.i:                           ; preds = %for.inc.i.for.cond45.preheader.i_crit_edge, %if.end24.i.for.cond45.preheader.i_crit_edge
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %11, i32 0, i32 6
  %51 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp46182.not.i = icmp eq i32 %52, 0
  br i1 %cmp46182.not.i, label %for.cond45.preheader.i.for.end67.i_crit_edge, label %for.body48.lr.ph.i

for.cond45.preheader.i.for.end67.i_crit_edge:     ; preds = %for.cond45.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end67.i

for.body48.lr.ph.i:                               ; preds = %for.cond45.preheader.i
  %quirks1.i.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 4
  %left_button_state.i.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 8
  br label %for.body48.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %slot.0177.i = phi ptr [ %slot.0175.i, %for.body.lr.ph.i ], [ %slot.0.i, %for.inc.i.for.body.i_crit_edge ]
  %53 = ptrtoint ptr %mt1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mt1.i.i, align 4
  %55 = ptrtoint ptr %quirks2.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %quirks2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %slot.0177.i, null
  br i1 %tobool.not.i.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i150.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i150.i:                                    ; preds = %for.body.i
  %and.i.i = and i32 %56, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i150.i.if.end7.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i150.i.if.end7.i.i_crit_edge:              ; preds = %if.end.i150.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i150.i
  %57 = ptrtoint ptr %num_received26.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %num_received26.i, align 4
  %59 = ptrtoint ptr %num_expected.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %num_expected.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %60)
  %cmp.not.i.i = icmp ult i8 %58, %60
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.if.end7.i.i_crit_edge, label %land.lhs.true.i.i.for.inc.i_crit_edge

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i.i.if.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %land.lhs.true.i.i.if.end7.i.i_crit_edge, %if.end.i150.i.if.end7.i.i_crit_edge
  %and8.i.i = and i32 %56, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.then10.i.i, label %if.end7.i.i.if.end33.i.i_crit_edge

if.end7.i.i.if.end33.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i.i

if.then10.i.i:                                    ; preds = %if.end7.i.i
  %and11.i.i = and i32 %56, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.then10.i.i.if.end16.i.i_crit_edge, label %if.then13.i.i

if.then10.i.i.if.end16.i.i_crit_edge:             ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i.i

if.then13.i.i:                                    ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inrange_state14.i.i = getelementptr inbounds %struct.mt_usages, ptr %slot.0177.i, i32 0, i32 11
  %61 = ptrtoint ptr %inrange_state14.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %inrange_state14.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %62, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool15.i.i = icmp ne i8 %64, 0
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then13.i.i, %if.then10.i.i.if.end16.i.i_crit_edge
  %valid.0.off0.i.i = phi i1 [ %tobool15.i.i, %if.then13.i.i ], [ true, %if.then10.i.i.if.end16.i.i_crit_edge ]
  %and17.i.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end16.i.i.if.end22.i.i_crit_edge, label %if.then19.i.i

if.end16.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i.i

if.then19.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %tip_state.i.i = getelementptr inbounds %struct.mt_usages, ptr %slot.0177.i, i32 0, i32 10
  %65 = ptrtoint ptr %tip_state.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tip_state.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool20.i.i = icmp ne i8 %68, 0
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then19.i.i, %if.end16.i.i.if.end22.i.i_crit_edge
  %valid.1.off0.i.i = phi i1 [ %tobool20.i.i, %if.then19.i.i ], [ %valid.0.off0.i.i, %if.end16.i.i.if.end22.i.i_crit_edge ]
  %and23.i.i = and i32 %56, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp eq i32 %and23.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end29.i.i, label %if.then25.i.i

if.then25.i.i:                                    ; preds = %if.end22.i.i
  %confidence_state26.i.i = getelementptr inbounds %struct.mt_usages, ptr %slot.0177.i, i32 0, i32 12
  %69 = ptrtoint ptr %confidence_state26.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %confidence_state26.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool27.not.i.i = icmp eq i8 %72, 0
  br i1 %tobool27.not.i.i, label %if.then25.i.i.if.then37.i_crit_edge, label %if.then25.i.i.if.end33.i.i_crit_edge

if.then25.i.i.if.end33.i.i_crit_edge:             ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i.i

if.then25.i.i.if.then37.i_crit_edge:              ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37.i

if.end29.i.i:                                     ; preds = %if.end22.i.i
  br i1 %valid.1.off0.i.i, label %if.end29.i.i.if.end33.i.i_crit_edge, label %if.end29.i.i.if.then37.i_crit_edge

if.end29.i.i.if.then37.i_crit_edge:               ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37.i

if.end29.i.i.if.end33.i.i_crit_edge:              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.end29.i.i.if.end33.i.i_crit_edge, %if.then25.i.i.if.end33.i.i_crit_edge, %if.end7.i.i.if.end33.i.i_crit_edge
  %and.i.i.i = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %contactid.i.i.i = getelementptr inbounds %struct.mt_usages, ptr %slot.0177.i, i32 0, i32 9
  %73 = ptrtoint ptr %contactid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %contactid.i.i.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  br label %mt_compute_slot.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end33.i.i
  %and2.i.i.i = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.then4.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %contactid.i.i.i.i = getelementptr inbounds %struct.mt_usages, ptr %slot.0177.i, i32 0, i32 9
  %77 = ptrtoint ptr %contactid.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %contactid.i.i.i.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.not.i.i.i.i = icmp eq i32 %80, 0
  br i1 %cmp.not.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %if.then4.i.i.i.mt_compute_slot.exit.i.i_crit_edge

if.then4.i.i.i.mt_compute_slot.exit.i.i_crit_edge: ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt_compute_slot.exit.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.then4.i.i.i
  %81 = ptrtoint ptr %num_received26.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %num_received26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp1.i.i.i.i = icmp eq i8 %82, 0
  br i1 %cmp1.i.i.i.i, label %lor.lhs.false.i.i.i.i.lor.lhs.false.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.if.then37.i_crit_edge

lor.lhs.false.i.i.i.i.if.then37.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37.i

lor.lhs.false.i.i.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  %and6.i.i.i = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %if.end9.i.i.i, label %mt_compute_slot.exit.thread233.i.i

mt_compute_slot.exit.thread233.i.i:               ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %num_received26.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %num_received26.i, align 4
  %conv.i.i.i = zext i8 %84 to i32
  br label %lor.lhs.false.i.i

if.end9.i.i.i:                                    ; preds = %if.end5.i.i.i
  %and10.i.i.i = and i32 %56, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %and10.i.i.i, 0
  %contactid15.i.i.i = getelementptr inbounds %struct.mt_usages, ptr %slot.0177.i, i32 0, i32 9
  %85 = ptrtoint ptr %contactid15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %contactid15.i.i.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  br i1 %tobool11.not.i.i.i, label %if.end14.i.i.i, label %if.then12.i.i.i

if.then12.i.i.i:                                  ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %88, -1
  br label %mt_compute_slot.exit.i.i

if.end14.i.i.i:                                   ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call16.i.i.i = tail call i32 @input_mt_get_slot_by_key(ptr noundef %49, i32 noundef %88) #9
  br label %mt_compute_slot.exit.i.i

mt_compute_slot.exit.i.i:                         ; preds = %if.end14.i.i.i, %if.then12.i.i.i, %if.then4.i.i.i.mt_compute_slot.exit.i.i_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %76, %if.then.i.i.i ], [ %sub.i.i.i, %if.then12.i.i.i ], [ %call16.i.i.i, %if.end14.i.i.i ], [ %80, %if.then4.i.i.i.mt_compute_slot.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp34.i.i = icmp slt i32 %retval.0.i.i.i, 0
  br i1 %cmp34.i.i, label %mt_compute_slot.exit.i.i.if.then37.i_crit_edge, label %mt_compute_slot.exit.i.i.lor.lhs.false.i.i_crit_edge

mt_compute_slot.exit.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %mt_compute_slot.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

mt_compute_slot.exit.i.i.if.then37.i_crit_edge:   ; preds = %mt_compute_slot.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37.i

lor.lhs.false.i.i:                                ; preds = %mt_compute_slot.exit.i.i.lor.lhs.false.i.i_crit_edge, %mt_compute_slot.exit.thread233.i.i, %lor.lhs.false.i.i.i.i.lor.lhs.false.i.i_crit_edge
  %retval.0.i236.i.i = phi i32 [ %conv.i.i.i, %mt_compute_slot.exit.thread233.i.i ], [ %retval.0.i.i.i, %mt_compute_slot.exit.i.i.lor.lhs.false.i.i_crit_edge ], [ 0, %lor.lhs.false.i.i.i.i.lor.lhs.false.i.i_crit_edge ]
  %89 = ptrtoint ptr %maxcontacts.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %maxcontacts.i.i, align 1
  %conv36.i.i = zext i8 %90 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i236.i.i, i32 %conv36.i.i)
  %cmp37.not.i.i = icmp ult i32 %retval.0.i236.i.i, %conv36.i.i
  br i1 %cmp37.not.i.i, label %if.end40.i.i, label %lor.lhs.false.i.i.if.then37.i_crit_edge

lor.lhs.false.i.i.if.then37.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37.i

if.end40.i.i:                                     ; preds = %lor.lhs.false.i.i
  %and41.i.i = and i32 %56, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i.i)
  %tobool42.not.i.i = icmp eq i32 %and41.i.i, 0
  %tobool44.not.i.i = icmp eq ptr %54, null
  %or.cond.i.i = select i1 %tobool42.not.i.i, i1 true, i1 %tobool44.not.i.i
  br i1 %or.cond.i.i, label %if.end40.i.i.if.end53.i.i_crit_edge, label %if.then45.i.i

if.end40.i.i.if.end53.i.i_crit_edge:              ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i.i

if.then45.i.i:                                    ; preds = %if.end40.i.i
  %arrayidx.i.i.i.i = getelementptr %struct.input_mt, ptr %54, i32 0, i32 6, i32 %retval.0.i236.i.i, i32 0, i32 9
  %91 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %cmp.i.i.i = icmp sgt i32 %92, -1
  br i1 %cmp.i.i.i, label %land.lhs.true48.i.i, label %if.then45.i.i.if.end53.i.i_crit_edge

if.then45.i.i.if.end53.i.i_crit_edge:             ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i.i

land.lhs.true48.i.i:                              ; preds = %if.then45.i.i
  %frame.i.i.i = getelementptr %struct.input_mt, ptr %54, i32 0, i32 6, i32 %retval.0.i236.i.i, i32 1
  %93 = ptrtoint ptr %frame.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %frame.i.i.i, align 4
  %frame1.i.i.i = getelementptr inbounds %struct.input_mt, ptr %54, i32 0, i32 4
  %95 = ptrtoint ptr %frame1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %frame1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %96)
  %cmp.i225.i.i = icmp eq i32 %94, %96
  br i1 %cmp.i225.i.i, label %land.lhs.true48.i.i.for.inc.i_crit_edge, label %land.lhs.true48.i.i.if.end53.i.i_crit_edge

land.lhs.true48.i.i.if.end53.i.i_crit_edge:       ; preds = %land.lhs.true48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i.i

land.lhs.true48.i.i.for.inc.i_crit_edge:          ; preds = %land.lhs.true48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end53.i.i:                                     ; preds = %land.lhs.true48.i.i.if.end53.i.i_crit_edge, %if.then45.i.i.if.end53.i.i_crit_edge, %if.end40.i.i.if.end53.i.i_crit_edge
  %and54.i.i = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i.i)
  %tobool55.not.i.i = icmp eq i32 %and54.i.i, 0
  br i1 %tobool55.not.i.i, label %if.end53.i.i.if.end60.i.i_crit_edge, label %if.then56.i.i

if.end53.i.i.if.end60.i.i_crit_edge:              ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.i.i

if.then56.i.i:                                    ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %confidence_state57.i.i = getelementptr inbounds %struct.mt_usages, ptr %slot.0177.i, i32 0, i32 12
  %97 = ptrtoint ptr %confidence_state57.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %confidence_state57.i.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %98, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool58.not.i.i = icmp ne i8 %100, 0
  br label %if.end60.i.i

if.end60.i.i:                                     ; preds = %if.then56.i.i, %if.end53.i.i.if.end60.i.i_crit_edge
  %confidence_state.0.off0.i.i = phi i1 [ %tobool58.not.i.i, %if.then56.i.i ], [ true, %if.end53.i.i.if.end60.i.i_crit_edge ]
  %and61.i.i = and i32 %56, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i.i)
  %tobool62.not.i.i = icmp eq i32 %and61.i.i, 0
  br i1 %tobool62.not.i.i, label %if.end60.i.i.if.end67.i.i_crit_edge, label %if.then63.i.i

if.end60.i.i.if.end67.i.i_crit_edge:              ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i.i

if.then63.i.i:                                    ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inrange_state64.i.i = getelementptr inbounds %struct.mt_usages, ptr %slot.0177.i, i32 0, i32 11
  %101 = ptrtoint ptr %inrange_state64.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %inrange_state64.i.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %102, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool65.i.i = icmp ne i8 %104, 0
  br label %if.end67.i.i

if.end67.i.i:                                     ; preds = %if.then63.i.i, %if.end60.i.i.if.end67.i.i_crit_edge
  %inrange_state.0.off0.i.i = phi i1 [ %tobool65.i.i, %if.then63.i.i ], [ false, %if.end60.i.i.if.end67.i.i_crit_edge ]
  %tip_state68.i.i = getelementptr inbounds %struct.mt_usages, ptr %slot.0177.i, i32 0, i32 10
  %105 = ptrtoint ptr %tip_state68.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %tip_state68.i.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %106, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool69.not.i.i = icmp ne i8 %108, 0
  %spec.select.i.i = select i1 %tobool69.not.i.i, i1 true, i1 %inrange_state.0.off0.i.i
  %109 = ptrtoint ptr %application.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %application.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65550, i32 %110)
  %cmp73.i.i = icmp eq i32 %110, 65550
  %brmerge.i.i = select i1 %cmp73.i.i, i1 true, i1 %confidence_state.0.off0.i.i
  %.mux.i.i = select i1 %cmp73.i.i, i32 10, i32 0, !prof !110
  %brmerge224.i.i = select i1 %brmerge.i.i, i1 true, i1 %spec.select.i.i
  %brmerge240.i.i = select i1 %brmerge224.i.i, i1 true, i1 %tobool44.not.i.i
  %.mux.mux.mux.i.i = select i1 %brmerge.i.i, i32 %.mux.i.i, i32 2, !prof !111
  br i1 %brmerge240.i.i, label %if.end67.i.i.if.end92.i.i_crit_edge, label %land.lhs.true84.i.i, !prof !112

if.end67.i.i.if.end92.i.i_crit_edge:              ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.i.i

land.lhs.true84.i.i:                              ; preds = %if.end67.i.i
  %arrayidx.i.i226.i.i = getelementptr %struct.input_mt, ptr %54, i32 0, i32 6, i32 %retval.0.i236.i.i, i32 0, i32 9
  %111 = ptrtoint ptr %arrayidx.i.i226.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx.i.i226.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %112)
  %cmp.i227.i.i = icmp sgt i32 %112, -1
  br i1 %cmp.i227.i.i, label %if.then89.i.i, label %land.lhs.true84.i.i.if.end92.i.i_crit_edge

land.lhs.true84.i.i.if.end92.i.i_crit_edge:       ; preds = %land.lhs.true84.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.i.i

if.then89.i.i:                                    ; preds = %land.lhs.true84.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %113 = ptrtoint ptr %pending_palm_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pending_palm_slots.i.i, align 4
  tail call void @_set_bit(i32 noundef %retval.0.i236.i.i, ptr noundef %114) #9
  tail call void @input_event(ptr noundef %49, i32 noundef 3, i32 noundef 47, i32 noundef %retval.0.i236.i.i) #9
  %call94.c.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %49, i32 noundef 2, i1 noundef zeroext true) #9
  br label %if.then96.i.i

if.end92.i.i:                                     ; preds = %land.lhs.true84.i.i.if.end92.i.i_crit_edge, %if.end67.i.i.if.end92.i.i_crit_edge
  %tool.0.i.i = phi i32 [ 2, %land.lhs.true84.i.i.if.end92.i.i_crit_edge ], [ %.mux.mux.mux.i.i, %if.end67.i.i.if.end92.i.i_crit_edge ]
  tail call void @input_event(ptr noundef %49, i32 noundef 3, i32 noundef 47, i32 noundef %retval.0.i236.i.i) #9
  %call94.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %49, i32 noundef %tool.0.i.i, i1 noundef zeroext %spec.select.i.i) #9
  br i1 %spec.select.i.i, label %if.end92.i.i.if.then96.i.i_crit_edge, label %if.end92.i.i.if.then37.i_crit_edge

if.end92.i.i.if.then37.i_crit_edge:               ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37.i

if.end92.i.i.if.then96.i.i_crit_edge:             ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96.i.i

if.then96.i.i:                                    ; preds = %if.end92.i.i.if.then96.i.i_crit_edge, %if.then89.i.i
  %w.i.i = getelementptr inbounds %struct.mt_usages, ptr %slot.0177.i, i32 0, i32 6
  %115 = ptrtoint ptr %w.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %w.i.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 4
  %h.i.i = getelementptr inbounds %struct.mt_usages, ptr %slot.0177.i, i32 0, i32 7
  %119 = ptrtoint ptr %h.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %h.i.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %122)
  %cmp97.i.i = icmp sgt i32 %118, %122
  %conv98.i.i = zext i1 %cmp97.i.i to i32
  %123 = tail call i32 @llvm.smax.i32(i32 %118, i32 %122) #9
  %124 = tail call i32 @llvm.smin.i32(i32 %118, i32 %122) #9
  %a.i.i = getelementptr inbounds %struct.mt_usages, ptr %slot.0177.i, i32 0, i32 8
  %125 = ptrtoint ptr %a.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %a.i.i, align 4
  %cmp112.not.i.i = icmp eq ptr %126, @mzero
  br i1 %cmp112.not.i.i, label %if.then96.i.i.if.end123.i.i_crit_edge, label %if.then114.i.i

if.then96.i.i.if.end123.i.i_crit_edge:            ; preds = %if.then96.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123.i.i

if.then114.i.i:                                   ; preds = %if.then96.i.i
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %126, align 4
  %129 = ptrtoint ptr %absinfo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %absinfo.i.i.i, align 8
  %tobool.not.i228.i.i = icmp eq ptr %130, null
  br i1 %tobool.not.i228.i.i, label %if.then114.i.i.input_abs_get_max.exit.i.i_crit_edge, label %cond.true.i.i.i

if.then114.i.i.input_abs_get_max.exit.i.i_crit_edge: ; preds = %if.then114.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %input_abs_get_max.exit.i.i

cond.true.i.i.i:                                  ; preds = %if.then114.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %maximum.i.i.i = getelementptr %struct.input_absinfo, ptr %130, i32 52, i32 2
  %131 = ptrtoint ptr %maximum.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %maximum.i.i.i, align 4
  br label %input_abs_get_max.exit.i.i

input_abs_get_max.exit.i.i:                       ; preds = %cond.true.i.i.i, %if.then114.i.i.input_abs_get_max.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %132, %cond.true.i.i.i ], [ 0, %if.then114.i.i.input_abs_get_max.exit.i.i_crit_edge ]
  %mul.i151.i = shl i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %mul.i151.i)
  %cmp117.i.i = icmp sgt i32 %128, %mul.i151.i
  %mul120.neg.neg.i.i = shl i32 %cond.i.i.i, 2
  %sub.neg.i.i = select i1 %cmp117.i.i, i32 %mul120.neg.neg.i.i, i32 0
  %azimuth.0.neg.i.i = sub i32 %sub.neg.i.i, %128
  br label %if.end123.i.i

if.end123.i.i:                                    ; preds = %input_abs_get_max.exit.i.i, %if.then96.i.i.if.end123.i.i_crit_edge
  %orientation.0.i.i = phi i32 [ %azimuth.0.neg.i.i, %input_abs_get_max.exit.i.i ], [ %conv98.i.i, %if.then96.i.i.if.end123.i.i_crit_edge ]
  %and124.i.i = lshr i32 %56, 15
  %and124.lobit.i.i = and i32 %and124.i.i, 1
  %major.0.i.i = ashr i32 %123, %and124.lobit.i.i
  %minor.0.i.i = ashr i32 %124, %and124.lobit.i.i
  %x.i.i = getelementptr inbounds %struct.mt_usages, ptr %slot.0177.i, i32 0, i32 1
  %133 = ptrtoint ptr %x.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %x.i.i, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %134, align 4
  tail call void @input_event(ptr noundef %49, i32 noundef 3, i32 noundef 53, i32 noundef %136) #9
  %y.i.i = getelementptr inbounds %struct.mt_usages, ptr %slot.0177.i, i32 0, i32 2
  %137 = ptrtoint ptr %y.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %y.i.i, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %138, align 4
  tail call void @input_event(ptr noundef %49, i32 noundef 3, i32 noundef 54, i32 noundef %140) #9
  %cx.i.i = getelementptr inbounds %struct.mt_usages, ptr %slot.0177.i, i32 0, i32 3
  %141 = ptrtoint ptr %cx.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cx.i.i, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %142, align 4
  tail call void @input_event(ptr noundef %49, i32 noundef 3, i32 noundef 60, i32 noundef %144) #9
  %cy.i.i = getelementptr inbounds %struct.mt_usages, ptr %slot.0177.i, i32 0, i32 4
  %145 = ptrtoint ptr %cy.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cy.i.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %146, align 4
  tail call void @input_event(ptr noundef %49, i32 noundef 3, i32 noundef 61, i32 noundef %148) #9
  %149 = ptrtoint ptr %tip_state68.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %tip_state68.i.i, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %150, align 1, !range !109
  %153 = xor i8 %152, 1
  %154 = zext i8 %153 to i32
  tail call void @input_event(ptr noundef %49, i32 noundef 3, i32 noundef 59, i32 noundef %154) #9
  tail call void @input_event(ptr noundef %49, i32 noundef 3, i32 noundef 52, i32 noundef %orientation.0.i.i) #9
  %p.i.i = getelementptr inbounds %struct.mt_usages, ptr %slot.0177.i, i32 0, i32 5
  %155 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %p.i.i, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %156, align 4
  tail call void @input_event(ptr noundef %49, i32 noundef 3, i32 noundef 58, i32 noundef %158) #9
  tail call void @input_event(ptr noundef %49, i32 noundef 3, i32 noundef 48, i32 noundef %major.0.i.i) #9
  tail call void @input_event(ptr noundef %49, i32 noundef 3, i32 noundef 49, i32 noundef %minor.0.i.i) #9
  tail call void @_set_bit(i32 noundef 1, ptr noundef %mt_io_flags.i) #9
  br label %if.then37.i

if.then37.i:                                      ; preds = %if.end123.i.i, %if.end92.i.i.if.then37.i_crit_edge, %lor.lhs.false.i.i.if.then37.i_crit_edge, %mt_compute_slot.exit.i.i.if.then37.i_crit_edge, %lor.lhs.false.i.i.i.i.if.then37.i_crit_edge, %if.end29.i.i.if.then37.i_crit_edge, %if.then25.i.i.if.then37.i_crit_edge
  %159 = ptrtoint ptr %num_received26.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %num_received26.i, align 4
  %inc.i = add i8 %160, 1
  store i8 %inc.i, ptr %num_received26.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then37.i, %land.lhs.true48.i.i.for.inc.i_crit_edge, %land.lhs.true.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %161 = ptrtoint ptr %slot.0177.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %slot.0.i = load ptr, ptr %slot.0177.i, align 4
  %cmp33.not.i = icmp eq ptr %slot.0.i, %mt_usages.i
  br i1 %cmp33.not.i, label %for.inc.i.for.cond45.preheader.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.cond45.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond45.preheader.i

for.body48.i:                                     ; preds = %for.inc65.i.for.body48.i_crit_edge, %for.body48.lr.ph.i
  %r.0183.i = phi i32 [ 0, %for.body48.lr.ph.i ], [ %inc66.i, %for.inc65.i.for.body48.i_crit_edge ]
  %arrayidx50.i = getelementptr %struct.hid_report, ptr %11, i32 0, i32 5, i32 %r.0183.i
  %162 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx50.i, align 4
  %report_count.i = getelementptr inbounds %struct.hid_field, ptr %163, i32 0, i32 8
  %164 = ptrtoint ptr %report_count.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %report_count.i, align 4
  %flags.i = getelementptr inbounds %struct.hid_field, ptr %163, i32 0, i32 5
  %166 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %flags.i, align 4
  %and51.i = and i32 %167, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp ne i32 %and51.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp56178.i = icmp ne i32 %165, 0
  %or.cond.i = select i1 %tobool52.not.i, i1 %cmp56178.i, i1 false
  br i1 %or.cond.i, label %for.body58.lr.ph.i, label %for.body48.i.for.inc65.i_crit_edge

for.body48.i.for.inc65.i_crit_edge:               ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.i

for.body58.lr.ph.i:                               ; preds = %for.body48.i
  %usage.i = getelementptr inbounds %struct.hid_field, ptr %163, i32 0, i32 3
  %value.i = getelementptr inbounds %struct.hid_field, ptr %163, i32 0, i32 10
  %hidinput.i.i = getelementptr inbounds %struct.hid_field, ptr %163, i32 0, i32 19
  br label %for.body58.i

for.body58.i:                                     ; preds = %mt_process_mt_event.exit.i.for.body58.i_crit_edge, %for.body58.lr.ph.i
  %n.0179.i = phi i32 [ 0, %for.body58.lr.ph.i ], [ %inc63.i, %mt_process_mt_event.exit.i.for.body58.i_crit_edge ]
  %168 = ptrtoint ptr %usage.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %usage.i, align 4
  %170 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %value.i, align 4
  %arrayidx60.i = getelementptr i32, ptr %171, i32 %n.0179.i
  %172 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx60.i, align 4
  %174 = ptrtoint ptr %quirks1.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %quirks1.i.i, align 4
  %176 = ptrtoint ptr %hidinput.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hidinput.i.i, align 4
  %input2.i.i = getelementptr inbounds %struct.hid_input, ptr %177, i32 0, i32 2
  %178 = ptrtoint ptr %input2.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %input2.i.i, align 4
  %type.i.i = getelementptr %struct.hid_usage, ptr %169, i32 %n.0179.i, i32 6
  %180 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool.not.i152.i = icmp eq i8 %181, 0
  br i1 %tobool.not.i152.i, label %for.body58.i.mt_process_mt_event.exit.i_crit_edge, label %lor.lhs.false.i155.i

for.body58.i.mt_process_mt_event.exit.i_crit_edge: ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt_process_mt_event.exit.i

lor.lhs.false.i155.i:                             ; preds = %for.body58.i
  %182 = ptrtoint ptr %claimed to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %claimed, align 4
  %and.i153.i = and i32 %183, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i153.i)
  %tobool3.not.i154.i = icmp eq i32 %and.i153.i, 0
  br i1 %tobool3.not.i154.i, label %lor.lhs.false.i155.i.mt_process_mt_event.exit.i_crit_edge, label %if.end.i156.i

lor.lhs.false.i155.i.mt_process_mt_event.exit.i_crit_edge: ; preds = %lor.lhs.false.i155.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt_process_mt_event.exit.i

if.end.i156.i:                                    ; preds = %lor.lhs.false.i155.i
  %and4.i.i = and i32 %175, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end.i156.i.if.end17.i.i_crit_edge, label %if.then6.i.i

if.end.i156.i.if.end17.i.i_crit_edge:             ; preds = %if.end.i156.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i.i

if.then6.i.i:                                     ; preds = %if.end.i156.i
  br i1 %cmp28.i, label %if.end9.i.i, label %if.then6.i.i.mt_process_mt_event.exit.i_crit_edge

if.then6.i.i.mt_process_mt_event.exit.i_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt_process_mt_event.exit.i

if.end9.i.i:                                      ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %181)
  %cmp.i157.i = icmp eq i8 %181, 1
  br i1 %cmp.i157.i, label %land.lhs.true.i158.i, label %if.end9.i.i.if.end17.i.i_crit_edge

if.end9.i.i.if.end17.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i.i

land.lhs.true.i158.i:                             ; preds = %if.end9.i.i
  %code.i.i = getelementptr %struct.hid_usage, ptr %169, i32 %n.0179.i, i32 5
  %184 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %code.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %185)
  %cmp13.i.i = icmp eq i16 %185, 272
  br i1 %cmp13.i.i, label %if.then15.i.i, label %land.lhs.true.i158.i.if.end17.i.i_crit_edge

land.lhs.true.i158.i.if.end17.i.i_crit_edge:      ; preds = %land.lhs.true.i158.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i.i

if.then15.i.i:                                    ; preds = %land.lhs.true.i158.i
  call void @__sanitizer_cov_trace_pc() #11
  %186 = ptrtoint ptr %left_button_state.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %left_button_state.i.i, align 4
  %or.i.i = or i32 %187, %173
  store i32 %or.i.i, ptr %left_button_state.i.i, align 4
  br label %mt_process_mt_event.exit.i

if.end17.i.i:                                     ; preds = %land.lhs.true.i158.i.if.end17.i.i_crit_edge, %if.end9.i.i.if.end17.i.i_crit_edge, %if.end.i156.i.if.end17.i.i_crit_edge
  %conv19.i.i = zext i8 %181 to i32
  %code20.i.i = getelementptr %struct.hid_usage, ptr %169, i32 %n.0179.i, i32 5
  %188 = ptrtoint ptr %code20.i.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %code20.i.i, align 2
  %conv21.i.i = zext i16 %189 to i32
  tail call void @input_event(ptr noundef %179, i32 noundef %conv19.i.i, i32 noundef %conv21.i.i, i32 noundef %173) #9
  br label %mt_process_mt_event.exit.i

mt_process_mt_event.exit.i:                       ; preds = %if.end17.i.i, %if.then15.i.i, %if.then6.i.i.mt_process_mt_event.exit.i_crit_edge, %lor.lhs.false.i155.i.mt_process_mt_event.exit.i_crit_edge, %for.body58.i.mt_process_mt_event.exit.i_crit_edge
  %inc63.i = add nuw i32 %n.0179.i, 1
  %exitcond.not.i = icmp eq i32 %inc63.i, %165
  br i1 %exitcond.not.i, label %mt_process_mt_event.exit.i.for.inc65.i_crit_edge, label %mt_process_mt_event.exit.i.for.body58.i_crit_edge

mt_process_mt_event.exit.i.for.body58.i_crit_edge: ; preds = %mt_process_mt_event.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body58.i

mt_process_mt_event.exit.i.for.inc65.i_crit_edge: ; preds = %mt_process_mt_event.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.i

for.inc65.i:                                      ; preds = %mt_process_mt_event.exit.i.for.inc65.i_crit_edge, %for.body48.i.for.inc65.i_crit_edge
  %inc66.i = add nuw i32 %r.0183.i, 1
  %190 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %maxfield.i, align 4
  %cmp46.i = icmp ult i32 %inc66.i, %191
  br i1 %cmp46.i, label %for.inc65.i.for.body48.i_crit_edge, label %for.inc65.i.for.end67.i_crit_edge

for.inc65.i.for.end67.i_crit_edge:                ; preds = %for.inc65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end67.i

for.inc65.i.for.body48.i_crit_edge:               ; preds = %for.inc65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body48.i

for.end67.i:                                      ; preds = %for.inc65.i.for.end67.i_crit_edge, %for.cond45.preheader.i.for.end67.i_crit_edge
  %192 = ptrtoint ptr %num_received26.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %num_received26.i, align 4
  %num_expected70.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 12
  %194 = ptrtoint ptr %num_expected70.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %num_expected70.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %193, i8 %195)
  %cmp72.not.i = icmp ult i8 %193, %195
  br i1 %cmp72.not.i, label %for.end67.i.if.end75.i_crit_edge, label %if.then74.i

for.end67.i.if.end75.i_crit_edge:                 ; preds = %for.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75.i

if.then74.i:                                      ; preds = %for.end67.i
  %quirks.i.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 4
  %196 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %quirks.i.i, align 4
  %and.i159.i = and i32 %197, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i159.i)
  %tobool.not.i160.i = icmp eq i32 %and.i159.i, 0
  br i1 %tobool.not.i160.i, label %if.then74.i.if.end.i165.i_crit_edge, label %if.then.i162.i

if.then74.i.if.end.i165.i_crit_edge:              ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i165.i

if.then.i162.i:                                   ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #11
  %left_button_state.i161.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 8
  %198 = ptrtoint ptr %left_button_state.i161.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %left_button_state.i161.i, align 4
  tail call void @input_event(ptr noundef %49, i32 noundef 1, i32 noundef 272, i32 noundef %199) #9
  br label %if.end.i165.i

if.end.i165.i:                                    ; preds = %if.then.i162.i, %if.then74.i.if.end.i165.i_crit_edge
  tail call void @input_mt_sync_frame(ptr noundef %49) #9
  %200 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %timestamp.i, align 4
  tail call void @input_event(ptr noundef %49, i32 noundef 4, i32 noundef 5, i32 noundef %201) #9
  tail call void @input_event(ptr noundef %49, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %pending_palm_slots.i.i.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 10
  %202 = ptrtoint ptr %pending_palm_slots.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %pending_palm_slots.i.i.i, align 4
  %maxcontacts.i.i.i = getelementptr inbounds %struct.mt_device, ptr %9, i32 0, i32 5
  %204 = ptrtoint ptr %maxcontacts.i.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %maxcontacts.i.i.i, align 1
  %conv.i.i164.i = zext i8 %205 to i32
  %call.i.i.i = tail call i32 @_find_next_bit_be(ptr noundef %203, i32 noundef %conv.i.i164.i, i32 noundef 0) #9
  %206 = ptrtoint ptr %maxcontacts.i.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %maxcontacts.i.i.i, align 1
  %conv219.i.i.i = zext i8 %207 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %conv219.i.i.i)
  %cmp20.i.i.i = icmp slt i32 %call.i.i.i, %conv219.i.i.i
  br i1 %cmp20.i.i.i, label %if.end.i165.i.for.body.i.i.i_crit_edge, label %if.end.i165.i.mt_release_pending_palms.exit.i.i_crit_edge

if.end.i165.i.mt_release_pending_palms.exit.i.i_crit_edge: ; preds = %if.end.i165.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt_release_pending_palms.exit.i.i

if.end.i165.i.for.body.i.i.i_crit_edge:           ; preds = %if.end.i165.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end.i165.i.for.body.i.i.i_crit_edge
  %slotnum.021.i.i.i = phi i32 [ %call8.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %call.i.i.i, %if.end.i165.i.for.body.i.i.i_crit_edge ]
  %208 = ptrtoint ptr %pending_palm_slots.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %pending_palm_slots.i.i.i, align 4
  tail call void @_clear_bit(i32 noundef %slotnum.021.i.i.i, ptr noundef %209) #9
  tail call void @input_event(ptr noundef %49, i32 noundef 3, i32 noundef 47, i32 noundef %slotnum.021.i.i.i) #9
  %call.i.i.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %49, i32 noundef 0, i1 noundef zeroext false) #9
  %210 = ptrtoint ptr %pending_palm_slots.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %pending_palm_slots.i.i.i, align 4
  %212 = ptrtoint ptr %maxcontacts.i.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %maxcontacts.i.i.i, align 1
  %conv7.i.i.i = zext i8 %213 to i32
  %add.i.i.i = add nsw i32 %slotnum.021.i.i.i, 1
  %call8.i.i.i = tail call i32 @_find_next_bit_be(ptr noundef %211, i32 noundef %conv7.i.i.i, i32 noundef %add.i.i.i) #9
  %214 = ptrtoint ptr %maxcontacts.i.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %maxcontacts.i.i.i, align 1
  %conv2.i.i.i = zext i8 %215 to i32
  %cmp.i.i166.i = icmp slt i32 %call8.i.i.i, %conv2.i.i.i
  br i1 %cmp.i.i166.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %if.then.i.i167.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

if.then.i.i167.i:                                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_mt_sync_frame(ptr noundef %49) #9
  tail call void @input_event(ptr noundef %49, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %mt_release_pending_palms.exit.i.i

mt_release_pending_palms.exit.i.i:                ; preds = %if.then.i.i167.i, %if.end.i165.i.mt_release_pending_palms.exit.i.i_crit_edge
  %216 = ptrtoint ptr %num_received26.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 0, ptr %num_received26.i, align 4
  %left_button_state1.i.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 8
  %217 = ptrtoint ptr %left_button_state1.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 0, ptr %left_button_state1.i.i, align 4
  %218 = ptrtoint ptr %mt_io_flags.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load volatile i32, ptr %mt_io_flags.i, align 4
  %220 = and i32 %219, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool2.not.i.i = icmp eq i32 %220, 0
  br i1 %tobool2.not.i.i, label %if.else.i170.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %mt_release_pending_palms.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %mt_io_flags.i) #9
  br label %mt_sync_frame.exit.i

if.else.i170.i:                                   ; preds = %mt_release_pending_palms.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %mt_io_flags.i) #9
  br label %mt_sync_frame.exit.i

mt_sync_frame.exit.i:                             ; preds = %if.else.i170.i, %if.then3.i.i
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %mt_io_flags.i) #9
  br label %if.end75.i

if.end75.i:                                       ; preds = %mt_sync_frame.exit.i, %for.end67.i.if.end75.i_crit_edge
  %quirks76.i = getelementptr inbounds %struct.mt_application, ptr %13, i32 0, i32 4
  %221 = ptrtoint ptr %quirks76.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %quirks76.i, align 4
  %and77.i = and i32 %222, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %tobool78.not.i = icmp eq i32 %and77.i, 0
  br i1 %tobool78.not.i, label %if.end75.i.if.end90.i_crit_edge, label %if.then79.i

if.end75.i.if.end90.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90.i

if.then79.i:                                      ; preds = %if.end75.i
  %223 = ptrtoint ptr %mt_io_flags.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load volatile i32, ptr %mt_io_flags.i, align 4
  %225 = and i32 %224, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool82.not.i = icmp eq i32 %225, 0
  %release_timer87.i = getelementptr inbounds %struct.mt_device, ptr %9, i32 0, i32 1
  br i1 %tobool82.not.i, label %if.else86.i, label %if.then83.i

if.then83.i:                                      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %226 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %226, 10
  %call85.i = tail call i32 @mod_timer(ptr noundef %release_timer87.i, i32 noundef %add.i) #9
  br label %if.end90.i

if.else86.i:                                      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #11
  %call88.i = tail call i32 @del_timer(ptr noundef %release_timer87.i) #9
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.else86.i, %if.then83.i, %if.end75.i.if.end90.i_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %mt_io_flags.i) #9
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %land.lhs.true8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true8:                                   ; preds = %if.end6
  %hidinput = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 19
  %227 = ptrtoint ptr %hidinput to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %hidinput, align 4
  %tobool9.not = icmp eq ptr %228, null
  br i1 %tobool9.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true10

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %input = getelementptr inbounds %struct.hid_input, ptr %228, i32 0, i32 2
  %229 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %input, align 4
  %tobool12.not = icmp eq ptr %230, null
  br i1 %tobool12.not, label %land.lhs.true10.cleanup_crit_edge, label %if.then13

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_event(ptr noundef nonnull %230, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %land.lhs.true10.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end90.i, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_input_mapping(ptr noundef %hdev, ptr nocapture noundef %hi, ptr noundef %field, ptr nocapture noundef %usage, ptr nocapture noundef writeonly %bit, ptr nocapture noundef writeonly %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %report = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 17
  %2 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %report, align 4
  %call1 = tail call fastcc ptr @mt_find_report_data(ptr noundef %1, ptr noundef %3)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %application2 = getelementptr inbounds %struct.mt_report_data, ptr %call1, i32 0, i32 2
  %4 = ptrtoint ptr %application2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %application2, align 4
  %export_all_inputs = getelementptr inbounds %struct.mt_class, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %export_all_inputs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %export_all_inputs, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end
  %application4 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 2
  %8 = ptrtoint ptr %application4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %application4, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %9, label %land.lhs.true.cleanup_crit_edge [
    i32 851972, label %land.lhs.true.if.end32_crit_edge
    i32 851970, label %land.lhs.true.if.end32_crit_edge135
    i32 851973, label %land.lhs.true.if.end32_crit_edge136
    i32 65542, label %land.lhs.true.if.end32_crit_edge137
    i32 65664, label %land.lhs.true.if.end32_crit_edge138
    i32 786433, label %land.lhs.true.if.end32_crit_edge139
    i32 65548, label %land.lhs.true.if.end32_crit_edge140
    i32 65550, label %land.lhs.true.if.end32_crit_edge141
    i32 -13565834, label %land.lhs.true29
  ]

land.lhs.true.if.end32_crit_edge141:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true.if.end32_crit_edge140:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true.if.end32_crit_edge139:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true.if.end32_crit_edge138:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true.if.end32_crit_edge137:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true.if.end32_crit_edge136:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true.if.end32_crit_edge135:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true29:                                  ; preds = %land.lhs.true
  %quirks = getelementptr inbounds %struct.mt_application, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %quirks, align 4
  %and = and i32 %12, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %land.lhs.true29.cleanup_crit_edge, label %land.lhs.true29.if.end32_crit_edge

land.lhs.true29.if.end32_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %land.lhs.true29.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge135, %land.lhs.true.if.end32_crit_edge136, %land.lhs.true.if.end32_crit_edge137, %land.lhs.true.if.end32_crit_edge138, %land.lhs.true.if.end32_crit_edge139, %land.lhs.true.if.end32_crit_edge140, %land.lhs.true.if.end32_crit_edge141, %if.end.if.end32_crit_edge
  %application33 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 2
  %13 = ptrtoint ptr %application33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %application33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13565834, i32 %14)
  %cmp34 = icmp eq i32 %14, -13565834
  br i1 %cmp34, label %land.lhs.true35, label %if.end32.if.end55_crit_edge

if.end32.if.end55_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

land.lhs.true35:                                  ; preds = %if.end32
  %quirks36 = getelementptr inbounds %struct.mt_application, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %quirks36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %quirks36, align 4
  %and37 = and i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %land.lhs.true35.if.end55_crit_edge, label %land.lhs.true39

land.lhs.true35.if.end55_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

land.lhs.true39:                                  ; preds = %land.lhs.true35
  %17 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %usage, align 4
  %and40 = and i32 %18, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 16711680, i32 %and40)
  %cmp41 = icmp eq i32 %and40, 16711680
  br i1 %cmp41, label %if.then42, label %land.lhs.true39.if.end55_crit_edge

land.lhs.true39.if.end55_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then42:                                        ; preds = %land.lhs.true39
  %input = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %19 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %input, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 20, ptr noundef %evbit) #9
  %flags = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 5
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and43 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.then42.if.end48_crit_edge, label %if.then45

if.then42.if.end48_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %and47 = and i32 %22, -3
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and47, ptr %flags, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.then42.if.end48_crit_edge
  %24 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %usage, align 4
  %trunc = trunc i32 %25 to i16
  %26 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %trunc, label %if.end48.cleanup_crit_edge [
    i16 16, label %sw.bb
    i16 32, label %sw.bb51
    i16 53, label %sw.bb52
    i16 107, label %sw.bb53
    i16 108, label %sw.bb54
  ]

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input, align 4
  %keybit.i.i = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 6
  %type19.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %29 = ptrtoint ptr %type19.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %type19.i.i, align 4
  %code.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %30 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 224, ptr %code.i.i, align 2
  %31 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 767, ptr %max, align 4
  %32 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %keybit.i.i, ptr %bit, align 4
  %33 = load i16, ptr %code.i.i, align 2
  %conv1.i = zext i16 %33 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i, ptr noundef nonnull %keybit.i.i) #9
  br label %cleanup

sw.bb51:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %input, align 4
  %keybit.i.i112 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 6
  %type19.i.i113 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %36 = ptrtoint ptr %type19.i.i113 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %type19.i.i113, align 4
  %code.i.i114 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %37 = ptrtoint ptr %code.i.i114 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 225, ptr %code.i.i114, align 2
  %38 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 767, ptr %max, align 4
  %39 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %keybit.i.i112, ptr %bit, align 4
  %40 = load i16, ptr %code.i.i114, align 2
  %conv1.i115 = zext i16 %40 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i115, ptr noundef nonnull %keybit.i.i112) #9
  br label %cleanup

sw.bb52:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %input, align 4
  %keybit.i.i117 = getelementptr inbounds %struct.input_dev, ptr %42, i32 0, i32 6
  %type19.i.i118 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %43 = ptrtoint ptr %type19.i.i118 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %type19.i.i118, align 4
  %code.i.i119 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %44 = ptrtoint ptr %code.i.i119 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 245, ptr %code.i.i119, align 2
  %45 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 767, ptr %max, align 4
  %46 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %keybit.i.i117, ptr %bit, align 4
  %47 = load i16, ptr %code.i.i119, align 2
  %conv1.i120 = zext i16 %47 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i120, ptr noundef nonnull %keybit.i.i117) #9
  br label %cleanup

sw.bb53:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %input, align 4
  %keybit.i.i122 = getelementptr inbounds %struct.input_dev, ptr %49, i32 0, i32 6
  %type19.i.i123 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %50 = ptrtoint ptr %type19.i.i123 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %type19.i.i123, align 4
  %code.i.i124 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %51 = ptrtoint ptr %code.i.i124 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 191, ptr %code.i.i124, align 2
  %52 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 767, ptr %max, align 4
  %53 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %keybit.i.i122, ptr %bit, align 4
  %54 = load i16, ptr %code.i.i124, align 2
  %conv1.i125 = zext i16 %54 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i125, ptr noundef nonnull %keybit.i.i122) #9
  br label %cleanup

sw.bb54:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %input, align 4
  %keybit.i.i127 = getelementptr inbounds %struct.input_dev, ptr %56, i32 0, i32 6
  %type19.i.i128 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %57 = ptrtoint ptr %type19.i.i128 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %type19.i.i128, align 4
  %code.i.i129 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %58 = ptrtoint ptr %code.i.i129 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 142, ptr %code.i.i129, align 2
  %59 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 767, ptr %max, align 4
  %60 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %keybit.i.i127, ptr %bit, align 4
  %61 = load i16, ptr %code.i.i129, align 2
  %conv1.i130 = zext i16 %61 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i130, ptr noundef nonnull %keybit.i.i127) #9
  br label %cleanup

if.end55:                                         ; preds = %land.lhs.true39.if.end55_crit_edge, %land.lhs.true35.if.end55_crit_edge, %if.end32.if.end55_crit_edge
  %is_mt_collection = getelementptr inbounds %struct.mt_report_data, ptr %call1, i32 0, i32 3
  %62 = ptrtoint ptr %is_mt_collection to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %is_mt_collection, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool56.not = icmp eq i8 %63, 0
  br i1 %tobool56.not, label %if.end59, label %if.then57

if.then57:                                        ; preds = %if.end55
  %64 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 851972, i32 %14)
  %cmp.i = icmp eq i32 %14, 851972
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then57.if.end.i_crit_edge

if.then57.if.end.i_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then57
  %66 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %usage, align 4
  %and.i = and i32 %67, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 589824, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 589824
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %mt_flags.i = getelementptr inbounds %struct.mt_application, ptr %5, i32 0, i32 9
  %68 = ptrtoint ptr %mt_flags.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mt_flags.i, align 4
  %or.i = or i32 %69, 1
  store i32 %or.i, ptr %mt_flags.i, align 4
  %inputmode_value.i = getelementptr inbounds %struct.mt_device, ptr %65, i32 0, i32 4
  %70 = ptrtoint ptr %inputmode_value.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 3, ptr %inputmode_value.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then57.if.end.i_crit_edge
  %71 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %usage, align 4
  %and3.i = and i32 %72, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 589824, i32 %and3.i)
  %cmp4.i = icmp eq i32 %and3.i, 589824
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %buttons_count.i = getelementptr inbounds %struct.mt_application, ptr %5, i32 0, i32 13
  %73 = ptrtoint ptr %buttons_count.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %buttons_count.i, align 2
  %inc.i = add i8 %74, 1
  store i8 %inc.i, ptr %buttons_count.i, align 2
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %usage_index.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 2
  %75 = ptrtoint ptr %usage_index.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %usage_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i = icmp eq i32 %76, 0
  br i1 %tobool.not.i, label %if.end6.i.if.end10.i_crit_edge, label %if.then7.i

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %usage8.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 3
  %77 = ptrtoint ptr %usage8.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %usage8.i, align 4
  %sub.i = add i32 %76, -1
  %arrayidx.i = getelementptr %struct.hid_usage, ptr %78, i32 %sub.i
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end6.i.if.end10.i_crit_edge
  %prev_usage.0.i = phi ptr [ %arrayidx.i, %if.then7.i ], [ null, %if.end6.i.if.end10.i_crit_edge ]
  %79 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %usage, align 4
  %and12.i = and i32 %80, -65536
  %81 = zext i32 %and12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %and12.i, label %sw.epilog188.i [
    i32 65536, label %sw.bb.i
    i32 851968, label %sw.bb50.i
    i32 589824, label %sw.bb159.i
    i32 -16777216, label %if.end10.i.cleanup_crit_edge
  ]

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end10.i
  %82 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %80, label %sw.bb.i.cleanup_crit_edge [
    i32 65584, label %sw.bb14.i
    i32 65585, label %sw.bb33.i
  ]

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb14.i:                                        ; preds = %sw.bb.i
  %tobool15.not.i = icmp eq ptr %prev_usage.0.i, null
  br i1 %tobool15.not.i, label %sw.bb14.i.if.else.i_crit_edge, label %land.lhs.true16.i

sw.bb14.i.if.else.i_crit_edge:                    ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true16.i:                                ; preds = %sw.bb14.i
  %83 = ptrtoint ptr %prev_usage.0.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %prev_usage.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65584, i32 %84)
  %cmp19.i = icmp eq i32 %84, 65584
  br i1 %cmp19.i, label %land.lhs.true16.i.if.end26.i_crit_edge, label %land.lhs.true16.i.if.else.i_crit_edge

land.lhs.true16.i.if.else.i_crit_edge:            ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true16.i.if.end26.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.else.i:                                        ; preds = %land.lhs.true16.i.if.else.i_crit_edge, %sw.bb14.i.if.else.i_crit_edge
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else.i, %land.lhs.true16.i.if.end26.i_crit_edge
  %.sink.i = phi i32 [ 8, %if.else.i ], [ 16, %land.lhs.true16.i.if.end26.i_crit_edge ]
  %code.0.i = phi i32 [ 53, %if.else.i ], [ 60, %land.lhs.true16.i.if.end26.i_crit_edge ]
  %value23.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 10
  %85 = ptrtoint ptr %value23.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %value23.i, align 4
  %arrayidx25.i = getelementptr i32, ptr %86, i32 %76
  tail call fastcc void @mt_store_field(ptr noundef %hdev, ptr noundef %5, ptr noundef %arrayidx25.i, i32 noundef %.sink.i) #9
  %input.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %87 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %input.i, align 4
  %sn_move.i = getelementptr inbounds %struct.mt_class, ptr %65, i32 0, i32 2
  %89 = ptrtoint ptr %sn_move.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sn_move.i, align 4
  %logical_minimum.i.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 11
  %91 = ptrtoint ptr %logical_minimum.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %logical_minimum.i.i, align 4
  %logical_maximum.i.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 12
  %93 = ptrtoint ptr %logical_maximum.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %logical_maximum.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i.i = icmp eq i32 %90, 0
  br i1 %tobool.not.i.i, label %if.end26.i.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end26.i.cond.end.i.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %94, %92
  %div.i.i = sdiv i32 %sub.i.i, %90
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end26.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %div.i.i, %cond.true.i.i ], [ 0, %if.end26.i.cond.end.i.i_crit_edge ]
  tail call void @input_set_abs_params(ptr noundef %88, i32 noundef %code.0.i, i32 noundef %92, i32 noundef %94, i32 noundef %cond.i.i, i32 noundef 0) #9
  %conv.i.i = trunc i32 %code.0.i to i16
  %call.i.i = tail call i32 @hidinput_calc_abs_res(ptr noundef %field, i16 noundef zeroext %conv.i.i) #9
  tail call void @input_alloc_absinfo(ptr noundef %88) #9
  %absinfo.i.i.i = getelementptr inbounds %struct.input_dev, ptr %88, i32 0, i32 26
  %95 = ptrtoint ptr %absinfo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %absinfo.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %96, null
  br i1 %tobool.not.i.i.i, label %cond.end.i.i.set_abs.exit.i_crit_edge, label %if.then.i.i.i

cond.end.i.i.set_abs.exit.i_crit_edge:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_abs.exit.i

if.then.i.i.i:                                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %resolution.i.i.i = getelementptr %struct.input_absinfo, ptr %96, i32 %code.0.i, i32 5
  %97 = ptrtoint ptr %resolution.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call.i.i, ptr %resolution.i.i.i, align 4
  br label %set_abs.exit.i

set_abs.exit.i:                                   ; preds = %if.then.i.i.i, %cond.end.i.i.set_abs.exit.i_crit_edge
  %98 = ptrtoint ptr %application33 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %application33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65550, i32 %99)
  %cmp28.i = icmp eq i32 %99, 65550
  br i1 %cmp28.i, label %if.then29.i, label %set_abs.exit.i.cleanup_crit_edge

set_abs.exit.i.cleanup_crit_edge:                 ; preds = %set_abs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then29.i:                                      ; preds = %set_abs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %input.i, align 4
  %propbit.i = getelementptr inbounds %struct.input_dev, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %propbit.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %propbit.i, align 4
  %or.i.i = or i32 %103, 2
  store i32 %or.i.i, ptr %propbit.i, align 4
  %104 = load ptr, ptr %input.i, align 4
  tail call void @input_set_abs_params(ptr noundef %104, i32 noundef 55, i32 noundef 10, i32 noundef 10, i32 noundef 0, i32 noundef 0) #9
  br label %cleanup

sw.bb33.i:                                        ; preds = %sw.bb.i
  %tobool34.not.i = icmp eq ptr %prev_usage.0.i, null
  br i1 %tobool34.not.i, label %sw.bb33.i.if.else43.i_crit_edge, label %land.lhs.true35.i

sw.bb33.i.if.else43.i_crit_edge:                  ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else43.i

land.lhs.true35.i:                                ; preds = %sw.bb33.i
  %105 = ptrtoint ptr %prev_usage.0.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %prev_usage.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65585, i32 %106)
  %cmp38.i = icmp eq i32 %106, 65585
  br i1 %cmp38.i, label %land.lhs.true35.i.if.end47.i_crit_edge, label %land.lhs.true35.i.if.else43.i_crit_edge

land.lhs.true35.i.if.else43.i_crit_edge:          ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else43.i

land.lhs.true35.i.if.end47.i_crit_edge:           ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.else43.i:                                      ; preds = %land.lhs.true35.i.if.else43.i_crit_edge, %sw.bb33.i.if.else43.i_crit_edge
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.else43.i, %land.lhs.true35.i.if.end47.i_crit_edge
  %.sink341.i = phi i32 [ 12, %if.else43.i ], [ 20, %land.lhs.true35.i.if.end47.i_crit_edge ]
  %code.1.i = phi i32 [ 54, %if.else43.i ], [ 61, %land.lhs.true35.i.if.end47.i_crit_edge ]
  %value44.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 10
  %107 = ptrtoint ptr %value44.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %value44.i, align 4
  %arrayidx46.i = getelementptr i32, ptr %108, i32 %76
  tail call fastcc void @mt_store_field(ptr noundef %hdev, ptr noundef %5, ptr noundef %arrayidx46.i, i32 noundef %.sink341.i) #9
  %input48.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %109 = ptrtoint ptr %input48.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %input48.i, align 4
  %sn_move49.i = getelementptr inbounds %struct.mt_class, ptr %65, i32 0, i32 2
  %111 = ptrtoint ptr %sn_move49.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %sn_move49.i, align 4
  %logical_minimum.i321.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 11
  %113 = ptrtoint ptr %logical_minimum.i321.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %logical_minimum.i321.i, align 4
  %logical_maximum.i322.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 12
  %115 = ptrtoint ptr %logical_maximum.i322.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %logical_maximum.i322.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i323.i = icmp eq i32 %112, 0
  br i1 %tobool.not.i323.i, label %if.end47.i.cond.end.i332.i_crit_edge, label %cond.true.i326.i

if.end47.i.cond.end.i332.i_crit_edge:             ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i332.i

cond.true.i326.i:                                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i324.i = sub i32 %116, %114
  %div.i325.i = sdiv i32 %sub.i324.i, %112
  br label %cond.end.i332.i

cond.end.i332.i:                                  ; preds = %cond.true.i326.i, %if.end47.i.cond.end.i332.i_crit_edge
  %cond.i327.i = phi i32 [ %div.i325.i, %cond.true.i326.i ], [ 0, %if.end47.i.cond.end.i332.i_crit_edge ]
  tail call void @input_set_abs_params(ptr noundef %110, i32 noundef %code.1.i, i32 noundef %114, i32 noundef %116, i32 noundef %cond.i327.i, i32 noundef 0) #9
  %conv.i328.i = trunc i32 %code.1.i to i16
  %call.i329.i = tail call i32 @hidinput_calc_abs_res(ptr noundef %field, i16 noundef zeroext %conv.i328.i) #9
  tail call void @input_alloc_absinfo(ptr noundef %110) #9
  %absinfo.i.i330.i = getelementptr inbounds %struct.input_dev, ptr %110, i32 0, i32 26
  %117 = ptrtoint ptr %absinfo.i.i330.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %absinfo.i.i330.i, align 8
  %tobool.not.i.i331.i = icmp eq ptr %118, null
  br i1 %tobool.not.i.i331.i, label %cond.end.i332.i.cleanup_crit_edge, label %if.then.i.i334.i

cond.end.i332.i.cleanup_crit_edge:                ; preds = %cond.end.i332.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i334.i:                                 ; preds = %cond.end.i332.i
  call void @__sanitizer_cov_trace_pc() #11
  %resolution.i.i333.i = getelementptr %struct.input_absinfo, ptr %118, i32 %code.1.i, i32 5
  %119 = ptrtoint ptr %resolution.i.i333.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %call.i329.i, ptr %resolution.i.i333.i, align 4
  br label %cleanup

sw.bb50.i:                                        ; preds = %if.end10.i
  %120 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %80, label %sw.epilog158.i [
    i32 852018, label %sw.bb52.i
    i32 852039, label %sw.bb61.i
    i32 852034, label %sw.bb87.i
    i32 852049, label %sw.bb96.i
    i32 852040, label %sw.bb101.i
    i32 852041, label %sw.bb111.i
    i32 852016, label %sw.bb128.i
    i32 852054, label %sw.bb133.i
    i32 852052, label %sw.bb138.i
    i32 852031, label %sw.bb142.i
    i32 852053, label %sw.bb50.i.cleanup_crit_edge
    i32 852019, label %sw.bb50.i.cleanup_crit_edge142
  ]

sw.bb50.i.cleanup_crit_edge142:                   ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb50.i.cleanup_crit_edge:                      ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb52.i:                                        ; preds = %sw.bb50.i
  %quirks.i = getelementptr inbounds %struct.mt_application, ptr %5, i32 0, i32 4
  %121 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %quirks.i, align 4
  %and53.i = and i32 %122, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %sw.bb52.i.if.end57.i_crit_edge, label %if.then55.i

sw.bb52.i.if.end57.i_crit_edge:                   ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

if.then55.i:                                      ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #11
  %input56.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %123 = ptrtoint ptr %input56.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %input56.i, align 4
  tail call void @input_set_abs_params(ptr noundef %124, i32 noundef 59, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then55.i, %sw.bb52.i.if.end57.i_crit_edge
  %value58.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 10
  %125 = ptrtoint ptr %value58.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %value58.i, align 4
  %127 = ptrtoint ptr %usage_index.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %usage_index.i, align 4
  %arrayidx60.i = getelementptr i32, ptr %126, i32 %128
  tail call fastcc void @mt_store_field(ptr noundef %hdev, ptr noundef %5, ptr noundef %arrayidx60.i, i32 noundef 48) #9
  br label %cleanup

sw.bb61.i:                                        ; preds = %sw.bb50.i
  %129 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %65, align 4
  %131 = zext i32 %130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %130, label %sw.bb61.i.if.end77.i_crit_edge [
    i32 18, label %sw.bb61.i.land.lhs.true68.i_crit_edge
    i32 21, label %sw.bb61.i.land.lhs.true68.i_crit_edge143
    i32 22, label %sw.bb61.i.land.lhs.true68.i_crit_edge144
  ]

sw.bb61.i.land.lhs.true68.i_crit_edge144:         ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true68.i

sw.bb61.i.land.lhs.true68.i_crit_edge143:         ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true68.i

sw.bb61.i.land.lhs.true68.i_crit_edge:            ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true68.i

sw.bb61.i.if.end77.i_crit_edge:                   ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.i

land.lhs.true68.i:                                ; preds = %sw.bb61.i.land.lhs.true68.i_crit_edge, %sw.bb61.i.land.lhs.true68.i_crit_edge143, %sw.bb61.i.land.lhs.true68.i_crit_edge144
  %132 = ptrtoint ptr %application33 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %application33, align 4
  %134 = and i32 %133, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 851972, i32 %134)
  %switch.i = icmp eq i32 %134, 851972
  br i1 %switch.i, label %if.then74.i, label %land.lhs.true68.i.if.end77.i_crit_edge

land.lhs.true68.i.if.end77.i_crit_edge:           ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.i

if.then74.i:                                      ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #11
  %quirks75.i = getelementptr inbounds %struct.mt_application, ptr %5, i32 0, i32 4
  %135 = ptrtoint ptr %quirks75.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %quirks75.i, align 4
  %or76.i = or i32 %136, 128
  store i32 %or76.i, ptr %quirks75.i, align 4
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then74.i, %land.lhs.true68.i.if.end77.i_crit_edge, %sw.bb61.i.if.end77.i_crit_edge
  %quirks78.i = getelementptr inbounds %struct.mt_application, ptr %5, i32 0, i32 4
  %137 = ptrtoint ptr %quirks78.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %quirks78.i, align 4
  %and79.i = and i32 %138, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.end77.i.if.end83.i_crit_edge, label %if.then81.i

if.end77.i.if.end83.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i

if.then81.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  %input82.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %139 = ptrtoint ptr %input82.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %input82.i, align 4
  tail call void @input_set_abs_params(ptr noundef %140, i32 noundef 55, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0) #9
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then81.i, %if.end77.i.if.end83.i_crit_edge
  %value84.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 10
  %141 = ptrtoint ptr %value84.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %value84.i, align 4
  %143 = ptrtoint ptr %usage_index.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %usage_index.i, align 4
  %arrayidx86.i = getelementptr i32, ptr %142, i32 %144
  tail call fastcc void @mt_store_field(ptr noundef %hdev, ptr noundef %5, ptr noundef %arrayidx86.i, i32 noundef 52) #9
  br label %cleanup

sw.bb87.i:                                        ; preds = %sw.bb50.i
  %145 = ptrtoint ptr %application33 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %application33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65550, i32 %146)
  %cmp89.not.i = icmp eq i32 %146, 65550
  br i1 %cmp89.not.i, label %sw.bb87.i.if.end92.i_crit_edge, label %if.then90.i

sw.bb87.i.if.end92.i_crit_edge:                   ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.i

if.then90.i:                                      ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #11
  %input91.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %147 = ptrtoint ptr %input91.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %input91.i, align 4
  tail call void @input_set_capability(ptr noundef %148, i32 noundef 1, i32 noundef 330) #9
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then90.i, %sw.bb87.i.if.end92.i_crit_edge
  %value93.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 10
  %149 = ptrtoint ptr %value93.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %value93.i, align 4
  %151 = ptrtoint ptr %usage_index.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %usage_index.i, align 4
  %arrayidx95.i = getelementptr i32, ptr %150, i32 %152
  tail call fastcc void @mt_store_field(ptr noundef %hdev, ptr noundef %5, ptr noundef %arrayidx95.i, i32 noundef 44) #9
  br label %cleanup

sw.bb96.i:                                        ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #11
  %value97.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 10
  %153 = ptrtoint ptr %value97.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %value97.i, align 4
  %arrayidx99.i = getelementptr i32, ptr %154, i32 %76
  tail call fastcc void @mt_store_field(ptr noundef %hdev, ptr noundef %5, ptr noundef %arrayidx99.i, i32 noundef 40) #9
  %touches_by_report.i = getelementptr inbounds %struct.mt_application, ptr %5, i32 0, i32 14
  %155 = ptrtoint ptr %touches_by_report.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %touches_by_report.i, align 1
  %inc100.i = add i8 %156, 1
  store i8 %inc100.i, ptr %touches_by_report.i, align 1
  br label %cleanup

sw.bb101.i:                                       ; preds = %sw.bb50.i
  %quirks102.i = getelementptr inbounds %struct.mt_application, ptr %5, i32 0, i32 4
  %157 = ptrtoint ptr %quirks102.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %quirks102.i, align 4
  %and103.i = and i32 %158, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i)
  %tobool104.not.i = icmp eq i32 %and103.i, 0
  br i1 %tobool104.not.i, label %if.then105.i, label %sw.bb101.i.if.end107.i_crit_edge

sw.bb101.i.if.end107.i_crit_edge:                 ; preds = %sw.bb101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107.i

if.then105.i:                                     ; preds = %sw.bb101.i
  call void @__sanitizer_cov_trace_pc() #11
  %input106.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %159 = ptrtoint ptr %input106.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %input106.i, align 4
  %sn_width.i = getelementptr inbounds %struct.mt_class, ptr %65, i32 0, i32 3
  %161 = ptrtoint ptr %sn_width.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %sn_width.i, align 4
  tail call fastcc void @set_abs(ptr noundef %160, i32 noundef 48, ptr noundef %field, i32 noundef %162) #9
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.then105.i, %sw.bb101.i.if.end107.i_crit_edge
  %value108.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 10
  %163 = ptrtoint ptr %value108.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %value108.i, align 4
  %165 = ptrtoint ptr %usage_index.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %usage_index.i, align 4
  %arrayidx110.i = getelementptr i32, ptr %164, i32 %166
  tail call fastcc void @mt_store_field(ptr noundef %hdev, ptr noundef %5, ptr noundef %arrayidx110.i, i32 noundef 28) #9
  br label %cleanup

sw.bb111.i:                                       ; preds = %sw.bb50.i
  %quirks112.i = getelementptr inbounds %struct.mt_application, ptr %5, i32 0, i32 4
  %167 = ptrtoint ptr %quirks112.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %quirks112.i, align 4
  %and113.i = and i32 %168, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.i)
  %tobool114.not.i = icmp eq i32 %and113.i, 0
  br i1 %tobool114.not.i, label %if.then115.i, label %sw.bb111.i.if.end124.i_crit_edge

sw.bb111.i.if.end124.i_crit_edge:                 ; preds = %sw.bb111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124.i

if.then115.i:                                     ; preds = %sw.bb111.i
  %input116.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %169 = ptrtoint ptr %input116.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %input116.i, align 4
  %sn_height.i = getelementptr inbounds %struct.mt_class, ptr %65, i32 0, i32 4
  %171 = ptrtoint ptr %sn_height.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %sn_height.i, align 4
  tail call fastcc void @set_abs(ptr noundef %170, i32 noundef 49, ptr noundef %field, i32 noundef %172) #9
  %173 = ptrtoint ptr %input116.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %input116.i, align 4
  %arrayidx.i.i = getelementptr %struct.input_dev, ptr %174, i32 0, i32 8, i32 1
  %175 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %arrayidx.i.i, align 4
  %177 = and i32 %176, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool120.not.i = icmp eq i32 %177, 0
  br i1 %tobool120.not.i, label %if.then121.i, label %if.then115.i.if.end124.i_crit_edge

if.then115.i.if.end124.i_crit_edge:               ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124.i

if.then121.i:                                     ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_set_abs_params(ptr noundef %174, i32 noundef 52, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.then121.i, %if.then115.i.if.end124.i_crit_edge, %sw.bb111.i.if.end124.i_crit_edge
  %value125.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 10
  %178 = ptrtoint ptr %value125.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %value125.i, align 4
  %180 = ptrtoint ptr %usage_index.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %usage_index.i, align 4
  %arrayidx127.i = getelementptr i32, ptr %179, i32 %181
  tail call fastcc void @mt_store_field(ptr noundef %hdev, ptr noundef %5, ptr noundef %arrayidx127.i, i32 noundef 32) #9
  br label %cleanup

sw.bb128.i:                                       ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #11
  %input129.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %182 = ptrtoint ptr %input129.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %input129.i, align 4
  %sn_pressure.i = getelementptr inbounds %struct.mt_class, ptr %65, i32 0, i32 5
  %184 = ptrtoint ptr %sn_pressure.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %sn_pressure.i, align 4
  tail call fastcc void @set_abs(ptr noundef %183, i32 noundef 58, ptr noundef %field, i32 noundef %185) #9
  %value130.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 10
  %186 = ptrtoint ptr %value130.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %value130.i, align 4
  %188 = ptrtoint ptr %usage_index.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %usage_index.i, align 4
  %arrayidx132.i = getelementptr i32, ptr %187, i32 %189
  tail call fastcc void @mt_store_field(ptr noundef %hdev, ptr noundef %5, ptr noundef %arrayidx132.i, i32 noundef 24) #9
  br label %cleanup

sw.bb133.i:                                       ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #11
  %input134.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %190 = ptrtoint ptr %input134.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %input134.i, align 4
  tail call void @input_set_capability(ptr noundef %191, i32 noundef 4, i32 noundef 5) #9
  %value135.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 10
  %192 = ptrtoint ptr %value135.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %value135.i, align 4
  %194 = ptrtoint ptr %usage_index.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %usage_index.i, align 4
  %arrayidx137.i = getelementptr i32, ptr %193, i32 %195
  %scantime.i = getelementptr inbounds %struct.mt_application, ptr %5, i32 0, i32 5
  %196 = ptrtoint ptr %scantime.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %arrayidx137.i, ptr %scantime.i, align 4
  %logical_maximum.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 12
  %197 = ptrtoint ptr %logical_maximum.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %logical_maximum.i, align 4
  %scantime_logical_max.i = getelementptr inbounds %struct.mt_application, ptr %5, i32 0, i32 6
  %199 = ptrtoint ptr %scantime_logical_max.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %scantime_logical_max.i, align 4
  br label %cleanup

sw.bb138.i:                                       ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #11
  %have_contact_count.i = getelementptr inbounds %struct.mt_application, ptr %5, i32 0, i32 19
  %200 = ptrtoint ptr %have_contact_count.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 1, ptr %have_contact_count.i, align 4
  %value139.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 10
  %201 = ptrtoint ptr %value139.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %value139.i, align 4
  %203 = ptrtoint ptr %usage_index.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %usage_index.i, align 4
  %arrayidx141.i = getelementptr i32, ptr %202, i32 %204
  %raw_cc.i = getelementptr inbounds %struct.mt_application, ptr %5, i32 0, i32 7
  %205 = ptrtoint ptr %raw_cc.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %arrayidx141.i, ptr %raw_cc.i, align 4
  br label %cleanup

sw.bb142.i:                                       ; preds = %sw.bb50.i
  %input143.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %206 = ptrtoint ptr %input143.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %input143.i, align 4
  %logical_maximum144.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 12
  %208 = ptrtoint ptr %logical_maximum144.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %logical_maximum144.i, align 4
  %sub145.i = sub i32 0, %209
  %div.i = sdiv i32 %sub145.i, 4
  %div147.i = sdiv i32 %209, 4
  %sn_move148.i = getelementptr inbounds %struct.mt_class, ptr %65, i32 0, i32 2
  %210 = ptrtoint ptr %sn_move148.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %sn_move148.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool149.not.i = icmp eq i32 %211, 0
  br i1 %tobool149.not.i, label %sw.bb142.i.cond.end.i_crit_edge, label %cond.true.i

sw.bb142.i.cond.end.i_crit_edge:                  ; preds = %sw.bb142.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %sw.bb142.i
  call void @__sanitizer_cov_trace_pc() #11
  %div152.i = sdiv i32 %209, %211
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %sw.bb142.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %div152.i, %cond.true.i ], [ 0, %sw.bb142.i.cond.end.i_crit_edge ]
  tail call void @input_set_abs_params(ptr noundef %207, i32 noundef 52, i32 noundef %div.i, i32 noundef %div147.i, i32 noundef %cond.i, i32 noundef 0) #9
  %value153.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 10
  %212 = ptrtoint ptr %value153.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %value153.i, align 4
  %214 = ptrtoint ptr %usage_index.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %usage_index.i, align 4
  %arrayidx155.i = getelementptr i32, ptr %213, i32 %215
  tail call fastcc void @mt_store_field(ptr noundef %hdev, ptr noundef %5, ptr noundef %arrayidx155.i, i32 noundef 36) #9
  br label %cleanup

sw.epilog158.i:                                   ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb159.i:                                       ; preds = %if.end10.i
  %sub161.i = add i32 %80, 65535
  %and162.i = and i32 %sub161.i, 65535
  %add.i = add nuw nsw i32 %and162.i, 272
  %quirks163.i = getelementptr inbounds %struct.mt_application, ptr %5, i32 0, i32 4
  %216 = ptrtoint ptr %quirks163.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %quirks163.i, align 4
  %and164.i = and i32 %217, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164.i)
  %tobool165.not.i = icmp eq i32 %and164.i, 0
  br i1 %tobool165.not.i, label %sw.bb159.i.if.end174.i_crit_edge, label %land.lhs.true166.i

sw.bb159.i.if.end174.i_crit_edge:                 ; preds = %sw.bb159.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end174.i

land.lhs.true166.i:                               ; preds = %sw.bb159.i
  call void @__sanitizer_cov_trace_pc() #11
  %218 = ptrtoint ptr %application33 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %application33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 851973, i32 %219)
  %cmp168.i = icmp ne i32 %219, 851973
  %and171.i = and i32 %80, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171.i)
  %cmp172.not.i = icmp eq i32 %and171.i, 0
  %or.cond.i = select i1 %cmp168.i, i1 true, i1 %cmp172.not.i
  %dec.i = add nuw nsw i32 %and162.i, 271
  %spec.select.i = select i1 %or.cond.i, i32 %add.i, i32 %dec.i
  br label %if.end174.i

if.end174.i:                                      ; preds = %land.lhs.true166.i, %sw.bb159.i.if.end174.i_crit_edge
  %code.2.i = phi i32 [ %add.i, %sw.bb159.i.if.end174.i_crit_edge ], [ %spec.select.i, %land.lhs.true166.i ]
  %220 = ptrtoint ptr %application33 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %application33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65550, i32 %221)
  %cmp176.i = icmp eq i32 %221, 65550
  %add181.i = add nuw nsw i32 %and162.i, 256
  %spec.select339.i = select i1 %cmp176.i, i32 %add181.i, i32 %code.2.i
  %input1.i.i131 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %222 = ptrtoint ptr %input1.i.i131 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %input1.i.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 767, i32 %spec.select339.i)
  %cmp.i.i = icmp ugt i32 %spec.select339.i, 767
  br i1 %cmp.i.i, label %if.then.i.i, label %hid_map_usage.exit.i, !prof !113

if.then.i.i:                                      ; preds = %if.end174.i
  %call.i336.i = tail call i32 @___ratelimit(ptr noundef nonnull @hid_map_usage._rs, ptr noundef nonnull @__func__.hid_map_usage) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i336.i)
  %tobool14.not.i.i = icmp eq i32 %call.i336.i, 0
  br i1 %tobool14.not.i.i, label %if.then.i.i.hid_map_usage.exit.thread.i_crit_edge, label %do.end.i.i

if.then.i.i.hid_map_usage.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hid_map_usage.exit.thread.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 8
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %225, i32 noundef %spec.select339.i, i32 noundef 1) #12
  br label %hid_map_usage.exit.thread.i

hid_map_usage.exit.thread.i:                      ; preds = %do.end.i.i, %if.then.i.i.hid_map_usage.exit.thread.i_crit_edge
  %226 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr null, ptr %bit, align 4
  br label %cleanup

hid_map_usage.exit.i:                             ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #11
  %keybit.i.i132 = getelementptr inbounds %struct.input_dev, ptr %223, i32 0, i32 6
  %type19.i.i133 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %227 = ptrtoint ptr %type19.i.i133 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 1, ptr %type19.i.i133, align 4
  %conv20.i.i = trunc i32 %spec.select339.i to i16
  %code.i.i134 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %228 = ptrtoint ptr %code.i.i134 to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 %conv20.i.i, ptr %code.i.i134, align 2
  %229 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 767, ptr %max, align 4
  %230 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %keybit.i.i132, ptr %bit, align 4
  %231 = ptrtoint ptr %input1.i.i131 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %input1.i.i131, align 4
  tail call void @input_set_capability(ptr noundef %232, i32 noundef 1, i32 noundef %spec.select339.i) #9
  br label %cleanup

sw.epilog188.i:                                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  %233 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 852000, i32 %234)
  %cmp60 = icmp eq i32 %234, 852000
  br i1 %cmp60, label %if.then61, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %application62 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 6
  %235 = ptrtoint ptr %application62 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 852000, ptr %application62, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %if.end59.cleanup_crit_edge, %sw.epilog188.i, %hid_map_usage.exit.i, %hid_map_usage.exit.thread.i, %sw.epilog158.i, %cond.end.i, %sw.bb138.i, %sw.bb133.i, %sw.bb128.i, %if.end124.i, %if.end107.i, %sw.bb96.i, %if.end92.i, %if.end83.i, %if.end57.i, %sw.bb50.i.cleanup_crit_edge, %sw.bb50.i.cleanup_crit_edge142, %if.then.i.i334.i, %cond.end.i332.i.cleanup_crit_edge, %if.then29.i, %set_abs.exit.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %sw.bb54, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb, %if.end48.cleanup_crit_edge, %land.lhs.true29.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %land.lhs.true29.cleanup_crit_edge ], [ -1, %if.end48.cleanup_crit_edge ], [ 1, %sw.bb54 ], [ 1, %sw.bb53 ], [ 1, %sw.bb52 ], [ 1, %sw.bb51 ], [ 1, %sw.bb ], [ 0, %if.then61 ], [ 0, %if.end59.cleanup_crit_edge ], [ 0, %sw.epilog188.i ], [ 1, %hid_map_usage.exit.i ], [ 0, %sw.epilog158.i ], [ 1, %cond.end.i ], [ 1, %sw.bb138.i ], [ 1, %sw.bb133.i ], [ 1, %sw.bb128.i ], [ 1, %if.end124.i ], [ 1, %if.end107.i ], [ 1, %sw.bb96.i ], [ 1, %if.end92.i ], [ 1, %if.end83.i ], [ 1, %if.end57.i ], [ 1, %if.then29.i ], [ 1, %set_abs.exit.i.cleanup_crit_edge ], [ 0, %sw.bb.i.cleanup_crit_edge ], [ -1, %sw.bb50.i.cleanup_crit_edge ], [ -1, %sw.bb50.i.cleanup_crit_edge142 ], [ -1, %if.end10.i.cleanup_crit_edge ], [ 1, %cond.end.i332.i.cleanup_crit_edge ], [ 1, %if.then.i.i334.i ], [ -1, %hid_map_usage.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_input_mapped(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %hi, ptr nocapture noundef readonly %field, ptr nocapture noundef readnone %usage, ptr nocapture noundef readnone %bit, ptr nocapture noundef readnone %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %report = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 17
  %2 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %report, align 4
  %call1 = tail call fastcc ptr @mt_find_report_data(ptr noundef %1, ptr noundef %3)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %is_mt_collection = getelementptr inbounds %struct.mt_report_data, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %is_mt_collection to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_mt_collection, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_input_configured(ptr noundef %hdev, ptr noundef readonly %hi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reports = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 5
  %2 = ptrtoint ptr %reports to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn74 = load ptr, ptr %reports, align 4
  %cmp.not75 = icmp eq ptr %.pn74, %reports
  br i1 %cmp.not75, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %input1.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn76 = phi ptr [ %.pn74, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %report.0 = getelementptr i8, ptr %.pn76, i32 -8
  %call2 = tail call fastcc ptr @mt_find_report_data(ptr noundef %1, ptr noundef %report.0)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %is_mt_collection = getelementptr inbounds %struct.mt_report_data, ptr %call2, i32 0, i32 3
  %3 = ptrtoint ptr %is_mt_collection to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_mt_collection, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.end.for.inc_crit_edge, label %if.then4

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then4:                                         ; preds = %if.end
  %application = getelementptr inbounds %struct.mt_report_data, ptr %call2, i32 0, i32 2
  %5 = ptrtoint ptr %application to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %application, align 4
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %input1.i, align 4
  %maxcontacts.i = getelementptr inbounds %struct.mt_device, ptr %8, i32 0, i32 5
  %11 = ptrtoint ptr %maxcontacts.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %maxcontacts.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then4.if.end.i_crit_edge

if.then4.if.end.i_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %maxcontacts.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 10, ptr %maxcontacts.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then4.if.end.i_crit_edge
  %have_contact_count.i.i = getelementptr inbounds %struct.mt_application, ptr %6, i32 0, i32 19
  %14 = ptrtoint ptr %have_contact_count.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %have_contact_count.i.i, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.mt_post_parse.exit.i_crit_edge

if.end.i.mt_post_parse.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt_post_parse.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %quirks.i.i = getelementptr inbounds %struct.mt_application, ptr %6, i32 0, i32 4
  %16 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %quirks.i.i, align 4
  %and.i.i = and i32 %17, -4097
  store i32 %and.i.i, ptr %quirks.i.i, align 4
  br label %mt_post_parse.exit.i

mt_post_parse.exit.i:                             ; preds = %if.then.i.i, %if.end.i.mt_post_parse.exit.i_crit_edge
  %serial_maybe.i = getelementptr inbounds %struct.mt_device, ptr %8, i32 0, i32 7
  %18 = ptrtoint ptr %serial_maybe.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %serial_maybe.i, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool3.not.i = icmp eq i8 %19, 0
  br i1 %tobool3.not.i, label %mt_post_parse.exit.i.if.end5.i_crit_edge, label %if.then4.i

mt_post_parse.exit.i.if.end5.i_crit_edge:         ; preds = %mt_post_parse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i:                                       ; preds = %mt_post_parse.exit.i
  %quirks1.i.i = getelementptr inbounds %struct.mt_application, ptr %6, i32 0, i32 4
  %20 = ptrtoint ptr %quirks1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %quirks1.i.i, align 4
  %mt_usages.i.i = getelementptr inbounds %struct.mt_application, ptr %6, i32 0, i32 3
  %22 = ptrtoint ptr %mt_usages.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %mt_usages.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %23, %mt_usages.i.i
  br i1 %cmp.i.not.i.i.i, label %if.then4.i.list_is_singular.exit.thread.i.i_crit_edge, label %list_is_singular.exit.i.i

if.then4.i.list_is_singular.exit.thread.i.i_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_is_singular.exit.thread.i.i

list_is_singular.exit.i.i:                        ; preds = %if.then4.i
  %prev.i.i.i = getelementptr inbounds %struct.mt_application, ptr %6, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %23, %25
  %or.i66.i = and i32 %21, -4210
  %and.i67.i = or i32 %or.i66.i, 16
  br i1 %cmp.i.not.i.i, label %list_is_singular.exit.i.i.mt_post_parse_default_settings.exit.i_crit_edge, label %list_is_singular.exit.i.i.list_is_singular.exit.thread.i.i_crit_edge

list_is_singular.exit.i.i.list_is_singular.exit.thread.i.i_crit_edge: ; preds = %list_is_singular.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_is_singular.exit.thread.i.i

list_is_singular.exit.i.i.mt_post_parse_default_settings.exit.i_crit_edge: ; preds = %list_is_singular.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt_post_parse_default_settings.exit.i

list_is_singular.exit.thread.i.i:                 ; preds = %list_is_singular.exit.i.i.list_is_singular.exit.thread.i.i_crit_edge, %if.then4.i.list_is_singular.exit.thread.i.i_crit_edge
  br label %mt_post_parse_default_settings.exit.i

mt_post_parse_default_settings.exit.i:            ; preds = %list_is_singular.exit.thread.i.i, %list_is_singular.exit.i.i.mt_post_parse_default_settings.exit.i_crit_edge
  %26 = phi i32 [ %21, %list_is_singular.exit.thread.i.i ], [ %and.i67.i, %list_is_singular.exit.i.i.mt_post_parse_default_settings.exit.i_crit_edge ]
  %27 = ptrtoint ptr %quirks1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %quirks1.i.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %mt_post_parse_default_settings.exit.i, %mt_post_parse.exit.i.if.end5.i_crit_edge
  %is_indirect.i = getelementptr inbounds %struct.mt_class, ptr %8, i32 0, i32 7
  %28 = ptrtoint ptr %is_indirect.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_indirect.i, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool6.not.i = icmp eq i8 %29, 0
  br i1 %tobool6.not.i, label %if.end5.i.if.end8.i_crit_edge, label %if.then7.i

if.end5.i.if.end8.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %mt_flags.i = getelementptr inbounds %struct.mt_application, ptr %6, i32 0, i32 9
  %30 = ptrtoint ptr %mt_flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mt_flags.i, align 4
  %or.i69 = or i32 %31, 1
  store i32 %or.i69, ptr %mt_flags.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end5.i.if.end8.i_crit_edge
  %quirks.i = getelementptr inbounds %struct.mt_application, ptr %6, i32 0, i32 4
  %32 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %if.end8.i.if.end13.i_crit_edge, label %if.then10.i

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %mt_flags11.i = getelementptr inbounds %struct.mt_application, ptr %6, i32 0, i32 9
  %34 = ptrtoint ptr %mt_flags11.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mt_flags11.i, align 4
  %or12.i = or i32 %35, 4
  store i32 %or12.i, ptr %mt_flags11.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end13.i_crit_edge
  %mt_flags14.i = getelementptr inbounds %struct.mt_application, ptr %6, i32 0, i32 9
  %36 = ptrtoint ptr %mt_flags14.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mt_flags14.i, align 4
  %and15.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end13.i.if.end19.i_crit_edge, label %land.lhs.true.i

if.end13.i.if.end19.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

land.lhs.true.i:                                  ; preds = %if.end13.i
  %buttons_count.i = getelementptr inbounds %struct.mt_application, ptr %6, i32 0, i32 13
  %38 = ptrtoint ptr %buttons_count.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %buttons_count.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp.i = icmp eq i8 %39, 1
  br i1 %cmp.i, label %if.then18.i, label %land.lhs.true.i.if.end19.i_crit_edge

land.lhs.true.i.if.end19.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then18.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_buttonpad.i = getelementptr inbounds %struct.mt_device, ptr %8, i32 0, i32 6
  %40 = ptrtoint ptr %is_buttonpad.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %is_buttonpad.i, align 2
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %land.lhs.true.i.if.end19.i_crit_edge, %if.end13.i.if.end19.i_crit_edge
  %is_buttonpad20.i = getelementptr inbounds %struct.mt_device, ptr %8, i32 0, i32 6
  %41 = ptrtoint ptr %is_buttonpad20.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_buttonpad20.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool21.not.i = icmp eq i8 %42, 0
  br i1 %tobool21.not.i, label %if.end19.i.devm_kcalloc.exit.i_crit_edge, label %if.then22.i

if.end19.i.devm_kcalloc.exit.i_crit_edge:         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %devm_kcalloc.exit.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %propbit.i = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 4
  %43 = ptrtoint ptr %propbit.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %propbit.i, align 4
  %or.i.i = or i32 %44, 4
  store i32 %or.i.i, ptr %propbit.i, align 4
  br label %devm_kcalloc.exit.i

devm_kcalloc.exit.i:                              ; preds = %if.then22.i, %if.end19.i.devm_kcalloc.exit.i_crit_edge
  %45 = ptrtoint ptr %maxcontacts.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %maxcontacts.i, align 1
  %conv26.i = zext i8 %46 to i32
  %sub.i = add nuw nsw i32 %conv26.i, 31
  %47 = lshr i32 %sub.i, 3
  %48 = and i32 %47, 60
  %49 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %input1.i, align 4
  %dev.i = getelementptr inbounds %struct.input_dev, ptr %50, i32 0, i32 40
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef %48, i32 noundef 3520) #9
  %pending_palm_slots.i = getelementptr inbounds %struct.mt_application, ptr %6, i32 0, i32 10
  %51 = ptrtoint ptr %pending_palm_slots.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call5.i.i.i, ptr %pending_palm_slots.i, align 4
  %tobool29.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool29.not.i, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %if.end31.i

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31.i:                                       ; preds = %devm_kcalloc.exit.i
  %52 = ptrtoint ptr %maxcontacts.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %maxcontacts.i, align 1
  %conv33.i = zext i8 %53 to i32
  %54 = ptrtoint ptr %mt_flags14.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mt_flags14.i, align 4
  %call35.i = tail call i32 @input_mt_init_slots(ptr noundef %10, i32 noundef %conv33.i, i32 noundef %55) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %mt_touch_input_configured.exit, label %if.end31.i.cleanup_crit_edge

if.end31.i.cleanup_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mt_touch_input_configured.exit:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %mt_flags14.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %mt_flags14.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %mt_touch_input_configured.exit, %if.end.for.inc_crit_edge
  %57 = ptrtoint ptr %.pn76 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn = load ptr, ptr %.pn76, align 4
  %cmp.not = icmp eq ptr %.pn, %reports
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %application15 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 6
  %58 = ptrtoint ptr %application15 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %application15, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %59, label %sw.default [
    i32 65542, label %for.end.cleanup_crit_edge
    i32 65543, label %for.end.cleanup_crit_edge77
    i32 65538, label %for.end.cleanup_crit_edge78
    i32 851973, label %for.end.cleanup_crit_edge79
    i32 65664, label %for.end.cleanup_crit_edge80
    i32 786433, label %for.end.cleanup_crit_edge81
    i32 65548, label %for.end.cleanup_crit_edge82
    i32 65550, label %for.end.cleanup_crit_edge83
    i32 851972, label %sw.bb16
    i32 -13565834, label %for.end.if.then24_crit_edge
    i32 852000, label %sw.bb20
  ]

for.end.if.then24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

for.end.cleanup_crit_edge83:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge82:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge81:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge80:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge79:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge78:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge77:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb16:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %name17 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 39
  %input = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %61 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %input, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %name17, ptr %62, align 8
  br label %cleanup

sw.bb20:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %input21 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %64 = ptrtoint ptr %input21 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %input21, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %65, i32 0, i32 6, i32 10
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %67, 2048
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %cleanup

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

if.then24:                                        ; preds = %sw.default, %for.end.if.then24_crit_edge
  %suffix.0 = phi ptr [ @.str.25, %sw.default ], [ @.str.24, %for.end.if.then24_crit_edge ]
  %input25 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %68 = ptrtoint ptr %input25 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %input25, align 4
  %dev26 = getelementptr inbounds %struct.input_dev, ptr %69, i32 0, i32 40
  %name27 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 39
  %call29 = tail call i32 @strlen(ptr noundef %name27) #13
  %call30 = tail call i32 @strlen(ptr noundef nonnull %suffix.0) #13
  %add = add i32 %call29, 2
  %add31 = add i32 %add, %call30
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev26, i32 noundef %add31, i32 noundef 3520) #9
  %tobool33.not = icmp eq ptr %call.i, null
  br i1 %tobool33.not, label %if.then24.cleanup_crit_edge, label %if.then34

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then34:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %call37 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.26, ptr noundef %name27, ptr noundef nonnull %suffix.0)
  %70 = ptrtoint ptr %input25 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %input25, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i, ptr %71, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.then24.cleanup_crit_edge, %sw.bb20, %sw.bb16, %for.end.cleanup_crit_edge, %for.end.cleanup_crit_edge77, %for.end.cleanup_crit_edge78, %for.end.cleanup_crit_edge79, %for.end.cleanup_crit_edge80, %for.end.cleanup_crit_edge81, %for.end.cleanup_crit_edge82, %for.end.cleanup_crit_edge83, %if.end31.i.cleanup_crit_edge, %devm_kcalloc.exit.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.then24.cleanup_crit_edge ], [ 0, %if.then34 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge77 ], [ 0, %for.end.cleanup_crit_edge78 ], [ 0, %for.end.cleanup_crit_edge79 ], [ 0, %for.end.cleanup_crit_edge80 ], [ 0, %for.end.cleanup_crit_edge81 ], [ 0, %for.end.cleanup_crit_edge82 ], [ 0, %for.end.cleanup_crit_edge83 ], [ 0, %sw.bb20 ], [ 0, %sw.bb16 ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ], [ %call35.i, %if.end31.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt_feature_mapping(ptr noundef %hdev, ptr nocapture noundef readonly %field, ptr nocapture noundef readonly %usage) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usage, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 852053, label %sw.bb
    i32 852057, label %sw.bb13
    i32 -16777019, label %sw.bb26
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %report = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 17
  %5 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %report, align 4
  tail call fastcc void @mt_get_feature(ptr noundef %hdev, ptr noundef %6)
  %value = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 10
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %value, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %conv = trunc i32 %10 to i8
  %maxcontacts = getelementptr inbounds %struct.mt_device, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %maxcontacts to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %maxcontacts, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  br i1 %tobool.not, label %land.lhs.true, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %logical_maximum = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 12
  %12 = ptrtoint ptr %logical_maximum to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %logical_maximum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 251, i32 %13)
  %cmp = icmp slt i32 %13, 251
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %conv4 = trunc i32 %13 to i8
  %14 = ptrtoint ptr %maxcontacts to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv4, ptr %maxcontacts, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %maxcontacts6 = getelementptr inbounds %struct.mt_class, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %maxcontacts6 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %maxcontacts6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool7.not = icmp eq i8 %16, 0
  br i1 %tobool7.not, label %if.end.sw.epilog_crit_edge, label %if.then8

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %maxcontacts to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %maxcontacts, align 1
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %usage_index = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 2
  %18 = ptrtoint ptr %usage_index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usage_index, align 4
  %report_count = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 8
  %20 = ptrtoint ptr %report_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %report_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp14.not = icmp ult i32 %19, %21
  br i1 %cmp14.not, label %if.end17, label %do.end

do.end:                                           ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #12
  br label %sw.epilog

if.end17:                                         ; preds = %sw.bb13
  %report18 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 17
  %22 = ptrtoint ptr %report18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %report18, align 4
  tail call fastcc void @mt_get_feature(ptr noundef %hdev, ptr noundef %23)
  %value19 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 10
  %24 = ptrtoint ptr %value19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %value19, align 4
  %26 = ptrtoint ptr %usage_index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %usage_index, align 4
  %arrayidx21 = getelementptr i32, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp22 = icmp eq i32 %29, 0
  br i1 %cmp22, label %if.then24, label %if.end17.sw.epilog_crit_edge

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %is_buttonpad = getelementptr inbounds %struct.mt_device, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %is_buttonpad to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %is_buttonpad, align 2
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %usage_index27 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 2
  %31 = ptrtoint ptr %usage_index27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %usage_index27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp28 = icmp eq i32 %32, 0
  br i1 %cmp28, label %if.then30, label %sw.bb26.sw.epilog_crit_edge

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then30:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  %report31 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 17
  %33 = ptrtoint ptr %report31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %report31, align 4
  tail call fastcc void @mt_get_feature(ptr noundef %hdev, ptr noundef %34)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then30, %sw.bb26.sw.epilog_crit_edge, %if.then24, %if.end17.sw.epilog_crit_edge, %do.end, %if.then8, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_suspend(ptr noundef %hdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %quirks = getelementptr inbounds %struct.mt_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %4 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ll_driver.i, align 4
  %may_wakeup.i = getelementptr inbounds %struct.hid_ll_driver, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %may_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %may_wakeup.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false
  %call.i = tail call zeroext i1 %7(ptr noundef %hdev) #9
  br i1 %call.i, label %if.then.i.if.else_crit_edge, label %if.then.i.if.then_crit_edge

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then.i.if.else_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end.i:                                         ; preds = %lor.lhs.false
  %parent.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %if.end.i.if.then_crit_edge, label %if.then4.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then4.i:                                       ; preds = %if.end.i
  %can_wakeup.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %can_wakeup.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i.i = load i16, ptr %can_wakeup.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i16 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then4.i.if.then_crit_edge, label %hid_hw_may_wakeup.exit

if.then4.i.if.then_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

hid_hw_may_wakeup.exit:                           ; preds = %if.then4.i
  %wakeup.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 6
  %11 = ptrtoint ptr %wakeup.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wakeup.i.i, align 8
  %tobool2.i.i.not = icmp eq ptr %12, null
  br i1 %tobool2.i.i.not, label %hid_hw_may_wakeup.exit.if.then_crit_edge, label %hid_hw_may_wakeup.exit.if.else_crit_edge

hid_hw_may_wakeup.exit.if.else_crit_edge:         ; preds = %hid_hw_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

hid_hw_may_wakeup.exit.if.then_crit_edge:         ; preds = %hid_hw_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %hid_hw_may_wakeup.exit.if.then_crit_edge, %if.then4.i.if.then_crit_edge, %if.end.i.if.then_crit_edge, %if.then.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call fastcc void @mt_set_modes(ptr noundef %hdev, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %if.end

if.else:                                          ; preds = %hid_hw_may_wakeup.exit.if.else_crit_edge, %if.then.i.if.else_crit_edge
  tail call fastcc void @mt_set_modes(ptr noundef %hdev, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_resume(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %0 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ll_driver.i, align 4
  %idle1.i = getelementptr inbounds %struct.hid_ll_driver, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %idle1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idle1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.hid_hw_idle.exit_crit_edge, label %if.then.i

entry.hid_hw_idle.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %hid_hw_idle.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %3(ptr noundef %hdev, i32 noundef 0, i32 noundef 0, i32 noundef 10) #9
  br label %hid_hw_idle.exit

hid_hw_idle.exit:                                 ; preds = %if.then.i, %entry.hid_hw_idle.exit_crit_edge
  tail call fastcc void @mt_set_modes(ptr noundef %hdev, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_reset_resume(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mt_release_contacts(ptr noundef %hdev)
  tail call fastcc void @mt_set_modes(ptr noundef %hdev, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt_expired_timeout(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %mt_io_flags = getelementptr i8, ptr %t, i32 52
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %mt_io_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %mt_io_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %mt_io_flags, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mt_release_contacts(ptr noundef %1)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %mt_io_flags) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt_set_modes(ptr noundef %hdev, i32 noundef %latency, i1 noundef zeroext %surface_switch, i1 noundef zeroext %button_switch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %report_list = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 2, i32 1
  %0 = ptrtoint ptr %report_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %rep.069 = load ptr, ptr %report_list, align 4
  %cmp.not70 = icmp eq ptr %rep.069, %report_list
  br i1 %cmp.not70, label %entry.for.end34_crit_edge, label %for.cond3.preheader.lr.ph

entry.for.end34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end34

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %conv38.i = zext i1 %button_switch to i32
  %conv33.i = zext i1 %surface_switch to i32
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc28.for.cond3.preheader_crit_edge, %for.cond3.preheader.lr.ph
  %rep.072 = phi ptr [ %rep.069, %for.cond3.preheader.lr.ph ], [ %rep.0, %for.inc28.for.cond3.preheader_crit_edge ]
  %inputmode_found.071 = phi i8 [ 0, %for.cond3.preheader.lr.ph ], [ %inputmode_found.1.lcssa75, %for.inc28.for.cond3.preheader_crit_edge ]
  %maxfield = getelementptr inbounds %struct.hid_report, ptr %rep.072, i32 0, i32 6
  %1 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp463.not = icmp eq i32 %2, 0
  br i1 %cmp463.not, label %for.cond3.preheader.for.inc28_crit_edge, label %for.cond3.preheader.for.body5_crit_edge

for.cond3.preheader.for.body5_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body5

for.cond3.preheader.for.inc28_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28

for.body5:                                        ; preds = %for.inc22.for.body5_crit_edge, %for.cond3.preheader.for.body5_crit_edge
  %i.066 = phi i32 [ %inc23, %for.inc22.for.body5_crit_edge ], [ 0, %for.cond3.preheader.for.body5_crit_edge ]
  %update_report.0.off065 = phi i1 [ %update_report.3.off0, %for.inc22.for.body5_crit_edge ], [ false, %for.cond3.preheader.for.body5_crit_edge ]
  %inputmode_found.164 = phi i8 [ %inputmode_found.4, %for.inc22.for.body5_crit_edge ], [ %inputmode_found.071, %for.cond3.preheader.for.body5_crit_edge ]
  %arrayidx6 = getelementptr %struct.hid_report, ptr %rep.072, i32 0, i32 5, i32 %i.066
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx6, align 4
  %report_count = getelementptr inbounds %struct.hid_field, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %report_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %report_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp7 = icmp eq i32 %6, 0
  br i1 %cmp7, label %for.body5.for.inc22_crit_edge, label %for.cond8.preheader

for.body5.for.inc22_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22

for.cond8.preheader:                              ; preds = %for.body5
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx6, align 4
  %maxusage57 = getelementptr inbounds %struct.hid_field, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %maxusage57 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %maxusage57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1158.not = icmp eq i32 %10, 0
  br i1 %cmp1158.not, label %for.cond8.preheader.for.inc22_crit_edge, label %for.cond8.preheader.for.body12_crit_edge

for.cond8.preheader.for.body12_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body12

for.cond8.preheader.for.inc22_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22

for.body12:                                       ; preds = %mt_need_to_apply_feature.exit.for.body12_crit_edge, %for.cond8.preheader.for.body12_crit_edge
  %11 = phi ptr [ %56, %mt_need_to_apply_feature.exit.for.body12_crit_edge ], [ %8, %for.cond8.preheader.for.body12_crit_edge ]
  %update_report.1.off061 = phi i1 [ %retval.0.i, %mt_need_to_apply_feature.exit.for.body12_crit_edge ], [ %update_report.0.off065, %for.cond8.preheader.for.body12_crit_edge ]
  %j.060 = phi i32 [ %inc, %mt_need_to_apply_feature.exit.for.body12_crit_edge ], [ 0, %for.cond8.preheader.for.body12_crit_edge ]
  %inputmode_found.259 = phi i8 [ %inputmode_found.3, %mt_need_to_apply_feature.exit.for.body12_crit_edge ], [ %inputmode_found.164, %for.cond8.preheader.for.body12_crit_edge ]
  %usage15 = getelementptr inbounds %struct.hid_field, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %usage15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usage15, align 4
  %arrayidx16 = getelementptr %struct.hid_usage, ptr %13, i32 %j.060
  %14 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i, align 4
  %report2.i = getelementptr inbounds %struct.hid_field, ptr %11, i32 0, i32 17
  %16 = ptrtoint ptr %report2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %report2.i, align 4
  %usage_index.i = getelementptr %struct.hid_usage, ptr %13, i32 %j.060, i32 2
  %18 = ptrtoint ptr %usage_index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usage_index.i, align 4
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx16, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %21, label %for.body12.mt_need_to_apply_feature.exit_crit_edge [
    i32 852050, label %sw.bb.i
    i32 852053, label %sw.bb13.i
    i32 852064, label %sw.bb28.i
    i32 852055, label %sw.bb31.i
    i32 852056, label %sw.bb36.i
  ]

for.body12.mt_need_to_apply_feature.exit_crit_edge: ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt_need_to_apply_feature.exit

sw.bb.i:                                          ; preds = %for.body12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inputmode_found.259)
  %tobool.not.i = icmp eq i8 %inputmode_found.259, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.i.mt_need_to_apply_feature.exit_crit_edge

sw.bb.i.mt_need_to_apply_feature.exit_crit_edge:  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt_need_to_apply_feature.exit

if.end.i:                                         ; preds = %sw.bb.i
  %quirks.i = getelementptr inbounds %struct.mt_class, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %24, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then4.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then4.i:                                       ; preds = %if.end.i
  %size.i.i = getelementptr inbounds %struct.hid_report, ptr %17, i32 0, i32 7
  %25 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.hid_report, ptr %17, i32 0, i32 2
  %27 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id.i.i, align 4
  %call6.i = tail call ptr @hid_alloc_report_buf(ptr noundef %17, i32 noundef 3264) #9
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %do.end.i, label %if.end9.i

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.14) #12
  br label %mt_need_to_apply_feature.exit

if.end9.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %26, 7
  %div3.i.i = lshr i32 %sub.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.i = icmp ne i32 %28, 0
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add nuw nsw i32 %div3.i.i, %conv.i.i
  %29 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id.i.i, align 4
  %conv.i = trunc i32 %30 to i8
  %call10.i = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %conv.i, ptr noundef nonnull %call6.i, i32 noundef %add1.i.i, i8 noundef zeroext 2, i32 noundef 1) #9
  tail call void @kfree(ptr noundef nonnull %call6.i) #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end9.i, %if.end.i.if.end11.i_crit_edge
  %inputmode_value.i = getelementptr inbounds %struct.mt_device, ptr %15, i32 0, i32 4
  %31 = ptrtoint ptr %inputmode_value.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %inputmode_value.i, align 4
  %conv12.i = zext i8 %32 to i32
  %value.i = getelementptr inbounds %struct.hid_field, ptr %11, i32 0, i32 10
  %33 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %value.i, align 4
  %arrayidx.i = getelementptr i32, ptr %34, i32 %19
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv12.i, ptr %arrayidx.i, align 4
  br label %mt_need_to_apply_feature.exit

sw.bb13.i:                                        ; preds = %for.body12
  %maxcontacts.i = getelementptr inbounds %struct.mt_class, ptr %15, i32 0, i32 6
  %36 = ptrtoint ptr %maxcontacts.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %maxcontacts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool14.not.i = icmp eq i8 %37, 0
  br i1 %tobool14.not.i, label %sw.bb13.i.mt_need_to_apply_feature.exit_crit_edge, label %if.then15.i

sw.bb13.i.mt_need_to_apply_feature.exit_crit_edge: ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt_need_to_apply_feature.exit

if.then15.i:                                      ; preds = %sw.bb13.i
  %logical_maximum.i = getelementptr inbounds %struct.hid_field, ptr %11, i32 0, i32 12
  %38 = ptrtoint ptr %logical_maximum.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %logical_maximum.i, align 4
  %conv17.i = zext i8 %37 to i32
  %40 = tail call i32 @llvm.smin.i32(i32 %39, i32 %conv17.i) #9
  %value19.i = getelementptr inbounds %struct.hid_field, ptr %11, i32 0, i32 10
  %41 = ptrtoint ptr %value19.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %value19.i, align 4
  %arrayidx20.i = getelementptr i32, ptr %42, i32 %19
  %43 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %40)
  %cmp21.not.i = icmp eq i32 %44, %40
  br i1 %cmp21.not.i, label %if.then15.i.mt_need_to_apply_feature.exit_crit_edge, label %if.then23.i

if.then15.i.mt_need_to_apply_feature.exit_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt_need_to_apply_feature.exit

if.then23.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %40, ptr %arrayidx20.i, align 4
  br label %mt_need_to_apply_feature.exit

sw.bb28.i:                                        ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  %value29.i = getelementptr inbounds %struct.hid_field, ptr %11, i32 0, i32 10
  %46 = ptrtoint ptr %value29.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %value29.i, align 4
  %arrayidx30.i = getelementptr i32, ptr %47, i32 %19
  %48 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %latency, ptr %arrayidx30.i, align 4
  br label %mt_need_to_apply_feature.exit

sw.bb31.i:                                        ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  %value34.i = getelementptr inbounds %struct.hid_field, ptr %11, i32 0, i32 10
  %49 = ptrtoint ptr %value34.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %value34.i, align 4
  %arrayidx35.i = getelementptr i32, ptr %50, i32 %19
  %51 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv33.i, ptr %arrayidx35.i, align 4
  br label %mt_need_to_apply_feature.exit

sw.bb36.i:                                        ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  %value39.i = getelementptr inbounds %struct.hid_field, ptr %11, i32 0, i32 10
  %52 = ptrtoint ptr %value39.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %value39.i, align 4
  %arrayidx40.i = getelementptr i32, ptr %53, i32 %19
  %54 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv38.i, ptr %arrayidx40.i, align 4
  br label %mt_need_to_apply_feature.exit

mt_need_to_apply_feature.exit:                    ; preds = %sw.bb36.i, %sw.bb31.i, %sw.bb28.i, %if.then23.i, %if.then15.i.mt_need_to_apply_feature.exit_crit_edge, %sw.bb13.i.mt_need_to_apply_feature.exit_crit_edge, %if.end11.i, %do.end.i, %sw.bb.i.mt_need_to_apply_feature.exit_crit_edge, %for.body12.mt_need_to_apply_feature.exit_crit_edge
  %inputmode_found.3 = phi i8 [ %inputmode_found.259, %for.body12.mt_need_to_apply_feature.exit_crit_edge ], [ %inputmode_found.259, %sw.bb36.i ], [ %inputmode_found.259, %sw.bb31.i ], [ %inputmode_found.259, %sw.bb28.i ], [ %inputmode_found.259, %sw.bb13.i.mt_need_to_apply_feature.exit_crit_edge ], [ %inputmode_found.259, %if.then15.i.mt_need_to_apply_feature.exit_crit_edge ], [ %inputmode_found.259, %if.then23.i ], [ 1, %if.end11.i ], [ 0, %do.end.i ], [ %inputmode_found.259, %sw.bb.i.mt_need_to_apply_feature.exit_crit_edge ]
  %retval.0.i = phi i1 [ %update_report.1.off061, %for.body12.mt_need_to_apply_feature.exit_crit_edge ], [ true, %sw.bb36.i ], [ true, %sw.bb31.i ], [ true, %sw.bb28.i ], [ %update_report.1.off061, %sw.bb13.i.mt_need_to_apply_feature.exit_crit_edge ], [ %update_report.1.off061, %if.then15.i.mt_need_to_apply_feature.exit_crit_edge ], [ true, %if.then23.i ], [ true, %if.end11.i ], [ %update_report.1.off061, %do.end.i ], [ %update_report.1.off061, %sw.bb.i.mt_need_to_apply_feature.exit_crit_edge ]
  %inc = add nuw i32 %j.060, 1
  %55 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx6, align 4
  %maxusage = getelementptr inbounds %struct.hid_field, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %maxusage to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %maxusage, align 4
  %cmp11 = icmp ult i32 %inc, %58
  br i1 %cmp11, label %mt_need_to_apply_feature.exit.for.body12_crit_edge, label %mt_need_to_apply_feature.exit.for.inc22_crit_edge

mt_need_to_apply_feature.exit.for.inc22_crit_edge: ; preds = %mt_need_to_apply_feature.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22

mt_need_to_apply_feature.exit.for.body12_crit_edge: ; preds = %mt_need_to_apply_feature.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12

for.inc22:                                        ; preds = %mt_need_to_apply_feature.exit.for.inc22_crit_edge, %for.cond8.preheader.for.inc22_crit_edge, %for.body5.for.inc22_crit_edge
  %inputmode_found.4 = phi i8 [ %inputmode_found.164, %for.body5.for.inc22_crit_edge ], [ %inputmode_found.164, %for.cond8.preheader.for.inc22_crit_edge ], [ %inputmode_found.3, %mt_need_to_apply_feature.exit.for.inc22_crit_edge ]
  %update_report.3.off0 = phi i1 [ %update_report.0.off065, %for.body5.for.inc22_crit_edge ], [ %update_report.0.off065, %for.cond8.preheader.for.inc22_crit_edge ], [ %retval.0.i, %mt_need_to_apply_feature.exit.for.inc22_crit_edge ]
  %inc23 = add nuw i32 %i.066, 1
  %59 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %maxfield, align 4
  %cmp4 = icmp ult i32 %inc23, %60
  br i1 %cmp4, label %for.inc22.for.body5_crit_edge, label %for.end24

for.inc22.for.body5_crit_edge:                    ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5

for.end24:                                        ; preds = %for.inc22
  br i1 %update_report.3.off0, label %if.then26, label %for.end24.for.inc28_crit_edge

for.end24.for.inc28_crit_edge:                    ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28

if.then26:                                        ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hid_hw_request(ptr noundef %hdev, ptr noundef %rep.072, i32 noundef 9) #9
  br label %for.inc28

for.inc28:                                        ; preds = %if.then26, %for.end24.for.inc28_crit_edge, %for.cond3.preheader.for.inc28_crit_edge
  %inputmode_found.1.lcssa75 = phi i8 [ %inputmode_found.4, %for.end24.for.inc28_crit_edge ], [ %inputmode_found.4, %if.then26 ], [ %inputmode_found.071, %for.cond3.preheader.for.inc28_crit_edge ]
  %61 = ptrtoint ptr %rep.072 to i32
  call void @__asan_load4_noabort(i32 %61)
  %rep.0 = load ptr, ptr %rep.072, align 4
  %cmp.not = icmp eq ptr %rep.0, %report_list
  br i1 %cmp.not, label %for.inc28.for.end34_crit_edge, label %for.inc28.for.cond3.preheader_crit_edge

for.inc28.for.cond3.preheader_crit_edge:          ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond3.preheader

for.inc28.for.end34_crit_edge:                    ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end34

for.end34:                                        ; preds = %for.inc28.for.end34_crit_edge, %entry.for.end34_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt_release_contacts(ptr noundef readonly %hid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %inputs = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 36
  %2 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %2)
  %hidinput.046 = load ptr, ptr %inputs, align 4
  %cmp.not47 = icmp eq ptr %hidinput.046, %inputs
  br i1 %cmp.not47, label %entry.for.end12_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end12

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %hidinput.048 = phi ptr [ %hidinput.0, %if.end.for.body_crit_edge ], [ %hidinput.046, %entry.for.body_crit_edge ]
  %input = getelementptr inbounds %struct.hid_input, ptr %hidinput.048, i32 0, i32 2
  %3 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %input, align 4
  %mt2 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 25
  %5 = ptrtoint ptr %mt2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mt2, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %for.cond3.preheader

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond3.preheader:                              ; preds = %for.body
  %num_slots = getelementptr inbounds %struct.input_mt, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp444 = icmp sgt i32 %8, 0
  br i1 %cmp444, label %for.cond3.preheader.for.body5_crit_edge, label %for.cond3.preheader.for.end_crit_edge

for.cond3.preheader.for.end_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond3.preheader.for.body5_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.cond3.preheader.for.body5_crit_edge
  %i.045 = phi i32 [ %inc, %for.body5.for.body5_crit_edge ], [ 0, %for.cond3.preheader.for.body5_crit_edge ]
  tail call void @input_event(ptr noundef %4, i32 noundef 3, i32 noundef 47, i32 noundef %i.045) #9
  %call.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %4, i32 noundef 0, i1 noundef zeroext false) #9
  %inc = add nuw nsw i32 %i.045, 1
  %9 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_slots, align 4
  %cmp4 = icmp slt i32 %inc, %10
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.for.end_crit_edge

for.body5.for.end_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5

for.end:                                          ; preds = %for.body5.for.end_crit_edge, %for.cond3.preheader.for.end_crit_edge
  tail call void @input_mt_sync_frame(ptr noundef %4) #9
  tail call void @input_event(ptr noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body.if.end_crit_edge
  %11 = ptrtoint ptr %hidinput.048 to i32
  call void @__asan_load4_noabort(i32 %11)
  %hidinput.0 = load ptr, ptr %hidinput.048, align 4
  %cmp.not = icmp eq ptr %hidinput.0, %inputs
  br i1 %cmp.not, label %if.end.for.end12_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end.for.end12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end12

for.end12:                                        ; preds = %if.end.for.end12_crit_edge, %entry.for.end12_crit_edge
  %applications = getelementptr inbounds %struct.mt_device, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %applications to i32
  call void @__asan_load4_noabort(i32 %12)
  %application.049 = load ptr, ptr %applications, align 4
  %cmp20.not50 = icmp eq ptr %application.049, %applications
  br i1 %cmp20.not50, label %for.end12.for.end29_crit_edge, label %for.end12.for.body22_crit_edge

for.end12.for.body22_crit_edge:                   ; preds = %for.end12
  br label %for.body22

for.end12.for.end29_crit_edge:                    ; preds = %for.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.end12.for.body22_crit_edge
  %application.051 = phi ptr [ %application.0, %for.body22.for.body22_crit_edge ], [ %application.049, %for.end12.for.body22_crit_edge ]
  %num_received = getelementptr inbounds %struct.mt_application, ptr %application.051, i32 0, i32 11
  %13 = ptrtoint ptr %num_received to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %num_received, align 4
  %14 = ptrtoint ptr %application.051 to i32
  call void @__asan_load4_noabort(i32 %14)
  %application.0 = load ptr, ptr %application.051, align 4
  %cmp20.not = icmp eq ptr %application.0, %applications
  br i1 %cmp20.not, label %for.body22.for.end29_crit_edge, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22

for.body22.for.end29_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

for.end29:                                        ; preds = %for.body22.for.end29_crit_edge, %for.end12.for.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_show_quirks(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %quirks = getelementptr inbounds %struct.mt_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.13, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_set_quirks(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !114
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %quirks = getelementptr inbounds %struct.mt_class, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %quirks, align 4
  %applications = getelementptr inbounds %struct.mt_device, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %applications to i32
  call void @__asan_load4_noabort(i32 %6)
  %application.025 = load ptr, ptr %applications, align 4
  %cmp.not26 = icmp eq ptr %application.025, %applications
  br i1 %cmp.not26, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %and = and i32 %4, -4097
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %application.027 = phi ptr [ %application.025, %for.body.lr.ph ], [ %application.0, %for.body.for.body_crit_edge ]
  %quirks6 = getelementptr inbounds %struct.mt_application, ptr %application.027, i32 0, i32 4
  %have_contact_count = getelementptr inbounds %struct.mt_application, ptr %application.027, i32 0, i32 19
  %7 = ptrtoint ptr %have_contact_count to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %have_contact_count, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  %spec.store.select = select i1 %tobool7.not, i32 %and, i32 %4
  %9 = ptrtoint ptr %quirks6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.store.select, ptr %quirks6, align 4
  %10 = ptrtoint ptr %application.027 to i32
  call void @__asan_load4_noabort(i32 %10)
  %application.0 = load ptr, ptr %application.027, align 4
  %cmp.not = icmp eq ptr %application.0, %applications
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %count, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_alloc_report_buf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mt_find_report_data(ptr noundef %td, ptr noundef %report) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reports = getelementptr inbounds %struct.mt_device, ptr %td, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %tmp.0.in = phi ptr [ %reports, %entry ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp.not = icmp eq ptr %tmp.0, %reports
  br i1 %cmp.not, label %for.cond.if.then10_crit_edge, label %for.body

for.cond.if.then10_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

for.body:                                         ; preds = %for.cond
  %report3 = getelementptr inbounds %struct.mt_report_data, ptr %tmp.0, i32 0, i32 1
  %1 = ptrtoint ptr %report3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %report3, align 4
  %cmp4 = icmp eq ptr %2, %report
  br i1 %cmp4, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.body
  %tobool.not = icmp eq ptr %tmp.0, null
  br i1 %tobool.not, label %for.end.if.then10_crit_edge, label %for.end.if.end11_crit_edge

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

for.end.if.then10_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then10:                                        ; preds = %for.end.if.then10_crit_edge, %for.cond.if.then10_crit_edge
  %hdev.i = getelementptr inbounds %struct.mt_device, ptr %td, i32 0, i32 2
  %3 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdev.i, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %4, i32 0, i32 18
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 20, i32 noundef 3520) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then10.if.end11_crit_edge, label %if.end.i

if.then10.if.end11_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.i:                                         ; preds = %if.then10
  %report1.i = getelementptr inbounds %struct.mt_report_data, ptr %call.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %report1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %report, ptr %report1.i, align 4
  %application1.i.i = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 4
  %6 = ptrtoint ptr %application1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %application1.i.i, align 4
  %applications.i.i = getelementptr inbounds %struct.mt_device, ptr %td, i32 0, i32 8
  %8 = ptrtoint ptr %applications.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.030.i.i = load ptr, ptr %applications.i.i, align 4
  %cmp.not31.i.i = icmp eq ptr %tmp.030.i.i, %applications.i.i
  br i1 %cmp.not31.i.i, label %if.end.i.if.then15.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.if.then15.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %quirks.i.i = getelementptr inbounds %struct.mt_class, ptr %td, i32 0, i32 1
  %id.i.i = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %tmp.032.i.i = phi ptr [ %tmp.030.i.i, %for.body.lr.ph.i.i ], [ %tmp.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %application4.i.i = getelementptr inbounds %struct.mt_application, ptr %tmp.032.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %application4.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %application4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %10)
  %cmp5.i.i = icmp eq i32 %7, %10
  br i1 %cmp5.i.i, label %if.then.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %11 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %quirks.i.i, align 4
  %and.i.i = and i32 %12, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.for.end.i.i_crit_edge, label %lor.lhs.false.i.i

if.then.i.i.for.end.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

lor.lhs.false.i.i:                                ; preds = %if.then.i.i
  %report_id.i.i = getelementptr inbounds %struct.mt_application, ptr %tmp.032.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %report_id.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %report_id.i.i, align 4
  %15 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp6.i.i = icmp eq i32 %14, %16
  br i1 %cmp6.i.i, label %lor.lhs.false.i.i.for.end.i.i_crit_edge, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

lor.lhs.false.i.i.for.end.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %lor.lhs.false.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %17 = ptrtoint ptr %tmp.032.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %tmp.0.i.i = load ptr, ptr %tmp.032.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %tmp.0.i.i, %applications.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.then15.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.if.then15.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i.i

for.end.i.i:                                      ; preds = %lor.lhs.false.i.i.for.end.i.i_crit_edge, %if.then.i.i.for.end.i.i_crit_edge
  %tobool14.not.i.i = icmp eq ptr %tmp.032.i.i, null
  br i1 %tobool14.not.i.i, label %for.end.i.i.if.then15.i.i_crit_edge, label %for.end.i.i.mt_find_application.exit.i_crit_edge

for.end.i.i.mt_find_application.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt_find_application.exit.i

for.end.i.i.if.then15.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i.i

if.then15.i.i:                                    ; preds = %for.end.i.i.if.then15.i.i_crit_edge, %for.inc.i.i.if.then15.i.i_crit_edge, %if.end.i.if.then15.i.i_crit_edge
  %18 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hdev.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.hid_device, ptr %19, i32 0, i32 18
  %call.i.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i.i.i, i32 noundef 76, i32 noundef 3520) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then5.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then15.i.i
  %application2.i.i.i = getelementptr inbounds %struct.mt_application, ptr %call.i.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %application2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %7, ptr %application2.i.i.i, align 4
  %mt_usages.i.i.i = getelementptr inbounds %struct.mt_application, ptr %call.i.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %mt_usages.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %mt_usages.i.i.i, ptr %mt_usages.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.mt_application, ptr %call.i.i.i.i, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %mt_usages.i.i.i, ptr %prev.i.i.i.i, align 4
  %23 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %7, label %if.end.i.i.i.if.end9.i.i.i_crit_edge [
    i32 851972, label %if.then3.i.i.i
    i32 851973, label %if.then6.i.i.i
  ]

if.end.i.i.i.if.end9.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mt_flags.i.i.i = getelementptr inbounds %struct.mt_application, ptr %call.i.i.i.i, i32 0, i32 9
  %24 = ptrtoint ptr %mt_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mt_flags.i.i.i, align 4
  %or.i.i.i = or i32 %25, 2
  store i32 %or.i.i.i, ptr %mt_flags.i.i.i, align 4
  br label %if.end9.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mt_flags7.i.i.i = getelementptr inbounds %struct.mt_application, ptr %call.i.i.i.i, i32 0, i32 9
  %26 = ptrtoint ptr %mt_flags7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mt_flags7.i.i.i, align 4
  %or8.i.i.i = or i32 %27, 1
  store i32 %or8.i.i.i, ptr %mt_flags7.i.i.i, align 4
  %inputmode_value.i.i.i = getelementptr inbounds %struct.mt_device, ptr %td, i32 0, i32 4
  %28 = ptrtoint ptr %inputmode_value.i.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %inputmode_value.i.i.i, align 4
  br label %if.end9.i.i.i

if.end9.i.i.i:                                    ; preds = %if.then6.i.i.i, %if.then3.i.i.i, %if.end.i.i.i.if.end9.i.i.i_crit_edge
  %scantime.i.i.i = getelementptr inbounds %struct.mt_application, ptr %call.i.i.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %scantime.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mzero, ptr %scantime.i.i.i, align 4
  %raw_cc.i.i.i = getelementptr inbounds %struct.mt_application, ptr %call.i.i.i.i, i32 0, i32 7
  %30 = ptrtoint ptr %raw_cc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @mzero, ptr %raw_cc.i.i.i, align 4
  %quirks.i.i.i = getelementptr inbounds %struct.mt_class, ptr %td, i32 0, i32 1
  %31 = ptrtoint ptr %quirks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %quirks.i.i.i, align 4
  %quirks10.i.i.i = getelementptr inbounds %struct.mt_application, ptr %call.i.i.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %quirks10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %quirks10.i.i.i, align 4
  %id.i.i.i = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 2
  %34 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id.i.i.i, align 4
  %report_id.i.i.i = getelementptr inbounds %struct.mt_application, ptr %call.i.i.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %report_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %report_id.i.i.i, align 4
  %prev.i28.i.i.i = getelementptr inbounds %struct.mt_device, ptr %td, i32 0, i32 8, i32 1
  %37 = ptrtoint ptr %prev.i28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i28.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.i.i, ptr noundef %38, ptr noundef %applications.i.i) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end9.i.i.i.mt_find_application.exit.i_crit_edge

if.end9.i.i.i.mt_find_application.exit.i_crit_edge: ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt_find_application.exit.i

if.end.i.i.i.i.i:                                 ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %prev.i28.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i.i.i, ptr %prev.i28.i.i.i, align 4
  %40 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %applications.i.i, ptr %call.i.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %call.i.i.i.i, ptr %38, align 4
  br label %mt_find_application.exit.i

mt_find_application.exit.i:                       ; preds = %if.end.i.i.i.i.i, %if.end9.i.i.i.mt_find_application.exit.i_crit_edge, %for.end.i.i.mt_find_application.exit.i_crit_edge
  %mt_application.1.i.i = phi ptr [ %tmp.032.i.i, %for.end.i.i.mt_find_application.exit.i_crit_edge ], [ %call.i.i.i.i, %if.end9.i.i.i.mt_find_application.exit.i_crit_edge ], [ %call.i.i.i.i, %if.end.i.i.i.i.i ]
  %application.i = getelementptr inbounds %struct.mt_report_data, ptr %call.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %application.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %mt_application.1.i.i, ptr %application.i, align 4
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 6
  %44 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp62.not.i = icmp eq i32 %45, 0
  br i1 %cmp62.not.i, label %mt_find_application.exit.i.for.end30.i_crit_edge, label %for.body.lr.ph.i

mt_find_application.exit.i.for.end30.i_crit_edge: ; preds = %mt_find_application.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end30.i

for.body.lr.ph.i:                                 ; preds = %mt_find_application.exit.i
  %is_mt_collection.i = getelementptr inbounds %struct.mt_report_data, ptr %call.i.i, i32 0, i32 3
  br label %for.body.i

if.then5.i:                                       ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %application57.i = getelementptr inbounds %struct.mt_report_data, ptr %call.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %application57.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %application57.i, align 4
  %47 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hdev.i, align 4
  %dev7.i = getelementptr inbounds %struct.hid_device, ptr %48, i32 0, i32 18
  tail call void @devm_kfree(ptr noundef %dev7.i, ptr noundef nonnull %call.i.i) #9
  br label %if.end11

for.body.i:                                       ; preds = %for.inc28.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %r.063.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc29.i, %for.inc28.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hid_report, ptr %report, i32 0, i32 5, i32 %r.063.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i, align 4
  %flags.i = getelementptr inbounds %struct.hid_field, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %for.body.i.for.inc28.i_crit_edge, label %if.end12.i

for.body.i.for.inc28.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28.i

if.end12.i:                                       ; preds = %for.body.i
  %logical.i = getelementptr inbounds %struct.hid_field, ptr %50, i32 0, i32 1
  %53 = ptrtoint ptr %logical.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %logical.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 852002, i32 %54)
  %cmp13.i = icmp eq i32 %54, 852002
  br i1 %cmp13.i, label %if.end12.i.if.then17.i_crit_edge, label %lor.lhs.false.i

if.end12.i.if.then17.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i

lor.lhs.false.i:                                  ; preds = %if.end12.i
  %55 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hdev.i, align 4
  %group.i = getelementptr inbounds %struct.hid_device, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %group.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %group.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %58)
  %cmp15.not.i = icmp eq i16 %58, 4
  br i1 %cmp15.not.i, label %lor.lhs.false.i.for.inc28.i_crit_edge, label %lor.lhs.false.i.if.then17.i_crit_edge

lor.lhs.false.i.if.then17.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i

lor.lhs.false.i.for.inc28.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28.i

if.then17.i:                                      ; preds = %lor.lhs.false.i.if.then17.i_crit_edge, %if.end12.i.if.then17.i_crit_edge
  %report_count.i = getelementptr inbounds %struct.hid_field, ptr %50, i32 0, i32 8
  %59 = ptrtoint ptr %report_count.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %report_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp1960.not.i = icmp eq i32 %60, 0
  br i1 %cmp1960.not.i, label %if.then17.i.for.inc28.i_crit_edge, label %for.body21.lr.ph.i

if.then17.i.for.inc28.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28.i

for.body21.lr.ph.i:                               ; preds = %if.then17.i
  %usage.i = getelementptr inbounds %struct.hid_field, ptr %50, i32 0, i32 3
  %61 = ptrtoint ptr %usage.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %usage.i, align 4
  br label %for.body21.i

for.cond18.i:                                     ; preds = %for.body21.i
  %inc.i = add nuw i32 %n.061.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %60
  br i1 %exitcond.not.i, label %for.cond18.i.for.inc28.i_crit_edge, label %for.cond18.i.for.body21.i_crit_edge

for.cond18.i.for.body21.i_crit_edge:              ; preds = %for.cond18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body21.i

for.cond18.i.for.inc28.i_crit_edge:               ; preds = %for.cond18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28.i

for.body21.i:                                     ; preds = %for.cond18.i.for.body21.i_crit_edge, %for.body21.lr.ph.i
  %n.061.i = phi i32 [ 0, %for.body21.lr.ph.i ], [ %inc.i, %for.cond18.i.for.body21.i_crit_edge ]
  %arrayidx22.i = getelementptr %struct.hid_usage, ptr %62, i32 %n.061.i
  %63 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 852049, i32 %64)
  %cmp23.i = icmp eq i32 %64, 852049
  br i1 %cmp23.i, label %if.then25.i, label %for.cond18.i

if.then25.i:                                      ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %is_mt_collection.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %is_mt_collection.i, align 4
  br label %for.inc28.i

for.inc28.i:                                      ; preds = %if.then25.i, %for.cond18.i.for.inc28.i_crit_edge, %if.then17.i.for.inc28.i_crit_edge, %lor.lhs.false.i.for.inc28.i_crit_edge, %for.body.i.for.inc28.i_crit_edge
  %inc29.i = add nuw i32 %r.063.i, 1
  %exitcond65.not.i = icmp eq i32 %inc29.i, %45
  br i1 %exitcond65.not.i, label %for.inc28.i.for.end30.i_crit_edge, label %for.inc28.i.for.body.i_crit_edge

for.inc28.i.for.body.i_crit_edge:                 ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc28.i.for.end30.i_crit_edge:                ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end30.i

for.end30.i:                                      ; preds = %for.inc28.i.for.end30.i_crit_edge, %mt_find_application.exit.i.for.end30.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.mt_device, ptr %td, i32 0, i32 9, i32 1
  %66 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %67, ptr noundef %reports) #9
  br i1 %call.i.i.i, label %if.end.i.i55.i, label %for.end30.i.if.end11_crit_edge

for.end30.i.if.end11_crit_edge:                   ; preds = %for.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.i.i55.i:                                   ; preds = %for.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i.i, ptr %prev.i.i, align 4
  %69 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %reports, ptr %call.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev3.i.i.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %call.i.i, ptr %67, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end.i.i55.i, %for.end30.i.if.end11_crit_edge, %if.then5.i, %if.then10.if.end11_crit_edge, %for.end.if.end11_crit_edge
  %rdata.1 = phi ptr [ %tmp.0, %for.end.if.end11_crit_edge ], [ null, %if.then5.i ], [ null, %if.then10.if.end11_crit_edge ], [ %call.i.i, %for.end30.i.if.end11_crit_edge ], [ %call.i.i, %if.end.i.i55.i ]
  ret ptr %rdata.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_get_slot_by_key(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt_store_field(ptr noundef %hdev, ptr noundef %application, ptr noundef %value, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mt_usages = getelementptr inbounds %struct.mt_application, ptr %application, i32 0, i32 3
  %0 = ptrtoint ptr %mt_usages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mt_usages, align 4
  %cmp.i.not = icmp eq ptr %1, %mt_usages
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 56, i32 noundef 3520) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %x.i = getelementptr inbounds %struct.mt_usages, ptr %call.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mzero, ptr %x.i, align 4
  %y.i = getelementptr inbounds %struct.mt_usages, ptr %call.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %y.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mzero, ptr %y.i, align 4
  %cx.i = getelementptr inbounds %struct.mt_usages, ptr %call.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %cx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mzero, ptr %cx.i, align 4
  %cy.i = getelementptr inbounds %struct.mt_usages, ptr %call.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %cy.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mzero, ptr %cy.i, align 4
  %p.i = getelementptr inbounds %struct.mt_usages, ptr %call.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mzero, ptr %p.i, align 4
  %w.i = getelementptr inbounds %struct.mt_usages, ptr %call.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %w.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mzero, ptr %w.i, align 4
  %h.i = getelementptr inbounds %struct.mt_usages, ptr %call.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %h.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mzero, ptr %h.i, align 4
  %a.i = getelementptr inbounds %struct.mt_usages, ptr %call.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %a.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mzero, ptr %a.i, align 4
  %contactid.i = getelementptr inbounds %struct.mt_usages, ptr %call.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %contactid.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mzero, ptr %contactid.i, align 4
  %tip_state.i = getelementptr inbounds %struct.mt_usages, ptr %call.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %tip_state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mfalse, ptr %tip_state.i, align 4
  %inrange_state.i = getelementptr inbounds %struct.mt_usages, ptr %call.i.i, i32 0, i32 11
  %12 = ptrtoint ptr %inrange_state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mfalse, ptr %inrange_state.i, align 4
  %confidence_state.i = getelementptr inbounds %struct.mt_usages, ptr %call.i.i, i32 0, i32 12
  %13 = ptrtoint ptr %confidence_state.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mtrue, ptr %confidence_state.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mt_application, ptr %application, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %15, ptr noundef %mt_usages) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.if.end5_crit_edge

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %mt_usages, ptr %call.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call.i.i, ptr %15, align 4
  br label %if.end5

if.end:                                           ; preds = %entry
  %prev = getelementptr inbounds %struct.mt_application, ptr %application, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev, align 4
  %tobool3.not = icmp eq ptr %21, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %if.end.i.i.i, %if.end.i.if.end5_crit_edge
  %usage.071 = phi ptr [ %21, %if.end.if.end5_crit_edge ], [ %call.i.i, %if.end.i.if.end5_crit_edge ], [ %call.i.i, %if.end.i.i.i ]
  %add.ptr6 = getelementptr i8, ptr %usage.071, i32 %offset
  %22 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr6, align 4
  %cmp.not = icmp eq ptr %23, @mtrue
  %cmp7.not = icmp eq ptr %23, @mfalse
  %or.cond = or i1 %cmp.not, %cmp7.not
  %cmp9.not = icmp eq ptr %23, @mzero
  %or.cond46 = or i1 %cmp9.not, %or.cond
  br i1 %or.cond46, label %if.end5.if.end29_crit_edge, label %if.then10

if.end5.if.end29_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then10:                                        ; preds = %if.end5
  %contactid = getelementptr inbounds %struct.mt_usages, ptr %usage.071, i32 0, i32 9
  %24 = ptrtoint ptr %contactid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %contactid, align 4
  %cmp11 = icmp eq ptr %25, @mzero
  br i1 %cmp11, label %if.then10.do.body_crit_edge, label %lor.lhs.false

if.then10.do.body_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false:                                    ; preds = %if.then10
  %x = getelementptr inbounds %struct.mt_usages, ptr %usage.071, i32 0, i32 1
  %26 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %x, align 4
  %cmp12 = icmp eq ptr %27, @mzero
  br i1 %cmp12, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false13

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %y = getelementptr inbounds %struct.mt_usages, ptr %usage.071, i32 0, i32 2
  %28 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %y, align 4
  %cmp14 = icmp eq ptr %29, @mzero
  br i1 %cmp14, label %lor.lhs.false13.do.body_crit_edge, label %if.end23

lor.lhs.false13.do.body_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false13.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %if.then10.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_store_field.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_store_field, %if.then21)) #9
          to label %cleanup [label %if.then21], !srcloc !115

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_store_field.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false13
  %dev.i47 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i.i48 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i47, i32 noundef 56, i32 noundef 3520) #9
  %tobool.not.i49 = icmp eq ptr %call.i.i48, null
  br i1 %tobool.not.i49, label %if.end23.cleanup_crit_edge, label %if.end.i65

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i65:                                       ; preds = %if.end23
  %x.i50 = getelementptr inbounds %struct.mt_usages, ptr %call.i.i48, i32 0, i32 1
  %30 = ptrtoint ptr %x.i50 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @mzero, ptr %x.i50, align 4
  %y.i51 = getelementptr inbounds %struct.mt_usages, ptr %call.i.i48, i32 0, i32 2
  %31 = ptrtoint ptr %y.i51 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @mzero, ptr %y.i51, align 4
  %cx.i52 = getelementptr inbounds %struct.mt_usages, ptr %call.i.i48, i32 0, i32 3
  %32 = ptrtoint ptr %cx.i52 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mzero, ptr %cx.i52, align 4
  %cy.i53 = getelementptr inbounds %struct.mt_usages, ptr %call.i.i48, i32 0, i32 4
  %33 = ptrtoint ptr %cy.i53 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @mzero, ptr %cy.i53, align 4
  %p.i54 = getelementptr inbounds %struct.mt_usages, ptr %call.i.i48, i32 0, i32 5
  %34 = ptrtoint ptr %p.i54 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @mzero, ptr %p.i54, align 4
  %w.i55 = getelementptr inbounds %struct.mt_usages, ptr %call.i.i48, i32 0, i32 6
  %35 = ptrtoint ptr %w.i55 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @mzero, ptr %w.i55, align 4
  %h.i56 = getelementptr inbounds %struct.mt_usages, ptr %call.i.i48, i32 0, i32 7
  %36 = ptrtoint ptr %h.i56 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @mzero, ptr %h.i56, align 4
  %a.i57 = getelementptr inbounds %struct.mt_usages, ptr %call.i.i48, i32 0, i32 8
  %37 = ptrtoint ptr %a.i57 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @mzero, ptr %a.i57, align 4
  %contactid.i58 = getelementptr inbounds %struct.mt_usages, ptr %call.i.i48, i32 0, i32 9
  %38 = ptrtoint ptr %contactid.i58 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @mzero, ptr %contactid.i58, align 4
  %tip_state.i59 = getelementptr inbounds %struct.mt_usages, ptr %call.i.i48, i32 0, i32 10
  %39 = ptrtoint ptr %tip_state.i59 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @mfalse, ptr %tip_state.i59, align 4
  %inrange_state.i60 = getelementptr inbounds %struct.mt_usages, ptr %call.i.i48, i32 0, i32 11
  %40 = ptrtoint ptr %inrange_state.i60 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @mfalse, ptr %inrange_state.i60, align 4
  %confidence_state.i61 = getelementptr inbounds %struct.mt_usages, ptr %call.i.i48, i32 0, i32 12
  %41 = ptrtoint ptr %confidence_state.i61 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @mtrue, ptr %confidence_state.i61, align 4
  %prev.i.i63 = getelementptr inbounds %struct.mt_application, ptr %application, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %prev.i.i63 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i63, align 4
  %call.i.i.i64 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i48, ptr noundef %43, ptr noundef %mt_usages) #9
  br i1 %call.i.i.i64, label %if.end.i.i.i67, label %if.end.i65.if.end27_crit_edge

if.end.i65.if.end27_crit_edge:                    ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end.i.i.i67:                                   ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %prev.i.i63 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i.i48, ptr %prev.i.i63, align 4
  %45 = ptrtoint ptr %call.i.i48 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %mt_usages, ptr %call.i.i48, align 4
  %prev3.i.i.i66 = getelementptr inbounds %struct.list_head, ptr %call.i.i48, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i.i66, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %call.i.i48, ptr %43, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end.i.i.i67, %if.end.i65.if.end27_crit_edge
  %add.ptr28 = getelementptr i8, ptr %call.i.i48, i32 %offset
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.end5.if.end29_crit_edge
  %target.0 = phi ptr [ %add.ptr28, %if.end27 ], [ %add.ptr6, %if.end5.if.end29_crit_edge ]
  %48 = ptrtoint ptr %target.0 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %value, ptr %target.0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end23.cleanup_crit_edge, %if.then21, %do.body, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_abs(ptr noundef %input, i32 noundef %code, ptr noundef %field, i32 noundef %snratio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %logical_minimum = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 11
  %0 = ptrtoint ptr %logical_minimum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %logical_minimum, align 4
  %logical_maximum = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 12
  %2 = ptrtoint ptr %logical_maximum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logical_maximum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %snratio)
  %tobool.not = icmp eq i32 %snratio, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %3, %1
  %div = sdiv i32 %sub, %snratio
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  tail call void @input_set_abs_params(ptr noundef %input, i32 noundef %code, i32 noundef %1, i32 noundef %3, i32 noundef %cond, i32 noundef 0) #9
  %conv = trunc i32 %code to i16
  %call = tail call i32 @hidinput_calc_abs_res(ptr noundef %field, i16 noundef zeroext %conv) #9
  tail call void @input_alloc_absinfo(ptr noundef %input) #9
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 26
  %4 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %cond.end.input_abs_set_res.exit_crit_edge, label %if.then.i

cond.end.input_abs_set_res.exit_crit_edge:        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %input_abs_set_res.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %resolution.i = getelementptr %struct.input_absinfo, ptr %5, i32 %code, i32 5
  %6 = ptrtoint ptr %resolution.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %resolution.i, align 4
  br label %input_abs_set_res.exit

input_abs_set_res.exit:                           ; preds = %if.then.i, %cond.end.input_abs_set_res.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hidinput_calc_abs_res(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt_get_feature(ptr noundef %hdev, ptr noundef %report) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %size.i = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 7
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %1, 7
  %div3.i = lshr i32 %sub.i, 3
  %id.i = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 2
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp ne i32 %3, 0
  %conv.i = zext i1 %cmp.i to i32
  %add1.i = add nuw nsw i32 %div3.i, %conv.i
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 8
  %and = and i32 %5, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @hid_alloc_report_buf(ptr noundef %report, i32 noundef 3264) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  %conv = trunc i32 %7 to i8
  %call5 = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %conv, ptr noundef nonnull %call1, i32 noundef %add1.i, i8 noundef zeroext 2, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %9) #12
  br label %if.end17

if.else:                                          ; preds = %if.end4
  %call9 = tail call i32 @hid_report_raw_event(ptr noundef %hdev, i32 noundef 2, ptr noundef nonnull %call1, i32 noundef %add1.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else.if.end17_crit_edge, label %do.end14

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.end14:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %dev15 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev15, ptr noundef nonnull @.str.32) #12
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %if.else.if.end17_crit_edge, %do.end
  tail call void @kfree(ptr noundef nonnull %call1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_report_raw_event(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !32, !33, !34, !35, !37, !39, !41, !43, !44, !46, !48, !49, !50, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !65, !66, !67, !68, !70, !71, !72, !74, !76, !78, !79, !80, !82, !84, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-multitouch.c", i32 44, i32 1}
!2 = !{ptr @__UNIQUE_ID_author224, !3, !"__UNIQUE_ID_author224", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-multitouch.c", i32 45, i32 1}
!4 = !{ptr @__UNIQUE_ID_description225, !5, !"__UNIQUE_ID_description225", i1 false, i1 false}
!5 = !{!"../drivers/hid/hid-multitouch.c", i32 46, i32 1}
!6 = !{ptr @__UNIQUE_ID_file226, !7, !"__UNIQUE_ID_file226", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-multitouch.c", i32 47, i32 1}
!8 = !{ptr @__UNIQUE_ID_license227, !7, !"__UNIQUE_ID_license227", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_hid_multitouch__235_2216_mt_driver_init6, !10, !"__initcall__kmod_hid_multitouch__235_2216_mt_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-multitouch.c", i32 2216, i32 1}
!11 = !{ptr @__exitcall_mt_driver_exit, !10, !"__exitcall_mt_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-multitouch.c", i32 2199, i32 10}
!15 = !{ptr @mt_driver, !16, !"mt_driver", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-multitouch.c", i32 2198, i32 26}
!17 = !{ptr @mt_devices, !18, !"mt_devices", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-multitouch.c", i32 1822, i32 35}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-multitouch.c", i32 1713, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mt_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @mt_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @mt_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/hid/hid-multitouch.c", i32 1747, i32 2}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hid/hid-multitouch.c", i32 1762, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mt_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @mt_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @mt_classes, !36, !"mt_classes", i1 false, i1 false}
!36 = !{!"../drivers/hid/hid-multitouch.c", i32 241, i32 30}
!37 = !{ptr @mt_attribute_group, !38, !"mt_attribute_group", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-multitouch.c", i32 433, i32 37}
!39 = !{ptr @sysfs_attrs, !40, !"sysfs_attrs", i1 false, i1 false}
!40 = !{!"../drivers/hid/hid-multitouch.c", i32 428, i32 26}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-multitouch.c", i32 426, i32 8}
!43 = !{ptr @dev_attr_quirks, !42, !"dev_attr_quirks", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hid/hid-multitouch.c", i32 399, i32 22}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hid/hid-multitouch.c", i32 1459, i32 5}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mt_need_to_apply_feature._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @mt_need_to_apply_feature._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @mt_grabbed_usages, !52, !"mt_grabbed_usages", i1 false, i1 false}
!52 = !{!"../drivers/hid/hid-multitouch.c", i32 2193, i32 34}
!53 = !{ptr @mzero, !54, !"mzero", i1 false, i1 false}
!54 = !{!"../drivers/hid/hid-multitouch.c", i32 91, i32 20}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hid/hid-multitouch.c", i32 1319, i32 3}
!57 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mt_input_mapping._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @mt_input_mapping._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/hid.h", i32 1036, i32 3}
!62 = !{ptr @hid_map_usage._rs, !61, !"_rs", i1 false, i1 false}
!63 = !{ptr @__func__.hid_map_usage, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @hid_map_usage._entry, !61, !"_entry", i1 false, i1 false}
!67 = !{ptr @hid_map_usage._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hid/hid-multitouch.c", i32 686, i32 4}
!70 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mt_store_field.__UNIQUE_ID_ddebug228, !69, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!72 = !{ptr @mtrue, !73, !"mtrue", i1 false, i1 false}
!73 = !{!"../drivers/hid/hid-multitouch.c", i32 89, i32 19}
!74 = !{ptr @mfalse, !75, !"mfalse", i1 false, i1 false}
!75 = !{!"../drivers/hid/hid-multitouch.c", i32 90, i32 19}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hid/hid-multitouch.c", i32 1574, i32 4}
!78 = !{ptr @mt_input_configured._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @mt_input_configured._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hid/hid-multitouch.c", i32 1604, i32 12}
!82 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hid/hid-multitouch.c", i32 1611, i32 12}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hid/hid-multitouch.c", i32 1620, i32 18}
!86 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hid/hid-multitouch.c", i32 489, i32 4}
!88 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @mt_feature_mapping._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @mt_feature_mapping._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hid/hid-multitouch.c", i32 457, i32 3}
!93 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @mt_get_feature._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @mt_get_feature._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hid/hid-multitouch.c", i32 463, i32 4}
!98 = !{ptr @mt_get_feature._entry.31, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @mt_get_feature._entry_ptr.33, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{i8 0, i8 2}
!110 = !{!"branch_weights", i32 2001, i32 2000}
!111 = !{!"branch_weights", i32 16006, i32 1}
!112 = !{!"branch_weights", i32 16007, i32 1}
!113 = !{!"branch_weights", i32 1, i32 2000}
!114 = !{!"auto-init"}
!115 = !{i64 2148338437, i64 2148338442, i64 2148338455, i64 2148338499, i64 2148338533, i64 2148338554}
