; ModuleID = '/llk/IR_all_yes/drivers/mfd/wl1273-core.c_pt.bc'
source_filename = "../drivers/mfd/wl1273-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wl1273_fm_platform_data = type { ptr, ptr, ptr, ptr, i8, i32 }
%struct.wl1273_core = type { [2 x %struct.mfd_cell], ptr, i32, i32, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@wl1273_core_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @wl1273_core_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wl1273_driver_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_wl1273_core__293_258_wl1273_core_init7 = internal global ptr @wl1273_core_init, section ".initcall7.init", align 4
@__exitcall_wl1273_core_exit = internal global ptr @wl1273_core_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [63 x i8] c"wl1273_core.author=Matti Aaltonen <matti.j.aaltonen@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [45 x i8] c"wl1273_core.description=WL1273 FM Radio Core\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [41 x i8] c"wl1273_core.file=drivers/mfd/wl1273-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [24 x i8] c"wl1273_core.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wl1273-fm\00", [22 x i8] zeroinitializer }, align 32
@wl1273_driver_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wl1273-fm\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wl1273_core_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wl1273_core\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wl1273_core_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mfd/wl1273-core.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@wl1273_core_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 171, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No platform data.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wl1273_core_probe._entry_ptr = internal global ptr @wl1273_core_probe._entry, section ".printk_index", align 4
@wl1273_core_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 176, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot function without radio child.\0A\00", [58 x i8] zeroinitializer }, align 32
@wl1273_core_probe._entry_ptr.10 = internal global ptr @wl1273_core_probe._entry.8, section ".printk_index", align 4
@wl1273_core_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&core->lock\00", [20 x i8] zeroinitializer }, align 32
@wl1273_core_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.12, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: Have V4L2.\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wl1273_fm_radio\00", [16 x i8] zeroinitializer }, align 32
@wl1273_core_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: Have codec.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wl1273-codec\00", [19 x i8] zeroinitializer }, align 32
@wl1273_core_probe.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.16, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: number of children: %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@wl1273_core_probe.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wl1273_fm_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 29, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Read: %d fails.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl1273_fm_read_reg\00", [45 x i8] zeroinitializer }, align 32
@wl1273_fm_read_reg._entry_ptr = internal global ptr @wl1273_fm_read_reg._entry, section ".printk_index", align 4
@wl1273_fm_write_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 46, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: Cmd: %d fails.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wl1273_fm_write_cmd\00", [44 x i8] zeroinitializer }, align 32
@wl1273_fm_write_cmd._entry_ptr = internal global ptr @wl1273_fm_write_cmd._entry, section ".printk_index", align 4
@wl1273_fm_write_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 66, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: write error.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wl1273_fm_write_data\00", [43 x i8] zeroinitializer }, align 32
@wl1273_fm_write_data._entry_ptr = internal global ptr @wl1273_fm_write_data._entry, section ".printk_index", align 4
@wl1273_core_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013wl1273-fm: driver registration failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wl1273_core_init\00", [47 x i8] zeroinitializer }, align 32
@wl1273_core_init._entry_ptr = internal global ptr @wl1273_core_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 8]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"wl1273_core_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 232, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 234, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [23 x i8] c"wl1273_driver_id_table\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 15, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 168, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 171, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 176, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 186, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 190, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 193, i32 15 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 207, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 208, i32 16 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 214, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 29, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 46, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 66, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [29 x i8] c"../drivers/mfd/wl1273-core.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 246, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_wl1273_core_exit, ptr @__initcall__kmod_wl1273_core__293_258_wl1273_core_init7, ptr @wl1273_core_exit, ptr @wl1273_core_init._entry, ptr @wl1273_core_init._entry_ptr, ptr @wl1273_core_probe._entry, ptr @wl1273_core_probe._entry.8, ptr @wl1273_core_probe._entry_ptr, ptr @wl1273_core_probe._entry_ptr.10, ptr @wl1273_fm_read_reg._entry, ptr @wl1273_fm_read_reg._entry_ptr, ptr @wl1273_fm_write_cmd._entry, ptr @wl1273_fm_write_cmd._entry_ptr, ptr @wl1273_fm_write_data._entry, ptr @wl1273_fm_write_data._entry_ptr, ptr @wl1273_core_driver, ptr @.str, ptr @wl1273_driver_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @wl1273_core_probe.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_core_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_driver_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_core_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_core_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_core_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_write_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_fm_write_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1273_core_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wl1273_core_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @wl1273_core_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_core_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wl1273_core_driver) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_core_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %core = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %core) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_core_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_core_probe, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_core_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end9, label %if.end11

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %children12 = getelementptr inbounds %struct.wl1273_fm_platform_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %children12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %children12, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 320, i32 noundef 3520) #5
  %4 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %core, align 4
  %tobool22.not = icmp eq ptr %call.i, null
  br i1 %tobool22.not, label %if.end19.cleanup_crit_edge, label %if.end24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %pdata25 = getelementptr inbounds %struct.wl1273_core, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %pdata25 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %pdata25, align 8
  %client26 = getelementptr inbounds %struct.wl1273_core, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %client26 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %client26, align 4
  %lock = getelementptr inbounds %struct.wl1273_core, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @wl1273_core_probe.__key) #5
  %7 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_core_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_core_probe, %if.then42)) #5
          to label %do.end46 [label %if.then42], !srcloc !80

if.then42:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_core_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2) #5
  br label %do.end46

do.end46:                                         ; preds = %if.then42, %if.end24
  %10 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.13, ptr %11, align 8
  %platform_data = getelementptr inbounds %struct.mfd_cell, ptr %11, i32 0, i32 7
  %13 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %core, ptr %platform_data, align 4
  %pdata_size = getelementptr inbounds %struct.mfd_cell, ptr %11, i32 0, i32 8
  %14 = ptrtoint ptr %pdata_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %pdata_size, align 8
  %15 = load ptr, ptr %core, align 4
  %read = getelementptr inbounds %struct.wl1273_core, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @wl1273_fm_read_reg, ptr %read, align 8
  %write = getelementptr inbounds %struct.wl1273_core, ptr %15, i32 0, i32 10
  %17 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @wl1273_fm_write_cmd, ptr %write, align 4
  %write_data = getelementptr inbounds %struct.wl1273_core, ptr %15, i32 0, i32 11
  %18 = ptrtoint ptr %write_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @wl1273_fm_write_data, ptr %write_data, align 8
  %set_audio = getelementptr inbounds %struct.wl1273_core, ptr %15, i32 0, i32 12
  %19 = ptrtoint ptr %set_audio to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @wl1273_fm_set_audio, ptr %set_audio, align 4
  %set_volume = getelementptr inbounds %struct.wl1273_core, ptr %15, i32 0, i32 13
  %20 = ptrtoint ptr %set_volume to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @wl1273_fm_set_volume, ptr %set_volume, align 8
  %21 = ptrtoint ptr %children12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %children12, align 4
  %and48 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.end46.do.body75_crit_edge, label %if.then50

do.end46.do.body75_crit_edge:                     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body75

if.then50:                                        ; preds = %do.end46
  %arrayidx52 = getelementptr [2 x %struct.mfd_cell], ptr %15, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_core_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_core_probe, %if.then65)) #5
          to label %do.end69 [label %if.then65], !srcloc !80

if.then65:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_core_probe.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2) #5
  br label %do.end69

do.end69:                                         ; preds = %if.then65, %if.then50
  %23 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.15, ptr %arrayidx52, align 8
  %platform_data71 = getelementptr [2 x %struct.mfd_cell], ptr %15, i32 0, i32 1, i32 7
  %24 = ptrtoint ptr %platform_data71 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %core, ptr %platform_data71, align 4
  %pdata_size72 = getelementptr [2 x %struct.mfd_cell], ptr %15, i32 0, i32 1, i32 8
  %25 = ptrtoint ptr %pdata_size72 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %pdata_size72, align 8
  br label %do.body75

do.body75:                                        ; preds = %do.end69, %do.end46.do.body75_crit_edge
  %children.0 = phi i32 [ 2, %do.end69 ], [ 1, %do.end46.do.body75_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_core_probe.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_core_probe, %if.then87)) #5
          to label %do.end91 [label %if.then87], !srcloc !80

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_core_probe.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef %children.0) #5
  br label %do.end91

do.end91:                                         ; preds = %if.then87, %do.body75
  %26 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %core, align 4
  %call94 = call i32 @devm_mfd_add_devices(ptr noundef %dev, i32 noundef -1, ptr noundef %27, i32 noundef %children.0, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %do.end91.cleanup_crit_edge, label %err

do.end91.cleanup_crit_edge:                       ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err:                                              ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #7
  %free_resources = getelementptr inbounds %struct.wl1273_fm_platform_data, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %free_resources to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %free_resources, align 4
  call void %29() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1273_core_probe.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1273_core_probe, %if.then110)) #5
          to label %cleanup [label %if.then110], !srcloc !80

if.then110:                                       ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1273_core_probe.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then110, %err, %do.end91.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end17, %do.end9
  %retval.0 = phi i32 [ -22, %do.end17 ], [ -22, %do.end9 ], [ -12, %if.end19.cleanup_crit_edge ], [ 0, %do.end91.cleanup_crit_edge ], [ %call94, %if.then110 ], [ %call94, %err ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_read_reg(ptr nocapture noundef readonly %core, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  %b = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.wl1273_core, ptr %core, i32 0, i32 8
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b) #5
  %2 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %b, align 1, !annotation !81
  %3 = getelementptr inbounds [2 x i8], ptr %b, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !81
  %call = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %1, i8 noundef zeroext %reg, i8 noundef zeroext 2, ptr noundef nonnull %b) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv = zext i8 %reg to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %conv) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %b, align 1
  %conv3 = zext i8 %6 to i16
  %shl = shl nuw i16 %conv3, 8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 1
  %conv5 = zext i8 %8 to i16
  %or = or i16 %shl, %conv5
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %or, ptr %value, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -121, %do.end ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_write_cmd(ptr nocapture noundef readonly %core, i8 noundef zeroext %cmd, i16 noundef zeroext %param) #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.wl1273_core, ptr %core, i32 0, i32 8
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #5
  %2 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %3 = lshr i16 %param, 8
  %conv2 = trunc i16 %3 to i8
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv2, ptr %buf, align 1
  %conv5 = trunc i16 %param to i8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv5, ptr %2, align 1
  %call = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %1, i8 noundef zeroext %cmd, i8 noundef zeroext 2, ptr noundef nonnull %buf) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv6 = zext i8 %cmd to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %conv6) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_write_data(ptr nocapture noundef readonly %core, ptr noundef %data, i16 noundef zeroext %len) #2 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.wl1273_core, ptr %core, i32 0, i32 8
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #5
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 2
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %buf, align 4
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %len, ptr %len3, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %11, ptr noundef nonnull %msg, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_set_audio(ptr nocapture noundef %core, i32 noundef %new_mode) #2 align 64 {
entry:
  %buf.i120 = alloca [2 x i8], align 1
  %buf.i113 = alloca [2 x i8], align 1
  %buf.i104 = alloca [2 x i8], align 1
  %buf.i97 = alloca [2 x i8], align 1
  %buf.i90 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.wl1273_core, ptr %core, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.else28 [
    i32 4, label %entry.cleanup_crit_edge
    i32 8, label %entry.cleanup_crit_edge140
    i32 1, label %land.lhs.true
  ]

entry.cleanup_crit_edge140:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %3 = zext i32 %new_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %new_mode, label %land.lhs.true.if.end61_crit_edge [
    i32 0, label %if.then6
    i32 1, label %if.then23
  ]

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then6:                                         ; preds = %land.lhs.true
  %client1.i = getelementptr inbounds %struct.wl1273_core, ptr %core, i32 0, i32 8
  %4 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %buf.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %6, align 1
  %call.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %5, i8 noundef zeroext 30, i8 noundef zeroext 2, ptr noundef nonnull %buf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end8, label %wl1273_fm_write_cmd.exit

wl1273_fm_write_cmd.exit:                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 30) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  br label %cleanup

if.end8:                                          ; preds = %if.then6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %i2s_mode = getelementptr inbounds %struct.wl1273_core, ptr %core, i32 0, i32 3
  %9 = ptrtoint ptr %i2s_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i2s_mode, align 8
  %11 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i90) #5
  %13 = getelementptr inbounds [2 x i8], ptr %buf.i90, i32 0, i32 1
  %14 = lshr i32 %10, 8
  %conv2.i = trunc i32 %14 to i8
  %15 = ptrtoint ptr %buf.i90 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv2.i, ptr %buf.i90, align 1
  %conv5.i = trunc i32 %10 to i8
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv5.i, ptr %13, align 1
  %call.i92 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %12, i8 noundef zeroext 31, i8 noundef zeroext 2, ptr noundef nonnull %buf.i90) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool.not.i93 = icmp eq i32 %call.i92, 0
  br i1 %tobool.not.i93, label %if.end12, label %wl1273_fm_write_cmd.exit96

wl1273_fm_write_cmd.exit96:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i94 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i94, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 31) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i90) #5
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i90) #5
  %call13 = call i32 @wl1273_fm_write_cmd(ptr noundef %core, i8 noundef zeroext 29, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.if.end61_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12.if.end61_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then23:                                        ; preds = %land.lhs.true
  %client1.i98 = getelementptr inbounds %struct.wl1273_core, ptr %core, i32 0, i32 8
  %17 = ptrtoint ptr %client1.i98 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client1.i98, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i97) #5
  %19 = getelementptr inbounds [2 x i8], ptr %buf.i97, i32 0, i32 1
  %20 = ptrtoint ptr %buf.i97 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %buf.i97, align 1
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %19, align 1
  %call.i99 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %18, i8 noundef zeroext 29, i8 noundef zeroext 2, ptr noundef nonnull %buf.i97) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool.not.i100 = icmp eq i32 %call.i99, 0
  br i1 %tobool.not.i100, label %wl1273_fm_write_cmd.exit103.thread, label %wl1273_fm_write_cmd.exit103

wl1273_fm_write_cmd.exit103.thread:               ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i97) #5
  br label %if.end61

wl1273_fm_write_cmd.exit103:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i101 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i101, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 29) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i97) #5
  br label %cleanup

if.else28:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp30 = icmp eq i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_mode)
  %cmp33 = icmp eq i32 %new_mode, 0
  %or.cond88 = and i1 %cmp33, %cmp30
  br i1 %or.cond88, label %if.then35, label %if.else46

if.then35:                                        ; preds = %if.else28
  %i2s_mode36 = getelementptr inbounds %struct.wl1273_core, ptr %core, i32 0, i32 3
  %22 = ptrtoint ptr %i2s_mode36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i2s_mode36, align 8
  %client1.i105 = getelementptr inbounds %struct.wl1273_core, ptr %core, i32 0, i32 8
  %24 = ptrtoint ptr %client1.i105 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client1.i105, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i104) #5
  %26 = getelementptr inbounds [2 x i8], ptr %buf.i104, i32 0, i32 1
  %27 = lshr i32 %23, 8
  %conv2.i106 = trunc i32 %27 to i8
  %28 = ptrtoint ptr %buf.i104 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv2.i106, ptr %buf.i104, align 1
  %conv5.i107 = trunc i32 %23 to i8
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv5.i107, ptr %26, align 1
  %call.i108 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %25, i8 noundef zeroext 31, i8 noundef zeroext 2, ptr noundef nonnull %buf.i104) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool.not.i109 = icmp eq i32 %call.i108, 0
  br i1 %tobool.not.i109, label %if.end41, label %wl1273_fm_write_cmd.exit112

wl1273_fm_write_cmd.exit112:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i110 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i110, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 31) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i104) #5
  br label %cleanup

if.end41:                                         ; preds = %if.then35
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i104) #5
  %30 = ptrtoint ptr %client1.i105 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client1.i105, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i113) #5
  %32 = getelementptr inbounds [2 x i8], ptr %buf.i113, i32 0, i32 1
  %33 = ptrtoint ptr %buf.i113 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %buf.i113, align 1
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %32, align 1
  %call.i115 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %31, i8 noundef zeroext 63, i8 noundef zeroext 2, ptr noundef nonnull %buf.i113) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool.not.i116 = icmp eq i32 %call.i115, 0
  br i1 %tobool.not.i116, label %wl1273_fm_write_cmd.exit119.thread, label %wl1273_fm_write_cmd.exit119

wl1273_fm_write_cmd.exit119.thread:               ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i113) #5
  br label %if.end61

wl1273_fm_write_cmd.exit119:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i117 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i117, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 63) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i113) #5
  br label %cleanup

if.else46:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_mode)
  %cmp21128 = icmp eq i32 %new_mode, 1
  %or.cond89 = and i1 %cmp30, %cmp21128
  br i1 %or.cond89, label %if.then53, label %if.else46.if.end61_crit_edge

if.else46.if.end61_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then53:                                        ; preds = %if.else46
  %client1.i121 = getelementptr inbounds %struct.wl1273_core, ptr %core, i32 0, i32 8
  %35 = ptrtoint ptr %client1.i121 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client1.i121, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i120) #5
  %37 = getelementptr inbounds [2 x i8], ptr %buf.i120, i32 0, i32 1
  %38 = ptrtoint ptr %buf.i120 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %buf.i120, align 1
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %37, align 1
  %call.i122 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %36, i8 noundef zeroext 63, i8 noundef zeroext 2, ptr noundef nonnull %buf.i120) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool.not.i123 = icmp eq i32 %call.i122, 0
  br i1 %tobool.not.i123, label %wl1273_fm_write_cmd.exit126.thread, label %wl1273_fm_write_cmd.exit126

wl1273_fm_write_cmd.exit126.thread:               ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i120) #5
  br label %if.end61

wl1273_fm_write_cmd.exit126:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i124 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i124, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 63) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i120) #5
  br label %cleanup

if.end61:                                         ; preds = %wl1273_fm_write_cmd.exit126.thread, %if.else46.if.end61_crit_edge, %wl1273_fm_write_cmd.exit119.thread, %wl1273_fm_write_cmd.exit103.thread, %if.end12.if.end61_crit_edge, %land.lhs.true.if.end61_crit_edge
  %audio_mode = getelementptr inbounds %struct.wl1273_core, ptr %core, i32 0, i32 5
  %40 = ptrtoint ptr %audio_mode to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %new_mode, ptr %audio_mode, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %wl1273_fm_write_cmd.exit126, %wl1273_fm_write_cmd.exit119, %wl1273_fm_write_cmd.exit112, %wl1273_fm_write_cmd.exit103, %if.end12.cleanup_crit_edge, %wl1273_fm_write_cmd.exit96, %wl1273_fm_write_cmd.exit, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge140
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge140 ], [ %call.i, %wl1273_fm_write_cmd.exit ], [ %call.i92, %wl1273_fm_write_cmd.exit96 ], [ %call13, %if.end12.cleanup_crit_edge ], [ 0, %if.end61 ], [ %call.i99, %wl1273_fm_write_cmd.exit103 ], [ %call.i108, %wl1273_fm_write_cmd.exit112 ], [ %call.i115, %wl1273_fm_write_cmd.exit119 ], [ %call.i122, %wl1273_fm_write_cmd.exit126 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1273_fm_set_volume(ptr nocapture noundef %core, i32 noundef %volume) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %volume)
  %cmp = icmp ugt i32 %volume, 65535
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %volume1 = getelementptr inbounds %struct.wl1273_core, ptr %core, i32 0, i32 4
  %0 = ptrtoint ptr %volume1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %volume1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %volume)
  %cmp2 = icmp eq i32 %1, %volume
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %client1.i = getelementptr inbounds %struct.wl1273_core, ptr %core, i32 0, i32 8
  %2 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %4 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %5 = lshr i32 %volume, 8
  %conv2.i = trunc i32 %5 to i8
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv2.i, ptr %buf.i, align 1
  %conv5.i = trunc i32 %volume to i8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5.i, ptr %4, align 1
  %call.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %3, i8 noundef zeroext 28, i8 noundef zeroext 2, ptr noundef nonnull %buf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6, label %wl1273_fm_write_cmd.exit

wl1273_fm_write_cmd.exit:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 28) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %8 = ptrtoint ptr %volume1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %volume, ptr %volume1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %wl1273_fm_write_cmd.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %wl1273_fm_write_cmd.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !39, !41, !42, !44, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !68, !69, !70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_wl1273_core__293_258_wl1273_core_init7, !1, !"__initcall__kmod_wl1273_core__293_258_wl1273_core_init7", i1 false, i1 false}
!1 = !{!"../drivers/mfd/wl1273-core.c", i32 258, i32 1}
!2 = !{ptr @__exitcall_wl1273_core_exit, !3, !"__exitcall_wl1273_core_exit", i1 false, i1 false}
!3 = !{!"../drivers/mfd/wl1273-core.c", i32 259, i32 1}
!4 = !{ptr @__UNIQUE_ID_author294, !5, !"__UNIQUE_ID_author294", i1 false, i1 false}
!5 = !{!"../drivers/mfd/wl1273-core.c", i32 261, i32 1}
!6 = !{ptr @__UNIQUE_ID_description295, !7, !"__UNIQUE_ID_description295", i1 false, i1 false}
!7 = !{!"../drivers/mfd/wl1273-core.c", i32 262, i32 1}
!8 = !{ptr @__UNIQUE_ID_file296, !9, !"__UNIQUE_ID_file296", i1 false, i1 false}
!9 = !{!"../drivers/mfd/wl1273-core.c", i32 263, i32 1}
!10 = !{ptr @__UNIQUE_ID_license297, !9, !"__UNIQUE_ID_license297", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mfd/wl1273-core.c", i32 234, i32 11}
!13 = !{ptr @wl1273_core_driver, !14, !"wl1273_core_driver", i1 false, i1 false}
!14 = !{!"../drivers/mfd/wl1273-core.c", i32 232, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mfd/wl1273-core.c", i32 168, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @wl1273_core_probe.__UNIQUE_ID_ddebug288, !16, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mfd/wl1273-core.c", i32 171, i32 3}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @wl1273_core_probe._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @wl1273_core_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mfd/wl1273-core.c", i32 176, i32 3}
!29 = !{ptr @wl1273_core_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @wl1273_core_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @wl1273_core_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/mfd/wl1273-core.c", i32 186, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mfd/wl1273-core.c", i32 190, i32 2}
!36 = !{ptr @wl1273_core_probe.__UNIQUE_ID_ddebug289, !35, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mfd/wl1273-core.c", i32 193, i32 15}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/wl1273-core.c", i32 207, i32 3}
!41 = !{ptr @wl1273_core_probe.__UNIQUE_ID_ddebug290, !40, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mfd/wl1273-core.c", i32 208, i32 16}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mfd/wl1273-core.c", i32 214, i32 2}
!46 = !{ptr @wl1273_core_probe.__UNIQUE_ID_ddebug291, !45, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!47 = !{ptr @wl1273_core_probe.__UNIQUE_ID_ddebug292, !48, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!48 = !{!"../drivers/mfd/wl1273-core.c", i32 227, i32 2}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mfd/wl1273-core.c", i32 29, i32 3}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @wl1273_fm_read_reg._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @wl1273_fm_read_reg._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mfd/wl1273-core.c", i32 46, i32 3}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @wl1273_fm_write_cmd._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @wl1273_fm_write_cmd._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mfd/wl1273-core.c", i32 66, i32 3}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @wl1273_fm_write_data._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @wl1273_fm_write_data._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @wl1273_driver_id_table, !65, !"wl1273_driver_id_table", i1 false, i1 false}
!65 = !{!"../drivers/mfd/wl1273-core.c", i32 15, i32 35}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mfd/wl1273-core.c", i32 246, i32 3}
!68 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @wl1273_core_init._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @wl1273_core_init._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i64 2148998895, i64 2148998900, i64 2148998913, i64 2148998957, i64 2148998991, i64 2148999012}
!81 = !{!"auto-init"}
