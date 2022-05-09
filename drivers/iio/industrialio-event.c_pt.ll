; ModuleID = '/llk/IR_all_yes/drivers/iio/industrialio-event.c_pt.bc'
source_filename = "../drivers/iio/industrialio-event.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iio_push_event\22, \22a\22\09"
module asm "\09.weak\09__crc_iio_push_event\09\09\09\09"
module asm "\09.long\09__crc_iio_push_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_push_event:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_push_event\22\09\09\09\09\09"
module asm "__kstrtabns_iio_push_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_event_interface = type { %struct.wait_queue_head, %struct.anon.2, %struct.list_head, i32, %struct.attribute_group, %struct.mutex, %struct.iio_ioctl_handler }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.2 = type { %union.anon.3, [16 x %struct.iio_event_data] }
%union.anon.3 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.iio_event_data = type { i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iio_ioctl_handler = type { %struct.list_head, ptr }
%struct.iio_dev_opaque = type { %struct.iio_dev, i32, ptr, %struct.mutex, i8, ptr, ptr, i32, ptr, %struct.list_head, %struct.list_head, %struct.attribute_group, %struct.list_head, ptr, i32, %struct.attribute_group, %struct.attribute_group, ptr, i32, i32, i32, %struct.cdev, i32, ptr, i32, [20 x i8], i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.73, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.73 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.5, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.5 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__kstrtab_iio_push_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_push_event = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_push_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_push_event to i32), ptr @__kstrtab_iio_push_event, ptr @__kstrtabns_iio_push_event }, section "___ksymtab+iio_push_event", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iio_setup_ev_int.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ev_int->wait\00", [18 x i8] zeroinitializer }, align 32
@iio_setup_ev_int.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ev_int->read_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s_%s_%s\00", [23 x i8] zeroinitializer }, align 32
@iio_ev_type_text = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], [40 x i8] zeroinitializer }, align 32
@iio_ev_dir_text = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13], [20 x i8] zeroinitializer }, align 32
@iio_ev_info_text = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s_%s\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"thresh\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mag\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"roc\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"thresh_adaptive\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mag_adaptive\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"change\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"either\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rising\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"falling\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"value\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hysteresis\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"period\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"high_pass_filter_3db\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"low_pass_filter_3db\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iio:event\00", [22 x i8] zeroinitializer }, align 32
@iio_event_chrdev_fileops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @iio_event_chrdev_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iio_event_poll, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @iio_event_chrdev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/iio/industrialio-event.c\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 476, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 477, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 368, i32 36 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"iio_ev_type_text\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 226, i32 27 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"iio_ev_dir_text\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 235, i32 27 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"iio_ev_info_text\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 241, i32 27 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 373, i32 36 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 227, i32 25 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 228, i32 22 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 229, i32 22 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 230, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 231, i32 31 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 232, i32 25 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 236, i32 24 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 237, i32 24 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 238, i32 25 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 242, i32 25 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 243, i32 24 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 244, i32 29 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 245, i32 25 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 246, i32 39 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 247, i32 38 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 248, i32 26 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 301, i32 26 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 498, i32 43 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 212, i32 24 }
@___asan_gen_.112 = private unnamed_addr constant [25 x i8] c"iio_event_chrdev_fileops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 184, i32 37 }
@___asan_gen_.116 = private constant [36 x i8] c"../drivers/iio/industrialio-event.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 140, i32 10 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 174, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__ksymtab_iio_push_event, ptr @iio_setup_ev_int.__key, ptr @.str, ptr @iio_setup_ev_int.__key.1, ptr @.str.2, ptr @.str.3, ptr @iio_ev_type_text, ptr @iio_ev_dir_text, ptr @iio_ev_info_text, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @iio_event_chrdev_fileops, ptr @.str.24, ptr @.str.27], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_setup_ev_int.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_setup_ev_int.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_ev_type_text to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_ev_dir_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_ev_info_text to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_event_chrdev_fileops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @iio_event_enabled(ptr noundef %ev_int) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.iio_event_interface, ptr %ev_int, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iio_push_event(ptr nocapture noundef readonly %indio_dev, i64 noundef %ev_code, i64 noundef %timestamp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %event_interface = getelementptr inbounds %struct.iio_dev_opaque, ptr %indio_dev, i32 0, i32 5
  %0 = ptrtoint ptr %event_interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %event_interface, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.iio_event_interface, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then1:                                         ; preds = %if.end
  %det_events = getelementptr inbounds %struct.iio_event_interface, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %det_events to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %det_events, align 8
  %out = getelementptr inbounds %struct.iio_event_interface, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out, align 4
  %sub = sub i32 %6, %8
  %mask = getelementptr inbounds %struct.iio_event_interface, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %10)
  %cmp.not = icmp ugt i32 %sub, %10
  br i1 %cmp.not, label %if.then1.cleanup_crit_edge, label %if.then10

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %buf = getelementptr inbounds %struct.iio_event_interface, ptr %1, i32 0, i32 1, i32 1
  %and = and i32 %10, %6
  %arrayidx = getelementptr %struct.iio_event_data, ptr %buf, i32 %and
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %ev_code, ptr %arrayidx, align 8
  %__val.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %12 = ptrtoint ptr %__val.sroa.6.0.arrayidx.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %timestamp, ptr %__val.sroa.6.0.arrayidx.sroa_idx, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !78
  %13 = ptrtoint ptr %det_events to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %det_events, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %det_events, align 4
  tail call void @__wake_up(ptr noundef nonnull %1, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.then1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iio_device_register_eventset(ptr noundef %indio_dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 17
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %num_channels.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  %4 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5.i = icmp sgt i32 %5, 0
  br i1 %cmp5.i, label %for.body.lr.ph.i, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %lor.lhs.false
  %channels.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %6 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channels.i, align 8
  %num_event_specs.i129 = getelementptr %struct.iio_chan_spec, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %num_event_specs.i129 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_event_specs.i129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.not.i130 = icmp eq i32 %9, 0
  br i1 %cmp1.not.i130, label %for.body.lr.ph.i.for.cond.i_crit_edge, label %for.body.lr.ph.i.if.end_crit_edge

for.body.lr.ph.i.if.end_crit_edge:                ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.lr.ph.i.for.cond.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.lr.ph.i.for.cond.i_crit_edge
  %j.06.i131 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %j.06.i131, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %5)
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.iio_check_for_dynamic_events.exit_crit_edge, label %for.body.i

for.cond.i.iio_check_for_dynamic_events.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iio_check_for_dynamic_events.exit

for.body.i:                                       ; preds = %for.cond.i
  %num_event_specs.i = getelementptr %struct.iio_chan_spec, ptr %7, i32 %inc.i, i32 15
  %10 = ptrtoint ptr %num_event_specs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_event_specs.i, align 4
  %cmp1.not.i = icmp eq i32 %11, 0
  br i1 %cmp1.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.iio_check_for_dynamic_events.exit_crit_edge

for.body.i.iio_check_for_dynamic_events.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iio_check_for_dynamic_events.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

iio_check_for_dynamic_events.exit:                ; preds = %for.body.i.iio_check_for_dynamic_events.exit_crit_edge, %for.cond.i.iio_check_for_dynamic_events.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %5)
  %cmp.i.le = icmp slt i32 %inc.i, %5
  br i1 %cmp.i.le, label %iio_check_for_dynamic_events.exit.if.end_crit_edge, label %iio_check_for_dynamic_events.exit.cleanup_crit_edge

iio_check_for_dynamic_events.exit.cleanup_crit_edge: ; preds = %iio_check_for_dynamic_events.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

iio_check_for_dynamic_events.exit.if.end_crit_edge: ; preds = %iio_check_for_dynamic_events.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %iio_check_for_dynamic_events.exit.if.end_crit_edge, %for.body.lr.ph.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 472) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %event_interface = getelementptr inbounds %struct.iio_dev_opaque, ptr %indio_dev, i32 0, i32 5
  %13 = ptrtoint ptr %event_interface to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %event_interface, align 8
  %dev_attr_list = getelementptr inbounds %struct.iio_event_interface, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %dev_attr_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %dev_attr_list, ptr %dev_attr_list, align 8
  %prev.i = getelementptr inbounds %struct.iio_event_interface, ptr %call7.i.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev_attr_list, ptr %prev.i, align 4
  %det_events.i = getelementptr inbounds %struct.iio_event_interface, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %det_events.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %det_events.i, align 8
  %out.i = getelementptr inbounds %struct.iio_event_interface, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %out.i, align 4
  %mask.i = getelementptr inbounds %struct.iio_event_interface, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 15, ptr %mask.i, align 8
  %esize.i = getelementptr inbounds %struct.iio_event_interface, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 3
  %19 = ptrtoint ptr %esize.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16, ptr %esize.i, align 4
  %buf.i = getelementptr inbounds %struct.iio_event_interface, ptr %call7.i.i, i32 0, i32 1, i32 1
  %data.i = getelementptr inbounds %struct.iio_event_interface, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 4
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf.i, ptr %data.i, align 8
  tail call void @__init_waitqueue_head(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @iio_setup_ev_int.__key) #7
  %read_lock.i = getelementptr inbounds %struct.iio_event_interface, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %read_lock.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @iio_setup_ev_int.__key.1) #7
  %21 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %cmp6.not = icmp eq ptr %24, null
  br i1 %cmp6.not, label %if.end3.if.end11_crit_edge, label %if.then7

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %if.end3
  %attrs = getelementptr inbounds %struct.attribute_group, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %attrs, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %cmp10.not133 = icmp eq ptr %28, null
  br i1 %cmp10.not133, label %if.then7.if.end11_crit_edge, label %if.then7.while.body_crit_edge

if.then7.while.body_crit_edge:                    ; preds = %if.then7
  br label %while.body

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then7.while.body_crit_edge
  %attr.0135 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %26, %if.then7.while.body_crit_edge ]
  %attrcount_orig.0134 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %if.then7.while.body_crit_edge ]
  %incdec.ptr = getelementptr ptr, ptr %attr.0135, i32 1
  %inc = add i32 %attrcount_orig.0134, 1
  %29 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %incdec.ptr, align 4
  %cmp10.not = icmp eq ptr %30, null
  br i1 %cmp10.not, label %while.body.if.end11_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.if.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end11:                                         ; preds = %while.body.if.end11_crit_edge, %if.then7.if.end11_crit_edge, %if.end3.if.end11_crit_edge
  %attrcount_orig.1 = phi i32 [ 0, %if.end3.if.end11_crit_edge ], [ 0, %if.then7.if.end11_crit_edge ], [ %inc, %while.body.if.end11_crit_edge ]
  %channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %31 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %channels, align 8
  %tobool12.not = icmp eq ptr %32, null
  br i1 %tobool12.not, label %if.end11.if.end18_crit_edge, label %if.then13

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then13:                                        ; preds = %if.end11
  %num_channels.i105 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  %33 = ptrtoint ptr %num_channels.i105 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_channels.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp19.i = icmp sgt i32 %34, 0
  br i1 %cmp19.i, label %if.then13.for.body.i108_crit_edge, label %if.then13.if.end17_crit_edge

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then13.for.body.i108_crit_edge:                ; preds = %if.then13
  br label %for.body.i108

for.body.i108:                                    ; preds = %if.end.i.for.body.i108_crit_edge, %if.then13.for.body.i108_crit_edge
  %attrcount.021.i = phi i32 [ %add.i, %if.end.i.for.body.i108_crit_edge ], [ 0, %if.then13.for.body.i108_crit_edge ]
  %j.020.i = phi i32 [ %inc.i109, %if.end.i.for.body.i108_crit_edge ], [ 0, %if.then13.for.body.i108_crit_edge ]
  %35 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %channels, align 8
  %arrayidx.i = getelementptr %struct.iio_chan_spec, ptr %36, i32 %j.020.i
  %event_spec.i.i = getelementptr %struct.iio_chan_spec, ptr %36, i32 %j.020.i, i32 14
  %num_event_specs.i.i = getelementptr %struct.iio_chan_spec, ptr %36, i32 %j.020.i, i32 15
  %37 = ptrtoint ptr %num_event_specs.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_event_specs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp79.not.i.i = icmp eq i32 %38, 0
  br i1 %cmp79.not.i.i, label %for.body.i108.if.end.i_crit_edge, label %for.body.i108.for.body.i.i_crit_edge

for.body.i108.for.body.i.i_crit_edge:             ; preds = %for.body.i108
  br label %for.body.i.i

for.body.i108.if.end.i_crit_edge:                 ; preds = %for.body.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.body.i.i:                                     ; preds = %if.end27.i.i.for.body.i.i_crit_edge, %for.body.i108.for.body.i.i_crit_edge
  %attrcount.081.i.i = phi i32 [ %add28.i.i, %if.end27.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i108.for.body.i.i_crit_edge ]
  %i.080.i.i = phi i32 [ %inc.i.i, %if.end27.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i108.for.body.i.i_crit_edge ]
  %39 = ptrtoint ptr %event_spec.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %event_spec.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.iio_event_spec, ptr %40, i32 %i.080.i.i
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i, align 4
  %dir4.i.i = getelementptr %struct.iio_event_spec, ptr %40, i32 %i.080.i.i, i32 1
  %43 = ptrtoint ptr %dir4.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dir4.i.i, align 4
  %mask_separate.i.i = getelementptr %struct.iio_event_spec, ptr %40, i32 %i.080.i.i, i32 2
  %call.i.i = tail call fastcc i32 @iio_device_add_event(ptr noundef %indio_dev, ptr noundef %arrayidx.i, i32 noundef %i.080.i.i, i32 noundef %42, i32 noundef %44, i32 noundef 0, ptr noundef %mask_separate.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp7.i.i, label %for.body.i.i.error_free_setup_event_lines_crit_edge, label %if.end.i.i

for.body.i.i.error_free_setup_event_lines_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_free_setup_event_lines

if.end.i.i:                                       ; preds = %for.body.i.i
  %45 = ptrtoint ptr %event_spec.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %event_spec.i.i, align 4
  %mask_shared_by_type.i.i = getelementptr %struct.iio_event_spec, ptr %46, i32 %i.080.i.i, i32 3
  %call10.i.i = tail call fastcc i32 @iio_device_add_event(ptr noundef %indio_dev, ptr noundef %arrayidx.i, i32 noundef %i.080.i.i, i32 noundef %42, i32 noundef %44, i32 noundef 1, ptr noundef %mask_shared_by_type.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp11.i.i = icmp slt i32 %call10.i.i, 0
  br i1 %cmp11.i.i, label %if.end.i.i.error_free_setup_event_lines_crit_edge, label %if.end13.i.i

if.end.i.i.error_free_setup_event_lines_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_free_setup_event_lines

if.end13.i.i:                                     ; preds = %if.end.i.i
  %47 = ptrtoint ptr %event_spec.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %event_spec.i.i, align 4
  %mask_shared_by_dir.i.i = getelementptr %struct.iio_event_spec, ptr %48, i32 %i.080.i.i, i32 4
  %call17.i.i = tail call fastcc i32 @iio_device_add_event(ptr noundef %indio_dev, ptr noundef %arrayidx.i, i32 noundef %i.080.i.i, i32 noundef %42, i32 noundef %44, i32 noundef 2, ptr noundef %mask_shared_by_dir.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %cmp18.i.i = icmp slt i32 %call17.i.i, 0
  br i1 %cmp18.i.i, label %if.end13.i.i.error_free_setup_event_lines_crit_edge, label %if.end20.i.i

if.end13.i.i.error_free_setup_event_lines_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_free_setup_event_lines

if.end20.i.i:                                     ; preds = %if.end13.i.i
  %49 = ptrtoint ptr %event_spec.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %event_spec.i.i, align 4
  %mask_shared_by_all.i.i = getelementptr %struct.iio_event_spec, ptr %50, i32 %i.080.i.i, i32 5
  %call24.i.i = tail call fastcc i32 @iio_device_add_event(ptr noundef %indio_dev, ptr noundef %arrayidx.i, i32 noundef %i.080.i.i, i32 noundef %42, i32 noundef %44, i32 noundef 3, ptr noundef %mask_shared_by_all.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %cmp25.i.i = icmp slt i32 %call24.i.i, 0
  br i1 %cmp25.i.i, label %if.end20.i.i.error_free_setup_event_lines_crit_edge, label %if.end27.i.i

if.end20.i.i.error_free_setup_event_lines_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_free_setup_event_lines

if.end27.i.i:                                     ; preds = %if.end20.i.i
  %add.i.i = add i32 %call.i.i, %attrcount.081.i.i
  %add14.i.i = add i32 %add.i.i, %call10.i.i
  %add21.i.i = add i32 %add14.i.i, %call17.i.i
  %add28.i.i = add i32 %add21.i.i, %call24.i.i
  %inc.i.i = add nuw i32 %i.080.i.i, 1
  %51 = ptrtoint ptr %num_event_specs.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_event_specs.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %52
  br i1 %cmp.i.i, label %if.end27.i.i.for.body.i.i_crit_edge, label %iio_device_add_event_sysfs.exit.i

if.end27.i.i.for.body.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

iio_device_add_event_sysfs.exit.i:                ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add28.i.i)
  %cmp1.i = icmp slt i32 %add28.i.i, 0
  br i1 %cmp1.i, label %iio_device_add_event_sysfs.exit.i.error_free_setup_event_lines_crit_edge, label %iio_device_add_event_sysfs.exit.i.if.end.i_crit_edge

iio_device_add_event_sysfs.exit.i.if.end.i_crit_edge: ; preds = %iio_device_add_event_sysfs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

iio_device_add_event_sysfs.exit.i.error_free_setup_event_lines_crit_edge: ; preds = %iio_device_add_event_sysfs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_free_setup_event_lines

if.end.i:                                         ; preds = %iio_device_add_event_sysfs.exit.i.if.end.i_crit_edge, %for.body.i108.if.end.i_crit_edge
  %retval.0.i16.i = phi i32 [ %add28.i.i, %iio_device_add_event_sysfs.exit.i.if.end.i_crit_edge ], [ 0, %for.body.i108.if.end.i_crit_edge ]
  %add.i = add i32 %retval.0.i16.i, %attrcount.021.i
  %inc.i109 = add nuw nsw i32 %j.020.i, 1
  %53 = ptrtoint ptr %num_channels.i105 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_channels.i105, align 4
  %cmp.i110 = icmp slt i32 %inc.i109, %54
  br i1 %cmp.i110, label %if.end.i.for.body.i108_crit_edge, label %__iio_add_event_config_attrs.exit

if.end.i.for.body.i108_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i108

__iio_add_event_config_attrs.exit:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp15 = icmp slt i32 %add.i, 0
  br i1 %cmp15, label %__iio_add_event_config_attrs.exit.error_free_setup_event_lines_crit_edge, label %__iio_add_event_config_attrs.exit.if.end17_crit_edge

__iio_add_event_config_attrs.exit.if.end17_crit_edge: ; preds = %__iio_add_event_config_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

__iio_add_event_config_attrs.exit.error_free_setup_event_lines_crit_edge: ; preds = %__iio_add_event_config_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_free_setup_event_lines

if.end17:                                         ; preds = %__iio_add_event_config_attrs.exit.if.end17_crit_edge, %if.then13.if.end17_crit_edge
  %retval.0.i118 = phi i32 [ %add.i, %__iio_add_event_config_attrs.exit.if.end17_crit_edge ], [ 0, %if.then13.if.end17_crit_edge ]
  %add = add i32 %retval.0.i118, %attrcount_orig.1
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end11.if.end18_crit_edge
  %attrcount.0 = phi i32 [ %add, %if.end17 ], [ %attrcount_orig.1, %if.end11.if.end18_crit_edge ]
  %group = getelementptr inbounds %struct.iio_event_interface, ptr %call7.i.i, i32 0, i32 4
  %55 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.22, ptr %group, align 4
  %add19 = add i32 %attrcount.0, 1
  %56 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add19, i32 4) #7
  %57 = extractvalue { i32, i1 } %56, 1
  br i1 %57, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !79

kcalloc.exit.thread:                              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %attrs22120 = getelementptr inbounds %struct.iio_event_interface, ptr %call7.i.i, i32 0, i32 4, i32 3
  %58 = ptrtoint ptr %attrs22120 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %attrs22120, align 8
  br label %error_free_setup_event_lines

if.end7.i.i:                                      ; preds = %if.end18
  %59 = extractvalue { i32, i1 } %56, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %59, i32 noundef 3520) #11
  %attrs22 = getelementptr inbounds %struct.iio_event_interface, ptr %call7.i.i, i32 0, i32 4, i32 3
  %60 = ptrtoint ptr %attrs22 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call8.i.i, ptr %attrs22, align 8
  %cmp25 = icmp eq ptr %call8.i.i, null
  br i1 %cmp25, label %if.end7.i.i.error_free_setup_event_lines_crit_edge, label %if.end27

if.end7.i.i.error_free_setup_event_lines_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_free_setup_event_lines

if.end27:                                         ; preds = %if.end7.i.i
  %61 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %info, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %tobool30.not = icmp eq ptr %64, null
  br i1 %tobool30.not, label %if.end27.if.end37_crit_edge, label %if.then31

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %attrs36 = getelementptr inbounds %struct.attribute_group, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %attrs36 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %attrs36, align 4
  %mul = shl i32 %attrcount_orig.1, 2
  %67 = call ptr @memcpy(ptr %call8.i.i, ptr %66, i32 %mul)
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %if.end27.if.end37_crit_edge
  %68 = ptrtoint ptr %dev_attr_list to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn137 = load ptr, ptr %dev_attr_list, align 8
  %cmp43.not138 = icmp eq ptr %.pn137, %dev_attr_list
  br i1 %cmp43.not138, label %if.end37.for.end_crit_edge, label %if.end37.for.body_crit_edge

if.end37.for.body_crit_edge:                      ; preds = %if.end37
  br label %for.body

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end37.for.body_crit_edge
  %.pn140 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn137, %if.end37.for.body_crit_edge ]
  %attrn.0139 = phi i32 [ %inc47, %for.body.for.body_crit_edge ], [ %attrcount_orig.1, %if.end37.for.body_crit_edge ]
  %p.0 = getelementptr i8, ptr %.pn140, i32 -40
  %69 = ptrtoint ptr %attrs22 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %attrs22, align 8
  %inc47 = add i32 %attrn.0139, 1
  %arrayidx = getelementptr ptr, ptr %70, i32 %attrn.0139
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %p.0, ptr %arrayidx, align 4
  %72 = ptrtoint ptr %.pn140 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn = load ptr, ptr %.pn140, align 8
  %cmp43.not = icmp eq ptr %.pn, %dev_attr_list
  br i1 %cmp43.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end37.for.end_crit_edge
  %call54 = tail call i32 @iio_device_register_sysfs_group(ptr noundef %indio_dev, ptr noundef %group) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %for.end.error_free_setup_event_lines_crit_edge

for.end.error_free_setup_event_lines_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_free_setup_event_lines

if.end57:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %ioctl_handler = getelementptr inbounds %struct.iio_event_interface, ptr %call7.i.i, i32 0, i32 6
  %ioctl = getelementptr inbounds %struct.iio_event_interface, ptr %call7.i.i, i32 0, i32 6, i32 1
  %73 = ptrtoint ptr %ioctl to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @iio_event_ioctl, ptr %ioctl, align 4
  tail call void @iio_device_ioctl_handler_register(ptr noundef %indio_dev, ptr noundef %ioctl_handler) #7
  br label %cleanup

error_free_setup_event_lines:                     ; preds = %for.end.error_free_setup_event_lines_crit_edge, %if.end7.i.i.error_free_setup_event_lines_crit_edge, %kcalloc.exit.thread, %__iio_add_event_config_attrs.exit.error_free_setup_event_lines_crit_edge, %iio_device_add_event_sysfs.exit.i.error_free_setup_event_lines_crit_edge, %if.end20.i.i.error_free_setup_event_lines_crit_edge, %if.end13.i.i.error_free_setup_event_lines_crit_edge, %if.end.i.i.error_free_setup_event_lines_crit_edge, %for.body.i.i.error_free_setup_event_lines_crit_edge
  %ret.0 = phi i32 [ %add.i, %__iio_add_event_config_attrs.exit.error_free_setup_event_lines_crit_edge ], [ %call54, %for.end.error_free_setup_event_lines_crit_edge ], [ -12, %if.end7.i.i.error_free_setup_event_lines_crit_edge ], [ -12, %kcalloc.exit.thread ], [ %call24.i.i, %if.end20.i.i.error_free_setup_event_lines_crit_edge ], [ %call17.i.i, %if.end13.i.i.error_free_setup_event_lines_crit_edge ], [ %call10.i.i, %if.end.i.i.error_free_setup_event_lines_crit_edge ], [ %call.i.i, %for.body.i.i.error_free_setup_event_lines_crit_edge ], [ %add28.i.i, %iio_device_add_event_sysfs.exit.i.error_free_setup_event_lines_crit_edge ]
  tail call void @iio_free_chan_devattr_list(ptr noundef %dev_attr_list) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %74 = ptrtoint ptr %event_interface to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %event_interface, align 8
  br label %cleanup

cleanup:                                          ; preds = %error_free_setup_event_lines, %if.end57, %if.end.cleanup_crit_edge, %iio_check_for_dynamic_events.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error_free_setup_event_lines ], [ 0, %if.end57 ], [ 0, %iio_check_for_dynamic_events.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_register_sysfs_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_event_ioctl(ptr noundef %indio_dev, ptr nocapture noundef readnone %filp, i32 noundef %cmd, i32 noundef %arg) #1 align 64 {
entry:
  %fd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147194480, i32 %cmd)
  %cmp = icmp eq i32 %cmd, -2147194480
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %event_interface.i = getelementptr inbounds %struct.iio_dev_opaque, ptr %indio_dev, i32 0, i32 5
  %1 = ptrtoint ptr %event_interface.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %event_interface.i, align 8
  %cmp.i = icmp eq ptr %2, null
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %mlock.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 5
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mlock.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.iio_event_getfd.exit_crit_edge

if.end.i.iio_event_getfd.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iio_event_getfd.exit

if.end2.i:                                        ; preds = %if.end.i
  %flags.i = getelementptr inbounds %struct.iio_event_interface, ptr %2, i32 0, i32 3
  %call3.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end2.i.unlock.i_crit_edge

if.end2.i.unlock.i_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock.i

if.end6.i:                                        ; preds = %if.end2.i
  %tobool.not.i.i = icmp eq ptr %indio_dev, null
  br i1 %tobool.not.i.i, label %if.end6.i.iio_device_get.exit.i_crit_edge, label %cond.true.i.i

if.end6.i.iio_device_get.exit.i_crit_edge:        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iio_device_get.exit.i

cond.true.i.i:                                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %call.i.i8 = tail call ptr @get_device(ptr noundef %dev.i.i) #7
  br label %iio_device_get.exit.i

iio_device_get.exit.i:                            ; preds = %cond.true.i.i, %if.end6.i.iio_device_get.exit.i_crit_edge
  %call8.i = tail call i32 @anon_inode_getfd(ptr noundef nonnull @.str.23, ptr noundef nonnull @iio_event_chrdev_fileops, ptr noundef %indio_dev, i32 noundef 524288) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %iio_device_get.exit.i
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i) #7
  br i1 %tobool.not.i.i, label %if.then10.i.unlock.i_crit_edge, label %if.then.i.i

if.then10.i.unlock.i_crit_edge:                   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock.i

if.then.i.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i30.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void @put_device(ptr noundef %dev.i30.i) #7
  br label %unlock.i

if.else.i:                                        ; preds = %iio_device_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %det_events.i = getelementptr inbounds %struct.iio_event_interface, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %det_events.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %det_events.i, align 8
  %out.i = getelementptr inbounds %struct.iio_event_interface, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %out.i, align 4
  br label %unlock.i

unlock.i:                                         ; preds = %if.else.i, %if.then.i.i, %if.then10.i.unlock.i_crit_edge, %if.end2.i.unlock.i_crit_edge
  %fd.0.i = phi i32 [ %call8.i, %if.else.i ], [ -16, %if.end2.i.unlock.i_crit_edge ], [ %call8.i, %if.then10.i.unlock.i_crit_edge ], [ %call8.i, %if.then.i.i ]
  tail call void @mutex_unlock(ptr noundef %mlock.i) #7
  br label %iio_event_getfd.exit

iio_event_getfd.exit:                             ; preds = %unlock.i, %if.end.i.iio_event_getfd.exit_crit_edge
  %retval.0.i = phi i32 [ %fd.0.i, %unlock.i ], [ %call.i, %if.end.i.iio_event_getfd.exit_crit_edge ]
  %6 = ptrtoint ptr %fd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i, ptr %fd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp1 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp1, label %iio_event_getfd.exit.cleanup_crit_edge, label %if.then.i

iio_event_getfd.exit.cleanup_crit_edge:           ; preds = %iio_event_getfd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %iio_event_getfd.exit
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.cleanup_crit_edge, label %if.end.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 4, i32 -1226833920) #12, !srcloc !80
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %fd, i32 noundef 4) #7
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %fd, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %iio_event_getfd.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %iio_event_getfd.exit.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ -14, %if.then.i.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ], [ -19, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fd) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_ioctl_handler_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_free_chan_devattr_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iio_device_wakeup_eventset(ptr nocapture noundef readonly %indio_dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %event_interface = getelementptr inbounds %struct.iio_dev_opaque, ptr %indio_dev, i32 0, i32 5
  %0 = ptrtoint ptr %event_interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %event_interface, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__wake_up(ptr noundef nonnull %1, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iio_device_unregister_eventset(ptr nocapture noundef %indio_dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %event_interface = getelementptr inbounds %struct.iio_dev_opaque, ptr %indio_dev, i32 0, i32 5
  %0 = ptrtoint ptr %event_interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %event_interface, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ioctl_handler = getelementptr inbounds %struct.iio_event_interface, ptr %1, i32 0, i32 6
  tail call void @iio_device_ioctl_handler_unregister(ptr noundef %ioctl_handler) #7
  %dev_attr_list = getelementptr inbounds %struct.iio_event_interface, ptr %1, i32 0, i32 2
  tail call void @iio_free_chan_devattr_list(ptr noundef %dev_attr_list) #7
  %attrs = getelementptr inbounds %struct.iio_event_interface, ptr %1, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs, align 4
  tail call void @kfree(ptr noundef %3) #7
  tail call void @kfree(ptr noundef nonnull %1) #7
  %4 = ptrtoint ptr %event_interface to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %event_interface, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_ioctl_handler_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iio_device_add_event(ptr noundef %indio_dev, ptr noundef %chan, i32 noundef %spec_index, i32 noundef %type, i32 noundef %dir, i32 noundef %shared_by, ptr noundef %mask) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call)
  %cmp50 = icmp ult i32 %call, 32
  br i1 %cmp50, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %dir)
  %cmp2.not = icmp eq i32 %dir, 3
  %arrayidx = getelementptr [6 x ptr], ptr @iio_ev_type_text, i32 0, i32 %type
  %arrayidx4 = getelementptr [3 x ptr], ptr @iio_ev_dir_text, i32 0, i32 %dir
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %event_interface = getelementptr inbounds %struct.iio_dev_opaque, ptr %indio_dev, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shared_by)
  %cmp21.not = icmp eq i32 %shared_by, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ %call, %for.body.lr.ph ], [ %call27, %for.inc.for.body_crit_edge ]
  %attrcount.051 = phi i32 [ 0, %for.body.lr.ph ], [ %attrcount.1, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.052)
  %cmp1 = icmp ugt i32 %i.052, 6
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br i1 %cmp2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr [7 x ptr], ptr @iio_ev_info_text, i32 0, i32 %i.052
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  %call6 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef %3, ptr noundef %5) #7
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx8 = getelementptr [7 x ptr], ptr @iio_ev_info_text, i32 0, i32 %i.052
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx8, align 4
  %call9 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef %7) #7
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then3
  %postfix.0 = phi ptr [ %call6, %if.then3 ], [ %call9, %if.else ]
  %cmp11 = icmp eq ptr %postfix.0, null
  br i1 %cmp11, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.052)
  %cmp14 = icmp eq i32 %i.052, 0
  %iio_ev_state_show.iio_ev_value_show = select i1 %cmp14, ptr @iio_ev_state_show, ptr @iio_ev_value_show
  %iio_ev_state_store.iio_ev_value_store = select i1 %cmp14, ptr @iio_ev_state_store, ptr @iio_ev_value_store
  %shl = shl nuw nsw i32 %i.052, 16
  %or = or i32 %shl, %spec_index
  %conv = zext i32 %or to i64
  %8 = ptrtoint ptr %event_interface to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %event_interface, align 8
  %dev_attr_list = getelementptr inbounds %struct.iio_event_interface, ptr %9, i32 0, i32 2
  %call18 = tail call i32 @__iio_add_chan_devattr(ptr noundef nonnull %postfix.0, ptr noundef %chan, ptr noundef nonnull %iio_ev_state_show.iio_ev_value_show, ptr noundef nonnull %iio_ev_state_store.iio_ev_value_store, i64 noundef %conv, i32 noundef %shared_by, ptr noundef %dev, ptr noundef null, ptr noundef %dev_attr_list) #7
  tail call void @kfree(ptr noundef nonnull %postfix.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call18)
  %cmp19 = icmp ne i32 %call18, -16
  %or.cond = or i1 %cmp21.not, %cmp19
  br i1 %or.cond, label %if.end24, label %if.end13.for.inc_crit_edge

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end24:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.end26, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i32 %attrcount.051, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end26, %if.end13.for.inc_crit_edge
  %attrcount.1 = phi i32 [ %inc, %if.end26 ], [ %attrcount.051, %if.end13.for.inc_crit_edge ]
  %add = add nuw nsw i32 %i.052, 1
  %call27 = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef 32, i32 noundef %add) #7
  %cmp = icmp ult i32 %call27, 32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %attrcount.1, %for.inc.cleanup_crit_edge ], [ %call18, %if.end24.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_ev_state_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %info = getelementptr i8, ptr %dev, i32 1072
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %read_event_config = getelementptr inbounds %struct.iio_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %read_event_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_event_config, align 4
  %c = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c, align 8
  %event_spec.i = getelementptr inbounds %struct.iio_chan_spec, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %event_spec.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %event_spec.i, align 4
  %address.i = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %8 = ptrtoint ptr %address.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %address.i, align 8
  %10 = trunc i64 %9 to i32
  %idxprom.i = and i32 %10, 65535
  %arrayidx.i = getelementptr %struct.iio_event_spec, ptr %7, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %dir.i = getelementptr %struct.iio_event_spec, ptr %7, i32 %idxprom.i, i32 1
  %13 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dir.i, align 4
  %call3 = tail call i32 %3(ptr noundef %add.ptr.i, ptr noundef %5, i32 noundef %12, i32 noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.else ], [ %call3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_ev_state_store(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !81
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %info = getelementptr i8, ptr %dev, i32 1072
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info, align 8
  %write_event_config = getelementptr inbounds %struct.iio_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %write_event_config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write_event_config, align 4
  %c = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 3
  %5 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %c, align 8
  %event_spec.i = getelementptr inbounds %struct.iio_chan_spec, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %event_spec.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %event_spec.i, align 4
  %address.i = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %9 = ptrtoint ptr %address.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %address.i, align 8
  %11 = trunc i64 %10 to i32
  %idxprom.i = and i32 %11, 65535
  %arrayidx.i = getelementptr %struct.iio_event_spec, ptr %8, i32 %idxprom.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %dir.i = getelementptr %struct.iio_event_spec, ptr %8, i32 %idxprom.i, i32 1
  %14 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dir.i, align 4
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val, align 1, !range !82
  %18 = zext i8 %17 to i32
  %call4 = call i32 %4(ptr noundef %add.ptr.i, ptr noundef %6, i32 noundef %13, i32 noundef %15, i32 noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  %call4.len = select i1 %cmp5, i32 %call4, i32 %len
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.len, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_ev_value_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #1 align 64 {
entry:
  %val = alloca i32, align 4
  %val2 = alloca i32, align 4
  %val_arr = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val2) #7
  %1 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val2, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val_arr) #7
  %info = getelementptr i8, ptr %dev, i32 1072
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %read_event_value = getelementptr inbounds %struct.iio_info, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %read_event_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_event_value, align 4
  %c = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 3
  %6 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c, align 8
  %event_spec.i = getelementptr inbounds %struct.iio_chan_spec, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %event_spec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %event_spec.i, align 4
  %address.i = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %10 = ptrtoint ptr %address.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %address.i, align 8
  %12 = trunc i64 %11 to i32
  %idxprom.i = and i32 %12, 65535
  %arrayidx.i = getelementptr %struct.iio_event_spec, ptr %9, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %dir.i = getelementptr %struct.iio_event_spec, ptr %9, i32 %idxprom.i, i32 1
  %15 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dir.i, align 4
  %17 = lshr i32 %12, 16
  %call4 = call i32 %5(ptr noundef %add.ptr.i, ptr noundef %7, i32 noundef %14, i32 noundef %16, i32 noundef %17, ptr noundef nonnull %val, ptr noundef nonnull %val2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = getelementptr inbounds [2 x i32], ptr %val_arr, i32 0, i32 1
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %21 = ptrtoint ptr %val_arr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %val_arr, align 4
  %22 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val2, align 4
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %18, align 4
  %call6 = call i32 @iio_format_value(ptr noundef %buf, i32 noundef %call4, i32 noundef 2, ptr noundef nonnull %val_arr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ %call4, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val_arr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_ev_value_store(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  %val = alloca i32, align 4
  %val2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val2) #7
  %1 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val2, align 4, !annotation !81
  %info = getelementptr i8, ptr %dev, i32 1072
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %write_event_value = getelementptr inbounds %struct.iio_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %write_event_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_event_value, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @iio_str_to_fixpoint(ptr noundef %buf, i32 noundef 100000, ptr noundef nonnull %val, ptr noundef nonnull %val2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 8
  %write_event_value6 = getelementptr inbounds %struct.iio_info, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %write_event_value6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_event_value6, align 4
  %c = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 3
  %10 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %c, align 8
  %event_spec.i = getelementptr inbounds %struct.iio_chan_spec, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %event_spec.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %event_spec.i, align 4
  %address.i = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %14 = ptrtoint ptr %address.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %address.i, align 8
  %16 = trunc i64 %15 to i32
  %idxprom.i = and i32 %16, 65535
  %arrayidx.i = getelementptr %struct.iio_event_spec, ptr %13, i32 %idxprom.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %dir.i = getelementptr %struct.iio_event_spec, ptr %13, i32 %idxprom.i, i32 1
  %19 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dir.i, align 4
  %21 = lshr i32 %16, 16
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %24 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val2, align 4
  %call10 = call i32 %9(ptr noundef %add.ptr.i, ptr noundef %11, i32 noundef %18, i32 noundef %20, i32 noundef %21, i32 noundef %23, i32 noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  %call10.len = select i1 %cmp, i32 %call10, i32 %len
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call10.len, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_add_chan_devattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_format_value(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_str_to_fixpoint(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_inode_getfd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_event_chrdev_read(ptr nocapture noundef readonly %filep, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %f_ps) #1 align 64 {
entry:
  %copied = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %event_interface = getelementptr inbounds %struct.iio_dev_opaque, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %event_interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event_interface, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied) #7
  %4 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %copied, align 4, !annotation !81
  %info = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup80_crit_edge, label %if.end

entry.cleanup80_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup80

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %count)
  %cmp = icmp ult i32 %count, 16
  br i1 %cmp, label %if.end.cleanup80_crit_edge, label %do.body.preheader

if.end.cleanup80_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup80

do.body.preheader:                                ; preds = %if.end
  %det_events = getelementptr inbounds %struct.iio_event_interface, ptr %3, i32 0, i32 1
  %out = getelementptr inbounds %struct.iio_event_interface, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1
  %f_flags = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 7
  %read_lock = getelementptr inbounds %struct.iio_event_interface, ptr %3, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %do.body.preheader
  %7 = ptrtoint ptr %det_events to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %det_events, align 8
  %9 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp4 = icmp eq i32 %8, %10
  br i1 %cmp4, label %if.then6, label %do.body.if.end56_crit_edge

do.body.if.end56_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then6:                                         ; preds = %do.body
  %11 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_flags, align 4
  %and = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %if.then6.cleanup80_crit_edge

if.then6.cleanup80_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup80

if.end9:                                          ; preds = %if.then6
  call void @__might_sleep(ptr noundef nonnull @.str.24, i32 noundef 142) #7
  %13 = ptrtoint ptr %det_events to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %det_events, align 8
  %15 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp19 = icmp eq i32 %14, %16
  br i1 %cmp19, label %lor.lhs.false, label %if.end9.if.end50_crit_edge

if.end9.if.end50_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

lor.lhs.false:                                    ; preds = %if.end9
  %17 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info, align 8
  %cmp23 = icmp eq ptr %18, null
  br i1 %cmp23, label %lor.lhs.false.cleanup80_crit_edge, label %if.then25

lor.lhs.false.cleanup80_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup80

if.then25:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %19 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %call120 = call i32 @prepare_to_wait_event(ptr noundef %3, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %20 = ptrtoint ptr %det_events to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %det_events, align 8
  %22 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp32121 = icmp eq i32 %21, %23
  br i1 %cmp32121, label %if.then25.lor.lhs.false35_crit_edge, label %if.then25.if.end46.thread115_crit_edge

if.then25.if.end46.thread115_crit_edge:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.thread115

if.then25.lor.lhs.false35_crit_edge:              ; preds = %if.then25
  br label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %cleanup.lor.lhs.false35_crit_edge, %if.then25.lor.lhs.false35_crit_edge
  %call122 = phi i32 [ %call, %cleanup.lor.lhs.false35_crit_edge ], [ %call120, %if.then25.lor.lhs.false35_crit_edge ]
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info, align 8
  %cmp37 = icmp eq ptr %25, null
  br i1 %cmp37, label %lor.lhs.false35.if.end46.thread115_crit_edge, label %if.end40

lor.lhs.false35.if.end46.thread115_crit_edge:     ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.thread115

if.end40:                                         ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool41.not = icmp eq i32 %call122, 0
  br i1 %tobool41.not, label %cleanup, label %if.end46

cleanup:                                          ; preds = %if.end40
  call void @schedule() #7
  %call = call i32 @prepare_to_wait_event(ptr noundef %3, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %26 = ptrtoint ptr %det_events to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %det_events, align 8
  %28 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %out, align 4
  %cmp32 = icmp eq i32 %27, %29
  br i1 %cmp32, label %cleanup.lor.lhs.false35_crit_edge, label %cleanup.if.end46.thread115_crit_edge

cleanup.if.end46.thread115_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.thread115

cleanup.lor.lhs.false35_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false35

if.end46.thread115:                               ; preds = %cleanup.if.end46.thread115_crit_edge, %lor.lhs.false35.if.end46.thread115_crit_edge, %if.then25.if.end46.thread115_crit_edge
  call void @finish_wait(ptr noundef %3, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end50

if.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %cleanup80

if.end50:                                         ; preds = %if.end46.thread115, %if.end9.if.end50_crit_edge
  %30 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load ptr, ptr %info, align 8
  %cmp52 = icmp eq ptr %.pr, null
  br i1 %cmp52, label %if.end50.cleanup80_crit_edge, label %if.end50.if.end56_crit_edge

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.end50.cleanup80_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup80

if.end56:                                         ; preds = %if.end50.if.end56_crit_edge, %do.body.if.end56_crit_edge
  %call57 = call i32 @mutex_lock_interruptible_nested(ptr noundef %read_lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end56.cleanup80_crit_edge

if.end56.cleanup80_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup80

if.end60:                                         ; preds = %if.end56
  %call63 = call i32 @__kfifo_to_user(ptr noundef %det_events, ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %copied) #7
  call void @mutex_unlock(ptr noundef %read_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool66.not = icmp eq i32 %call63, 0
  br i1 %tobool66.not, label %if.end68, label %if.end60.cleanup80_crit_edge

if.end60.cleanup80_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup80

if.end68:                                         ; preds = %if.end60
  %31 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %copied, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp69 = icmp eq i32 %32, 0
  br i1 %cmp69, label %land.lhs.true, label %if.end68.cleanup80_crit_edge

if.end68.cleanup80_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup80

land.lhs.true:                                    ; preds = %if.end68
  %33 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %f_flags, align 4
  %and72 = and i32 %34, 2048
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.cleanup80_crit_edge

land.lhs.true.cleanup80_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup80

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

cleanup80:                                        ; preds = %land.lhs.true.cleanup80_crit_edge, %if.end68.cleanup80_crit_edge, %if.end60.cleanup80_crit_edge, %if.end56.cleanup80_crit_edge, %if.end50.cleanup80_crit_edge, %if.end46, %lor.lhs.false.cleanup80_crit_edge, %if.then6.cleanup80_crit_edge, %if.end.cleanup80_crit_edge, %entry.cleanup80_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup80_crit_edge ], [ -22, %if.end.cleanup80_crit_edge ], [ %call122, %if.end46 ], [ -19, %lor.lhs.false.cleanup80_crit_edge ], [ %32, %if.end68.cleanup80_crit_edge ], [ -11, %land.lhs.true.cleanup80_crit_edge ], [ %call63, %if.end60.cleanup80_crit_edge ], [ -512, %if.end56.cleanup80_crit_edge ], [ -19, %if.end50.cleanup80_crit_edge ], [ -11, %if.then6.cleanup80_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_event_poll(ptr noundef %filep, ptr noundef %wait) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %event_interface = getelementptr inbounds %struct.iio_dev_opaque, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %event_interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event_interface, align 8
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.end.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.end.poll_wait.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.end
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  %tobool3.not.i = icmp eq ptr %5, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %filep, ptr noundef nonnull %5, ptr noundef nonnull %wait) #7
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.end.poll_wait.exit_crit_edge
  %det_events = getelementptr inbounds %struct.iio_event_interface, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %det_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %det_events, align 8
  %out = getelementptr inbounds %struct.iio_event_interface, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp eq i32 %9, %11
  %spec.select = select i1 %cmp, i32 0, i32 65
  br label %cleanup

cleanup:                                          ; preds = %poll_wait.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %poll_wait.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_event_chrdev_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filep) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %event_interface = getelementptr inbounds %struct.iio_dev_opaque, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %event_interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event_interface, align 8
  %flags = getelementptr inbounds %struct.iio_event_interface, ptr %3, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #7
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.iio_device_put.exit_crit_edge, label %if.then.i

entry.iio_device_put.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %iio_device_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  tail call void @put_device(ptr noundef %dev.i) #7
  br label %iio_device_put.exit

iio_device_put.exit:                              ; preds = %if.then.i, %entry.iio_device_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_to_user(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__ksymtab_iio_push_event, !1, !"__ksymtab_iio_push_event", i1 false, i1 false}
!1 = !{!"../drivers/iio/industrialio-event.c", i32 89, i32 1}
!2 = !{ptr @iio_setup_ev_int.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/iio/industrialio-event.c", i32 476, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @iio_setup_ev_int.__key.1, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/iio/industrialio-event.c", i32 477, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iio/industrialio-event.c", i32 368, i32 36}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/industrialio-event.c", i32 373, i32 36}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/industrialio-event.c", i32 227, i32 25}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/industrialio-event.c", i32 228, i32 22}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/industrialio-event.c", i32 229, i32 22}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/industrialio-event.c", i32 230, i32 34}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/industrialio-event.c", i32 231, i32 31}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/industrialio-event.c", i32 232, i32 25}
!24 = !{ptr @iio_ev_type_text, !25, !"iio_ev_type_text", i1 false, i1 false}
!25 = !{!"../drivers/iio/industrialio-event.c", i32 226, i32 27}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/industrialio-event.c", i32 236, i32 24}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/industrialio-event.c", i32 237, i32 24}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/industrialio-event.c", i32 238, i32 25}
!32 = !{ptr @iio_ev_dir_text, !33, !"iio_ev_dir_text", i1 false, i1 false}
!33 = !{!"../drivers/iio/industrialio-event.c", i32 235, i32 27}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/industrialio-event.c", i32 242, i32 25}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/industrialio-event.c", i32 243, i32 24}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/industrialio-event.c", i32 244, i32 29}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/industrialio-event.c", i32 245, i32 25}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/industrialio-event.c", i32 246, i32 39}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/industrialio-event.c", i32 247, i32 38}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/industrialio-event.c", i32 248, i32 26}
!48 = !{ptr @iio_ev_info_text, !49, !"iio_ev_info_text", i1 false, i1 false}
!49 = !{!"../drivers/iio/industrialio-event.c", i32 241, i32 27}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/industrialio-event.c", i32 301, i32 26}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/industrialio-event.c", i32 498, i32 43}
!54 = distinct !{null, !55, !"iio_event_group_name", i1 false, i1 false}
!55 = !{!"../drivers/iio/industrialio-event.c", i32 498, i32 20}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/industrialio-event.c", i32 212, i32 24}
!58 = !{ptr @iio_event_chrdev_fileops, !59, !"iio_event_chrdev_fileops", i1 false, i1 false}
!59 = !{!"../drivers/iio/industrialio-event.c", i32 184, i32 37}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/industrialio-event.c", i32 140, i32 10}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!64 = distinct !{null, !63, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2154026068}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{i64 2152658766, i64 2152658791}
!81 = !{!"auto-init"}
!82 = !{i8 0, i8 2}
