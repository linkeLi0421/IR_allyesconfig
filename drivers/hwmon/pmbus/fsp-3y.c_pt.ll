; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/fsp-3y.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/fsp-3y.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.fsp3y_data = type { %struct.pmbus_driver_info, i32, i32, i8 }
%struct.pmbus_driver_info = type { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_fsp_3y__288_290_fsp3y_driver_init6 = internal global ptr @fsp3y_driver_init, section ".initcall6.init", align 4
@fsp3y_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @fsp3y_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @fsp3y_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_fsp3y_driver_exit = internal global ptr @fsp3y_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [32 x i8] c"fsp_3y.author=V\C3\A1clav Kubern\C3\A1t\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [64 x i8] c"fsp_3y.description=PMBus driver for FSP/3Y-Power power supplies\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [39 x i8] c"fsp_3y.file=drivers/hwmon/pmbus/fsp-3y\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [19 x i8] c"fsp_3y.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns293 = internal constant [23 x i8] c"fsp_3y.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fsp3y\00", [26 x i8] zeroinitializer }, align 32
@fsp3y_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ym2151e\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"yh5151e\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@fsp3y_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 249, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Device mismatch: Configured %s (%d), detected %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsp3y_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/hwmon/pmbus/fsp-3y.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsp3y_probe._entry_ptr = internal global ptr @fsp3y_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"YM-2151E\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"YH-5151E\00", [23 x i8] zeroinitializer }, align 32
@fsp3y_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 222, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unsupported model %.*s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsp3y_detect\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@fsp3y_detect._entry_ptr = internal global ptr @fsp3y_detect._entry, section ".printk_index", align 4
@fsp3y_info = internal constant { [2 x { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, i32, [29 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }], [232 x i8] } { [2 x { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, i32, [29 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }] [{ i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, i32, [29 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 2, [32 x i8] zeroinitializer, [8 x i32] zeroinitializer, [32 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, <{ i32, i32, i32, [29 x i32] }> <{ i32 1789, i32 20, i32 8, [29 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr @fsp3y_read_byte_data, ptr @fsp3y_read_word_data, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, i32, [29 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 3, [32 x i8] zeroinitializer, [8 x i32] zeroinitializer, [32 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, <{ i32, i32, i32, [29 x i32] }> <{ i32 3668, i32 84, i32 84, [29 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr @fsp3y_read_byte_data, ptr @fsp3y_read_word_data, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null }], [232 x i8] zeroinitializer }, align 32
@switch.table.fsp3y_read_byte_data = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 16, i32 17], [20 x i8] zeroinitializer }, align 32
@switch.table.fsp3y_read_word_data = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 16, i32 17], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.13 = internal global [13 x i64] [i64 11, i64 32, i64 121, i64 136, i64 137, i64 139, i64 140, i64 141, i64 142, i64 143, i64 144, i64 150, i64 151]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"fsp3y_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 282, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 284, i32 14 }
@___asan_gen_.22 = private unnamed_addr constant [9 x i8] c"fsp3y_id\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 226, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 248, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 216, i32 20 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 218, i32 25 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 222, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [11 x i8] c"fsp3y_info\00", align 1
@___asan_gen_.62 = private constant [32 x i8] c"../drivers/hwmon/pmbus/fsp-3y.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 172, i32 33 }
@___asan_gen_.64 = private unnamed_addr constant [34 x i8] c"switch.table.fsp3y_read_byte_data\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [34 x i8] c"switch.table.fsp3y_read_word_data\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_import_ns293, ptr @__UNIQUE_ID_license292, ptr @__exitcall_fsp3y_driver_exit, ptr @__initcall__kmod_fsp_3y__288_290_fsp3y_driver_init6, ptr @fsp3y_detect._entry, ptr @fsp3y_detect._entry_ptr, ptr @fsp3y_driver_exit, ptr @fsp3y_probe._entry, ptr @fsp3y_probe._entry_ptr, ptr @fsp3y_driver, ptr @.str, ptr @fsp3y_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @fsp3y_info, ptr @switch.table.fsp3y_read_byte_data, ptr @switch.table.fsp3y_read_word_data], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsp3y_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsp3y_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsp3y_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsp3y_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsp3y_info to i32), i32 984, i32 1216, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fsp3y_read_byte_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fsp3y_read_word_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsp3y_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @fsp3y_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsp3y_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @fsp3y_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsp3y_probe(ptr noundef %client) #2 align 64 {
entry:
  %buf.i = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 504, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %buf.i) #6
  %0 = call ptr @memset(ptr %buf.i, i32 255, i32 33)
  %call.i61 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -102, ptr noundef nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp.i = icmp slt i32 %call.i61, 0
  br i1 %cmp.i, label %if.end.fsp3y_detect.exit.thread_crit_edge, label %if.end.i

if.end.fsp3y_detect.exit.thread_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsp3y_detect.exit.thread

if.end.i:                                         ; preds = %if.end
  %arrayidx.i = getelementptr [33 x i8], ptr %buf.i, i32 0, i32 %call.i61
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i61)
  %cmp1.i = icmp eq i32 %call.i61, 8
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then2.i:                                       ; preds = %if.end.i
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %buf.i, ptr noundef nonnull dereferenceable(9) @.str.6, i32 9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.then2.i.if.end5_crit_edge, label %if.else.i

if.then2.i.if.end5_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.else.i:                                        ; preds = %if.then2.i
  %bcmp20.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %buf.i, ptr noundef nonnull dereferenceable(9) @.str.7, i32 9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp20.i)
  %tobool8.not.i = icmp eq i32 %bcmp20.i, 0
  br i1 %tobool8.not.i, label %if.else.i.if.end5_crit_edge, label %if.else.i.do.end.i_crit_edge

if.else.i.do.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.else.i.if.end5_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

do.end.i:                                         ; preds = %if.else.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call.i61, ptr noundef nonnull %buf.i) #10
  br label %fsp3y_detect.exit.thread

fsp3y_detect.exit.thread:                         ; preds = %do.end.i, %if.end.fsp3y_detect.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i61, %if.end.fsp3y_detect.exit.thread_crit_edge ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %buf.i) #6
  %chip63 = getelementptr inbounds %struct.fsp3y_data, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %chip63 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %retval.0.i.ph, ptr %chip63, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.else.i.if.end5_crit_edge, %if.then2.i.if.end5_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then2.i.if.end5_crit_edge ], [ 1, %if.else.i.if.end5_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %buf.i) #6
  %chip = getelementptr inbounds %struct.fsp3y_data, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %retval.0.i, ptr %chip, align 4
  %call6 = call ptr @i2c_match_id(ptr noundef nonnull @fsp3y_id, ptr noundef %client) #6
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call6, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %5)
  %cmp8.not = icmp eq i32 %retval.0.i, %5
  br i1 %cmp8.not, label %if.end5.if.end13_crit_edge, label %do.end

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %call6, i32 noundef %5, i32 noundef %retval.0.i) #10
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end5.if.end13_crit_edge
  %call14 = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %page = getelementptr inbounds %struct.fsp3y_data, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call14, ptr %page, align 4
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chip, align 4
  %arrayidx = getelementptr [2 x %struct.pmbus_driver_info], ptr @fsp3y_info, i32 0, i32 %8
  %9 = call ptr @memcpy(ptr %call.i, ptr %arrayidx, i32 492)
  %vout_linear_11 = getelementptr inbounds %struct.fsp3y_data, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %vout_linear_11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %vout_linear_11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp20 = icmp eq i32 %8, 1
  br i1 %cmp20, label %if.then21, label %if.end17.if.end30_crit_edge

if.end17.if.end30_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then21:                                        ; preds = %if.end17
  %call22 = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then21.cleanup_crit_edge, label %if.end25

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call22)
  %cmp26 = icmp eq i32 %call22, 255
  br i1 %cmp26, label %if.then27, label %if.end25.if.end30_crit_edge

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %vout_linear_11 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %vout_linear_11, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end25.if.end30_crit_edge, %if.end17.if.end30_crit_edge
  %call32 = call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then21.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %fsp3y_detect.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %if.end30 ], [ -12, %entry.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call22, %if.then21.cleanup_crit_edge ], [ %retval.0.i.ph, %fsp3y_detect.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_block_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsp3y_read_byte_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #6
  %vout_linear_11 = getelementptr inbounds %struct.fsp3y_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %vout_linear_11 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vout_linear_11, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %reg)
  %cmp = icmp eq i32 %reg, 32
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp.i = icmp slt i32 %page, 0
  br i1 %cmp.i, label %if.end.if.end4_crit_edge, label %if.end.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end.i:                                         ; preds = %if.end
  %chip.i = getelementptr inbounds %struct.fsp3y_data, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb3.i.i
  ]

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i.i:                                        ; preds = %if.end.i
  %5 = zext i32 %page to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %page, label %sw.bb.i.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i.i.if.end4.i_crit_edge
    i32 1, label %if.end4.fold.split.i
  ]

sw.bb.i.i.if.end4.i_crit_edge:                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

sw.bb.i.i.cleanup_crit_edge:                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %page)
  %6 = icmp ult i32 %page, 3
  br i1 %6, label %switch.lookup, label %sw.bb3.i.i.cleanup_crit_edge

sw.bb3.i.i.cleanup_crit_edge:                     ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.fold.split.i:                             ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

switch.lookup:                                    ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.fsp3y_read_byte_data, i32 0, i32 %page
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %switch.lookup, %if.end4.fold.split.i, %sw.bb.i.i.if.end4.i_crit_edge
  %retval.0.i28.i = phi i32 [ %page, %sw.bb.i.i.if.end4.i_crit_edge ], [ 32, %if.end4.fold.split.i ], [ %switch.load, %switch.lookup ]
  %page.i = getelementptr inbounds %struct.fsp3y_data, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %page.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %retval.0.i28.i)
  %cmp5.not.i = icmp eq i32 %9, %retval.0.i28.i
  br i1 %cmp5.not.i, label %if.end4.i.if.end4_crit_edge, label %if.then6.i

if.end4.i.if.end4_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then6.i:                                       ; preds = %if.end4.i
  %conv.i = trunc i32 %retval.0.i28.i to i8
  %call7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then6.i.cleanup_crit_edge, label %if.end11.i

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i28.i, ptr %page.i, align 4
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 30000, i32 noundef 2) #6
  br label %if.end4

if.end4:                                          ; preds = %if.end11.i, %if.end4.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %conv = trunc i32 %reg to i8
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then6.i.cleanup_crit_edge, %sw.bb3.i.i.cleanup_crit_edge, %sw.bb.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ 26, %entry.cleanup_crit_edge ], [ -22, %sw.bb.i.i.cleanup_crit_edge ], [ -22, %sw.bb3.i.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ %call7.i, %if.then6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsp3y_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #6
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %reg, label %entry.cleanup_crit_edge [
    i32 144, label %entry.sw.epilog_crit_edge
    i32 137, label %entry.sw.epilog_crit_edge26
    i32 140, label %entry.sw.epilog_crit_edge27
    i32 151, label %entry.sw.epilog_crit_edge28
    i32 150, label %entry.sw.epilog_crit_edge29
    i32 141, label %entry.sw.epilog_crit_edge30
    i32 142, label %entry.sw.epilog_crit_edge31
    i32 143, label %entry.sw.epilog_crit_edge32
    i32 136, label %entry.sw.epilog_crit_edge33
    i32 139, label %entry.sw.epilog_crit_edge34
    i32 121, label %entry.sw.epilog_crit_edge35
  ]

entry.sw.epilog_crit_edge35:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge34:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge33:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge32:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge31:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge30:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge29:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge28:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge27:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge26:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge26, %entry.sw.epilog_crit_edge27, %entry.sw.epilog_crit_edge28, %entry.sw.epilog_crit_edge29, %entry.sw.epilog_crit_edge30, %entry.sw.epilog_crit_edge31, %entry.sw.epilog_crit_edge32, %entry.sw.epilog_crit_edge33, %entry.sw.epilog_crit_edge34, %entry.sw.epilog_crit_edge35
  %call.i = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp.i = icmp slt i32 %page, 0
  br i1 %cmp.i, label %sw.epilog.if.end_crit_edge, label %if.end.i

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %sw.epilog
  %chip.i = getelementptr inbounds %struct.fsp3y_data, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chip.i, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %2, label %if.end.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb3.i.i
  ]

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i.i:                                        ; preds = %if.end.i
  %4 = zext i32 %page to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %page, label %sw.bb.i.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i.i.if.end4.i_crit_edge
    i32 1, label %if.end4.fold.split.i
  ]

sw.bb.i.i.if.end4.i_crit_edge:                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

sw.bb.i.i.cleanup_crit_edge:                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %page)
  %5 = icmp ult i32 %page, 3
  br i1 %5, label %switch.lookup, label %sw.bb3.i.i.cleanup_crit_edge

sw.bb3.i.i.cleanup_crit_edge:                     ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.fold.split.i:                             ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

switch.lookup:                                    ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.fsp3y_read_word_data, i32 0, i32 %page
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %switch.lookup, %if.end4.fold.split.i, %sw.bb.i.i.if.end4.i_crit_edge
  %retval.0.i28.i = phi i32 [ %page, %sw.bb.i.i.if.end4.i_crit_edge ], [ 32, %if.end4.fold.split.i ], [ %switch.load, %switch.lookup ]
  %page.i = getelementptr inbounds %struct.fsp3y_data, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %page.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %retval.0.i28.i)
  %cmp5.not.i = icmp eq i32 %8, %retval.0.i28.i
  br i1 %cmp5.not.i, label %if.end4.i.if.end_crit_edge, label %if.then6.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then6.i:                                       ; preds = %if.end4.i
  %conv.i = trunc i32 %retval.0.i28.i to i8
  %call7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then6.i.cleanup_crit_edge, label %if.end11.i

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i28.i, ptr %page.i, align 4
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 30000, i32 noundef 2) #6
  br label %if.end

if.end:                                           ; preds = %if.end11.i, %if.end4.i.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  %conv = trunc i32 %reg to i8
  %call2 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %vout_linear_11 = getelementptr inbounds %struct.fsp3y_data, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %vout_linear_11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vout_linear_11, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp ne i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 139, i32 %reg)
  %cmp8 = icmp eq i32 %reg, 139
  %or.cond = and i1 %cmp8, %tobool.not
  br i1 %or.cond, label %if.then10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl i32 %call2, 21
  %shr.i = ashr exact i32 %shl.i, 21
  %and = and i32 %shr.i, 65535
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then6.i.cleanup_crit_edge, %sw.bb3.i.i.cleanup_crit_edge, %sw.bb.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %and, %if.then10 ], [ %call2, %if.end6.cleanup_crit_edge ], [ -22, %sw.bb.i.i.cleanup_crit_edge ], [ -22, %sw.bb3.i.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ %call7.i, %if.then6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pmbus_get_driver_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !33, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_fsp_3y__288_290_fsp3y_driver_init6, !1, !"__initcall__kmod_fsp_3y__288_290_fsp3y_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/fsp-3y.c", i32 290, i32 1}
!2 = !{ptr @__exitcall_fsp3y_driver_exit, !1, !"__exitcall_fsp3y_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/fsp-3y.c", i32 292, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/fsp-3y.c", i32 293, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/fsp-3y.c", i32 294, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns293, !11, !"__UNIQUE_ID_import_ns293", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/fsp-3y.c", i32 295, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/fsp-3y.c", i32 284, i32 14}
!14 = !{ptr @fsp3y_driver, !15, !"fsp3y_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/fsp-3y.c", i32 282, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/fsp-3y.c", i32 248, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @fsp3y_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @fsp3y_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/pmbus/fsp-3y.c", i32 216, i32 20}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/pmbus/fsp-3y.c", i32 218, i32 25}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/pmbus/fsp-3y.c", i32 222, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @fsp3y_detect._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @fsp3y_detect._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @fsp3y_info, !35, !"fsp3y_info", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/pmbus/fsp-3y.c", i32 172, i32 33}
!36 = !{ptr @fsp3y_id, !37, !"fsp3y_id", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/pmbus/fsp-3y.c", i32 226, i32 35}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i8 0, i8 2}
