; ModuleID = '/llk/IR_all_yes/drivers/hwmon/corsair-cpro.c_pt.bc'
source_filename = "../drivers/hwmon/corsair-cpro.c"
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
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
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
%struct.ccp_device = type { ptr, ptr, %struct.completion, %struct.mutex, ptr, [6 x i32], [1 x i32], [1 x i32], [6 x [11 x i8]] }

@__UNIQUE_ID_file230 = internal constant [45 x i8] c"corsair_cpro.file=drivers/hwmon/corsair-cpro\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [25 x i8] c"corsair_cpro.license=GPL\00", section ".modinfo", align 1
@ccp_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str, ptr @ccp_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @ccp_probe, ptr @ccp_remove, ptr null, ptr @ccp_raw_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_corsair_cpro__232_582_ccp_init7 = internal global ptr @ccp_init, section ".initcall7.init", align 4
@__exitcall_ccp_exit = internal global ptr @ccp_exit, section ".exitcall.exit", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"corsair-cpro\00", [19 x i8] zeroinitializer }, align 32
@ccp_devices = internal constant { [3 x %struct.hid_device_id], [48 x i8] } { [3 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 6940, i32 3088, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 7424, i32 0 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ccp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ccp->mutex\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"corsaircpro\00", [20 x i8] zeroinitializer }, align 32
@ccp_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @ccp_hwmon_ops, ptr @ccp_info }, [24 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@hid_device_io_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 963, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"io already started\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hid_device_io_start\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hid_device_io_start._entry_ptr = internal global ptr @hid_device_io_start._entry, section ".printk_index", align 4
@ccp_get_errno.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, i8 0, i8 25, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"corsair_cpro\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ccp_get_errno\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/hwmon/corsair-cpro.c\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unknown device response error: %d\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan%d 3pin\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan%d 4pin\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan%d other\00", [20 x i8] zeroinitializer }, align 32
@ccp_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @ccp_is_visible, ptr @ccp_read, ptr @ccp_read_string, ptr @ccp_write }, [16 x i8] zeroinitializer }, align 32
@ccp_info = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.compoundliteral.16, ptr @.compoundliteral.18, ptr @.compoundliteral.20, ptr @.compoundliteral.22, ptr @.compoundliteral.24, ptr null], [40 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 16, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 0], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.17 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 134, i32 134, i32 134, i32 134, i32 134, i32 134, i32 0], [36 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 7, ptr @.compoundliteral.19 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], [36 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 8, ptr @.compoundliteral.21 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 2, i32 2, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral.23 }, [24 x i8] zeroinitializer }, align 32
@switch.table.ccp_is_visible = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 292, i16 292, i16 0, i16 0, i16 0, i16 0, i16 420], [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 7, i64 8]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 7, i64 8]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@___asan_gen_.29 = private unnamed_addr constant [11 x i8] c"ccp_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 557, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 558, i32 10 }
@___asan_gen_.35 = private unnamed_addr constant [12 x i8] c"ccp_devices\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 551, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 513, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 526, i32 63 }
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"ccp_chip_info\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 421, i32 37 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 87, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 963, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 103, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 448, i32 7 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 452, i32 7 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 456, i32 7 }
@___asan_gen_.95 = private unnamed_addr constant [14 x i8] c"ccp_hwmon_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 381, i32 31 }
@___asan_gen_.98 = private unnamed_addr constant [9 x i8] c"ccp_info\00", align 1
@___asan_gen_.99 = private constant [32 x i8] c"../drivers/hwmon/corsair-cpro.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 388, i32 41 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [28 x i8] c"switch.table.ccp_is_visible\00", align 1
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_ccp_exit, ptr @__initcall__kmod_corsair_cpro__232_582_ccp_init7, ptr @ccp_exit, ptr @hid_device_io_start._entry, ptr @hid_device_io_start._entry_ptr, ptr @ccp_driver, ptr @.str, ptr @ccp_devices, ptr @ccp_probe.__key, ptr @.str.1, ptr @.str.2, ptr @ccp_chip_info, ptr @init_completion.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ccp_hwmon_ops, ptr @ccp_info, ptr @.compoundliteral, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19, ptr @.compoundliteral.20, ptr @.compoundliteral.21, ptr @.compoundliteral.22, ptr @.compoundliteral.23, ptr @.compoundliteral.24, ptr @switch.table.ccp_is_visible], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccp_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccp_devices to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccp_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_device_io_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccp_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccp_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ccp_is_visible to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ccp_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @hid_unregister_driver(ptr noundef nonnull @ccp_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ccp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @ccp_driver, ptr noundef null, ptr noundef nonnull @.str.9) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccp_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 260, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 63, i32 noundef 3264) #7
  %buffer = getelementptr inbounds %struct.ccp_device, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %buffer, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i66 = tail call i32 @hid_open_report(ptr noundef %hdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool8.not = icmp eq i32 %call.i66, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @hid_hw_open(ptr noundef %hdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.out_hw_stop_crit_edge

if.end14.out_hw_stop_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_hw_stop

if.end18:                                         ; preds = %if.end14
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %hdev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.ccp_device, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @ccp_probe.__key) #7
  %wait_input_report = getelementptr inbounds %struct.ccp_device, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %wait_input_report to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wait_input_report, align 4
  %wait.i = getelementptr inbounds %struct.ccp_device, ptr %call.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #7
  %io_started.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 35
  %4 = ptrtoint ptr %io_started.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %io_started.i, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.4) #10
  br label %hid_device_io_start.exit

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %io_started.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %io_started.i, align 4
  %driver_input_lock.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 17
  tail call void @up(ptr noundef %driver_input_lock.i) #7
  br label %hid_device_io_start.exit

hid_device_io_start.exit:                         ; preds = %if.end.i, %do.end.i
  %call.i67 = tail call fastcc i32 @send_usb_cmd(ptr noundef nonnull %call.i, i8 noundef zeroext 16, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool.not.i68 = icmp eq i32 %call.i67, 0
  br i1 %tobool.not.i68, label %for.cond.preheader.i, label %hid_device_io_start.exit.out_hw_close_crit_edge

hid_device_io_start.exit.out_hw_close_crit_edge:  ; preds = %hid_device_io_start.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_hw_close

for.cond.preheader.i:                             ; preds = %hid_device_io_start.exit
  %temp_cnct.i = getelementptr inbounds %struct.ccp_device, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  %arrayidx.i = getelementptr i8, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp1.i = icmp eq i8 %10, 0
  br i1 %cmp1.i, label %for.cond.preheader.i.for.inc.i_crit_edge, label %if.end4.i

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %temp_cnct.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end4.i, %for.cond.preheader.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  %arrayidx.1.i = getelementptr i8, ptr %12, i32 2
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp1.1.i = icmp eq i8 %14, 0
  br i1 %cmp1.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end4.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.end4.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 1, ptr noundef %temp_cnct.i) #7
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end4.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  %arrayidx.2.i = getelementptr i8, ptr %16, i32 3
  %17 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp1.2.i = icmp eq i8 %18, 0
  br i1 %cmp1.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end4.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.end4.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %temp_cnct.i) #7
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end4.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer, align 4
  %arrayidx.3.i = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp1.3.i = icmp eq i8 %22, 0
  br i1 %cmp1.3.i, label %for.inc.2.i.if.end23_crit_edge, label %if.end4.3.i

for.inc.2.i.if.end23_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end4.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 3, ptr noundef %temp_cnct.i) #7
  br label %if.end23

if.end23:                                         ; preds = %if.end4.3.i, %for.inc.2.i.if.end23_crit_edge
  %call24 = tail call fastcc i32 @get_fan_cnct(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.out_hw_close_crit_edge

if.end23.out_hw_close_crit_edge:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_hw_close

if.end27:                                         ; preds = %if.end23
  %call29 = tail call ptr @hwmon_device_register_with_info(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull %call.i, ptr noundef nonnull @ccp_chip_info, ptr noundef null) #7
  %hwmon_dev = getelementptr inbounds %struct.ccp_device, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call29, ptr %hwmon_dev, align 4
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then32, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %call29 to i32
  br label %out_hw_close

out_hw_close:                                     ; preds = %if.then32, %if.end23.out_hw_close_crit_edge, %hid_device_io_start.exit.out_hw_close_crit_edge
  %ret.0 = phi i32 [ %call24, %if.end23.out_hw_close_crit_edge ], [ %24, %if.then32 ], [ %call.i67, %hid_device_io_start.exit.out_hw_close_crit_edge ]
  tail call void @hid_hw_close(ptr noundef %hdev) #7
  br label %out_hw_stop

out_hw_stop:                                      ; preds = %out_hw_close, %if.end14.out_hw_stop_crit_edge
  %ret.1 = phi i32 [ %call15, %if.end14.out_hw_stop_crit_edge ], [ %ret.0, %out_hw_close ]
  tail call void @hid_hw_stop(ptr noundef %hdev) #7
  br label %cleanup

cleanup:                                          ; preds = %out_hw_stop, %if.end27.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_hw_stop ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i66, %if.end6.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccp_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hwmon_dev = getelementptr inbounds %struct.ccp_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %3) #7
  tail call void @hid_hw_close(ptr noundef %hdev) #7
  tail call void @hid_hw_stop(ptr noundef %hdev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccp_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %report, ptr nocapture noundef readonly %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %wait_input_report = getelementptr inbounds %struct.ccp_device, ptr %1, i32 0, i32 2
  %call1 = tail call zeroext i1 @completion_done(ptr noundef %wait_input_report) #7
  br i1 %call1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %buffer = getelementptr inbounds %struct.ccp_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %4 = tail call i32 @llvm.smin.i32(i32 %size, i32 16)
  %5 = call ptr @memcpy(ptr %3, ptr %data, i32 %4)
  tail call void @complete(ptr noundef %wait_input_report) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_fan_cnct(ptr noundef %ccp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @send_usb_cmd(ptr noundef %ccp, i8 noundef zeroext 32, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %buffer = getelementptr inbounds %struct.ccp_device, ptr %ccp, i32 0, i32 4
  %fan_cnct = getelementptr inbounds %struct.ccp_device, ptr %ccp, i32 0, i32 7
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1 = icmp eq i8 %3, 0
  br i1 %cmp1, label %for.cond.preheader.for.inc_crit_edge, label %if.end4

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end4:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %fan_cnct) #7
  %arrayidx5 = getelementptr %struct.ccp_device, ptr %ccp, i32 0, i32 5, i32 0
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -61, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %switch.selectcmp = icmp eq i8 %3, 2
  %switch.select = select i1 %switch.selectcmp, ptr @.str.14, ptr @.str.15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %switch.selectcmp42 = icmp eq i8 %3, 1
  %switch.select43 = select i1 %switch.selectcmp42, ptr @.str.13, ptr %switch.select
  %arrayidx6 = getelementptr %struct.ccp_device, ptr %ccp, i32 0, i32 8, i32 0
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx6, i32 noundef 11, ptr noundef nonnull %switch.select43, i32 noundef 1) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end4, %for.cond.preheader.for.inc_crit_edge
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer, align 4
  %arrayidx.1 = getelementptr i8, ptr %6, i32 2
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp1.1 = icmp eq i8 %8, 0
  br i1 %cmp1.1, label %for.inc.for.inc.1_crit_edge, label %if.end4.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end4.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 1, ptr noundef %fan_cnct) #7
  %arrayidx5.1 = getelementptr %struct.ccp_device, ptr %ccp, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -61, ptr %arrayidx5.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %switch.selectcmp.1 = icmp eq i8 %8, 2
  %switch.select.1 = select i1 %switch.selectcmp.1, ptr @.str.14, ptr @.str.15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %switch.selectcmp42.1 = icmp eq i8 %8, 1
  %switch.select43.1 = select i1 %switch.selectcmp42.1, ptr @.str.13, ptr %switch.select.1
  %arrayidx6.1 = getelementptr %struct.ccp_device, ptr %ccp, i32 0, i32 8, i32 1
  %call9.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx6.1, i32 noundef 11, ptr noundef nonnull %switch.select43.1, i32 noundef 2) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end4.1, %for.inc.for.inc.1_crit_edge
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %arrayidx.2 = getelementptr i8, ptr %11, i32 3
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp1.2 = icmp eq i8 %13, 0
  br i1 %cmp1.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end4.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end4.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %fan_cnct) #7
  %arrayidx5.2 = getelementptr %struct.ccp_device, ptr %ccp, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -61, ptr %arrayidx5.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %switch.selectcmp.2 = icmp eq i8 %13, 2
  %switch.select.2 = select i1 %switch.selectcmp.2, ptr @.str.14, ptr @.str.15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %switch.selectcmp42.2 = icmp eq i8 %13, 1
  %switch.select43.2 = select i1 %switch.selectcmp42.2, ptr @.str.13, ptr %switch.select.2
  %arrayidx6.2 = getelementptr %struct.ccp_device, ptr %ccp, i32 0, i32 8, i32 2
  %call9.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx6.2, i32 noundef 11, ptr noundef nonnull %switch.select43.2, i32 noundef 3) #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end4.2, %for.inc.1.for.inc.2_crit_edge
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  %arrayidx.3 = getelementptr i8, ptr %16, i32 4
  %17 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp1.3 = icmp eq i8 %18, 0
  br i1 %cmp1.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end4.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.end4.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 3, ptr noundef %fan_cnct) #7
  %arrayidx5.3 = getelementptr %struct.ccp_device, ptr %ccp, i32 0, i32 5, i32 3
  %19 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -61, ptr %arrayidx5.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %switch.selectcmp.3 = icmp eq i8 %18, 2
  %switch.select.3 = select i1 %switch.selectcmp.3, ptr @.str.14, ptr @.str.15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %switch.selectcmp42.3 = icmp eq i8 %18, 1
  %switch.select43.3 = select i1 %switch.selectcmp42.3, ptr @.str.13, ptr %switch.select.3
  %arrayidx6.3 = getelementptr %struct.ccp_device, ptr %ccp, i32 0, i32 8, i32 3
  %call9.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx6.3, i32 noundef 11, ptr noundef nonnull %switch.select43.3, i32 noundef 4) #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end4.3, %for.inc.2.for.inc.3_crit_edge
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  %arrayidx.4 = getelementptr i8, ptr %21, i32 5
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp1.4 = icmp eq i8 %23, 0
  br i1 %cmp1.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end4.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.end4.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 4, ptr noundef %fan_cnct) #7
  %arrayidx5.4 = getelementptr %struct.ccp_device, ptr %ccp, i32 0, i32 5, i32 4
  %24 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -61, ptr %arrayidx5.4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %switch.selectcmp.4 = icmp eq i8 %23, 2
  %switch.select.4 = select i1 %switch.selectcmp.4, ptr @.str.14, ptr @.str.15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %switch.selectcmp42.4 = icmp eq i8 %23, 1
  %switch.select43.4 = select i1 %switch.selectcmp42.4, ptr @.str.13, ptr %switch.select.4
  %arrayidx6.4 = getelementptr %struct.ccp_device, ptr %ccp, i32 0, i32 8, i32 4
  %call9.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx6.4, i32 noundef 11, ptr noundef nonnull %switch.select43.4, i32 noundef 5) #7
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end4.4, %for.inc.3.for.inc.4_crit_edge
  %25 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buffer, align 4
  %arrayidx.5 = getelementptr i8, ptr %26, i32 6
  %27 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp1.5 = icmp eq i8 %28, 0
  br i1 %cmp1.5, label %for.inc.4.cleanup_crit_edge, label %if.end4.5

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 5, ptr noundef %fan_cnct) #7
  %arrayidx5.5 = getelementptr %struct.ccp_device, ptr %ccp, i32 0, i32 5, i32 5
  %29 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -61, ptr %arrayidx5.5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %switch.selectcmp.5 = icmp eq i8 %28, 2
  %switch.select.5 = select i1 %switch.selectcmp.5, ptr @.str.14, ptr @.str.15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %switch.selectcmp42.5 = icmp eq i8 %28, 1
  %switch.select43.5 = select i1 %switch.selectcmp42.5, ptr @.str.13, ptr %switch.select.5
  %arrayidx6.5 = getelementptr %struct.ccp_device, ptr %ccp, i32 0, i32 8, i32 5
  %call9.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx6.5, i32 noundef 11, ptr noundef nonnull %switch.select43.5, i32 noundef 6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4.5, %for.inc.4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.5 ], [ 0, %for.inc.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_usb_cmd(ptr noundef %ccp, i8 noundef zeroext %command, i8 noundef zeroext %byte1, i8 noundef zeroext %byte2, i8 noundef zeroext %byte3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer = getelementptr inbounds %struct.ccp_device, ptr %ccp, i32 0, i32 4
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 63)
  %3 = load ptr, ptr %buffer, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %command, ptr %3, align 1
  %5 = load ptr, ptr %buffer, align 4
  %arrayidx3 = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %byte1, ptr %arrayidx3, align 1
  %7 = load ptr, ptr %buffer, align 4
  %arrayidx5 = getelementptr i8, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %byte2, ptr %arrayidx5, align 1
  %9 = load ptr, ptr %buffer, align 4
  %arrayidx7 = getelementptr i8, ptr %9, i32 3
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %byte3, ptr %arrayidx7, align 1
  %wait_input_report = getelementptr inbounds %struct.ccp_device, ptr %ccp, i32 0, i32 2
  %11 = ptrtoint ptr %wait_input_report to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %wait_input_report, align 4
  %12 = ptrtoint ptr %ccp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ccp, align 4
  %14 = load ptr, ptr %buffer, align 4
  %call = tail call i32 @hid_hw_output_report(ptr noundef %13, ptr noundef %14, i32 noundef 63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call11 = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_input_report, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i8 %18, label %do.body.i [
    i8 0, label %if.end13.cleanup_crit_edge
    i8 1, label %sw.bb1.i
    i8 16, label %sw.bb2.i
    i8 17, label %if.end13.sw.bb3.i_crit_edge
    i8 18, label %if.end13.sw.bb3.i_crit_edge26
  ]

if.end13.sw.bb3.i_crit_edge26:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

if.end13.sw.bb3.i_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.end13.sw.bb3.i_crit_edge, %if.end13.sw.bb3.i_crit_edge26
  br label %cleanup

do.body.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccp_get_errno.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@send_usb_cmd, %cleanup)) #7
          to label %if.then.i [label %cleanup], !srcloc !57

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %ccp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ccp, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %conv9.i = zext i8 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccp_get_errno.__UNIQUE_ID_ddebug223, ptr noundef %dev.i, ptr noundef nonnull @.str.12, i32 noundef %conv9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %do.body.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ], [ -61, %sw.bb3.i ], [ -22, %sw.bb2.i ], [ -95, %sw.bb1.i ], [ 0, %if.end13.cleanup_crit_edge ], [ -5, %if.then.i ], [ -5, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ccp_is_visible(ptr noundef %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %type, label %entry.sw.epilog29_crit_edge [
    i32 1, label %sw.bb
    i32 7, label %sw.bb3
    i32 8, label %sw.bb14
    i32 2, label %sw.bb24
  ]

entry.sw.epilog29_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

sw.bb:                                            ; preds = %entry
  %temp_cnct = getelementptr inbounds %struct.ccp_device, ptr %data, i32 0, i32 6
  %div3.i = lshr i32 %channel, 5
  %arrayidx.i = getelementptr i32, ptr %temp_cnct, i32 %div3.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %channel, 31
  %3 = shl nuw i32 1, %and.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog29_crit_edge, label %if.end

sw.bb.sw.epilog29_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %switch.selectcmp.case1 = icmp eq i32 %attr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %attr)
  %switch.selectcmp.case2 = icmp eq i32 %attr, 21
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %5 = select i1 %switch.selectcmp, i16 292, i16 0
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %fan_cnct = getelementptr inbounds %struct.ccp_device, ptr %data, i32 0, i32 7
  %div3.i38 = lshr i32 %channel, 5
  %arrayidx.i39 = getelementptr i32, ptr %fan_cnct, i32 %div3.i38
  %6 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i39, align 4
  %and.i40 = and i32 %channel, 31
  %8 = shl nuw i32 1, %and.i40
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %sw.bb3.sw.epilog29_crit_edge, label %if.end8

sw.bb3.sw.epilog29_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

if.end8:                                          ; preds = %sw.bb3
  %switch.tableidx = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 7
  br i1 %10, label %switch.lookup, label %if.end8.sw.epilog29_crit_edge

if.end8.sw.epilog29_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

sw.bb14:                                          ; preds = %entry
  %fan_cnct15 = getelementptr inbounds %struct.ccp_device, ptr %data, i32 0, i32 7
  %div3.i43 = lshr i32 %channel, 5
  %arrayidx.i44 = getelementptr i32, ptr %fan_cnct15, i32 %div3.i43
  %11 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i44, align 4
  %and.i45 = and i32 %channel, 31
  %13 = shl nuw i32 1, %and.i45
  %14 = and i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool18.not = icmp ne i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr)
  %cond30 = icmp eq i32 %attr, 0
  %or.cond = and i1 %cond30, %tobool18.not
  br i1 %or.cond, label %sw.bb14.cleanup_crit_edge, label %sw.bb14.sw.epilog29_crit_edge

sw.bb14.sw.epilog29_crit_edge:                    ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cond = icmp eq i32 %attr, 1
  br i1 %cond, label %sw.bb24.cleanup_crit_edge, label %sw.bb24.sw.epilog29_crit_edge

sw.bb24.sw.epilog29_crit_edge:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog29:                                      ; preds = %sw.bb24.sw.epilog29_crit_edge, %sw.bb14.sw.epilog29_crit_edge, %if.end8.sw.epilog29_crit_edge, %sw.bb3.sw.epilog29_crit_edge, %sw.bb.sw.epilog29_crit_edge, %entry.sw.epilog29_crit_edge
  br label %cleanup

switch.lookup:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [7 x i16], ptr @switch.table.ccp_is_visible, i32 0, i32 %switch.tableidx
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %15)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %sw.epilog29, %sw.bb24.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %if.end
  %retval.0 = phi i16 [ 0, %sw.epilog29 ], [ %5, %if.end ], [ 420, %sw.bb14.cleanup_crit_edge ], [ 292, %sw.bb24.cleanup_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccp_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 7, label %sw.bb3
    i32 8, label %sw.bb17
    i32 2, label %sw.bb34
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cond48 = icmp eq i32 %attr, 1
  br i1 %cond48, label %sw.bb1, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %mutex.i = getelementptr inbounds %struct.ccp_device, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %conv1.i = trunc i32 %channel to i8
  %call.i = tail call fastcc i32 @send_usb_cmd(ptr noundef %1, i8 noundef zeroext 17, i8 noundef zeroext %conv1.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %get_data.exit.thread, label %get_data.exit

get_data.exit.thread:                             ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %buffer.i = getelementptr inbounds %struct.ccp_device, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buffer.i, align 4
  %arrayidx.i = getelementptr i8, ptr %4, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %conv2.i = zext i8 %6 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 8
  %arrayidx6.i = getelementptr i8, ptr %4, i32 2
  %7 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %8 to i32
  %add.i = or i32 %shl.i, %conv7.i
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  br label %if.end

get_data.exit:                                    ; preds = %sw.bb1
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %get_data.exit.cleanup_crit_edge, label %get_data.exit.if.end_crit_edge

get_data.exit.if.end_crit_edge:                   ; preds = %get_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

get_data.exit.cleanup_crit_edge:                  ; preds = %get_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %get_data.exit.if.end_crit_edge, %get_data.exit.thread
  %ret.0.i123 = phi i32 [ %add.i, %get_data.exit.thread ], [ %call.i, %get_data.exit.if.end_crit_edge ]
  %mul = mul i32 %ret.0.i123, 10
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  %9 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %attr, label %sw.bb3.cleanup_crit_edge [
    i32 1, label %sw.bb4
    i32 7, label %sw.bb9
  ]

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb3
  %mutex.i83 = getelementptr inbounds %struct.ccp_device, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i83, i32 noundef 0) #7
  %conv1.i84 = trunc i32 %channel to i8
  %call.i85 = tail call fastcc i32 @send_usb_cmd(ptr noundef %1, i8 noundef zeroext 33, i8 noundef zeroext %conv1.i84, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool.not.i86 = icmp eq i32 %call.i85, 0
  br i1 %tobool.not.i86, label %get_data.exit96.thread, label %get_data.exit96

get_data.exit96.thread:                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %buffer.i87 = getelementptr inbounds %struct.ccp_device, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %buffer.i87 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer.i87, align 4
  %arrayidx.i88 = getelementptr i8, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i88, align 1
  %conv2.i89 = zext i8 %13 to i32
  %shl.i91 = shl nuw nsw i32 %conv2.i89, 8
  %arrayidx6.i92 = getelementptr i8, ptr %11, i32 2
  %14 = ptrtoint ptr %arrayidx6.i92 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx6.i92, align 1
  %conv7.i93 = zext i8 %15 to i32
  %add.i94 = or i32 %shl.i91, %conv7.i93
  tail call void @mutex_unlock(ptr noundef %mutex.i83) #7
  br label %cleanup.sink.split

get_data.exit96:                                  ; preds = %sw.bb4
  tail call void @mutex_unlock(ptr noundef %mutex.i83) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %cmp6 = icmp slt i32 %call.i85, 0
  br i1 %cmp6, label %get_data.exit96.cleanup_crit_edge, label %get_data.exit96.cleanup.sink.split_crit_edge

get_data.exit96.cleanup.sink.split_crit_edge:     ; preds = %get_data.exit96
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

get_data.exit96.cleanup_crit_edge:                ; preds = %get_data.exit96
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb9:                                           ; preds = %sw.bb3
  %arrayidx = getelementptr %struct.ccp_device, ptr %1, i32 0, i32 5, i32 %channel
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp10 = icmp slt i32 %17, 0
  br i1 %cmp10, label %sw.bb9.cleanup_crit_edge, label %sw.bb9.cleanup.sink.split_crit_edge

sw.bb9.cleanup.sink.split_crit_edge:              ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr)
  %cond47 = icmp eq i32 %attr, 0
  br i1 %cond47, label %sw.bb18, label %sw.bb17.cleanup_crit_edge

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb18:                                          ; preds = %sw.bb17
  %mutex.i97 = getelementptr inbounds %struct.ccp_device, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i97, i32 noundef 0) #7
  %conv1.i98 = trunc i32 %channel to i8
  %call.i99 = tail call fastcc i32 @send_usb_cmd(ptr noundef %1, i8 noundef zeroext 34, i8 noundef zeroext %conv1.i98, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool.not.i100 = icmp eq i32 %call.i99, 0
  br i1 %tobool.not.i100, label %get_data.exit106.thread, label %get_data.exit106

get_data.exit106.thread:                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  %buffer.i101 = getelementptr inbounds %struct.ccp_device, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %buffer.i101 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer.i101, align 4
  %arrayidx.i102 = getelementptr i8, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i102, align 1
  %conv2.i103 = zext i8 %21 to i32
  tail call void @mutex_unlock(ptr noundef %mutex.i97) #7
  br label %if.end22

get_data.exit106:                                 ; preds = %sw.bb18
  tail call void @mutex_unlock(ptr noundef %mutex.i97) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %cmp20 = icmp slt i32 %call.i99, 0
  br i1 %cmp20, label %get_data.exit106.cleanup_crit_edge, label %get_data.exit106.if.end22_crit_edge

get_data.exit106.if.end22_crit_edge:              ; preds = %get_data.exit106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

get_data.exit106.cleanup_crit_edge:               ; preds = %get_data.exit106
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %get_data.exit106.if.end22_crit_edge, %get_data.exit106.thread
  %ret.0.i105129 = phi i32 [ %conv2.i103, %get_data.exit106.thread ], [ %call.i99, %get_data.exit106.if.end22_crit_edge ]
  %mul23 = mul i32 %ret.0.i105129, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul23)
  %cmp24 = icmp sgt i32 %mul23, 0
  %cond.in.v = select i1 %cmp24, i32 50, i32 -50
  %cond.in = add i32 %cond.in.v, %mul23
  %cond = sdiv i32 %cond.in, 100
  br label %cleanup.sink.split

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cond46 = icmp eq i32 %attr, 1
  br i1 %cond46, label %sw.bb35, label %sw.bb34.cleanup_crit_edge

sw.bb34.cleanup_crit_edge:                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb35:                                          ; preds = %sw.bb34
  %mutex.i107 = getelementptr inbounds %struct.ccp_device, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i107, i32 noundef 0) #7
  %conv1.i108 = trunc i32 %channel to i8
  %call.i109 = tail call fastcc i32 @send_usb_cmd(ptr noundef %1, i8 noundef zeroext 18, i8 noundef zeroext %conv1.i108, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool.not.i110 = icmp eq i32 %call.i109, 0
  br i1 %tobool.not.i110, label %get_data.exit120.thread, label %get_data.exit120

get_data.exit120.thread:                          ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  %buffer.i111 = getelementptr inbounds %struct.ccp_device, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %buffer.i111 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer.i111, align 4
  %arrayidx.i112 = getelementptr i8, ptr %23, i32 1
  %24 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i112, align 1
  %conv2.i113 = zext i8 %25 to i32
  %shl.i115 = shl nuw nsw i32 %conv2.i113, 8
  %arrayidx6.i116 = getelementptr i8, ptr %23, i32 2
  %26 = ptrtoint ptr %arrayidx6.i116 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx6.i116, align 1
  %conv7.i117 = zext i8 %27 to i32
  %add.i118 = or i32 %shl.i115, %conv7.i117
  tail call void @mutex_unlock(ptr noundef %mutex.i107) #7
  br label %cleanup.sink.split

get_data.exit120:                                 ; preds = %sw.bb35
  tail call void @mutex_unlock(ptr noundef %mutex.i107) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %cmp37 = icmp slt i32 %call.i109, 0
  br i1 %cmp37, label %get_data.exit120.cleanup_crit_edge, label %get_data.exit120.cleanup.sink.split_crit_edge

get_data.exit120.cleanup.sink.split_crit_edge:    ; preds = %get_data.exit120
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

get_data.exit120.cleanup_crit_edge:               ; preds = %get_data.exit120
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %get_data.exit120.cleanup.sink.split_crit_edge, %get_data.exit120.thread, %if.end22, %sw.bb9.cleanup.sink.split_crit_edge, %get_data.exit96.cleanup.sink.split_crit_edge, %get_data.exit96.thread, %if.end
  %ret.0.i119132.sink = phi i32 [ %cond, %if.end22 ], [ %mul, %if.end ], [ %add.i94, %get_data.exit96.thread ], [ %call.i85, %get_data.exit96.cleanup.sink.split_crit_edge ], [ %17, %sw.bb9.cleanup.sink.split_crit_edge ], [ %add.i118, %get_data.exit120.thread ], [ %call.i109, %get_data.exit120.cleanup.sink.split_crit_edge ]
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %ret.0.i119132.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %get_data.exit120.cleanup_crit_edge, %sw.bb34.cleanup_crit_edge, %get_data.exit106.cleanup_crit_edge, %sw.bb17.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %get_data.exit96.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %get_data.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %get_data.exit.cleanup_crit_edge ], [ %call.i85, %get_data.exit96.cleanup_crit_edge ], [ -61, %sw.bb9.cleanup_crit_edge ], [ %call.i99, %get_data.exit106.cleanup_crit_edge ], [ %call.i109, %get_data.exit120.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -95, %sw.bb34.cleanup_crit_edge ], [ -95, %sw.bb17.cleanup_crit_edge ], [ -95, %sw.bb3.cleanup_crit_edge ], [ -95, %sw.bb.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccp_read_string(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %str) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %type)
  %cond = icmp eq i32 %type, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %attr)
  %cond4 = icmp eq i32 %attr, 2
  %or.cond = and i1 %cond, %cond4
  br i1 %or.cond, label %sw.bb1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ccp_device, ptr %1, i32 0, i32 8, i32 %channel
  %2 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx, ptr %str, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb1 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccp_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 8, label %sw.bb
    i32 7, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr)
  %cond10 = icmp eq i32 %attr, 0
  br i1 %cond10, label %sw.bb1, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %val)
  %3 = icmp ugt i32 %val, 255
  br i1 %3, label %sw.bb1.cleanup_crit_edge, label %if.end.i

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp2.not.i = icmp eq i32 %val, 0
  %4 = trunc i32 %val to i16
  %5 = mul nuw nsw i16 %4, 100
  %div729.lhs.trunc.i = add nuw nsw i16 %5, 127
  %div72930.i = udiv i16 %div729.lhs.trunc.i, 255
  %phi.cast.i = trunc i16 %div72930.i to i8
  %cond.i = select i1 %cmp2.not.i, i8 0, i8 %phi.cast.i
  %mutex.i = getelementptr inbounds %struct.ccp_device, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %conv10.i = trunc i32 %channel to i8
  %call.i = tail call fastcc i32 @send_usb_cmd(ptr noundef %1, i8 noundef zeroext 35, i8 noundef zeroext %conv10.i, i8 noundef zeroext %cond.i, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then12.i, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.ccp_device, ptr %1, i32 0, i32 5, i32 %channel
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -61, ptr %arrayidx.i, align 4
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %attr)
  %cond = icmp eq i32 %attr, 7
  br i1 %cond, label %sw.bb4, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %7 = tail call i32 @llvm.smax.i32(i32 %val, i32 0) #7
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 65535) #7
  %arrayidx.i15 = getelementptr %struct.ccp_device, ptr %1, i32 0, i32 5, i32 %channel
  %9 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx.i15, align 4
  %mutex.i16 = getelementptr inbounds %struct.ccp_device, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i16, i32 noundef 0) #7
  %conv.i = trunc i32 %channel to i8
  %10 = lshr i32 %8, 8
  %conv7.i = trunc i32 %10 to i8
  %conv8.i = trunc i32 %8 to i8
  %call.i17 = tail call fastcc i32 @send_usb_cmd(ptr noundef %1, i8 noundef zeroext 36, i8 noundef zeroext %conv.i, i8 noundef zeroext %conv7.i, i8 noundef zeroext %conv8.i) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb4, %if.then12.i, %if.end.i.cleanup.sink.split_crit_edge
  %mutex.i.sink = phi ptr [ %mutex.i16, %sw.bb4 ], [ %mutex.i, %if.then12.i ], [ %mutex.i, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i17, %sw.bb4 ], [ %call.i, %if.then12.i ], [ %call.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb3.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %sw.bb3.cleanup_crit_edge ], [ -95, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb1.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !39, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__UNIQUE_ID_file230, !1, !"__UNIQUE_ID_file230", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/corsair-cpro.c", i32 566, i32 1}
!2 = !{ptr @__UNIQUE_ID_license231, !1, !"__UNIQUE_ID_license231", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_corsair_cpro__232_582_ccp_init7, !4, !"__initcall__kmod_corsair_cpro__232_582_ccp_init7", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/corsair-cpro.c", i32 582, i32 1}
!5 = !{ptr @__exitcall_ccp_exit, !6, !"__exitcall_ccp_exit", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/corsair-cpro.c", i32 583, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/corsair-cpro.c", i32 558, i32 10}
!9 = !{ptr @ccp_driver, !10, !"ccp_driver", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/corsair-cpro.c", i32 557, i32 26}
!11 = !{ptr @ccp_devices, !12, !"ccp_devices", i1 false, i1 false}
!12 = !{!"../drivers/hwmon/corsair-cpro.c", i32 551, i32 35}
!13 = !{ptr @ccp_probe.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/corsair-cpro.c", i32 513, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/corsair-cpro.c", i32 526, i32 63}
!18 = !{ptr @init_completion.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../include/linux/completion.h", i32 87, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/hid.h", i32 963, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @hid_device_io_start._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @hid_device_io_start._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/corsair-cpro.c", i32 103, i32 3}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ccp_get_errno.__UNIQUE_ID_ddebug223, !30, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/corsair-cpro.c", i32 448, i32 7}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/corsair-cpro.c", i32 452, i32 7}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/corsair-cpro.c", i32 456, i32 7}
!41 = !{ptr @ccp_chip_info, !42, !"ccp_chip_info", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/corsair-cpro.c", i32 421, i32 37}
!43 = !{ptr @ccp_hwmon_ops, !44, !"ccp_hwmon_ops", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/corsair-cpro.c", i32 381, i32 31}
!45 = !{ptr @ccp_info, !46, !"ccp_info", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/corsair-cpro.c", i32 388, i32 41}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i8 0, i8 2}
!57 = !{i64 2148810801, i64 2148810806, i64 2148810819, i64 2148810863, i64 2148810897, i64 2148810918}
