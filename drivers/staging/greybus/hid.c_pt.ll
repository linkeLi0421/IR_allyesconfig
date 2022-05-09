; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/hid.c_pt.bc'
source_filename = "../drivers/staging/greybus/hid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.greybus_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.greybus_bundle_id = type { i16, i32, i32, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gb_bundle = type { %struct.device, ptr, i8, i8, i8, i8, i32, ptr, %struct.list_head, ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.greybus_descriptor_cport = type { i16, i8, i8 }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.gb_hid = type { ptr, ptr, ptr, %struct.gb_hid_desc_response, i32, i32, ptr }
%struct.gb_hid_desc_response = type <{ i8, i16, i16, i16, i16, i8 }>
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.gb_operation = type { ptr, ptr, ptr, i32, i8, i16, i32, %struct.work_struct, ptr, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, ptr }
%struct.gb_message = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.gb_hid_set_report_request = type { i8, i8, [0 x i8] }
%struct.gb_hid_get_report_request = type { i8, i8 }

@__initcall__kmod_gb_hid__229_517_gb_hid_driver_init6 = internal global ptr @gb_hid_driver_init, section ".initcall6.init", align 4
@gb_hid_driver = internal global { %struct.greybus_driver, [36 x i8] } { %struct.greybus_driver { ptr @.str.1, ptr @gb_hid_probe, ptr @gb_hid_disconnect, ptr @gb_hid_id_table, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_gb_hid_driver_exit = internal global ptr @gb_hid_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file230 = internal constant [43 x i8] c"gb_hid.file=drivers/staging/greybus/gb-hid\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [22 x i8] c"gb_hid.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gb_hid\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hid\00", [28 x i8] zeroinitializer }, align 32
@gb_hid_id_table = internal constant { [2 x %struct.greybus_bundle_id], [56 x i8] } { [2 x %struct.greybus_bundle_id] [%struct.greybus_bundle_id { i16 4, i32 0, i32 0, i8 5, i32 0 }, %struct.greybus_bundle_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gb_hid_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 472, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't add hid device: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gb_hid_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/staging/greybus/hid.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_hid_probe._entry_ptr = internal global ptr @gb_hid_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gb_hid_request_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unsupported unsolicited request\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gb_hid_request_handler\00", [41 x i8] zeroinitializer }, align 32
@gb_hid_request_handler._entry_ptr = internal global ptr @gb_hid_request_handler._entry, section ".printk_index", align 4
@gb_hid_ll_driver = internal global { %struct.hid_ll_driver, [48 x i8] } { %struct.hid_ll_driver { ptr @gb_hid_start, ptr @gb_hid_stop, ptr @gb_hid_open, ptr @gb_hid_close, ptr @gb_hid_power, ptr @gb_hid_parse, ptr null, ptr null, ptr @gb_hid_raw_request, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s %04X:%04X\00", [19 x i8] zeroinitializer }, align 32
@gb_pm_runtime_get_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 54, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pm_runtime_get_sync failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gb_pm_runtime_get_sync\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/linux/greybus/bundle.h\00", [33 x i8] zeroinitializer }, align 32
@gb_pm_runtime_get_sync._entry_ptr = internal global ptr @gb_pm_runtime_get_sync._entry, section ".printk_index", align 4
@gb_hid_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 366, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to power off (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gb_hid_close\00", [19 x i8] zeroinitializer }, align 32
@gb_hid_close._entry_ptr = internal global ptr @gb_hid_close._entry, section ".printk_index", align 4
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@gb_hid_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: weird size of report descriptor (%u)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gb_hid_parse\00", [19 x i8] zeroinitializer }, align 32
@gb_hid_parse._entry_ptr = internal global ptr @gb_hid_parse._entry, section ".printk_index", align 4
@gb_hid_parse._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.4, i32 298, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reading report descriptor failed\0A\00", [62 x i8] zeroinitializer }, align 32
@gb_hid_parse._entry_ptr.19 = internal global ptr @gb_hid_parse._entry.17, section ".printk_index", align 4
@gb_hid_parse._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.4, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: parsing report descriptor failed\0A\00", [56 x i8] zeroinitializer }, align 32
@gb_hid_parse._entry_ptr.22 = internal global ptr @gb_hid_parse._entry.20, section ".printk_index", align 4
@gb_hid_set_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 122, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set report: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gb_hid_set_report\00", [46 x i8] zeroinitializer }, align 32
@gb_hid_set_report._entry_ptr = internal global ptr @gb_hid_set_report._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 32]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"gb_hid_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 511, i32 30 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 517, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 512, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"gb_hid_id_table\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 505, i32 39 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 472, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 140, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"gb_hid_ll_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 384, i32 29 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 414, i32 41 }
@___asan_gen_.81 = private unnamed_addr constant [34 x i8] c"../include/linux/greybus/bundle.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 53, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 365, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 288, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 298, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 304, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [33 x i8] c"../drivers/staging/greybus/hid.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 121, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_gb_hid_driver_exit, ptr @__initcall__kmod_gb_hid__229_517_gb_hid_driver_init6, ptr @gb_hid_close._entry, ptr @gb_hid_close._entry_ptr, ptr @gb_hid_driver_exit, ptr @gb_hid_parse._entry, ptr @gb_hid_parse._entry.17, ptr @gb_hid_parse._entry.20, ptr @gb_hid_parse._entry_ptr, ptr @gb_hid_parse._entry_ptr.19, ptr @gb_hid_parse._entry_ptr.22, ptr @gb_hid_probe._entry, ptr @gb_hid_probe._entry_ptr, ptr @gb_hid_request_handler._entry, ptr @gb_hid_request_handler._entry_ptr, ptr @gb_hid_set_report._entry, ptr @gb_hid_set_report._entry_ptr, ptr @gb_pm_runtime_get_sync._entry, ptr @gb_pm_runtime_get_sync._entry_ptr, ptr @gb_hid_driver, ptr @.str, ptr @.str.1, ptr @gb_hid_id_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @gb_hid_ll_driver, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_hid_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_hid_id_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_hid_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_hid_request_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_hid_ll_driver to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_pm_runtime_get_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_hid_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_hid_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_hid_parse._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_hid_parse._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_hid_set_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_hid_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @greybus_register_driver(ptr noundef nonnull @gb_hid_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gb_hid_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @greybus_deregister_driver(ptr noundef nonnull @gb_hid_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @greybus_deregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @greybus_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_hid_probe(ptr noundef %bundle, ptr nocapture noundef readnone %id) #2 align 64 {
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
  %cport_desc1 = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 7
  %2 = ptrtoint ptr %cport_desc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cport_desc1, align 4
  %protocol_id = getelementptr inbounds %struct.greybus_descriptor_cport, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protocol_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %5)
  %cmp2.not = icmp eq i8 %5, 5
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 36) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %3, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %call9 = tail call ptr @gb_connection_create(ptr noundef %bundle, i16 noundef zeroext %9, ptr noundef nonnull @gb_hid_request_handler) #10
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %call9 to i32
  br label %err_free_ghid

if.end13:                                         ; preds = %if.end7
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %call9, i32 0, i32 17
  %11 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %private.i, align 4
  %connection14 = getelementptr inbounds %struct.gb_hid, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %connection14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9, ptr %connection14, align 4
  %call15 = tail call ptr @hid_allocate_device() #10
  %cmp.i67 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call15 to i32
  br label %err_connection_destroy

if.end19:                                         ; preds = %if.end13
  %hid20 = getelementptr inbounds %struct.gb_hid, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %hid20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call15, ptr %hid20, align 8
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %bundle, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call22 = tail call i32 @gb_connection_enable(ptr noundef %call9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end19.err_destroy_hid_crit_edge

if.end19.err_destroy_hid_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_destroy_hid

if.end25:                                         ; preds = %if.end19
  %call26 = tail call fastcc i32 @gb_hid_init(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.err_connection_disable_crit_edge

if.end25.err_connection_disable_crit_edge:        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_connection_disable

if.end29:                                         ; preds = %if.end25
  %call30 = tail call i32 @hid_add_device(ptr noundef %call15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %do.end

do.end:                                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.hid_device, ptr %call15, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call30) #14
  br label %err_connection_disable

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 12, i32 22
  %17 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %call.i1.i = tail call i32 @__pm_runtime_suspend(ptr noundef %bundle, i32 noundef 13) #10
  br label %cleanup

err_connection_disable:                           ; preds = %do.end, %if.end25.err_connection_disable_crit_edge
  %ret.0 = phi i32 [ %call26, %if.end25.err_connection_disable_crit_edge ], [ %call30, %do.end ]
  tail call void @gb_connection_disable(ptr noundef %call9) #10
  br label %err_destroy_hid

err_destroy_hid:                                  ; preds = %err_connection_disable, %if.end19.err_destroy_hid_crit_edge
  %ret.1 = phi i32 [ %call22, %if.end19.err_destroy_hid_crit_edge ], [ %ret.0, %err_connection_disable ]
  tail call void @hid_destroy_device(ptr noundef %call15) #10
  br label %err_connection_destroy

err_connection_destroy:                           ; preds = %err_destroy_hid, %if.then17
  %ret.2 = phi i32 [ %13, %if.then17 ], [ %ret.1, %err_destroy_hid ]
  tail call void @gb_connection_destroy(ptr noundef %call9) #10
  br label %err_free_ghid

err_free_ghid:                                    ; preds = %err_connection_destroy, %if.then11
  %ret.3 = phi i32 [ %10, %if.then11 ], [ %ret.2, %err_connection_destroy ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_ghid, %if.end33, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %err_free_ghid ], [ 0, %if.end33 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_hid_disconnect(ptr noundef %bundle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %bundle, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end.i:                                         ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.10, i32 noundef %call.i.i) #14
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !69
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.if.then_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.if.then_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  br label %if.then

if.then:                                          ; preds = %do.end11.i.i.i.i.i, %do.end.i.if.then_crit_edge
  %call.i.i.i.i9 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !71
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hid = getelementptr inbounds %struct.gb_hid, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hid, align 4
  tail call void @hid_destroy_device(ptr noundef %5) #10
  %connection = getelementptr inbounds %struct.gb_hid, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connection, align 4
  tail call void @gb_connection_disable(ptr noundef %7) #10
  %8 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connection, align 4
  tail call void @gb_connection_destroy(ptr noundef %9) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_connection_create(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_hid_request_handler(ptr nocapture noundef readonly %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %request2 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %4 = ptrtoint ptr %request2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request2, align 4
  %payload = getelementptr inbounds %struct.gb_message, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %payload, align 4
  %type = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 4
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %9)
  %cmp.not = icmp eq i8 %9, 8
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bundle, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.7) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.gb_hid, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %hid = getelementptr inbounds %struct.gb_hid, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hid, align 4
  %payload_size = getelementptr inbounds %struct.gb_message, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %payload_size, align 4
  %call7 = tail call i32 @hid_input_report(ptr noundef %16, i32 noundef 0, ptr noundef %7, i32 noundef %18, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then5 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_hid_init(ptr noundef %ghid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hid1 = getelementptr inbounds %struct.gb_hid, ptr %ghid, i32 0, i32 2
  %0 = ptrtoint ptr %hid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hid1, align 4
  %connection.i = getelementptr inbounds %struct.gb_hid, ptr %ghid, i32 0, i32 1
  %2 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection.i, align 4
  %hdesc.i = getelementptr inbounds %struct.gb_hid, ptr %ghid, i32 0, i32 3
  %call.i.i = tail call i32 @gb_operation_sync_timeout(ptr noundef %3, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef %hdesc.i, i32 noundef 10, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bcdHID = getelementptr inbounds %struct.gb_hid, ptr %ghid, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %bcdHID to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %bcdHID, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %version = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %version, align 4
  %wVendorID = getelementptr inbounds %struct.gb_hid, ptr %ghid, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %wVendorID to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %wVendorID, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv3 = zext i16 %10 to i32
  %vendor = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv3, ptr %vendor, align 4
  %wProductID = getelementptr inbounds %struct.gb_hid, ptr %ghid, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %wProductID to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %wProductID, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv5 = zext i16 %14 to i32
  %product = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %product to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv5, ptr %product, align 8
  %bCountryCode = getelementptr inbounds %struct.gb_hid, ptr %ghid, i32 0, i32 3, i32 5
  %16 = ptrtoint ptr %bCountryCode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bCountryCode, align 1
  %conv7 = zext i8 %17 to i32
  %country = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %country to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv7, ptr %country, align 4
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 42
  %19 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ghid, ptr %driver_data, align 8
  %ll_driver = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 20
  %20 = ptrtoint ptr %ll_driver to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @gb_hid_ll_driver, ptr %ll_driver, align 4
  %21 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %connection.i, align 4
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bundle, align 4
  %parent = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %parent, align 8
  %name = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 39
  %26 = load ptr, ptr %connection.i, align 4
  %bundle10 = getelementptr inbounds %struct.gb_connection, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %bundle10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bundle10, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %32, %if.end.i ], [ %30, %if.end.dev_name.exit_crit_edge ]
  %call15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 128, ptr noundef nonnull @.str.9, ptr noundef %retval.0.i, i32 noundef %conv3, i32 noundef %conv5)
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %entry.cleanup_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_add_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_destroy_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_input_report(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_sync_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_hid_start(ptr noundef readonly %hid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %report_list.i = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 0, i32 1
  %2 = ptrtoint ptr %report_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %report.016.i = load ptr, ptr %report_list.i, align 4
  %cmp.not17.i = icmp eq ptr %report.016.i, %report_list.i
  br i1 %cmp.not17.i, label %entry.gb_hid_find_max_report.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.gb_hid_find_max_report.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_hid_find_max_report.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %bufsize.0 = phi i32 [ %11, %for.body.i.for.body.i_crit_edge ], [ 64, %entry.for.body.i_crit_edge ]
  %report.018.i = phi ptr [ %report.0.i, %for.body.i.for.body.i_crit_edge ], [ %report.016.i, %entry.for.body.i_crit_edge ]
  %size.i.i = getelementptr inbounds %struct.hid_report, ptr %report.018.i, i32 0, i32 7
  %3 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size.i.i, align 4
  %sub.i.i = add i32 %4, -1
  %shr.i.i = lshr i32 %sub.i.i, 3
  %add.i.i = add nuw nsw i32 %shr.i.i, 1
  %device.i.i = getelementptr inbounds %struct.hid_report, ptr %report.018.i, i32 0, i32 8
  %5 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.hid_report, ptr %report.018.i, i32 0, i32 3
  %7 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.hid_device, ptr %6, i32 0, i32 15, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %add1.i.i = add i32 %add.i.i, %10
  %11 = tail call i32 @llvm.umax.i32(i32 %bufsize.0, i32 %add1.i.i)
  %12 = ptrtoint ptr %report.018.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %report.0.i = load ptr, ptr %report.018.i, align 4
  %cmp.not.i = icmp eq ptr %report.0.i, %report_list.i
  br i1 %cmp.not.i, label %for.body.i.gb_hid_find_max_report.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.gb_hid_find_max_report.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_hid_find_max_report.exit

gb_hid_find_max_report.exit:                      ; preds = %for.body.i.gb_hid_find_max_report.exit_crit_edge, %entry.gb_hid_find_max_report.exit_crit_edge
  %bufsize.2 = phi i32 [ 64, %entry.gb_hid_find_max_report.exit_crit_edge ], [ %11, %for.body.i.gb_hid_find_max_report.exit_crit_edge ]
  %report_list.i14 = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 1, i32 1
  %13 = ptrtoint ptr %report_list.i14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %report.016.i15 = load ptr, ptr %report_list.i14, align 4
  %cmp.not17.i16 = icmp eq ptr %report.016.i15, %report_list.i14
  br i1 %cmp.not17.i16, label %gb_hid_find_max_report.exit.gb_hid_find_max_report.exit32_crit_edge, label %gb_hid_find_max_report.exit.for.body.i27_crit_edge

gb_hid_find_max_report.exit.for.body.i27_crit_edge: ; preds = %gb_hid_find_max_report.exit
  br label %for.body.i27

gb_hid_find_max_report.exit.gb_hid_find_max_report.exit32_crit_edge: ; preds = %gb_hid_find_max_report.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_hid_find_max_report.exit32

for.body.i27:                                     ; preds = %for.body.i27.for.body.i27_crit_edge, %gb_hid_find_max_report.exit.for.body.i27_crit_edge
  %bufsize.3 = phi i32 [ %22, %for.body.i27.for.body.i27_crit_edge ], [ %bufsize.2, %gb_hid_find_max_report.exit.for.body.i27_crit_edge ]
  %report.018.i17 = phi ptr [ %report.0.i29, %for.body.i27.for.body.i27_crit_edge ], [ %report.016.i15, %gb_hid_find_max_report.exit.for.body.i27_crit_edge ]
  %size.i.i18 = getelementptr inbounds %struct.hid_report, ptr %report.018.i17, i32 0, i32 7
  %14 = ptrtoint ptr %size.i.i18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i.i18, align 4
  %sub.i.i19 = add i32 %15, -1
  %shr.i.i20 = lshr i32 %sub.i.i19, 3
  %add.i.i21 = add nuw nsw i32 %shr.i.i20, 1
  %device.i.i22 = getelementptr inbounds %struct.hid_report, ptr %report.018.i17, i32 0, i32 8
  %16 = ptrtoint ptr %device.i.i22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device.i.i22, align 4
  %type.i.i23 = getelementptr inbounds %struct.hid_report, ptr %report.018.i17, i32 0, i32 3
  %18 = ptrtoint ptr %type.i.i23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type.i.i23, align 4
  %arrayidx.i.i24 = getelementptr %struct.hid_device, ptr %17, i32 0, i32 15, i32 %19
  %20 = ptrtoint ptr %arrayidx.i.i24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i24, align 4
  %add1.i.i25 = add i32 %add.i.i21, %21
  %22 = tail call i32 @llvm.umax.i32(i32 %bufsize.3, i32 %add1.i.i25)
  %23 = ptrtoint ptr %report.018.i17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %report.0.i29 = load ptr, ptr %report.018.i17, align 4
  %cmp.not.i30 = icmp eq ptr %report.0.i29, %report_list.i14
  br i1 %cmp.not.i30, label %for.body.i27.gb_hid_find_max_report.exit32_crit_edge, label %for.body.i27.for.body.i27_crit_edge

for.body.i27.for.body.i27_crit_edge:              ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i27

for.body.i27.gb_hid_find_max_report.exit32_crit_edge: ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_hid_find_max_report.exit32

gb_hid_find_max_report.exit32:                    ; preds = %for.body.i27.gb_hid_find_max_report.exit32_crit_edge, %gb_hid_find_max_report.exit.gb_hid_find_max_report.exit32_crit_edge
  %bufsize.5 = phi i32 [ %bufsize.2, %gb_hid_find_max_report.exit.gb_hid_find_max_report.exit32_crit_edge ], [ %22, %for.body.i27.gb_hid_find_max_report.exit32_crit_edge ]
  %report_list.i33 = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 2, i32 1
  %24 = ptrtoint ptr %report_list.i33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %report.016.i34 = load ptr, ptr %report_list.i33, align 4
  %cmp.not17.i35 = icmp eq ptr %report.016.i34, %report_list.i33
  br i1 %cmp.not17.i35, label %gb_hid_find_max_report.exit32.gb_hid_find_max_report.exit51_crit_edge, label %gb_hid_find_max_report.exit32.for.body.i46_crit_edge

gb_hid_find_max_report.exit32.for.body.i46_crit_edge: ; preds = %gb_hid_find_max_report.exit32
  br label %for.body.i46

gb_hid_find_max_report.exit32.gb_hid_find_max_report.exit51_crit_edge: ; preds = %gb_hid_find_max_report.exit32
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_hid_find_max_report.exit51

for.body.i46:                                     ; preds = %for.body.i46.for.body.i46_crit_edge, %gb_hid_find_max_report.exit32.for.body.i46_crit_edge
  %bufsize.6 = phi i32 [ %33, %for.body.i46.for.body.i46_crit_edge ], [ %bufsize.5, %gb_hid_find_max_report.exit32.for.body.i46_crit_edge ]
  %report.018.i36 = phi ptr [ %report.0.i48, %for.body.i46.for.body.i46_crit_edge ], [ %report.016.i34, %gb_hid_find_max_report.exit32.for.body.i46_crit_edge ]
  %size.i.i37 = getelementptr inbounds %struct.hid_report, ptr %report.018.i36, i32 0, i32 7
  %25 = ptrtoint ptr %size.i.i37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size.i.i37, align 4
  %sub.i.i38 = add i32 %26, -1
  %shr.i.i39 = lshr i32 %sub.i.i38, 3
  %add.i.i40 = add nuw nsw i32 %shr.i.i39, 1
  %device.i.i41 = getelementptr inbounds %struct.hid_report, ptr %report.018.i36, i32 0, i32 8
  %27 = ptrtoint ptr %device.i.i41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device.i.i41, align 4
  %type.i.i42 = getelementptr inbounds %struct.hid_report, ptr %report.018.i36, i32 0, i32 3
  %29 = ptrtoint ptr %type.i.i42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type.i.i42, align 4
  %arrayidx.i.i43 = getelementptr %struct.hid_device, ptr %28, i32 0, i32 15, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i43, align 4
  %add1.i.i44 = add i32 %add.i.i40, %32
  %33 = tail call i32 @llvm.umax.i32(i32 %bufsize.6, i32 %add1.i.i44)
  %34 = ptrtoint ptr %report.018.i36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %report.0.i48 = load ptr, ptr %report.018.i36, align 4
  %cmp.not.i49 = icmp eq ptr %report.0.i48, %report_list.i33
  br i1 %cmp.not.i49, label %for.body.i46.gb_hid_find_max_report.exit51_crit_edge, label %for.body.i46.for.body.i46_crit_edge

for.body.i46.for.body.i46_crit_edge:              ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i46

for.body.i46.gb_hid_find_max_report.exit51_crit_edge: ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_hid_find_max_report.exit51

gb_hid_find_max_report.exit51:                    ; preds = %for.body.i46.gb_hid_find_max_report.exit51_crit_edge, %gb_hid_find_max_report.exit32.gb_hid_find_max_report.exit51_crit_edge
  %bufsize.8 = phi i32 [ %bufsize.5, %gb_hid_find_max_report.exit32.gb_hid_find_max_report.exit51_crit_edge ], [ %33, %for.body.i46.gb_hid_find_max_report.exit51_crit_edge ]
  %35 = tail call i32 @llvm.umin.i32(i32 %bufsize.8, i32 16384)
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %35, i32 noundef 3520) #15
  %inbuf.i = getelementptr inbounds %struct.gb_hid, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call9.i.i.i, ptr %inbuf.i, align 4
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %gb_hid_find_max_report.exit51.cleanup_crit_edge, label %if.end2

gb_hid_find_max_report.exit51.cleanup_crit_edge:  ; preds = %gb_hid_find_max_report.exit51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %gb_hid_find_max_report.exit51
  %bufsize2.i = getelementptr inbounds %struct.gb_hid, ptr %1, i32 0, i32 5
  %37 = ptrtoint ptr %bufsize2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %bufsize2.i, align 4
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 34
  %38 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %quirks, align 8
  %and = and i32 %39, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then4, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %if.end2
  %hid1.i = getelementptr inbounds %struct.gb_hid, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %hid1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hid1.i, align 4
  %report_list.i52 = getelementptr inbounds %struct.hid_device, ptr %41, i32 0, i32 15, i32 0, i32 1
  %42 = ptrtoint ptr %report_list.i52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %report.060.i = load ptr, ptr %report_list.i52, align 4
  %cmp.not61.i = icmp eq ptr %report.060.i, %report_list.i52
  br i1 %cmp.not61.i, label %if.then4.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then4.for.end.i_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then4
  %inbuf.i.i = getelementptr inbounds %struct.gb_hid, ptr %1, i32 0, i32 6
  br label %for.body.i53

for.body.i53:                                     ; preds = %gb_hid_init_report.exit.i.for.body.i53_crit_edge, %for.body.lr.ph.i
  %report.062.i = phi ptr [ %report.060.i, %for.body.lr.ph.i ], [ %report.0.i54, %gb_hid_init_report.exit.i.for.body.i53_crit_edge ]
  %size.i.i.i = getelementptr inbounds %struct.hid_report, ptr %report.062.i, i32 0, i32 7
  %43 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size.i.i.i, align 4
  %sub.i.i.i = add i32 %44, -1
  %shr.i.i.i = lshr i32 %sub.i.i.i, 3
  %add.i.i.i = add nuw nsw i32 %shr.i.i.i, 1
  %device.i.i.i = getelementptr inbounds %struct.hid_report, ptr %report.062.i, i32 0, i32 8
  %45 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device.i.i.i, align 4
  %type.i.i.i = getelementptr inbounds %struct.hid_report, ptr %report.062.i, i32 0, i32 3
  %47 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %type.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.hid_device, ptr %46, i32 0, i32 15, i32 %48
  %49 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i.i, align 4
  %add1.i.i.i = add i32 %add.i.i.i, %50
  %conv.i.i = trunc i32 %48 to i8
  %id.i.i = getelementptr inbounds %struct.hid_report, ptr %report.062.i, i32 0, i32 2
  %51 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id.i.i, align 4
  %conv1.i.i = trunc i32 %52 to i8
  %53 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %inbuf.i.i, align 4
  %call2.i.i = tail call fastcc i32 @gb_hid_get_report(ptr noundef %1, i8 noundef zeroext %conv.i.i, i8 noundef zeroext %conv1.i.i, ptr noundef %54, i32 noundef %add1.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i53.gb_hid_init_report.exit.i_crit_edge

for.body.i53.gb_hid_init_report.exit.i_crit_edge: ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_hid_init_report.exit.i

if.end.i.i:                                       ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %hid1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hid1.i, align 4
  %57 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %type.i.i.i, align 4
  %59 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %inbuf.i.i, align 4
  %call5.i.i = tail call i32 @hid_report_raw_event(ptr noundef %56, i32 noundef %58, ptr noundef %60, i32 noundef %add1.i.i.i, i32 noundef 1) #10
  br label %gb_hid_init_report.exit.i

gb_hid_init_report.exit.i:                        ; preds = %if.end.i.i, %for.body.i53.gb_hid_init_report.exit.i_crit_edge
  %61 = ptrtoint ptr %report.062.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %report.0.i54 = load ptr, ptr %report.062.i, align 4
  %cmp.not.i55 = icmp eq ptr %report.0.i54, %report_list.i52
  br i1 %cmp.not.i55, label %gb_hid_init_report.exit.i.for.end.i_crit_edge, label %gb_hid_init_report.exit.i.for.body.i53_crit_edge

gb_hid_init_report.exit.i.for.body.i53_crit_edge: ; preds = %gb_hid_init_report.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i53

gb_hid_init_report.exit.i.for.end.i_crit_edge:    ; preds = %gb_hid_init_report.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %gb_hid_init_report.exit.i.for.end.i_crit_edge, %if.then4.for.end.i_crit_edge
  %report_list13.i = getelementptr %struct.hid_device, ptr %41, i32 0, i32 15, i32 2, i32 1
  %62 = ptrtoint ptr %report_list13.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %report.163.i = load ptr, ptr %report_list13.i, align 4
  %cmp22.not64.i = icmp eq ptr %report.163.i, %report_list13.i
  br i1 %cmp22.not64.i, label %for.end.i.cleanup_crit_edge, label %for.body24.lr.ph.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body24.lr.ph.i:                               ; preds = %for.end.i
  %inbuf.i53.i = getelementptr inbounds %struct.gb_hid, ptr %1, i32 0, i32 6
  br label %for.body24.i

for.body24.i:                                     ; preds = %gb_hid_init_report.exit59.i.for.body24.i_crit_edge, %for.body24.lr.ph.i
  %report.165.i = phi ptr [ %report.163.i, %for.body24.lr.ph.i ], [ %report.1.i, %gb_hid_init_report.exit59.i.for.body24.i_crit_edge ]
  %size.i.i42.i = getelementptr inbounds %struct.hid_report, ptr %report.165.i, i32 0, i32 7
  %63 = ptrtoint ptr %size.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size.i.i42.i, align 4
  %sub.i.i43.i = add i32 %64, -1
  %shr.i.i44.i = lshr i32 %sub.i.i43.i, 3
  %add.i.i45.i = add nuw nsw i32 %shr.i.i44.i, 1
  %device.i.i46.i = getelementptr inbounds %struct.hid_report, ptr %report.165.i, i32 0, i32 8
  %65 = ptrtoint ptr %device.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device.i.i46.i, align 4
  %type.i.i47.i = getelementptr inbounds %struct.hid_report, ptr %report.165.i, i32 0, i32 3
  %67 = ptrtoint ptr %type.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %type.i.i47.i, align 4
  %arrayidx.i.i48.i = getelementptr %struct.hid_device, ptr %66, i32 0, i32 15, i32 %68
  %69 = ptrtoint ptr %arrayidx.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i.i48.i, align 4
  %add1.i.i49.i = add i32 %add.i.i45.i, %70
  %conv.i50.i = trunc i32 %68 to i8
  %id.i51.i = getelementptr inbounds %struct.hid_report, ptr %report.165.i, i32 0, i32 2
  %71 = ptrtoint ptr %id.i51.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %id.i51.i, align 4
  %conv1.i52.i = trunc i32 %72 to i8
  %73 = ptrtoint ptr %inbuf.i53.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %inbuf.i53.i, align 4
  %call2.i54.i = tail call fastcc i32 @gb_hid_get_report(ptr noundef %1, i8 noundef zeroext %conv.i50.i, i8 noundef zeroext %conv1.i52.i, ptr noundef %74, i32 noundef %add1.i.i49.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i54.i)
  %tobool.not.i55.i = icmp eq i32 %call2.i54.i, 0
  br i1 %tobool.not.i55.i, label %if.end.i58.i, label %for.body24.i.gb_hid_init_report.exit59.i_crit_edge

for.body24.i.gb_hid_init_report.exit59.i_crit_edge: ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_hid_init_report.exit59.i

if.end.i58.i:                                     ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %hid1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hid1.i, align 4
  %77 = ptrtoint ptr %type.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %type.i.i47.i, align 4
  %79 = ptrtoint ptr %inbuf.i53.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %inbuf.i53.i, align 4
  %call5.i57.i = tail call i32 @hid_report_raw_event(ptr noundef %76, i32 noundef %78, ptr noundef %80, i32 noundef %add1.i.i49.i, i32 noundef 1) #10
  br label %gb_hid_init_report.exit59.i

gb_hid_init_report.exit59.i:                      ; preds = %if.end.i58.i, %for.body24.i.gb_hid_init_report.exit59.i_crit_edge
  %81 = ptrtoint ptr %report.165.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %report.1.i = load ptr, ptr %report.165.i, align 4
  %cmp22.not.i = icmp eq ptr %report.1.i, %report_list13.i
  br i1 %cmp22.not.i, label %gb_hid_init_report.exit59.i.cleanup_crit_edge, label %gb_hid_init_report.exit59.i.for.body24.i_crit_edge

gb_hid_init_report.exit59.i.for.body24.i_crit_edge: ; preds = %gb_hid_init_report.exit59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body24.i

gb_hid_init_report.exit59.i.cleanup_crit_edge:    ; preds = %gb_hid_init_report.exit59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %gb_hid_init_report.exit59.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %gb_hid_find_max_report.exit51.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2.cleanup_crit_edge ], [ -12, %gb_hid_find_max_report.exit51.cleanup_crit_edge ], [ 0, %for.end.i.cleanup_crit_edge ], [ 0, %gb_hid_init_report.exit59.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_hid_stop(ptr nocapture noundef readonly %hid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %inbuf.i = getelementptr inbounds %struct.gb_hid, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inbuf.i, align 4
  tail call void @kfree(ptr noundef %3) #10
  %4 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %inbuf.i, align 4
  %bufsize.i = getelementptr inbounds %struct.gb_hid, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bufsize.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_hid_open(ptr nocapture noundef readonly %hid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %call = tail call fastcc i32 @gb_hid_set_power(ptr noundef %1, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.gb_hid, ptr %1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_hid_close(ptr nocapture noundef readonly %hid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %flags = getelementptr inbounds %struct.gb_hid, ptr %1, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #10
  %call = tail call fastcc i32 @gb_hid_set_power(ptr noundef %1, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %connection = getelementptr inbounds %struct.gb_hid, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection, align 4
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bundle, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_hid_power(ptr nocapture noundef readonly %hid, i32 noundef %lvl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %2 = zext i32 %lvl to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %lvl, label %entry.cleanup_crit_edge [
    i32 32, label %entry.cleanup.sink.split_crit_edge
    i32 2, label %sw.bb1
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb1, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 5, %sw.bb1 ], [ 4, %entry.cleanup.sink.split_crit_edge ]
  %call2 = tail call fastcc i32 @gb_hid_set_power(ptr noundef %1, i32 noundef %.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call2, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_hid_parse(ptr noundef %hid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %wReportDescLength = getelementptr inbounds %struct.gb_hid, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %wReportDescLength to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %wReportDescLength, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %4)
  %cmp = icmp ugt i16 %4, 4096
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %do.body, label %if.end8.i.i

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %5 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, i32 noundef %conv) #14
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 3520) #15
  %tobool9.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool9.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end11

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end8.i.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i49 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i49, label %do.end.i.i, label %gb_hid_get_report_desc.exit

do.end.i.i:                                       ; preds = %if.end11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef %call.i.i.i) #14
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #10, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end.i.i.do.end17_crit_edge, label %do.end11.i.i.i.i.i.i

do.end.i.i.do.end17_crit_edge:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

do.end11.i.i.i.i.i.i:                             ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  br label %do.end17

gb_hid_get_report_desc.exit:                      ; preds = %if.end11
  %connection.i = getelementptr inbounds %struct.gb_hid, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %connection.i, align 4
  %11 = ptrtoint ptr %wReportDescLength to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %wReportDescLength, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #10
  %conv.i = zext i16 %13 to i32
  %call.i.i = tail call i32 @gb_operation_sync_timeout(ptr noundef %10, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call9.i.i, i32 noundef %conv.i, i32 noundef 1000) #10
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i.i9.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 22
  %16 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i.i9.i, ptr %last_busy.i.i.i, align 8
  %call.i1.i.i = tail call i32 @__pm_runtime_suspend(ptr noundef %15, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool13.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool13.not, label %if.end18, label %gb_hid_get_report_desc.exit.do.end17_crit_edge

gb_hid_get_report_desc.exit.do.end17_crit_edge:   ; preds = %gb_hid_get_report_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

do.end17:                                         ; preds = %gb_hid_get_report_desc.exit.do.end17_crit_edge, %do.end11.i.i.i.i.i.i, %do.end.i.i.do.end17_crit_edge
  %retval.0.i56 = phi i32 [ %call.i.i, %gb_hid_get_report_desc.exit.do.end17_crit_edge ], [ %call.i.i.i, %do.end.i.i.do.end17_crit_edge ], [ %call.i.i.i, %do.end11.i.i.i.i.i.i ]
  %dev = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #14
  br label %free_rdesc

if.end18:                                         ; preds = %gb_hid_get_report_desc.exit
  %call19 = tail call i32 @hid_parse_report(ptr noundef %hid, ptr noundef nonnull %call9.i.i, i32 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.free_rdesc_crit_edge, label %do.body22

if.end18.free_rdesc_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_rdesc

do.body22:                                        ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %17 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool23.not = icmp eq i32 %17, 0
  br i1 %tobool23.not, label %do.body22.free_rdesc_crit_edge, label %do.end27

do.body22.free_rdesc_crit_edge:                   ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_rdesc

do.end27:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.4) #14
  br label %free_rdesc

free_rdesc:                                       ; preds = %do.end27, %do.body22.free_rdesc_crit_edge, %if.end18.free_rdesc_crit_edge, %do.end17
  %ret.0 = phi i32 [ %retval.0.i56, %do.end17 ], [ %call19, %do.end27 ], [ %call19, %do.body22.free_rdesc_crit_edge ], [ 0, %if.end18.free_rdesc_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %free_rdesc, %if.end8.i.i.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free_rdesc ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_hid_raw_request(ptr nocapture noundef readonly %hid, i8 noundef zeroext %reportnum, ptr noundef %buf, i32 noundef %len, i8 noundef zeroext %rtype, i32 noundef %reqtype) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reqtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %reqtype, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 9, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rtype)
  %cmp.i = icmp eq i8 %rtype, 1
  br i1 %cmp.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 8
  %call.i = tail call fastcc i32 @gb_hid_get_report(ptr noundef %2, i8 noundef zeroext %rtype, i8 noundef zeroext %reportnum, ptr noundef %buf, i32 noundef %len) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %len, i32 %call.i
  br label %return

sw.bb1:                                           ; preds = %entry
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %reportnum)
  %cmp.not = icmp eq i8 %4, %reportnum
  br i1 %cmp.not, label %if.end, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %sw.bb1
  %driver_data.i11 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %5 = ptrtoint ptr %driver_data.i11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i11, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rtype)
  %cmp.i12 = icmp eq i8 %rtype, 0
  br i1 %cmp.i12, label %if.end.return_crit_edge, label %if.end.i14

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i14:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %reportnum)
  %tobool.not.i13 = icmp ne i8 %reportnum, 0
  %buf.addr.0.idx.i = zext i1 %tobool.not.i13 to i32
  %buf.addr.0.i = getelementptr i8, ptr %buf, i32 %buf.addr.0.idx.i
  %dec.i = sext i1 %tobool.not.i13 to i32
  %len.addr.0.i = add i32 %dec.i, %len
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call.i.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i

do.end.i.i.i:                                     ; preds = %if.end.i14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.10, i32 noundef %call.i.i.i.i) #14
  %usage_count.i.i.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 12, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i.i, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i.i, ptr %usage_count.i.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i.i) #10, !srcloc !69
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %do.end.i.i.i.return_crit_edge, label %do.end11.i.i.i.i.i.i.i

do.end.i.i.i.return_crit_edge:                    ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end11.i.i.i.i.i.i.i:                           ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  br label %return

if.end.i.i:                                       ; preds = %if.end.i14
  %sub.i.i = add i32 %len.addr.0.i, 1
  %connection.i.i = getelementptr inbounds %struct.gb_hid, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %connection.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %connection.i.i, align 4
  %call.i.i.i = tail call ptr @gb_operation_create_flags(ptr noundef %11, i8 noundef zeroext 7, i32 noundef %sub.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #10
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.end6.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %6, align 4
  %call.i.i36.i.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 22
  %14 = ptrtoint ptr %last_busy.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store volatile i64 %call.i.i36.i.i, ptr %last_busy.i.i.i.i, align 8
  %call.i1.i.i.i = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #10
  br label %return

if.end6.i.i:                                      ; preds = %if.end.i.i
  %request7.i.i = getelementptr inbounds %struct.gb_operation, ptr %call.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %request7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %request7.i.i, align 4
  %payload.i.i = getelementptr inbounds %struct.gb_message, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %payload.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %rtype, ptr %18, align 1
  %report_id9.i.i = getelementptr inbounds %struct.gb_hid_set_report_request, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %report_id9.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %reportnum, ptr %report_id9.i.i, align 1
  %report.i.i = getelementptr inbounds %struct.gb_hid_set_report_request, ptr %18, i32 0, i32 2
  %21 = call ptr @memcpy(ptr %report.i.i, ptr %buf.addr.0.i, i32 %len.addr.0.i)
  %call.i37.i.i = tail call i32 @gb_operation_request_send_sync_timeout(ptr noundef nonnull %call.i.i.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i.i)
  %tobool11.not.i.i = icmp eq i32 %call.i37.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end6.i.i.if.end15.i.i_crit_edge, label %do.end.i.i

if.end6.i.i.if.end15.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i

do.end.i.i:                                       ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i.i.i, align 4
  %bundle14.i.i = getelementptr inbounds %struct.gb_connection, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %bundle14.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bundle14.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.23, i32 noundef %call.i37.i.i) #14
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %do.end.i.i, %if.end6.i.i.if.end15.i.i_crit_edge
  tail call void @gb_operation_put(ptr noundef nonnull %call.i.i.i) #10
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %6, align 4
  %call.i.i38.i.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i39.i.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 12, i32 22
  %28 = ptrtoint ptr %last_busy.i.i39.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store volatile i64 %call.i.i38.i.i, ptr %last_busy.i.i39.i.i, align 8
  %call.i1.i40.i.i = tail call i32 @__pm_runtime_suspend(ptr noundef %27, i32 noundef 13) #10
  br label %return

return:                                           ; preds = %if.end15.i.i, %if.then3.i.i, %do.end11.i.i.i.i.i.i.i, %do.end.i.i.i.return_crit_edge, %if.end.return_crit_edge, %sw.bb1.return_crit_edge, %if.end.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb1.return_crit_edge ], [ -5, %entry.return_crit_edge ], [ %spec.select.i, %if.end.i ], [ -22, %sw.bb.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ 0, %do.end.i.i.i.return_crit_edge ], [ 0, %do.end11.i.i.i.i.i.i.i ], [ 0, %if.then3.i.i ], [ 0, %if.end15.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_hid_get_report(ptr nocapture noundef readonly %ghid, i8 noundef zeroext %report_type, i8 noundef zeroext %report_id, ptr noundef %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %request = alloca %struct.gb_hid_get_report_request, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %request) #10
  %0 = ptrtoint ptr %ghid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ghid, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end

do.end.i:                                         ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %call.i.i) #14
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !69
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = getelementptr inbounds %struct.gb_hid_get_report_request, ptr %request, i32 0, i32 1
  %4 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %report_type, ptr %request, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %report_id, ptr %3, align 1
  %connection = getelementptr inbounds %struct.gb_hid, ptr %ghid, i32 0, i32 1
  %6 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %7, i32 noundef 6, ptr noundef nonnull %request, i32 noundef 2, ptr noundef %buf, i32 noundef %len, i32 noundef 1000) #10
  %8 = ptrtoint ptr %ghid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ghid, align 4
  %call.i.i11 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 22
  %10 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store volatile i64 %call.i.i11, ptr %last_busy.i.i, align 8
  %call.i1.i = call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end11.i.i.i.i.i, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call.i.i, %do.end.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %request) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_report_raw_event(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_hid_set_power(ptr nocapture noundef readonly %ghid, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ghid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ghid, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end

do.end.i:                                         ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %call.i.i) #14
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !69
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %connection = getelementptr inbounds %struct.gb_hid, ptr %ghid, i32 0, i32 1
  %3 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %connection, align 4
  %call.i = tail call i32 @gb_operation_sync_timeout(ptr noundef %4, i32 noundef %type, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 1000) #10
  %5 = ptrtoint ptr %ghid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ghid, align 4
  %call.i.i8 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 12, i32 22
  %7 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store volatile i64 %call.i.i8, ptr %last_busy.i.i, align 8
  %call.i1.i = tail call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end11.i.i.i.i.i, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call.i.i, %do.end.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_parse_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_operation_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_operation_create_flags(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_request_send_sync_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_gb_hid__229_517_gb_hid_driver_init6, !1, !"__initcall__kmod_gb_hid__229_517_gb_hid_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/hid.c", i32 517, i32 1}
!2 = !{ptr @__exitcall_gb_hid_driver_exit, !1, !"__exitcall_gb_hid_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file230, !4, !"__UNIQUE_ID_file230", i1 false, i1 false}
!4 = !{!"../drivers/staging/greybus/hid.c", i32 519, i32 1}
!5 = !{ptr @__UNIQUE_ID_license231, !4, !"__UNIQUE_ID_license231", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/staging/greybus/hid.c", i32 512, i32 11}
!9 = !{ptr @gb_hid_driver, !10, !"gb_hid_driver", i1 false, i1 false}
!10 = !{!"../drivers/staging/greybus/hid.c", i32 511, i32 30}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/greybus/hid.c", i32 472, i32 3}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @gb_hid_probe._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @gb_hid_probe._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/greybus/hid.c", i32 140, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @gb_hid_request_handler._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @gb_hid_request_handler._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/greybus/hid.c", i32 414, i32 41}
!26 = !{ptr @gb_hid_ll_driver, !27, !"gb_hid_ll_driver", i1 false, i1 false}
!27 = !{!"../drivers/staging/greybus/hid.c", i32 384, i32 29}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/greybus/bundle.h", i32 53, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @gb_pm_runtime_get_sync._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @gb_pm_runtime_get_sync._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/greybus/hid.c", i32 365, i32 3}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @gb_hid_close._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @gb_hid_close._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/greybus/hid.c", i32 288, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @gb_hid_parse._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @gb_hid_parse._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/greybus/hid.c", i32 298, i32 3}
!46 = !{ptr @gb_hid_parse._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @gb_hid_parse._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/greybus/hid.c", i32 304, i32 3}
!50 = !{ptr @gb_hid_parse._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @gb_hid_parse._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/greybus/hid.c", i32 121, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @gb_hid_set_report._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @gb_hid_set_report._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @gb_hid_id_table, !58, !"gb_hid_id_table", i1 false, i1 false}
!58 = !{!"../drivers/staging/greybus/hid.c", i32 505, i32 39}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2148171804}
!69 = !{i64 656627, i64 656652, i64 656674, i64 656690, i64 656702, i64 656722, i64 656746, i64 656762, i64 656774}
!70 = !{i64 2148171992}
!71 = !{i64 2148172385, i64 2148172411, i64 2148172440, i64 2148172474, i64 2148172505, i64 2148172528}
