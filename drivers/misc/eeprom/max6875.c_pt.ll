; ModuleID = '/llk/IR_all_yes/drivers/misc/eeprom/max6875.c_pt.bc'
source_filename = "../drivers/misc/eeprom/max6875.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max6875_data = type { ptr, %struct.mutex, i32, [512 x i8], [32 x i32] }

@__initcall__kmod_max6875__289_203_max6875_driver_init6 = internal global ptr @max6875_driver_init, section ".initcall6.init", align 4
@max6875_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max6875_probe, ptr @max6875_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max6875_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max6875_driver_exit = internal global ptr @max6875_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [49 x i8] c"max6875.author=Ben Gardner <bgardner@wabtec.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [35 x i8] c"max6875.description=MAX6875 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [41 x i8] c"max6875.file=drivers/misc/eeprom/max6875\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [20 x i8] c"max6875.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max6875\00", [24 x i8] zeroinitializer }, align 32
@max6875_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max6875\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max6875_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@user_eeprom_attr = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 512, ptr null, ptr null, ptr @max6875_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@max6875_update_slice.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max6875_update_slice\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/misc/eeprom/max6875.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Starting update of slice %u\0A\00", [35 x i8] zeroinitializer }, align 32
@max6875_update_slice._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 78, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"address set failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max6875_update_slice._entry_ptr = internal global ptr @max6875_update_slice._entry, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"max6875_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 194, i32 26 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 196, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [11 x i8] c"max6875_id\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 188, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 161, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"user_eeprom_attr\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 124, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 126, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 70, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [33 x i8] c"../drivers/misc/eeprom/max6875.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 78, i32 4 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_max6875_driver_exit, ptr @__initcall__kmod_max6875__289_203_max6875_driver_init6, ptr @max6875_driver_exit, ptr @max6875_update_slice._entry, ptr @max6875_update_slice._entry_ptr, ptr @max6875_driver, ptr @.str, ptr @max6875_id, ptr @max6875_probe.__key, ptr @.str.1, ptr @user_eeprom_attr, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6875_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6875_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6875_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_eeprom_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6875_update_slice._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max6875_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max6875_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max6875_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @max6875_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6875_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 1179648
  call void @__sanitizer_cov_trace_const_cmp4(i32 1179648, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1179648
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool2.not = icmp eq i16 %8, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 740) #8
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %10 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter1, align 8
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr, align 2
  %add = add i16 %13, 1
  %call13 = tail call ptr @i2c_new_dummy_device(ptr noundef %11, i16 noundef zeroext %add) #5
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call13, ptr %call7.i.i, align 8
  %cmp.i40 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call13 to i32
  br label %exit_kfree

if.end19:                                         ; preds = %if.end8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %update_lock = getelementptr inbounds %struct.max6875_data, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @max6875_probe.__key) #5
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call20 = tail call i32 @sysfs_create_bin_file(ptr noundef %dev, ptr noundef nonnull @user_eeprom_attr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %exit_remove_fake

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

exit_remove_fake:                                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call7.i.i, align 8
  tail call void @i2c_unregister_device(ptr noundef %18) #5
  br label %exit_kfree

exit_kfree:                                       ; preds = %exit_remove_fake, %if.then16
  %err.0 = phi i32 [ %15, %if.then16 ], [ %call20, %exit_remove_fake ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %exit_kfree, %if.end19.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit_kfree ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6875_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @i2c_unregister_device(ptr noundef %3) #5
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef nonnull @user_eeprom_attr) #5
  tail call void @kfree(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6875_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef returned %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %kobj, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %conv = zext i32 %count to i64
  %add = add i64 %off, 68719476735
  %sub = add i64 %add, %conv
  %2 = lshr i64 %sub, 4
  %conv2 = trunc i64 %2 to i32
  %3 = lshr i64 %off, 4
  %conv4 = trunc i64 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4, i32 %conv2)
  %cmp.not14 = icmp sgt i32 %conv4, %conv2
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %slice.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %conv4, %entry.for.body_crit_edge ]
  tail call fastcc void @max6875_update_slice(ptr noundef %add.ptr.i, i32 noundef %slice.015)
  %inc = add i32 %slice.015, 1
  %cmp.not = icmp sgt i32 %inc, %conv2
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %idxprom = trunc i64 %off to i32
  %arrayidx = getelementptr %struct.max6875_data, ptr %1, i32 0, i32 3, i32 %idxprom
  %4 = call ptr @memcpy(ptr %buf, ptr %arrayidx, i32 %count)
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max6875_update_slice(ptr noundef %client, i32 noundef %slice) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %slice)
  %cmp = icmp sgt i32 %slice, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.max6875_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #5
  %shl = shl i32 %slice, 4
  %arrayidx = getelementptr %struct.max6875_data, ptr %1, i32 0, i32 3, i32 %shl
  %valid = getelementptr inbounds %struct.max6875_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %valid, align 4
  %shl2 = shl nuw i32 1, %slice
  %and = and i32 %3, %shl2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx3 = getelementptr %struct.max6875_data, ptr %1, i32 0, i32 4, i32 %slice
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp4 = icmp slt i32 %sub, 0
  br i1 %cmp4, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.exit_up_crit_edge

lor.lhs.false.exit_up_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_up

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max6875_update_slice.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max6875_update_slice, %if.then10)) #5
          to label %do.end [label %if.then10], !srcloc !43

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max6875_update_slice.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %slice) #5
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %neg = xor i32 %shl2, -1
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %valid, align 4
  %and14 = and i32 %8, %neg
  store i32 %and14, ptr %valid, align 4
  %add = add i32 %shl, 33024
  %9 = lshr i32 %add, 8
  %conv = trunc i32 %9 to i8
  %conv17 = trunc i32 %shl to i8
  %call18 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv, i8 noundef zeroext %conv17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.6) #9
  br label %exit_up

if.end25:                                         ; preds = %do.end
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %15(ptr noundef %11) #5
  %16 = and i32 %call.i.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool27.not = icmp eq i32 %16, 0
  br i1 %tobool27.not, label %for.body.preheader, label %if.then28

for.body.preheader:                               ; preds = %if.end25
  %call36 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %for.body.preheader.exit_up_crit_edge, label %if.end40

for.body.preheader.exit_up_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_up

if.then28:                                        ; preds = %if.end25
  %call29 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext -124, i8 noundef zeroext 16, ptr noundef %arrayidx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 16
  br i1 %cmp30.not, label %if.then28.if.end43_crit_edge, label %if.then28.exit_up_crit_edge

if.then28.exit_up_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_up

if.then28.if.end43_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.end40:                                         ; preds = %for.body.preheader
  %conv41 = trunc i32 %call36 to i8
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv41, ptr %arrayidx, align 1
  %call36.1 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.1)
  %cmp37.1 = icmp slt i32 %call36.1, 0
  br i1 %cmp37.1, label %if.end40.exit_up_crit_edge, label %if.end40.1

if.end40.exit_up_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_up

if.end40.1:                                       ; preds = %if.end40
  %conv41.1 = trunc i32 %call36.1 to i8
  %arrayidx42.1 = getelementptr i8, ptr %arrayidx, i32 1
  %18 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv41.1, ptr %arrayidx42.1, align 1
  %call36.2 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.2)
  %cmp37.2 = icmp slt i32 %call36.2, 0
  br i1 %cmp37.2, label %if.end40.1.exit_up_crit_edge, label %if.end40.2

if.end40.1.exit_up_crit_edge:                     ; preds = %if.end40.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_up

if.end40.2:                                       ; preds = %if.end40.1
  %conv41.2 = trunc i32 %call36.2 to i8
  %arrayidx42.2 = getelementptr i8, ptr %arrayidx, i32 2
  %19 = ptrtoint ptr %arrayidx42.2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv41.2, ptr %arrayidx42.2, align 1
  %call36.3 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.3)
  %cmp37.3 = icmp slt i32 %call36.3, 0
  br i1 %cmp37.3, label %if.end40.2.exit_up_crit_edge, label %if.end40.3

if.end40.2.exit_up_crit_edge:                     ; preds = %if.end40.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_up

if.end40.3:                                       ; preds = %if.end40.2
  %conv41.3 = trunc i32 %call36.3 to i8
  %arrayidx42.3 = getelementptr i8, ptr %arrayidx, i32 3
  %20 = ptrtoint ptr %arrayidx42.3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv41.3, ptr %arrayidx42.3, align 1
  %call36.4 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.4)
  %cmp37.4 = icmp slt i32 %call36.4, 0
  br i1 %cmp37.4, label %if.end40.3.exit_up_crit_edge, label %if.end40.4

if.end40.3.exit_up_crit_edge:                     ; preds = %if.end40.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_up

if.end40.4:                                       ; preds = %if.end40.3
  %conv41.4 = trunc i32 %call36.4 to i8
  %arrayidx42.4 = getelementptr i8, ptr %arrayidx, i32 4
  %21 = ptrtoint ptr %arrayidx42.4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv41.4, ptr %arrayidx42.4, align 1
  %call36.5 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.5)
  %cmp37.5 = icmp slt i32 %call36.5, 0
  br i1 %cmp37.5, label %if.end40.4.exit_up_crit_edge, label %if.end40.5

if.end40.4.exit_up_crit_edge:                     ; preds = %if.end40.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_up

if.end40.5:                                       ; preds = %if.end40.4
  %conv41.5 = trunc i32 %call36.5 to i8
  %arrayidx42.5 = getelementptr i8, ptr %arrayidx, i32 5
  %22 = ptrtoint ptr %arrayidx42.5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv41.5, ptr %arrayidx42.5, align 1
  %call36.6 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.6)
  %cmp37.6 = icmp slt i32 %call36.6, 0
  br i1 %cmp37.6, label %if.end40.5.exit_up_crit_edge, label %if.end40.6

if.end40.5.exit_up_crit_edge:                     ; preds = %if.end40.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_up

if.end40.6:                                       ; preds = %if.end40.5
  %conv41.6 = trunc i32 %call36.6 to i8
  %arrayidx42.6 = getelementptr i8, ptr %arrayidx, i32 6
  %23 = ptrtoint ptr %arrayidx42.6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv41.6, ptr %arrayidx42.6, align 1
  %call36.7 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.7)
  %cmp37.7 = icmp slt i32 %call36.7, 0
  br i1 %cmp37.7, label %if.end40.6.exit_up_crit_edge, label %if.end40.7

if.end40.6.exit_up_crit_edge:                     ; preds = %if.end40.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_up

if.end40.7:                                       ; preds = %if.end40.6
  %conv41.7 = trunc i32 %call36.7 to i8
  %arrayidx42.7 = getelementptr i8, ptr %arrayidx, i32 7
  %24 = ptrtoint ptr %arrayidx42.7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv41.7, ptr %arrayidx42.7, align 1
  %call36.8 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.8)
  %cmp37.8 = icmp slt i32 %call36.8, 0
  br i1 %cmp37.8, label %if.end40.7.exit_up_crit_edge, label %if.end40.8

if.end40.7.exit_up_crit_edge:                     ; preds = %if.end40.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_up

if.end40.8:                                       ; preds = %if.end40.7
  %conv41.8 = trunc i32 %call36.8 to i8
  %arrayidx42.8 = getelementptr i8, ptr %arrayidx, i32 8
  %25 = ptrtoint ptr %arrayidx42.8 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv41.8, ptr %arrayidx42.8, align 1
  %call36.9 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.9)
  %cmp37.9 = icmp slt i32 %call36.9, 0
  br i1 %cmp37.9, label %if.end40.8.exit_up_crit_edge, label %if.end40.9

if.end40.8.exit_up_crit_edge:                     ; preds = %if.end40.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_up

if.end40.9:                                       ; preds = %if.end40.8
  %conv41.9 = trunc i32 %call36.9 to i8
  %arrayidx42.9 = getelementptr i8, ptr %arrayidx, i32 9
  %26 = ptrtoint ptr %arrayidx42.9 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv41.9, ptr %arrayidx42.9, align 1
  %call36.10 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.10)
  %cmp37.10 = icmp slt i32 %call36.10, 0
  br i1 %cmp37.10, label %if.end40.9.exit_up_crit_edge, label %if.end40.10

if.end40.9.exit_up_crit_edge:                     ; preds = %if.end40.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_up

if.end40.10:                                      ; preds = %if.end40.9
  %conv41.10 = trunc i32 %call36.10 to i8
  %arrayidx42.10 = getelementptr i8, ptr %arrayidx, i32 10
  %27 = ptrtoint ptr %arrayidx42.10 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv41.10, ptr %arrayidx42.10, align 1
  %call36.11 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.11)
  %cmp37.11 = icmp slt i32 %call36.11, 0
  br i1 %cmp37.11, label %if.end40.10.exit_up_crit_edge, label %if.end40.11

if.end40.10.exit_up_crit_edge:                    ; preds = %if.end40.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_up

if.end40.11:                                      ; preds = %if.end40.10
  %conv41.11 = trunc i32 %call36.11 to i8
  %arrayidx42.11 = getelementptr i8, ptr %arrayidx, i32 11
  %28 = ptrtoint ptr %arrayidx42.11 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv41.11, ptr %arrayidx42.11, align 1
  %call36.12 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.12)
  %cmp37.12 = icmp slt i32 %call36.12, 0
  br i1 %cmp37.12, label %if.end40.11.exit_up_crit_edge, label %if.end40.12

if.end40.11.exit_up_crit_edge:                    ; preds = %if.end40.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_up

if.end40.12:                                      ; preds = %if.end40.11
  %conv41.12 = trunc i32 %call36.12 to i8
  %arrayidx42.12 = getelementptr i8, ptr %arrayidx, i32 12
  %29 = ptrtoint ptr %arrayidx42.12 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv41.12, ptr %arrayidx42.12, align 1
  %call36.13 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.13)
  %cmp37.13 = icmp slt i32 %call36.13, 0
  br i1 %cmp37.13, label %if.end40.12.exit_up_crit_edge, label %if.end40.13

if.end40.12.exit_up_crit_edge:                    ; preds = %if.end40.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_up

if.end40.13:                                      ; preds = %if.end40.12
  %conv41.13 = trunc i32 %call36.13 to i8
  %arrayidx42.13 = getelementptr i8, ptr %arrayidx, i32 13
  %30 = ptrtoint ptr %arrayidx42.13 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv41.13, ptr %arrayidx42.13, align 1
  %call36.14 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.14)
  %cmp37.14 = icmp slt i32 %call36.14, 0
  br i1 %cmp37.14, label %if.end40.13.exit_up_crit_edge, label %if.end40.14

if.end40.13.exit_up_crit_edge:                    ; preds = %if.end40.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_up

if.end40.14:                                      ; preds = %if.end40.13
  %conv41.14 = trunc i32 %call36.14 to i8
  %arrayidx42.14 = getelementptr i8, ptr %arrayidx, i32 14
  %31 = ptrtoint ptr %arrayidx42.14 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv41.14, ptr %arrayidx42.14, align 1
  %call36.15 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.15)
  %cmp37.15 = icmp slt i32 %call36.15, 0
  br i1 %cmp37.15, label %if.end40.14.exit_up_crit_edge, label %if.end40.15

if.end40.14.exit_up_crit_edge:                    ; preds = %if.end40.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_up

if.end40.15:                                      ; preds = %if.end40.14
  call void @__sanitizer_cov_trace_pc() #7
  %conv41.15 = trunc i32 %call36.15 to i8
  %arrayidx42.15 = getelementptr i8, ptr %arrayidx, i32 15
  %32 = ptrtoint ptr %arrayidx42.15 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv41.15, ptr %arrayidx42.15, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.end40.15, %if.then28.if.end43_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %arrayidx45 = getelementptr %struct.max6875_data, ptr %1, i32 0, i32 4, i32 %slice
  %34 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx45, align 4
  %35 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %valid, align 4
  %or = or i32 %36, %shl2
  store i32 %or, ptr %valid, align 4
  br label %exit_up

exit_up:                                          ; preds = %if.end43, %if.end40.14.exit_up_crit_edge, %if.end40.13.exit_up_crit_edge, %if.end40.12.exit_up_crit_edge, %if.end40.11.exit_up_crit_edge, %if.end40.10.exit_up_crit_edge, %if.end40.9.exit_up_crit_edge, %if.end40.8.exit_up_crit_edge, %if.end40.7.exit_up_crit_edge, %if.end40.6.exit_up_crit_edge, %if.end40.5.exit_up_crit_edge, %if.end40.4.exit_up_crit_edge, %if.end40.3.exit_up_crit_edge, %if.end40.2.exit_up_crit_edge, %if.end40.1.exit_up_crit_edge, %if.end40.exit_up_crit_edge, %if.then28.exit_up_crit_edge, %for.body.preheader.exit_up_crit_edge, %do.end23, %lor.lhs.false.exit_up_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %exit_up, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !28, !29, !30, !31, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_max6875__289_203_max6875_driver_init6, !1, !"__initcall__kmod_max6875__289_203_max6875_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/misc/eeprom/max6875.c", i32 203, i32 1}
!2 = !{ptr @__exitcall_max6875_driver_exit, !1, !"__exitcall_max6875_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/misc/eeprom/max6875.c", i32 205, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/misc/eeprom/max6875.c", i32 206, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/misc/eeprom/max6875.c", i32 207, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/misc/eeprom/max6875.c", i32 196, i32 11}
!12 = !{ptr @max6875_driver, !13, !"max6875_driver", i1 false, i1 false}
!13 = !{!"../drivers/misc/eeprom/max6875.c", i32 194, i32 26}
!14 = !{ptr @max6875_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/misc/eeprom/max6875.c", i32 161, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/misc/eeprom/max6875.c", i32 126, i32 11}
!19 = !{ptr @user_eeprom_attr, !20, !"user_eeprom_attr", i1 false, i1 false}
!20 = !{!"../drivers/misc/eeprom/max6875.c", i32 124, i32 35}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/misc/eeprom/max6875.c", i32 70, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @max6875_update_slice.__UNIQUE_ID_ddebug288, !22, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/misc/eeprom/max6875.c", i32 78, i32 4}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @max6875_update_slice._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @max6875_update_slice._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @max6875_id, !33, !"max6875_id", i1 false, i1 false}
!33 = !{!"../drivers/misc/eeprom/max6875.c", i32 188, i32 35}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 2148694680, i64 2148694685, i64 2148694698, i64 2148694742, i64 2148694776, i64 2148694797}
