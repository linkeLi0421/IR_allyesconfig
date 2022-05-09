; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/max34440.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/max34440.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.max34440_data = type { i32, %struct.pmbus_driver_info }
%struct.pmbus_driver_info = type { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_max34440__288_527_max34440_driver_init6 = internal global ptr @max34440_driver_init, section ".initcall6.init", align 4
@max34440_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @max34440_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max34440_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max34440_driver_exit = internal global ptr @max34440_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [30 x i8] c"max34440.author=Guenter Roeck\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [62 x i8] c"max34440.description=PMBus driver for Maxim MAX34440/MAX34441\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [43 x i8] c"max34440.file=drivers/hwmon/pmbus/max34440\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"max34440.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns293 = internal constant [25 x i8] c"max34440.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max34440\00", [23 x i8] zeroinitializer }, align 32
@max34440_id = internal constant { [7 x %struct.i2c_device_id], [56 x i8] } { [7 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max34440\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max34441\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"max34446\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"max34451\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"max34460\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"max34461\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@max34440_info = internal constant { <{ { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ [14 x i32], [18 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ [12 x i32], [20 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, i32, i32, i32, i32, i32, [25 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ [21 x i32], [11 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ [18 x i32], [14 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ [22 x i32], [10 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } }>, [760 x i8] } { <{ { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ [14 x i32], [18 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ [12 x i32], [20 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, i32, i32, i32, i32, i32, [25 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ [21 x i32], [11 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ [18 x i32], [14 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ [22 x i32], [10 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } }> <{ { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ [14 x i32], [18 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 14, [32 x i8] zeroinitializer, [8 x i32] [i32 1, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0], [32 x i32] zeroinitializer, [8 x i32] [i32 1, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0], [8 x i32] zeroinitializer, [8 x i32] [i32 3, i32 3, i32 0, i32 3, i32 0, i32 2, i32 0, i32 0], <{ [14 x i32], [18 x i32] }> <{ [14 x i32] [i32 12308, i32 12308, i32 12308, i32 12308, i32 12308, i32 12308, i32 33280, i32 33280, i32 33280, i32 33280, i32 33280, i32 33280, i32 33280, i32 33280], [18 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr @max34440_read_byte_data, ptr @max34440_read_word_data, ptr @max34440_write_word_data, ptr null, ptr null, i32 0, ptr null, ptr null }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ [12 x i32], [20 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 12, [32 x i8] zeroinitializer, [8 x i32] [i32 1, i32 1, i32 0, i32 1, i32 0, i32 1, i32 1, i32 0], [32 x i32] zeroinitializer, [8 x i32] [i32 1, i32 1, i32 0, i32 1, i32 0, i32 1, i32 1, i32 0], [8 x i32] zeroinitializer, [8 x i32] [i32 3, i32 3, i32 0, i32 3, i32 0, i32 2, i32 0, i32 0], <{ [12 x i32], [20 x i32] }> <{ [12 x i32] [i32 12308, i32 12308, i32 12308, i32 12308, i32 12308, i32 65664, i32 33280, i32 33280, i32 33280, i32 33280, i32 33280, i32 33280], [20 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr @max34440_read_byte_data, ptr @max34440_read_word_data, ptr @max34440_write_word_data, ptr null, ptr null, i32 0, ptr null, ptr null }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, i32, i32, i32, i32, i32, [25 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 7, [32 x i8] zeroinitializer, [8 x i32] [i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0], [32 x i32] zeroinitializer, [8 x i32] [i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0], [8 x i32] zeroinitializer, [8 x i32] [i32 3, i32 3, i32 0, i32 3, i32 3, i32 2, i32 0, i32 0], <{ i32, i32, i32, i32, i32, i32, i32, [25 x i32] }> <{ i32 12372, i32 12308, i32 12372, i32 12308, i32 33280, i32 33280, i32 33280, [25 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr @max34440_read_byte_data, ptr @max34440_read_word_data, ptr @max34440_write_word_data, ptr null, ptr null, i32 0, ptr null, ptr null }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ [21 x i32], [11 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 21, [32 x i8] zeroinitializer, [8 x i32] [i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0], [32 x i32] zeroinitializer, [8 x i32] [i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0], [8 x i32] zeroinitializer, [8 x i32] [i32 0, i32 3, i32 0, i32 2, i32 0, i32 2, i32 0, i32 0], <{ [21 x i32], [11 x i32] }> <{ [21 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33280, i32 33280, i32 33280, i32 33280, i32 33280], [11 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr null, ptr @max34440_read_word_data, ptr @max34440_write_word_data, ptr null, ptr null, i32 0, ptr null, ptr null }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ [18 x i32], [14 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 18, [32 x i8] zeroinitializer, [8 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0], [32 x i32] zeroinitializer, [8 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0], [8 x i32] zeroinitializer, [8 x i32] [i32 0, i32 3, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0], <{ [18 x i32], [14 x i32] }> <{ [18 x i32] [i32 4100, i32 4100, i32 4100, i32 4100, i32 4100, i32 4100, i32 4100, i32 4100, i32 4100, i32 4100, i32 4100, i32 4100, i32 0, i32 33280, i32 33280, i32 33280, i32 33280, i32 33280], [14 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr null, ptr @max34440_read_word_data, ptr @max34440_write_word_data, ptr null, ptr null, i32 0, ptr null, ptr null }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ [22 x i32], [10 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 23, [32 x i8] zeroinitializer, [8 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0], [32 x i32] zeroinitializer, [8 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0], [8 x i32] zeroinitializer, [8 x i32] [i32 0, i32 3, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0], <{ [22 x i32], [10 x i32] }> <{ [22 x i32] [i32 4100, i32 4100, i32 4100, i32 4100, i32 4100, i32 4100, i32 4100, i32 4100, i32 4100, i32 4100, i32 4100, i32 4100, i32 4100, i32 4100, i32 4100, i32 4100, i32 0, i32 33280, i32 33280, i32 33280, i32 33280, i32 33280], [10 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr null, ptr @max34440_read_word_data, ptr @max34440_write_word_data, ptr null, ptr null, i32 0, ptr null, ptr null } }>, [760 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 16, i64 32, i64 33, i64 34, i64 35]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 123, i64 125]
@__sancov_gen_cov_switch_values.3 = internal global [16 x i64] [i64 14, i64 32, i64 70, i64 74, i64 257, i64 259, i64 260, i64 273, i64 275, i64 276, i64 278, i64 279, i64 280, i64 281, i64 283, i64 284]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.5 = internal global [8 x i64] [i64 6, i64 32, i64 70, i64 74, i64 260, i64 276, i64 280, i64 284]
@___asan_gen_.6 = private unnamed_addr constant [16 x i8] c"max34440_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 519, i32 26 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 521, i32 14 }
@___asan_gen_.12 = private unnamed_addr constant [12 x i8] c"max34440_id\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 507, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"max34440_info\00", align 1
@___asan_gen_.16 = private constant [34 x i8] c"../drivers/hwmon/pmbus/max34440.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 273, i32 33 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_import_ns293, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max34440_driver_exit, ptr @__initcall__kmod_max34440__288_527_max34440_driver_init6, ptr @max34440_driver_exit, ptr @max34440_driver, ptr @.str, ptr @max34440_id, ptr @max34440_info], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max34440_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max34440_id to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max34440_info to i32), i32 2952, i32 3712, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max34440_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max34440_driver) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max34440_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @i2c_del_driver(ptr noundef nonnull @max34440_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max34440_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 496, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @i2c_match_id(ptr noundef nonnull @max34440_id, ptr noundef %client) #3
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call1, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %call.i, align 4
  %info = getelementptr inbounds %struct.max34440_data, ptr %call.i, i32 0, i32 1
  %arrayidx = getelementptr [6 x %struct.pmbus_driver_info], ptr @max34440_info, i32 0, i32 %1
  %3 = call ptr @memcpy(ptr %info, ptr %arrayidx, i32 492)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.end.for.body.i_crit_edge, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %page.035.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %conv.i = trunc i32 %page.035.i to i8
  %call.i23 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %conv.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %cmp1.i = icmp slt i32 %call.i23, 0
  br i1 %cmp1.i, label %for.body.i.cleanup_crit_edge, label %if.end.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %call3.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -28) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %and.i = and i32 %call3.i, 63
  %4 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.end7.i.for.inc.i_crit_edge [
    i32 16, label %if.end7.i.for.inc.sink.split.i_crit_edge
    i32 32, label %if.end7.i.for.inc.sink.split.i_crit_edge26
    i32 33, label %sw.bb8.i
    i32 34, label %sw.bb12.i
    i32 35, label %sw.bb16.i
  ]

if.end7.i.for.inc.sink.split.i_crit_edge26:       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.sink.split.i

if.end7.i.for.inc.sink.split.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.sink.split.i

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

sw.bb8.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.sink.split.i

sw.bb12.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.sink.split.i

sw.bb16.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %sw.bb16.i, %sw.bb12.i, %sw.bb8.i, %if.end7.i.for.inc.sink.split.i_crit_edge, %if.end7.i.for.inc.sink.split.i_crit_edge26
  %.sink.i = phi i32 [ 4, %sw.bb8.i ], [ 8208, %sw.bb12.i ], [ 16, %sw.bb16.i ], [ 4100, %if.end7.i.for.inc.sink.split.i_crit_edge ], [ 4100, %if.end7.i.for.inc.sink.split.i_crit_edge26 ]
  %arrayidx.i = getelementptr %struct.max34440_data, ptr %call.i, i32 0, i32 1, i32 7, i32 %page.035.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink.i, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.end7.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %page.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.if.end9_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.if.end9_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.end9:                                          ; preds = %for.inc.i.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %call11 = tail call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef %info) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end9 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i23, %for.body.i.cleanup_crit_edge ], [ %call3.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max34440_read_byte_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %page)
  %cmp = icmp sgt i32 %page, -1
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 @pmbus_set_page(ptr noundef %client, i32 noundef %page, i32 noundef 255) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %ret.0 = phi i32 [ %call, %if.then.if.end3_crit_edge ], [ 0, %entry.if.end3_crit_edge ]
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %reg, label %if.end3.cleanup_crit_edge [
    i32 123, label %sw.bb
    i32 125, label %sw.bb15
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  %call4 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -128) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %sw.bb.cleanup_crit_edge, label %if.end7

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %and = shl i32 %call4, 5
  %1 = and i32 %and, 32
  %2 = or i32 %1, %ret.0
  %and10 = shl i32 %call4, 6
  %3 = and i32 %and10, 128
  %4 = or i32 %2, %3
  br label %cleanup

sw.bb15:                                          ; preds = %if.end3
  %call16 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -128) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %sw.bb15.cleanup_crit_edge, label %if.end19

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end19:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #5
  %and20 = and i32 %call16, 64
  %5 = or i32 %and20, %ret.0
  %and25 = shl i32 %call16, 2
  %6 = and i32 %and25, 128
  %7 = or i32 %5, %6
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %sw.bb15.cleanup_crit_edge, %if.end7, %sw.bb.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call4, %sw.bb.cleanup_crit_edge ], [ %call16, %sw.bb15.cleanup_crit_edge ], [ -61, %if.end3.cleanup_crit_edge ], [ %4, %if.end7 ], [ %7, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max34440_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #3
  %add.ptr = getelementptr i8, ptr %call, i32 -4
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %reg, label %sw.default [
    i32 70, label %sw.bb
    i32 74, label %sw.bb2
    i32 278, label %sw.bb4
    i32 279, label %sw.bb6
    i32 281, label %sw.bb8
    i32 283, label %sw.bb12
    i32 273, label %sw.bb14
    i32 275, label %sw.bb20
    i32 257, label %sw.bb26
    i32 259, label %sw.bb38
    i32 276, label %sw.bb40
    i32 280, label %entry.sw.epilog_crit_edge
    i32 284, label %entry.sw.epilog_crit_edge84
    i32 260, label %entry.sw.epilog_crit_edge85
  ]

entry.sw.epilog_crit_edge85:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.sw.epilog_crit_edge84:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext 74) #3
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext 70) #3
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call5 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -41) #3
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -44) #3
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr, align 4
  %3 = and i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp eq i32 %3, 2
  br i1 %switch, label %if.end, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  %call11 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -30) #3
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call13 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -43) #3
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp16.not = icmp eq i32 %5, 2
  br i1 %cmp16.not, label %if.end18, label %sw.bb14.cleanup_crit_edge

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end18:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #5
  %call19 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -31) #3
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp22.not = icmp eq i32 %7, 2
  br i1 %cmp22.not, label %if.end24, label %sw.bb20.cleanup_crit_edge

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end24:                                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #5
  %call25 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -32) #3
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %9, label %sw.bb26.cleanup_crit_edge [
    i32 2, label %sw.bb26.if.end36_crit_edge
    i32 4, label %sw.bb26.if.end36_crit_edge86
    i32 5, label %sw.bb26.if.end36_crit_edge87
  ]

sw.bb26.if.end36_crit_edge87:                     ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36

sw.bb26.if.end36_crit_edge86:                     ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36

sw.bb26.if.end36_crit_edge:                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end36:                                         ; preds = %sw.bb26.if.end36_crit_edge, %sw.bb26.if.end36_crit_edge86, %sw.bb26.if.end36_crit_edge87
  %call37 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -29) #3
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call39 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -42) #3
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp42.not = icmp eq i32 %12, 2
  br i1 %cmp42.not, label %sw.bb40.sw.epilog_crit_edge, label %sw.bb40.cleanup_crit_edge

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb40.sw.epilog_crit_edge:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb40.sw.epilog_crit_edge, %sw.bb38, %if.end36, %if.end24, %if.end18, %sw.bb12, %if.end, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge84, %entry.sw.epilog_crit_edge85
  %ret.0 = phi i32 [ -61, %sw.default ], [ %call39, %sw.bb38 ], [ %call37, %if.end36 ], [ %call25, %if.end24 ], [ %call19, %if.end18 ], [ %call13, %sw.bb12 ], [ %call11, %if.end ], [ %call7, %sw.bb6 ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ %call1, %sw.bb ], [ 0, %sw.bb40.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge84 ], [ 0, %entry.sw.epilog_crit_edge85 ]
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb40.cleanup_crit_edge, %sw.bb26.cleanup_crit_edge, %sw.bb20.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -6, %sw.bb8.cleanup_crit_edge ], [ -6, %sw.bb14.cleanup_crit_edge ], [ -6, %sw.bb20.cleanup_crit_edge ], [ -6, %sw.bb26.cleanup_crit_edge ], [ -6, %sw.bb40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max34440_write_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg, i16 noundef zeroext %word) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #3
  %add.ptr = getelementptr i8, ptr %call, i32 -4
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %reg, label %entry.sw.epilog_crit_edge [
    i32 70, label %sw.bb
    i32 74, label %sw.bb2
    i32 276, label %sw.bb4
    i32 280, label %sw.bb7
    i32 284, label %sw.bb13
    i32 260, label %sw.bb21
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext 74, i16 noundef zeroext %word) #3
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext 70, i16 noundef zeroext %word) #3
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %call5 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext -32, i16 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  %call6 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext -31, i16 noundef zeroext 0) #3
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %call8 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext -41, i16 noundef zeroext 32767) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %sw.bb7.sw.epilog_crit_edge

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end11:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  %call12 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext -44, i16 noundef zeroext 0) #3
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %call14 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext -43, i16 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true, label %sw.bb13.sw.epilog_crit_edge

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb13
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr, align 4
  %3 = and i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp eq i32 %3, 2
  br i1 %switch, label %if.then18, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %call19 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext -30, i16 noundef zeroext 0) #3
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %call22 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext -42, i16 noundef zeroext -32768) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %sw.bb21.sw.epilog_crit_edge

sw.bb21.sw.epilog_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

land.lhs.true24:                                  ; preds = %sw.bb21
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp26 = icmp eq i32 %5, 2
  br i1 %cmp26, label %if.then27, label %land.lhs.true24.sw.epilog_crit_edge

land.lhs.true24.sw.epilog_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then27:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #5
  %call28 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext -29, i16 noundef zeroext 0) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then27, %land.lhs.true24.sw.epilog_crit_edge, %sw.bb21.sw.epilog_crit_edge, %if.then18, %land.lhs.true.sw.epilog_crit_edge, %sw.bb13.sw.epilog_crit_edge, %if.end11, %sw.bb7.sw.epilog_crit_edge, %if.end, %sw.bb4.sw.epilog_crit_edge, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call22, %sw.bb21.sw.epilog_crit_edge ], [ %call28, %if.then27 ], [ 0, %land.lhs.true24.sw.epilog_crit_edge ], [ %call14, %sw.bb13.sw.epilog_crit_edge ], [ %call19, %if.then18 ], [ %call8, %sw.bb7.sw.epilog_crit_edge ], [ %call12, %if.end11 ], [ %call5, %sw.bb4.sw.epilog_crit_edge ], [ %call6, %if.end ], [ %call3, %sw.bb2 ], [ %call1, %sw.bb ], [ 0, %land.lhs.true.sw.epilog_crit_edge ], [ -61, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_set_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_word_data(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pmbus_get_driver_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_write_word_data(ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_max34440__288_527_max34440_driver_init6, !1, !"__initcall__kmod_max34440__288_527_max34440_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/max34440.c", i32 527, i32 1}
!2 = !{ptr @__exitcall_max34440_driver_exit, !1, !"__exitcall_max34440_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/max34440.c", i32 529, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/max34440.c", i32 530, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/max34440.c", i32 531, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns293, !11, !"__UNIQUE_ID_import_ns293", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/max34440.c", i32 532, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/max34440.c", i32 521, i32 14}
!14 = !{ptr @max34440_driver, !15, !"max34440_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/max34440.c", i32 519, i32 26}
!16 = !{ptr @max34440_info, !17, !"max34440_info", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/max34440.c", i32 273, i32 33}
!18 = !{ptr @max34440_id, !19, !"max34440_id", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/pmbus/max34440.c", i32 507, i32 35}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
