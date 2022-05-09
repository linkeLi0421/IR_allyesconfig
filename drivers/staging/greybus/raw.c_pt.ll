; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/raw.c_pt.bc'
source_filename = "../drivers/staging/greybus/raw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.greybus_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.greybus_bundle_id = type { i16, i32, i32, i8, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_bundle = type { %struct.device, ptr, i8, i8, i8, i8, i32, ptr, %struct.list_head, ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.greybus_descriptor_cport = type { i16, i8, i8 }
%struct.gb_raw = type { ptr, %struct.list_head, i32, %struct.mutex, i32, %struct.cdev, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.gb_operation = type { ptr, ptr, ptr, i32, i8, i16, i32, %struct.work_struct, ptr, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, ptr }
%struct.gb_message = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_raw_send_request = type { i32, [0 x i8] }
%struct.raw_data = type { %struct.list_head, i32, [0 x i8] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }

@__initcall__kmod_gb_raw__229_368_raw_init6 = internal global ptr @raw_init, section ".initcall6.init", align 4
@gb_raw_driver = internal global { %struct.greybus_driver, [36 x i8] } { %struct.greybus_driver { ptr @.str.1, ptr @gb_raw_probe, ptr @gb_raw_disconnect, ptr @gb_raw_id_table, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@raw_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@raw_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@minors = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_raw_exit = internal global ptr @raw_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file230 = internal constant [43 x i8] c"gb_raw.file=drivers/staging/greybus/gb-raw\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [22 x i8] c"gb_raw.license=GPL v2\00", section ".modinfo", align 1
@raw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gb_raw\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"raw\00", [28 x i8] zeroinitializer }, align 32
@gb_raw_id_table = internal constant { [2 x %struct.greybus_bundle_id], [56 x i8] } { [2 x %struct.greybus_bundle_id] [%struct.greybus_bundle_id { i16 4, i32 0, i32 0, i8 -2, i32 0 }, %struct.greybus_bundle_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gb_raw_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&raw->list_lock\00", [16 x i8] zeroinitializer }, align 32
@raw_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @raw_read, ptr @raw_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @raw_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gb!raw%d\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gb_raw_request_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 98, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unknown request type 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gb_raw_request_handler\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/staging/greybus/raw.c\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_raw_request_handler._entry_ptr = internal global ptr @gb_raw_request_handler._entry, section ".printk_index", align 4
@gb_raw_request_handler._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 105, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"raw receive request too small (%zu < %zu)\0A\00", [53 x i8] zeroinitializer }, align 32
@gb_raw_request_handler._entry_ptr.11 = internal global ptr @gb_raw_request_handler._entry.9, section ".printk_index", align 4
@gb_raw_request_handler._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 112, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"raw receive request wrong size %d vs %d\0A\00", [55 x i8] zeroinitializer }, align 32
@gb_raw_request_handler._entry_ptr.14 = internal global ptr @gb_raw_request_handler._entry.12, section ".printk_index", align 4
@gb_raw_request_handler._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 116, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"raw receive request of 0 bytes?\0A\00", [63 x i8] zeroinitializer }, align 32
@gb_raw_request_handler._entry_ptr.17 = internal global ptr @gb_raw_request_handler._entry.15, section ".printk_index", align 4
@receive_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.6, i32 62, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Too big of a data packet, rejected\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"receive_data\00", [19 x i8] zeroinitializer }, align 32
@receive_data._entry_ptr = internal global ptr @receive_data._entry, section ".printk_index", align 4
@receive_data._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.6, i32 68, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Too much data in receive buffer, now dropping packets\0A\00", [41 x i8] zeroinitializer }, align 32
@receive_data._entry_ptr.22 = internal global ptr @receive_data._entry.20, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"minors.xa_lock\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"gb_raw_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 331, i32 30 }
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"raw_major\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 36, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"raw_class\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 35, i32 22 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"minors\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 343, i32 14 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 332, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"gb_raw_id_table\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 325, i32 39 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 176, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [9 x i8] c"raw_fops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 317, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 199, i32 24 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 98, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 104, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 111, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 116, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 62, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 68, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 230, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 214, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 174, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [33 x i8] c"../drivers/staging/greybus/raw.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 38, i32 8 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_raw_exit, ptr @__initcall__kmod_gb_raw__229_368_raw_init6, ptr @gb_raw_request_handler._entry, ptr @gb_raw_request_handler._entry.12, ptr @gb_raw_request_handler._entry.15, ptr @gb_raw_request_handler._entry.9, ptr @gb_raw_request_handler._entry_ptr, ptr @gb_raw_request_handler._entry_ptr.11, ptr @gb_raw_request_handler._entry_ptr.14, ptr @gb_raw_request_handler._entry_ptr.17, ptr @raw_exit, ptr @receive_data._entry, ptr @receive_data._entry.20, ptr @receive_data._entry_ptr, ptr @receive_data._entry_ptr.22, ptr @gb_raw_driver, ptr @raw_major, ptr @raw_class, ptr @minors, ptr @raw_init.__key, ptr @.str, ptr @.str.1, ptr @gb_raw_id_table, ptr @gb_raw_probe.__key, ptr @.str.2, ptr @raw_fops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_raw_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minors to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_raw_id_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_raw_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_raw_request_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_raw_request_handler._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_raw_request_handler._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_raw_request_handler._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @receive_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @receive_data._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_init() #0 align 64 {
entry:
  %dev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #10
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dev, align 4, !annotation !76
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @raw_init.__key) #10
  store ptr %call, ptr @raw_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @alloc_chrdev_region(ptr noundef nonnull %dev, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.error_chrdev_crit_edge, label %if.end6

if.end.error_chrdev_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_chrdev

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 4
  %shr = lshr i32 %3, 20
  store i32 %shr, ptr @raw_major, align 4
  %call7 = call i32 @greybus_register_driver(ptr noundef nonnull @gb_raw_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %error_gb

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

error_gb:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev, align 4
  call void @unregister_chrdev_region(i32 noundef %5, i32 noundef 256) #10
  br label %error_chrdev

error_chrdev:                                     ; preds = %error_gb, %if.end.error_chrdev_crit_edge
  %retval1.0 = phi i32 [ %call4, %if.end.error_chrdev_crit_edge ], [ %call7, %error_gb ]
  %6 = load ptr, ptr @raw_class, align 4
  call void @class_destroy(ptr noundef %6) #10
  br label %cleanup

cleanup:                                          ; preds = %error_chrdev, %if.end6.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end6.cleanup_crit_edge ], [ %1, %if.then ], [ %retval1.0, %error_chrdev ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #10
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @raw_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @greybus_deregister_driver(ptr noundef nonnull @gb_raw_driver) #10
  %0 = load i32, ptr @raw_major, align 4
  %shl = shl i32 %0, 20
  tail call void @unregister_chrdev_region(i32 noundef %shl, i32 noundef 256) #10
  %1 = load ptr, ptr @raw_class, align 4
  tail call void @class_destroy(ptr noundef %1) #10
  tail call void @ida_destroy(ptr noundef nonnull @minors) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @greybus_deregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @greybus_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_raw_probe(ptr noundef %bundle, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_cports = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 6
  %0 = ptrtoint ptr %num_cports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_cports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cport_desc2 = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 7
  %2 = ptrtoint ptr %cport_desc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cport_desc2, align 4
  %protocol_id = getelementptr inbounds %struct.greybus_descriptor_cport, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protocol_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %5)
  %cmp3.not = icmp eq i8 %5, -2
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 276) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %if.end8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end6
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %3, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %call10 = tail call ptr @gb_connection_create(ptr noundef %bundle, i16 noundef zeroext %9, ptr noundef nonnull @gb_raw_request_handler) #10
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %call10 to i32
  br label %error_free

if.end14:                                         ; preds = %if.end8
  %list = getelementptr inbounds %struct.gb_raw, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.gb_raw, ptr %call7.i.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list, ptr %prev.i, align 8
  %list_lock = getelementptr inbounds %struct.gb_raw, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %list_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @gb_raw_probe.__key) #10
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call10, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call16 = tail call i32 @ida_alloc_range(ptr noundef nonnull @minors, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end14.error_connection_destroy_crit_edge, label %if.end20

if.end14.error_connection_destroy_crit_edge:      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_connection_destroy

if.end20:                                         ; preds = %if.end14
  %15 = load i32, ptr @raw_major, align 4
  %shl = shl i32 %15, 20
  %or = or i32 %shl, %call16
  %dev = getelementptr inbounds %struct.gb_raw, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %dev, align 4
  %cdev = getelementptr inbounds %struct.gb_raw, ptr %call7.i.i, i32 0, i32 5
  tail call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @raw_fops) #10
  %call21 = tail call i32 @gb_connection_enable(ptr noundef %call10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.error_remove_ida_crit_edge

if.end20.error_remove_ida_crit_edge:              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_remove_ida

if.end24:                                         ; preds = %if.end20
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dev, align 4
  %call27 = tail call i32 @cdev_add(ptr noundef %cdev, i32 noundef %18, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end24.error_connection_disable_crit_edge

if.end24.error_connection_disable_crit_edge:      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_connection_disable

if.end30:                                         ; preds = %if.end24
  %19 = load ptr, ptr @raw_class, align 4
  %bundle31 = getelementptr inbounds %struct.gb_connection, ptr %call10, i32 0, i32 2
  %20 = ptrtoint ptr %bundle31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bundle31, align 4
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dev, align 4
  %call34 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %19, ptr noundef %21, i32 noundef %23, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.3, i32 noundef %call16) #10
  %device = getelementptr inbounds %struct.gb_raw, ptr %call7.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call34, ptr %device, align 8
  %cmp.i77 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %if.then37, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then37:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %call34 to i32
  tail call void @cdev_del(ptr noundef %cdev) #10
  br label %error_connection_disable

error_connection_disable:                         ; preds = %if.then37, %if.end24.error_connection_disable_crit_edge
  %retval1.0 = phi i32 [ %call27, %if.end24.error_connection_disable_crit_edge ], [ %25, %if.then37 ]
  tail call void @gb_connection_disable(ptr noundef %call10) #10
  br label %error_remove_ida

error_remove_ida:                                 ; preds = %error_connection_disable, %if.end20.error_remove_ida_crit_edge
  %retval1.1 = phi i32 [ %call21, %if.end20.error_remove_ida_crit_edge ], [ %retval1.0, %error_connection_disable ]
  tail call void @ida_free(ptr noundef nonnull @minors, i32 noundef %call16) #10
  br label %error_connection_destroy

error_connection_destroy:                         ; preds = %error_remove_ida, %if.end14.error_connection_destroy_crit_edge
  %retval1.2 = phi i32 [ %retval1.1, %error_remove_ida ], [ %call16, %if.end14.error_connection_destroy_crit_edge ]
  tail call void @gb_connection_destroy(ptr noundef %call10) #10
  br label %error_free

error_free:                                       ; preds = %error_connection_destroy, %if.then12
  %retval1.3 = phi i32 [ %10, %if.then12 ], [ %retval1.2, %error_connection_destroy ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %error_free, %if.end30.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.3, %error_free ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_raw_disconnect(ptr nocapture noundef readonly %bundle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = load ptr, ptr @raw_class, align 4
  %dev = getelementptr inbounds %struct.gb_raw, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev, align 4
  tail call void @device_destroy(ptr noundef %4, i32 noundef %6) #10
  %cdev = getelementptr inbounds %struct.gb_raw, ptr %1, i32 0, i32 5
  tail call void @cdev_del(ptr noundef %cdev) #10
  tail call void @gb_connection_disable(ptr noundef %3) #10
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev, align 4
  %and = and i32 %8, 1048575
  tail call void @ida_free(ptr noundef nonnull @minors, i32 noundef %and) #10
  tail call void @gb_connection_destroy(ptr noundef %3) #10
  %list_lock = getelementptr inbounds %struct.gb_raw, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %list_lock, i32 noundef 0) #10
  %list = getelementptr inbounds %struct.gb_raw, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list, align 4
  %cmp.not30 = icmp eq ptr %10, %list
  br i1 %cmp.not30, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %raw_data.031 = phi ptr [ %temp.0, %list_del.exit.for.body_crit_edge ], [ %10, %entry.for.body_crit_edge ]
  %11 = ptrtoint ptr %raw_data.031 to i32
  call void @__asan_load4_noabort(i32 %11)
  %temp.0 = load ptr, ptr %raw_data.031, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %raw_data.031) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %raw_data.031, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %raw_data.031 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %raw_data.031, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %18 = ptrtoint ptr %raw_data.031 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %raw_data.031, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %raw_data.031, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %raw_data.031) #10
  %cmp.not = icmp eq ptr %temp.0, %list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %list_lock) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_connection_create(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_raw_request_handler(ptr nocapture noundef readonly %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op, align 4
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bundle, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %type = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.not = icmp eq i8 %7, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %conv) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %request = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %8 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request, align 4
  %payload_size = getelementptr inbounds %struct.gb_message, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %payload_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp7 = icmp ult i32 %11, 4
  br i1 %cmp7, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef %11, i32 noundef 4) #14
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %payload = getelementptr inbounds %struct.gb_message, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %payload, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %13, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %sub = add i32 %11, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %sub)
  %cmp20.not = icmp eq i32 %16, %sub
  br i1 %cmp20.not, label %if.end29, label %do.end25

do.end25:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef %16, i32 noundef %sub) #14
  br label %cleanup

if.end29:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp30 = icmp eq i32 %15, 0
  br i1 %cmp30, label %do.end35, label %if.end36

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.16) #14
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %data = getelementptr inbounds %struct.gb_raw_send_request, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %bundle.i = getelementptr inbounds %struct.gb_connection, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %bundle.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bundle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %16)
  %cmp.i = icmp ugt i32 %16, 8192
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.18) #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end36
  %list_lock.i = getelementptr inbounds %struct.gb_raw, ptr %5, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %list_lock.i, i32 noundef 0) #10
  %list_data.i = getelementptr inbounds %struct.gb_raw, ptr %5, i32 0, i32 2
  %21 = ptrtoint ptr %list_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %list_data.i, align 4
  %add.i = add i32 %22, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i)
  %cmp3.i = icmp ugt i32 %add.i, 65536
  br i1 %cmp3.i, label %do.end7.i, label %if.end8.i.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.21) #14
  br label %exit.i

if.end8.i.i:                                      ; preds = %if.end.i
  %add9.i = add nuw nsw i32 %16, 12
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add9.i, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.exit.i_crit_edge, label %if.end11.i

if.end8.i.i.exit.i_crit_edge:                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit.i

if.end11.i:                                       ; preds = %if.end8.i.i
  %23 = ptrtoint ptr %list_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %list_data.i, align 4
  %add13.i = add i32 %24, %16
  store i32 %add13.i, ptr %list_data.i, align 4
  %len14.i = getelementptr inbounds %struct.raw_data, ptr %call9.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %len14.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %16, ptr %len14.i, align 8
  %data15.i = getelementptr inbounds %struct.raw_data, ptr %call9.i.i, i32 0, i32 2
  %26 = call ptr @memcpy(ptr %data15.i, ptr %data, i32 %16)
  %list.i = getelementptr inbounds %struct.gb_raw, ptr %5, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.gb_raw, ptr %5, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %28, ptr noundef %list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end11.i.exit.i_crit_edge

if.end11.i.exit.i_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit.i

if.end.i.i.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9.i.i, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list.i, ptr %call9.i.i, align 128
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call9.i.i, ptr %28, align 4
  br label %exit.i

exit.i:                                           ; preds = %if.end.i.i.i, %if.end11.i.exit.i_crit_edge, %if.end8.i.i.exit.i_crit_edge, %do.end7.i
  %retval2.0.i = phi i32 [ -22, %do.end7.i ], [ -12, %if.end8.i.i.exit.i_crit_edge ], [ 0, %if.end11.i.exit.i_crit_edge ], [ 0, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %list_lock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %exit.i, %do.end.i, %do.end35, %do.end25, %do.end12, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end12 ], [ -22, %do.end25 ], [ -22, %do.end35 ], [ -22, %do.end.i ], [ %retval2.0.i, %exit.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %list_lock = getelementptr inbounds %struct.gb_raw, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %list_lock, i32 noundef 0) #10
  %list = getelementptr inbounds %struct.gb_raw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %3, %list
  br i1 %cmp.i.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.raw_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %count)
  %cmp = icmp ugt i32 %5, %count
  br i1 %cmp, label %if.end.exit_crit_edge, label %if.end4

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end4:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.raw_data, ptr %3, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9.i.i = icmp slt i32 %5, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end4
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.exit_crit_edge, label %if.then27.i.i, !prof !77

land.rhs16.i.i.exit_crit_edge:                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %exit

if.then.i.i.i:                                    ; preds = %if.end4
  tail call void @__check_object_size(ptr noundef %data, i32 noundef %5, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %5, i32 -1226833920) #16, !srcloc !78
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %data, i32 noundef %5) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %data, i32 noundef %5) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %5, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %5, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool7.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool7.not, label %if.end9, label %copy_to_user.exit.exit_crit_edge

copy_to_user.exit.exit_crit_edge:                 ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end9:                                          ; preds = %copy_to_user.exit
  %call.i.i24 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #10
  br i1 %call.i.i24, label %if.end.i.i25, label %if.end9.list_del.exit_crit_edge

if.end9.list_del.exit_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i25:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i25, %if.end9.list_del.exit_crit_edge
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %list_data = getelementptr inbounds %struct.gb_raw, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %list_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %list_data, align 4
  %sub = sub i32 %18, %16
  store i32 %sub, ptr %list_data, align 4
  %19 = load i32, ptr %len, align 4
  tail call void @kfree(ptr noundef %3) #10
  br label %exit

exit:                                             ; preds = %list_del.exit, %copy_to_user.exit.exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.exit_crit_edge, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %retval1.0 = phi i32 [ 0, %entry.exit_crit_edge ], [ %19, %list_del.exit ], [ -28, %if.end.exit_crit_edge ], [ -14, %copy_to_user.exit.exit_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %list_lock) #10
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %count)
  %cmp = icmp ugt i32 %count, 8192
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.i = add nuw nsw i32 %count, 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end3.cleanup_crit_edge, label %if.end.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end3
  %data3.i = getelementptr inbounds %struct.gb_raw_send_request, ptr %call9.i.i, i32 0, i32 1
  tail call void @__check_object_size(ptr noundef %data3.i, i32 noundef %count, i1 noundef zeroext false) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 156) #10
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %if.end.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.if.then11.i.i.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #16, !srcloc !79
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !77

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data3.i, i32 noundef %count) #10
  %5 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #9, !srcloc !80
  %and.i.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %data3.i, ptr noundef %buf, i32 noundef %count) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #10, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %gb_raw_send.exit, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !77

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end.i.if.then11.i.i.i_crit_edge
  %res.0.i.i.i14 = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ %count, %if.end.i.if.then11.i.i.i_crit_edge ], [ %count, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 %count, %res.0.i.i.i14
  %add.ptr.i.i.i = getelementptr i8, ptr %data3.i, i32 %sub.i.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i14)
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

gb_raw_send.exit:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.bswap.i32(i32 %count) #10
  %10 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call9.i.i, align 128
  %call.i.i = tail call i32 @gb_operation_sync_timeout(ptr noundef %3, i32 noundef 2, ptr noundef nonnull %call9.i.i, i32 noundef %add.i, ptr noundef null, i32 noundef 0, i32 noundef 1000) #10
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  %spec.select = select i1 %tobool4.not, i32 %count, i32 %call.i.i
  br label %cleanup

cleanup:                                          ; preds = %gb_raw_send.exit, %if.then11.i.i.i, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -7, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i.i ], [ -12, %if.end3.cleanup_crit_edge ], [ %spec.select, %gb_raw_send.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @raw_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -112
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_sync_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !56, !57, !59, !61, !63, !65}
!llvm.named.register.sp = !{!66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_gb_raw__229_368_raw_init6, !1, !"__initcall__kmod_gb_raw__229_368_raw_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/raw.c", i32 368, i32 1}
!2 = !{ptr @__exitcall_raw_exit, !3, !"__exitcall_raw_exit", i1 false, i1 false}
!3 = !{!"../drivers/staging/greybus/raw.c", i32 377, i32 1}
!4 = !{ptr @__UNIQUE_ID_file230, !5, !"__UNIQUE_ID_file230", i1 false, i1 false}
!5 = !{!"../drivers/staging/greybus/raw.c", i32 379, i32 1}
!6 = !{ptr @__UNIQUE_ID_license231, !5, !"__UNIQUE_ID_license231", i1 false, i1 false}
!7 = !{ptr @raw_class, !8, !"raw_class", i1 false, i1 false}
!8 = !{!"../drivers/staging/greybus/raw.c", i32 35, i32 22}
!9 = !{ptr @raw_major, !10, !"raw_major", i1 false, i1 false}
!10 = !{!"../drivers/staging/greybus/raw.c", i32 36, i32 12}
!11 = !{ptr @raw_init.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/staging/greybus/raw.c", i32 343, i32 14}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/greybus/raw.c", i32 332, i32 11}
!16 = !{ptr @gb_raw_driver, !17, !"gb_raw_driver", i1 false, i1 false}
!17 = !{!"../drivers/staging/greybus/raw.c", i32 331, i32 30}
!18 = !{ptr @gb_raw_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/staging/greybus/raw.c", i32 176, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/greybus/raw.c", i32 199, i32 24}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/greybus/raw.c", i32 98, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @gb_raw_request_handler._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @gb_raw_request_handler._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/greybus/raw.c", i32 104, i32 3}
!33 = !{ptr @gb_raw_request_handler._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @gb_raw_request_handler._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/greybus/raw.c", i32 111, i32 3}
!37 = !{ptr @gb_raw_request_handler._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @gb_raw_request_handler._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/greybus/raw.c", i32 116, i32 3}
!41 = !{ptr @gb_raw_request_handler._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @gb_raw_request_handler._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/greybus/raw.c", i32 62, i32 3}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @receive_data._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @receive_data._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/greybus/raw.c", i32 68, i32 3}
!50 = !{ptr @receive_data._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @receive_data._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @raw_fops, !53, !"raw_fops", i1 false, i1 false}
!53 = !{!"../drivers/staging/greybus/raw.c", i32 317, i32 37}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!61 = !{ptr @gb_raw_id_table, !62, !"gb_raw_id_table", i1 false, i1 false}
!62 = !{!"../drivers/staging/greybus/raw.c", i32 325, i32 39}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/greybus/raw.c", i32 38, i32 8}
!65 = !{ptr @minors, !64, !"minors", i1 false, i1 false}
!66 = !{!"sp"}
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
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2153047697, i64 2153047722}
!79 = !{i64 2153047016, i64 2153047041}
!80 = !{i64 5542571}
!81 = !{i64 5542768}
!82 = !{i64 2153028001}
