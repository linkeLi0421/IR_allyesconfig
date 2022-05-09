; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/cy8ctmg110_ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/cy8ctmg110_ts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cy8ctmg110 = type { ptr, [32 x i8], ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_cy8ctmg110_ts__288_285_cy8ctmg110_driver_init6 = internal global ptr @cy8ctmg110_driver_init, section ".initcall6.init", align 4
@cy8ctmg110_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cy8ctmg110_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cy8ctmg110_pm, ptr null, ptr null }, ptr @cy8ctmg110_idtable, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cy8ctmg110_driver_exit = internal global ptr @cy8ctmg110_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [70 x i8] c"cy8ctmg110_ts.author=Samuli Konttila <samuli.konttila@aavamobile.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [56 x i8] c"cy8ctmg110_ts.description=cy8ctmg110 TouchScreen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [59 x i8] c"cy8ctmg110_ts.file=drivers/input/touchscreen/cy8ctmg110_ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [29 x i8] c"cy8ctmg110_ts.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cy8ctmg110\00", [21 x i8] zeroinitializer }, align 32
@cy8ctmg110_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cy8ctmg110_suspend, ptr @cy8ctmg110_resume, ptr @cy8ctmg110_suspend, ptr @cy8ctmg110_resume, ptr @cy8ctmg110_suspend, ptr @cy8ctmg110_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cy8ctmg110_idtable = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cy8ctmg110\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cy8ctmg110 Touchscreen\00", [41 x i8] zeroinitializer }, align 32
@cy8ctmg110_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 212, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to request reset GPIO: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cy8ctmg110_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/input/touchscreen/cy8ctmg110_ts.c\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cy8ctmg110_probe._entry_ptr = internal global ptr @cy8ctmg110_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"touch_reset_key\00", [16 x i8] zeroinitializer }, align 32
@cy8ctmg110_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 228, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"irq %d busy? error %d\0A\00", [41 x i8] zeroinitializer }, align 32
@cy8ctmg110_probe._entry_ptr.11 = internal global ptr @cy8ctmg110_probe._entry.9, section ".printk_index", align 4
@cy8ctmg110_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 75, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"i2c write data cmd failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cy8ctmg110_write_regs\00", [42 x i8] zeroinitializer }, align 32
@cy8ctmg110_write_regs._entry_ptr = internal global ptr @cy8ctmg110_write_regs._entry, section ".printk_index", align 4
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"cy8ctmg110_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 276, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 278, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"cy8ctmg110_pm\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 267, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"cy8ctmg110_idtable\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 269, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 194, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 196, i32 20 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 211, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 225, i32 20 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 227, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [45 x i8] c"../drivers/input/touchscreen/cy8ctmg110_ts.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 75, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_cy8ctmg110_driver_exit, ptr @__initcall__kmod_cy8ctmg110_ts__288_285_cy8ctmg110_driver_init6, ptr @cy8ctmg110_driver_exit, ptr @cy8ctmg110_probe._entry, ptr @cy8ctmg110_probe._entry.9, ptr @cy8ctmg110_probe._entry_ptr, ptr @cy8ctmg110_probe._entry_ptr.11, ptr @cy8ctmg110_write_regs._entry, ptr @cy8ctmg110_write_regs._entry_ptr, ptr @cy8ctmg110_driver, ptr @.str, ptr @cy8ctmg110_pm, ptr @cy8ctmg110_idtable, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy8ctmg110_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy8ctmg110_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy8ctmg110_idtable to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy8ctmg110_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy8ctmg110_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy8ctmg110_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cy8ctmg110_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cy8ctmg110_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cy8ctmg110_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @cy8ctmg110_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cy8ctmg110_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %i2c_data.i.i.i.i = alloca [6 x i8], align 1
  %i2c_data.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %6 = and i32 %call.i.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #6
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %client10 = getelementptr inbounds %struct.cy8ctmg110, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %client10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %client10, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %call.i, align 4
  %phys = getelementptr inbounds %struct.cy8ctmg110, ptr %call.i, i32 0, i32 1
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.dev_name.exit_crit_edge

if.end9.dev_name.exit_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end9.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %if.end9.dev_name.exit_crit_edge ]
  %call13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i)
  %13 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.2, ptr %call6, align 8
  %phys16 = getelementptr inbounds %struct.input_dev, ptr %call6, i32 0, i32 1
  %14 = ptrtoint ptr %phys16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %phys, ptr %phys16, align 4
  %id17 = getelementptr inbounds %struct.input_dev, ptr %call6, i32 0, i32 3
  %15 = ptrtoint ptr %id17 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 24, ptr %id17, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call6, i32 noundef 1, i32 noundef 330) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call6, i32 noundef 0, i32 noundef 0, i32 noundef 759, i32 noundef 4, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call6, i32 noundef 1, i32 noundef 0, i32 noundef 465, i32 noundef 4, i32 noundef 0) #6
  %call19 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef null, i32 noundef 7) #6
  %reset_gpio = getelementptr inbounds %struct.cy8ctmg110, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call19, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end26

if.then22:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call19 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %17) #9
  br label %cleanup

if.end26:                                         ; preds = %dev_name.exit
  %tobool.not.i89 = icmp eq ptr %call19, null
  br i1 %tobool.not.i89, label %if.end26.cy8ctmg110_power.exit_crit_edge, label %if.then.i

if.end26.cy8ctmg110_power.exit_crit_edge:         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cy8ctmg110_power.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %call19, i32 noundef 0) #6
  br label %cy8ctmg110_power.exit

cy8ctmg110_power.exit:                            ; preds = %if.then.i, %if.end26.cy8ctmg110_power.exit_crit_edge
  %18 = ptrtoint ptr %client10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client10, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %i2c_data.i.i) #6
  %20 = getelementptr inbounds [6 x i8], ptr %i2c_data.i.i, i32 0, i32 1
  %21 = getelementptr inbounds i8, ptr %i2c_data.i.i, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 -1, ptr %21, align 1
  %23 = ptrtoint ptr %i2c_data.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %i2c_data.i.i, align 1
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 16, ptr %20, align 1
  %reg_p.sroa.5.0..sroa_idx.i = getelementptr inbounds [6 x i8], ptr %i2c_data.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %reg_p.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %reg_p.sroa.5.0..sroa_idx.i, align 1
  %reg_p.sroa.7.0..sroa_idx.i = getelementptr inbounds [6 x i8], ptr %i2c_data.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %reg_p.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %reg_p.sroa.7.0..sroa_idx.i, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %19, ptr noundef nonnull %i2c_data.i.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp15.not.i.i = icmp eq i32 %call.i.i.i, 4
  br i1 %cmp15.not.i.i, label %cy8ctmg110_power.exit.cy8ctmg110_set_sleepmode.exit_crit_edge, label %do.end20.i.i

cy8ctmg110_power.exit.cy8ctmg110_set_sleepmode.exit_crit_edge: ; preds = %cy8ctmg110_power.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cy8ctmg110_set_sleepmode.exit

do.end20.i.i:                                     ; preds = %cy8ctmg110_power.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.12) #9
  br label %cy8ctmg110_set_sleepmode.exit

cy8ctmg110_set_sleepmode.exit:                    ; preds = %do.end20.i.i, %cy8ctmg110_power.exit.cy8ctmg110_set_sleepmode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %i2c_data.i.i) #6
  %call.i91 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @cy8ctmg110_shut_off, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool.not.i92 = icmp eq i32 %call.i91, 0
  br i1 %tobool.not.i92, label %if.end32, label %if.then.i93

if.then.i93:                                      ; preds = %cy8ctmg110_set_sleepmode.exit
  %27 = ptrtoint ptr %client10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client10, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %i2c_data.i.i.i.i) #6
  %29 = getelementptr inbounds [6 x i8], ptr %i2c_data.i.i.i.i, i32 0, i32 1
  %30 = getelementptr inbounds i8, ptr %i2c_data.i.i.i.i, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 -1, ptr %30, align 1
  %32 = ptrtoint ptr %i2c_data.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %i2c_data.i.i.i.i, align 1
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %29, align 1
  %reg_p.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds [6 x i8], ptr %i2c_data.i.i.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %reg_p.sroa.5.0..sroa_idx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %reg_p.sroa.5.0..sroa_idx.i.i.i, align 1
  %reg_p.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds [6 x i8], ptr %i2c_data.i.i.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %reg_p.sroa.7.0..sroa_idx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 5, ptr %reg_p.sroa.7.0..sroa_idx.i.i.i, align 1
  %call.i.i.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %28, ptr noundef nonnull %i2c_data.i.i.i.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i.i.i)
  %cmp15.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 4
  br i1 %cmp15.not.i.i.i.i, label %if.then.i93.cy8ctmg110_set_sleepmode.exit.i.i_crit_edge, label %do.end20.i.i.i.i

if.then.i93.cy8ctmg110_set_sleepmode.exit.i.i_crit_edge: ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cy8ctmg110_set_sleepmode.exit.i.i

do.end20.i.i.i.i:                                 ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.12) #9
  br label %cy8ctmg110_set_sleepmode.exit.i.i

cy8ctmg110_set_sleepmode.exit.i.i:                ; preds = %do.end20.i.i.i.i, %if.then.i93.cy8ctmg110_set_sleepmode.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %i2c_data.i.i.i.i) #6
  %36 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reset_gpio, align 4
  %tobool.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i, label %cy8ctmg110_set_sleepmode.exit.i.i.cleanup_crit_edge, label %if.then.i.i.i

cy8ctmg110_set_sleepmode.exit.i.i.cleanup_crit_edge: ; preds = %cy8ctmg110_set_sleepmode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.i.i:                                    ; preds = %cy8ctmg110_set_sleepmode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %37, i32 noundef 1) #6
  br label %cleanup

if.end32:                                         ; preds = %cy8ctmg110_set_sleepmode.exit
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq, align 4
  %call34 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %39, ptr noundef null, ptr noundef nonnull @cy8ctmg110_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.8, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end42, label %do.end39

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %41, i32 noundef %call34) #9
  br label %cleanup

if.end42:                                         ; preds = %if.end32
  %call43 = call i32 @input_register_device(ptr noundef nonnull %call6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end42.cleanup_crit_edge, %do.end39, %if.then.i.i.i, %cy8ctmg110_set_sleepmode.exit.i.i.cleanup_crit_edge, %if.then22, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then22 ], [ %call34, %do.end39 ], [ 0, %if.end46 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %call43, %if.end42.cleanup_crit_edge ], [ %call.i91, %cy8ctmg110_set_sleepmode.exit.i.i.cleanup_crit_edge ], [ %call.i91, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cy8ctmg110_shut_off(ptr nocapture noundef readonly %_ts) #2 align 64 {
entry:
  %i2c_data.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %client1.i.i = getelementptr inbounds %struct.cy8ctmg110, ptr %_ts, i32 0, i32 2
  %0 = ptrtoint ptr %client1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %i2c_data.i.i) #6
  %2 = getelementptr inbounds [6 x i8], ptr %i2c_data.i.i, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %i2c_data.i.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 -1, ptr %3, align 1
  %5 = ptrtoint ptr %i2c_data.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %i2c_data.i.i, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %2, align 1
  %reg_p.sroa.5.0..sroa_idx.i = getelementptr inbounds [6 x i8], ptr %i2c_data.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %reg_p.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %reg_p.sroa.5.0..sroa_idx.i, align 1
  %reg_p.sroa.7.0..sroa_idx.i = getelementptr inbounds [6 x i8], ptr %i2c_data.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %reg_p.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %reg_p.sroa.7.0..sroa_idx.i, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %i2c_data.i.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp15.not.i.i = icmp eq i32 %call.i.i.i, 4
  br i1 %cmp15.not.i.i, label %entry.cy8ctmg110_set_sleepmode.exit_crit_edge, label %do.end20.i.i

entry.cy8ctmg110_set_sleepmode.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cy8ctmg110_set_sleepmode.exit

do.end20.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.12) #9
  br label %cy8ctmg110_set_sleepmode.exit

cy8ctmg110_set_sleepmode.exit:                    ; preds = %do.end20.i.i, %entry.cy8ctmg110_set_sleepmode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %i2c_data.i.i) #6
  %reset_gpio.i = getelementptr inbounds %struct.cy8ctmg110, ptr %_ts, i32 0, i32 3
  %9 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %cy8ctmg110_set_sleepmode.exit.cy8ctmg110_power.exit_crit_edge, label %if.then.i

cy8ctmg110_set_sleepmode.exit.cy8ctmg110_power.exit_crit_edge: ; preds = %cy8ctmg110_set_sleepmode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cy8ctmg110_power.exit

if.then.i:                                        ; preds = %cy8ctmg110_set_sleepmode.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %10, i32 noundef 1) #6
  br label %cy8ctmg110_power.exit

cy8ctmg110_power.exit:                            ; preds = %if.then.i, %cy8ctmg110_set_sleepmode.exit.cy8ctmg110_power.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cy8ctmg110_irq_thread(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %cmd.addr.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %reg_p.i = alloca [13 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %reg_p.i) #6
  %2 = getelementptr inbounds [13 x i8], ptr %reg_p.i, i32 0, i32 2
  %3 = call ptr @memset(ptr %reg_p.i, i32 0, i32 13)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %4 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %cmd.addr.i.i, align 1
  %client1.i.i = getelementptr inbounds %struct.cy8ctmg110, ptr %dev_id, i32 0, i32 2
  %5 = ptrtoint ptr %client1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %7 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr2.i.i, align 2
  %11 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i.i, align 2
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %7, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cmd.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %15 = load i16, ptr %addr2.i.i, align 2
  %16 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %18 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 9, ptr %len7.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %reg_p.i, ptr %buf8.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 3
  %20 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.not.i, label %if.end.i, label %entry.cy8ctmg110_touch_pos.exit_crit_edge

entry.cy8ctmg110_touch_pos.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cy8ctmg110_touch_pos.exit

if.end.i:                                         ; preds = %entry
  %22 = getelementptr inbounds [13 x i8], ptr %reg_p.i, i32 0, i32 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp3.i = icmp eq i8 %24, 0
  br i1 %cmp3.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 330, i32 noundef 0) #6
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 330, i32 noundef 1) #6
  %25 = ptrtoint ptr %reg_p.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %reg_p.i, align 2
  %conv8.i = zext i16 %26 to i32
  call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 0, i32 noundef %conv8.i) #6
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %2, align 2
  %conv12.i = zext i16 %28 to i32
  call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef %conv12.i) #6
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.then5.i
  call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %cy8ctmg110_touch_pos.exit

cy8ctmg110_touch_pos.exit:                        ; preds = %if.end13.i, %entry.cy8ctmg110_touch_pos.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %reg_p.i) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cy8ctmg110_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %i2c_data.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %device_may_wakeup.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.if.end_crit_edge

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %client1.i.i = getelementptr inbounds %struct.cy8ctmg110, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %client1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %i2c_data.i.i) #6
  %7 = getelementptr inbounds [6 x i8], ptr %i2c_data.i.i, i32 0, i32 1
  %8 = getelementptr inbounds i8, ptr %i2c_data.i.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 -1, ptr %8, align 1
  %10 = ptrtoint ptr %i2c_data.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %i2c_data.i.i, align 1
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %7, align 1
  %reg_p.sroa.5.0..sroa_idx.i = getelementptr inbounds [6 x i8], ptr %i2c_data.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %reg_p.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %reg_p.sroa.5.0..sroa_idx.i, align 1
  %reg_p.sroa.7.0..sroa_idx.i = getelementptr inbounds [6 x i8], ptr %i2c_data.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %reg_p.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 5, ptr %reg_p.sroa.7.0..sroa_idx.i, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %i2c_data.i.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp15.not.i.i = icmp eq i32 %call.i.i.i, 4
  br i1 %cmp15.not.i.i, label %if.then.cy8ctmg110_set_sleepmode.exit_crit_edge, label %do.end20.i.i

if.then.cy8ctmg110_set_sleepmode.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cy8ctmg110_set_sleepmode.exit

do.end20.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.12) #9
  br label %cy8ctmg110_set_sleepmode.exit

cy8ctmg110_set_sleepmode.exit:                    ; preds = %do.end20.i.i, %if.then.cy8ctmg110_set_sleepmode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %i2c_data.i.i) #6
  %reset_gpio.i = getelementptr inbounds %struct.cy8ctmg110, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reset_gpio.i, align 4
  %tobool.not.i6 = icmp eq ptr %15, null
  br i1 %tobool.not.i6, label %cy8ctmg110_set_sleepmode.exit.if.end_crit_edge, label %if.then.i

cy8ctmg110_set_sleepmode.exit.if.end_crit_edge:   ; preds = %cy8ctmg110_set_sleepmode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %cy8ctmg110_set_sleepmode.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %15, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i, %cy8ctmg110_set_sleepmode.exit.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cy8ctmg110_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %i2c_data.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %device_may_wakeup.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.if.end_crit_edge

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %reset_gpio.i = getelementptr inbounds %struct.cy8ctmg110, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset_gpio.i, align 4
  %tobool.not.i6 = icmp eq ptr %6, null
  br i1 %tobool.not.i6, label %if.then.cy8ctmg110_power.exit_crit_edge, label %if.then.i

if.then.cy8ctmg110_power.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cy8ctmg110_power.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %6, i32 noundef 0) #6
  br label %cy8ctmg110_power.exit

cy8ctmg110_power.exit:                            ; preds = %if.then.i, %if.then.cy8ctmg110_power.exit_crit_edge
  %client1.i.i = getelementptr inbounds %struct.cy8ctmg110, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %client1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %i2c_data.i.i) #6
  %9 = getelementptr inbounds [6 x i8], ptr %i2c_data.i.i, i32 0, i32 1
  %10 = getelementptr inbounds i8, ptr %i2c_data.i.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 -1, ptr %10, align 1
  %12 = ptrtoint ptr %i2c_data.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %i2c_data.i.i, align 1
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %9, align 1
  %reg_p.sroa.5.0..sroa_idx.i = getelementptr inbounds [6 x i8], ptr %i2c_data.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %reg_p.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %reg_p.sroa.5.0..sroa_idx.i, align 1
  %reg_p.sroa.7.0..sroa_idx.i = getelementptr inbounds [6 x i8], ptr %i2c_data.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %reg_p.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %reg_p.sroa.7.0..sroa_idx.i, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %i2c_data.i.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp15.not.i.i = icmp eq i32 %call.i.i.i, 4
  br i1 %cmp15.not.i.i, label %cy8ctmg110_power.exit.cy8ctmg110_set_sleepmode.exit_crit_edge, label %do.end20.i.i

cy8ctmg110_power.exit.cy8ctmg110_set_sleepmode.exit_crit_edge: ; preds = %cy8ctmg110_power.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cy8ctmg110_set_sleepmode.exit

do.end20.i.i:                                     ; preds = %cy8ctmg110_power.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.12) #9
  br label %cy8ctmg110_set_sleepmode.exit

cy8ctmg110_set_sleepmode.exit:                    ; preds = %do.end20.i.i, %cy8ctmg110_power.exit.cy8ctmg110_set_sleepmode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %i2c_data.i.i) #6
  br label %if.end

if.end:                                           ; preds = %cy8ctmg110_set_sleepmode.exit, %device_may_wakeup.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_cy8ctmg110_ts__288_285_cy8ctmg110_driver_init6, !1, !"__initcall__kmod_cy8ctmg110_ts__288_285_cy8ctmg110_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/cy8ctmg110_ts.c", i32 285, i32 1}
!2 = !{ptr @__exitcall_cy8ctmg110_driver_exit, !1, !"__exitcall_cy8ctmg110_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/cy8ctmg110_ts.c", i32 287, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/cy8ctmg110_ts.c", i32 288, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/cy8ctmg110_ts.c", i32 289, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/cy8ctmg110_ts.c", i32 278, i32 11}
!12 = !{ptr @cy8ctmg110_driver, !13, !"cy8ctmg110_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/cy8ctmg110_ts.c", i32 276, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/cy8ctmg110_ts.c", i32 194, i32 4}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/cy8ctmg110_ts.c", i32 196, i32 20}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/touchscreen/cy8ctmg110_ts.c", i32 211, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cy8ctmg110_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @cy8ctmg110_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/cy8ctmg110_ts.c", i32 225, i32 20}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/cy8ctmg110_ts.c", i32 227, i32 3}
!30 = !{ptr @cy8ctmg110_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cy8ctmg110_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/cy8ctmg110_ts.c", i32 75, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @cy8ctmg110_write_regs._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @cy8ctmg110_write_regs._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @cy8ctmg110_pm, !38, !"cy8ctmg110_pm", i1 false, i1 false}
!38 = !{!"../drivers/input/touchscreen/cy8ctmg110_ts.c", i32 267, i32 8}
!39 = !{ptr @cy8ctmg110_idtable, !40, !"cy8ctmg110_idtable", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/cy8ctmg110_ts.c", i32 269, i32 35}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
