; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-plantronics.c_pt.bc'
source_filename = "../drivers/hid/hid-plantronics.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.hid_collection = type { i32, i32, i32, i32 }
%struct.plt_drv_data = type { i32, i32, i32 }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }

@__initcall__kmod_hid_plantronics__226_223_plantronics_driver_init6 = internal global ptr @plantronics_driver_init, section ".initcall6.init", align 4
@plantronics_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @plantronics_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @plantronics_probe, ptr null, ptr null, ptr null, ptr @plantronics_usages, ptr @plantronics_event, ptr null, ptr null, ptr @plantronics_input_mapping, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_plantronics_driver_exit = internal global ptr @plantronics_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author227 = internal constant [57 x i8] c"hid_plantronics.author=JD Cole <jd.cole@plantronics.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author228 = internal constant [65 x i8] c"hid_plantronics.author=Terry Junge <terry.junge@plantronics.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [55 x i8] c"hid_plantronics.description=Plantronics USB HID Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [49 x i8] c"hid_plantronics.file=drivers/hid/hid-plantronics\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [28 x i8] c"hid_plantronics.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hid_plantronics\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"plantronics\00", [20 x i8] zeroinitializer }, align 32
@plantronics_devices = internal constant { [3 x %struct.hid_device_id], [48 x i8] } { [3 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1151, i32 49238, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 1151, i32 -1, i32 0 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@plantronics_usages = internal constant { [3 x %struct.hid_usage_id], [60 x i8] } { [3 x %struct.hid_usage_id] [%struct.hid_usage_id { i32 786665, i32 1, i32 -1 }, %struct.hid_usage_id { i32 786666, i32 1, i32 -1 }, %struct.hid_usage_id { i32 -2, i32 -2, i32 -2 }], [60 x i8] zeroinitializer }, align 32
@plantronics_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 181, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"plantronics_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/hid/hid-plantronics.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@plantronics_probe._entry_ptr = internal global ptr @plantronics_probe._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@plantronics_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 194, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@plantronics_probe._entry_ptr.9 = internal global ptr @plantronics_probe._entry.7, section ".printk_index", align 4
@plantronics_device_type.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.4, ptr @.str.11, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"plantronics_device_type\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"plt_type decoded as: %08lx\0A\00", [36 x i8] zeroinitializer }, align 32
@plantronics_input_mapping.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.4, ptr @.str.13, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"plantronics_input_mapping\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"usage: %08x (appl: %08x) - defaulted\0A\00", [58 x i8] zeroinitializer }, align 32
@plantronics_input_mapping.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.4, ptr @.str.14, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"usage: %08x (appl: %08x) - mapped to key %d\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@hid_map_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.hid_map_usage, ptr @.str.17, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_map_usage._entry_ptr = internal global ptr @hid_map_usage._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4288675840, i64 4288806912]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 4288676017, i64 4288676018, i64 4288807089, i64 4288807090]
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"plantronics_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 215, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 223, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 216, i32 10 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"plantronics_devices\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 200, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"plantronics_usages\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 209, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 181, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 194, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 165, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 109, i32 2 }
@___asan_gen_.72 = private constant [33 x i8] c"../drivers/hid/hid-plantronics.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 115, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1036, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_plantronics_driver_exit, ptr @__initcall__kmod_hid_plantronics__226_223_plantronics_driver_init6, ptr @hid_map_usage._entry, ptr @hid_map_usage._entry_ptr, ptr @plantronics_driver_exit, ptr @plantronics_probe._entry, ptr @plantronics_probe._entry.7, ptr @plantronics_probe._entry_ptr, ptr @plantronics_probe._entry_ptr.9, ptr @plantronics_driver, ptr @.str, ptr @.str.1, ptr @plantronics_devices, ptr @plantronics_usages, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plantronics_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plantronics_devices to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plantronics_usages to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plantronics_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plantronics_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @plantronics_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @plantronics_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @plantronics_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hid_unregister_driver(ptr noundef nonnull @plantronics_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plantronics_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i29 = tail call i32 @hid_open_report(ptr noundef %hdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool2.not = icmp eq i32 %call.i29, 0
  br i1 %tobool2.not, label %if.end5, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %product.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %0 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %product.i, align 8
  %2 = add i32 %1, -1043
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %3 = icmp ult i32 %2, 6
  br i1 %3, label %if.end5.do.body.i_crit_edge, label %for.cond.preheader.i

if.end5.do.body.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

for.cond.preheader.i:                             ; preds = %if.end5
  %maxcollection.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 6
  %4 = ptrtoint ptr %maxcollection.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxcollection.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp233.not.i = icmp eq i32 %5, 0
  br i1 %cmp233.not.i, label %for.cond.preheader.i.do.body.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.do.body.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %collection.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 4
  %6 = ptrtoint ptr %collection.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %collection.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.035.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %plt_type.034.i = phi i32 [ %1, %for.body.lr.ph.i ], [ %plt_type.1.i, %for.inc.i.for.body.i_crit_edge ]
  %usage.i = getelementptr %struct.hid_collection, ptr %7, i32 %i.035.i, i32 2
  %8 = ptrtoint ptr %usage.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usage.i, align 4
  %and.i = and i32 %9, -65536
  %10 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %for.body.i.for.inc.i_crit_edge [
    i32 -6160384, label %for.body.i.do.body.i_crit_edge
    i32 -6291456, label %if.then10.i
  ]

for.body.i.do.body.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then10.i, %for.body.i.for.inc.i_crit_edge
  %plt_type.1.i = phi i32 [ %9, %if.then10.i ], [ %plt_type.034.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.do.body.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %for.body.i.do.body.i_crit_edge, %for.cond.preheader.i.do.body.i_crit_edge, %if.end5.do.body.i_crit_edge
  %plt_type.2.i = phi i32 [ %1, %if.end5.do.body.i_crit_edge ], [ %1, %for.cond.preheader.i.do.body.i_crit_edge ], [ %9, %for.body.i.do.body.i_crit_edge ], [ %plt_type.1.i, %for.inc.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @plantronics_device_type.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@plantronics_probe, %if.then17.i)) #4
          to label %plantronics_device_type.exit [label %if.then17.i], !srcloc !61

if.then17.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @plantronics_device_type.__UNIQUE_ID_ddebug225, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %plt_type.2.i) #4
  br label %plantronics_device_type.exit

plantronics_device_type.exit:                     ; preds = %if.then17.i, %do.body.i
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %plt_type.2.i, ptr %call.i, align 4
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %12 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %driver_data, align 4
  %quirks = getelementptr inbounds %struct.plt_drv_data, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %quirks, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %15, -1
  %last_volume_key_ts = getelementptr inbounds %struct.plt_drv_data, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %last_volume_key_ts to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub, ptr %last_volume_key_ts, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call8 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 63) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %plantronics_device_type.exit.cleanup_crit_edge, label %plantronics_device_type.exit.cleanup.sink.split_crit_edge

plantronics_device_type.exit.cleanup.sink.split_crit_edge: ; preds = %plantronics_device_type.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

plantronics_device_type.exit.cleanup_crit_edge:   ; preds = %plantronics_device_type.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %plantronics_device_type.exit.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.2.sink = phi ptr [ @.str.2, %if.end.cleanup.sink.split_crit_edge ], [ @.str.8, %plantronics_device_type.exit.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i29, %if.end.cleanup.sink.split_crit_edge ], [ %call8, %plantronics_device_type.exit.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.2.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %plantronics_device_type.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %plantronics_device_type.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plantronics_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %field, ptr nocapture noundef readnone %usage, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %quirks = getelementptr inbounds %struct.plt_drv_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool1.not = icmp eq i32 %value, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup9_crit_edge, label %if.end

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup9

if.end:                                           ; preds = %entry
  %last_volume_key_ts = getelementptr inbounds %struct.plt_drv_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %last_volume_key_ts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_volume_key_ts, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %6, %5
  %call3 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call3)
  %cmp = icmp ult i32 %call3, 6
  br i1 %cmp, label %if.end.cleanup9_crit_edge, label %cleanup

if.end.cleanup9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup9

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %last_volume_key_ts to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %last_volume_key_ts, align 4
  br label %cleanup9

cleanup9:                                         ; preds = %cleanup, %if.end.cleanup9_crit_edge, %entry.cleanup9_crit_edge
  %retval.1 = phi i32 [ 0, %cleanup ], [ 0, %entry.cleanup9_crit_edge ], [ 1, %if.end.cleanup9_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plantronics_input_mapping(ptr noundef %hdev, ptr nocapture noundef readonly %hi, ptr nocapture noundef readonly %field, ptr nocapture noundef %usage, ptr nocapture noundef writeonly %bit, ptr nocapture noundef writeonly %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %application = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 2
  %4 = ptrtoint ptr %application to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %application, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65540, i32 %5)
  %cmp = icmp eq i32 %5, 65540
  br i1 %cmp, label %entry.do.body_crit_edge, label %if.end

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %3)
  %tobool.not = icmp ult i32 %3, 65536
  br i1 %tobool.not, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 55904, i32 %3)
  %cond = icmp eq i32 %3, 55904
  call void @__sanitizer_cov_trace_const_cmp4(i32 786433, i32 %5)
  %cmp3 = icmp eq i32 %5, 786433
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.then1
  br i1 %cmp3, label %land.lhs.true, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb
  %6 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usage, align 4
  %and4 = and i32 %7, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 786432, i32 %and4)
  %cmp5 = icmp eq i32 %and4, 786432
  br i1 %cmp5, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

sw.default:                                       ; preds = %if.then1
  br i1 %cmp3, label %land.lhs.true10, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true10:                                  ; preds = %sw.default
  %8 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usage, align 4
  %and12 = and i32 %9, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 786432, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 786432
  br i1 %cmp13, label %land.lhs.true10.do.body_crit_edge, label %land.lhs.true10.cleanup_crit_edge

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true10.do.body_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.else:                                          ; preds = %if.end
  %trunc = trunc i32 %3 to i16
  %10 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %trunc, label %if.then21 [
    i16 5, label %if.else.if.else30_crit_edge
    i16 2, label %if.else.if.else30_crit_edge95
    i16 1, label %if.else.if.else30_crit_edge96
    i16 0, label %if.else.if.else30_crit_edge97
  ]

if.else.if.else30_crit_edge97:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else30

if.else.if.else30_crit_edge96:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else30

if.else.if.else30_crit_edge95:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else30

if.else.if.else30_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else30

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 786433, i32 %5)
  %cmp23 = icmp eq i32 %5, 786433
  br i1 %cmp23, label %land.lhs.true24, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true24:                                  ; preds = %if.then21
  %11 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %usage, align 4
  %and26 = and i32 %12, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 786432, i32 %and26)
  %cmp27 = icmp eq i32 %and26, 786432
  br i1 %cmp27, label %land.lhs.true24.do.body_crit_edge, label %land.lhs.true24.cleanup_crit_edge

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true24.do.body_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.else30:                                        ; preds = %if.else.if.else30_crit_edge, %if.else.if.else30_crit_edge95, %if.else.if.else30_crit_edge96, %if.else.if.else30_crit_edge97
  %xor = xor i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %xor)
  %tobool33.not = icmp ult i32 %xor, 65536
  br i1 %tobool33.not, label %if.then34, label %if.else30.cleanup_crit_edge

if.else30.cleanup_crit_edge:                      ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then34:                                        ; preds = %if.else30
  %13 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usage, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %14, label %if.then34.cleanup_crit_edge [
    i32 -6291279, label %if.then34.mapped_crit_edge
    i32 -6160207, label %if.then34.mapped_crit_edge98
    i32 -6291278, label %if.then34.sw.bb37_crit_edge
    i32 -6160206, label %if.then34.sw.bb37_crit_edge99
  ]

if.then34.sw.bb37_crit_edge99:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb37

if.then34.sw.bb37_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb37

if.then34.mapped_crit_edge98:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %mapped

if.then34.mapped_crit_edge:                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %mapped

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb37:                                          ; preds = %if.then34.sw.bb37_crit_edge, %if.then34.sw.bb37_crit_edge99
  br label %mapped

do.body:                                          ; preds = %land.lhs.true24.do.body_crit_edge, %land.lhs.true10.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @plantronics_input_mapping.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@plantronics_input_mapping, %if.then46)) #4
          to label %cleanup [label %if.then46], !srcloc !61

if.then46:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %16 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usage, align 4
  %18 = ptrtoint ptr %application to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %application, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @plantronics_input_mapping.__UNIQUE_ID_ddebug223, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %17, i32 noundef %19) #4
  br label %cleanup

mapped:                                           ; preds = %sw.bb37, %if.then34.mapped_crit_edge, %if.then34.mapped_crit_edge98
  %mapped_key.0 = phi i16 [ 114, %sw.bb37 ], [ 115, %if.then34.mapped_crit_edge ], [ 115, %if.then34.mapped_crit_edge98 ]
  %input1.i.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %20 = ptrtoint ptr %input1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input1.i.i, align 4
  %keybit.i.i = getelementptr inbounds %struct.input_dev, ptr %21, i32 0, i32 6
  %type19.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %22 = ptrtoint ptr %type19.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %type19.i.i, align 4
  %code.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %23 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %mapped_key.0, ptr %code.i.i, align 2
  %24 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 767, ptr %max, align 4
  %25 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %keybit.i.i, ptr %bit, align 4
  %26 = load i16, ptr %code.i.i, align 2
  %conv1.i = zext i16 %26 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i, ptr noundef nonnull %keybit.i.i) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @plantronics_input_mapping.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@plantronics_input_mapping, %if.then62)) #4
          to label %cleanup [label %if.then62], !srcloc !61

if.then62:                                        ; preds = %mapped
  call void @__sanitizer_cov_trace_pc() #6
  %dev63 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %27 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %usage, align 4
  %29 = ptrtoint ptr %application to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %application, align 4
  %conv = zext i16 %mapped_key.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @plantronics_input_mapping.__UNIQUE_ID_ddebug224, ptr noundef %dev63, ptr noundef nonnull @.str.14, i32 noundef %28, i32 noundef %30, i32 noundef %conv) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %mapped, %if.then46, %do.body, %if.then34.cleanup_crit_edge, %if.else30.cleanup_crit_edge, %land.lhs.true24.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %sw.default.cleanup_crit_edge ], [ -1, %land.lhs.true10.cleanup_crit_edge ], [ -1, %if.else30.cleanup_crit_edge ], [ -1, %if.then34.cleanup_crit_edge ], [ -1, %if.then21.cleanup_crit_edge ], [ -1, %land.lhs.true24.cleanup_crit_edge ], [ -1, %sw.bb.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then46 ], [ 1, %if.then62 ], [ 0, %do.body ], [ 1, %mapped ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !46, !47, !48, !49, !50, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_hid_plantronics__226_223_plantronics_driver_init6, !1, !"__initcall__kmod_hid_plantronics__226_223_plantronics_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-plantronics.c", i32 223, i32 1}
!2 = !{ptr @__exitcall_plantronics_driver_exit, !1, !"__exitcall_plantronics_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author227, !4, !"__UNIQUE_ID_author227", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-plantronics.c", i32 225, i32 1}
!5 = !{ptr @__UNIQUE_ID_author228, !6, !"__UNIQUE_ID_author228", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-plantronics.c", i32 226, i32 1}
!7 = !{ptr @__UNIQUE_ID_description229, !8, !"__UNIQUE_ID_description229", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-plantronics.c", i32 227, i32 1}
!9 = !{ptr @__UNIQUE_ID_file230, !10, !"__UNIQUE_ID_file230", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-plantronics.c", i32 228, i32 1}
!11 = !{ptr @__UNIQUE_ID_license231, !10, !"__UNIQUE_ID_license231", i1 false, i1 false}
!12 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-plantronics.c", i32 216, i32 10}
!15 = !{ptr @plantronics_driver, !16, !"plantronics_driver", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-plantronics.c", i32 215, i32 26}
!17 = !{ptr @plantronics_devices, !18, !"plantronics_devices", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-plantronics.c", i32 200, i32 35}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-plantronics.c", i32 181, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @plantronics_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @plantronics_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hid/hid-plantronics.c", i32 194, i32 3}
!29 = !{ptr @plantronics_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @plantronics_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hid/hid-plantronics.c", i32 165, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @plantronics_device_type.__UNIQUE_ID_ddebug225, !32, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!35 = !{ptr @plantronics_usages, !36, !"plantronics_usages", i1 false, i1 false}
!36 = !{!"../drivers/hid/hid-plantronics.c", i32 209, i32 34}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-plantronics.c", i32 109, i32 2}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @plantronics_input_mapping.__UNIQUE_ID_ddebug223, !38, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-plantronics.c", i32 115, i32 2}
!43 = !{ptr @plantronics_input_mapping.__UNIQUE_ID_ddebug224, !42, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!44 = distinct !{null, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/hid.h", i32 1036, i32 3}
!46 = distinct !{null, !45, !"_rs", i1 false, i1 false}
!47 = !{ptr @__func__.hid_map_usage, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @hid_map_usage._entry, !45, !"_entry", i1 false, i1 false}
!51 = !{ptr @hid_map_usage._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i64 2148791311, i64 2148791316, i64 2148791329, i64 2148791373, i64 2148791407, i64 2148791428}
