; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/stpddc60.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/stpddc60.c"
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_stpddc60__296_244_stpddc60_driver_init6 = internal global ptr @stpddc60_driver_init, section ".initcall6.init", align 4
@stpddc60_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @stpddc60_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @stpddc60_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_stpddc60_driver_exit = internal global ptr @stpddc60_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [54 x i8] c"stpddc60.author=Erik Rosen <erik.rosen@metormote.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [50 x i8] c"stpddc60.description=PMBus driver for ST STPDDC60\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [43 x i8] c"stpddc60.file=drivers/hwmon/pmbus/stpddc60\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [21 x i8] c"stpddc60.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns301 = internal constant [25 x i8] c"stpddc60.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stpddc60\00", [23 x i8] zeroinitializer }, align 32
@stpddc60_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"stpddc60\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"bmr481\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@stpddc60_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 210, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read Manufacturer Model\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stpddc60_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/hwmon/pmbus/stpddc60.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stpddc60_probe._entry_ptr = internal global ptr @stpddc60_probe._entry, section ".printk_index", align 4
@stpddc60_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 218, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unsupported device\0A\00", [44 x i8] zeroinitializer }, align 32
@stpddc60_probe._entry_ptr.8 = internal global ptr @stpddc60_probe._entry.6, section ".printk_index", align 4
@stpddc60_info = internal global { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, [116 x i8] } { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 1, [32 x i8] zeroinitializer, [8 x i32] zeroinitializer, [32 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, <{ i32, [31 x i32] }> <{ i32 62037, [31 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null }, [116 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 64, i64 68, i64 139]
@__sancov_gen_cov_switch_values.10 = internal global [11 x i64] [i64 9, i64 32, i64 64, i64 68, i64 70, i64 74, i64 79, i64 81, i64 85, i64 89, i64 104]
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"stpddc60_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 236, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 238, i32 14 }
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"stpddc60_id\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 20, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 210, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 218, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"stpddc60_info\00", align 1
@___asan_gen_.45 = private constant [34 x i8] c"../drivers/hwmon/pmbus/stpddc60.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 27, i32 33 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_import_ns301, ptr @__UNIQUE_ID_license300, ptr @__exitcall_stpddc60_driver_exit, ptr @__initcall__kmod_stpddc60__296_244_stpddc60_driver_init6, ptr @stpddc60_driver_exit, ptr @stpddc60_probe._entry, ptr @stpddc60_probe._entry.6, ptr @stpddc60_probe._entry_ptr, ptr @stpddc60_probe._entry_ptr.8, ptr @stpddc60_driver, ptr @.str, ptr @stpddc60_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @stpddc60_info], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stpddc60_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stpddc60_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stpddc60_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stpddc60_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stpddc60_info to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stpddc60_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @stpddc60_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stpddc60_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @stpddc60_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stpddc60_probe(ptr noundef %client) #2 align 64 {
entry:
  %device_id = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %device_id) #9
  %0 = call ptr @memset(ptr %device_id, i32 255, i32 33)
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %2) #9
  %and.i = and i32 %call.i.i, 50855936
  call void @__sanitizer_cov_trace_const_cmp4(i32 50855936, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 50855936
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -102, ptr noundef nonnull %device_id) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %call10 = call i32 @strlen(ptr noundef nonnull @stpddc60_id) #12
  %call11 = call i32 @strncasecmp(ptr noundef nonnull @stpddc60_id, ptr noundef nonnull %device_id, i32 noundef %call10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.body.preheader.if.end23_crit_edge, label %for.cond

for.body.preheader.if.end23_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %call10.1 = call i32 @strlen(ptr noundef getelementptr inbounds ([3 x %struct.i2c_device_id], ptr @stpddc60_id, i32 0, i32 1)) #12
  %call11.1 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([3 x %struct.i2c_device_id], ptr @stpddc60_id, i32 0, i32 1), ptr noundef nonnull %device_id, i32 noundef %call10.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.1)
  %tobool12.not.1 = icmp eq i32 %call11.1, 0
  br i1 %tobool12.not.1, label %for.cond.if.end23_crit_edge, label %for.cond.1

for.cond.if.end23_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.7) #13
  br label %cleanup

if.end23:                                         ; preds = %for.cond.if.end23_crit_edge, %for.body.preheader.if.end23_crit_edge
  store ptr @stpddc60_read_byte_data, ptr getelementptr inbounds ({ i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, ptr @stpddc60_info, i32 0, i32 9), align 4
  store ptr @stpddc60_read_word_data, ptr getelementptr inbounds ({ i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, ptr @stpddc60_info, i32 0, i32 10), align 4
  store ptr @stpddc60_write_word_data, ptr getelementptr inbounds ({ i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, ptr @stpddc60_info, i32 0, i32 11), align 4
  %call24 = call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef nonnull @stpddc60_info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  call void @pmbus_set_update(ptr noundef %client, i8 noundef zeroext 64, i1 noundef zeroext true) #9
  call void @pmbus_set_update(ptr noundef %client, i8 noundef zeroext 68, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end23.cleanup_crit_edge, %for.cond.1, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %if.end27 ], [ -19, %for.cond.1 ], [ -19, %entry.cleanup_crit_edge ], [ %call24, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %device_id) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_block_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stpddc60_read_byte_data(ptr nocapture noundef readnone %client, i32 noundef %page, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp = icmp sgt i32 %page, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %reg)
  %cond = icmp eq i32 %reg, 32
  %. = select i1 %cond, i32 24, i32 -61
  %retval.0 = select i1 %cmp, i32 -6, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stpddc60_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp = icmp sgt i32 %page, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %if.end.cleanup_crit_edge [
    i32 139, label %sw.bb
    i32 64, label %if.end.sw.bb4_crit_edge
    i32 68, label %if.end.sw.bb4_crit_edge23
  ]

if.end.sw.bb4_crit_edge23:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -46) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  %and = and i32 %call, 2047
  %spec.select = select i1 %cmp1, i32 %call, i32 %and
  br label %cleanup

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge23
  %conv = trunc i32 %reg to i8
  %call5 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  %and10 = and i32 %call5, 2047
  %spec.select22 = select i1 %cmp6, i32 %call5, i32 %and10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ -61, %if.end.cleanup_crit_edge ], [ %spec.select, %sw.bb ], [ %spec.select22, %sw.bb4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stpddc60_write_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg, i16 noundef zeroext %word) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp = icmp sgt i32 %page, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %reg, label %if.end.cleanup_crit_edge [
    i32 64, label %sw.bb
    i32 68, label %sw.bb6
    i32 85, label %if.end.sw.bb13_crit_edge
    i32 89, label %if.end.sw.bb13_crit_edge68
    i32 79, label %if.end.sw.bb13_crit_edge69
    i32 81, label %if.end.sw.bb13_crit_edge70
    i32 70, label %if.end.sw.bb13_crit_edge71
    i32 74, label %if.end.sw.bb13_crit_edge72
    i32 104, label %if.end.sw.bb13_crit_edge73
  ]

if.end.sw.bb13_crit_edge73:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13

if.end.sw.bb13_crit_edge72:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13

if.end.sw.bb13_crit_edge71:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13

if.end.sw.bb13_crit_edge70:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13

if.end.sw.bb13_crit_edge69:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13

if.end.sw.bb13_crit_edge68:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13

if.end.sw.bb13_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef 255, i8 noundef zeroext 33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %sw.bb.cleanup_crit_edge, label %if.end3

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %sw.bb
  %1 = mul i32 %call, 5
  %add.i = add i32 %1, 245
  %conv.i = zext i16 %word to i32
  %mul1.i = mul nuw nsw i32 %conv.i, 1000
  %2 = lshr i32 %mul1.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %add.i)
  %cmp.i.not = icmp slt i32 %2, %add.i
  br i1 %cmp.i.not, label %if.end3.stpddc60_get_offset.exit_crit_edge, label %if.end.i

if.end3.stpddc60_get_offset.exit_crit_edge:       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %stpddc60_get_offset.exit

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %sub7.i = sub i32 %2, %add.i
  %3 = tail call i32 @llvm.abs.i32(i32 %sub7.i, i1 false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.i = icmp sgt i32 %3, 0
  %cond26.in.v.i = select i1 %cmp12.i, i32 25, i32 -25
  %cond26.in.i = add i32 %cond26.in.v.i, %3
  %cond26.i = sdiv i32 %cond26.in.i, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %cond26.in.i)
  %cmp27.i = icmp sgt i32 %cond26.in.i, 49
  %dec.i = sext i1 %cmp27.i to i32
  %offset.0.i = add nsw i32 %cond26.i, %dec.i
  %4 = tail call i32 @llvm.smax.i32(i32 %offset.0.i, i32 0) #9
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 7) #9
  %conv45.i = trunc i32 %5 to i8
  br label %stpddc60_get_offset.exit

stpddc60_get_offset.exit:                         ; preds = %if.end.i, %if.end3.stpddc60_get_offset.exit_crit_edge
  %retval.0.i = phi i8 [ %conv45.i, %if.end.i ], [ 0, %if.end3.stpddc60_get_offset.exit_crit_edge ]
  %call5 = tail call i32 @pmbus_write_byte_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext -27, i8 noundef zeroext %retval.0.i) #9
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %call7 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef 255, i8 noundef zeroext 33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %sw.bb6.cleanup_crit_edge, label %if.end10

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %sw.bb6
  %6 = mul i32 %call7, 5
  %add.i50 = add i32 %6, 245
  %conv.i51 = zext i16 %word to i32
  %mul1.i52 = mul nuw nsw i32 %conv.i51, 1000
  %7 = lshr i32 %mul1.i52, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add.i50)
  %cmp.i53.not = icmp slt i32 %7, %add.i50
  br i1 %cmp.i53.not, label %if.end.i63, label %if.end10.stpddc60_get_offset.exit65_crit_edge

if.end10.stpddc60_get_offset.exit65_crit_edge:    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %stpddc60_get_offset.exit65

if.end.i63:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %sub7.i54 = sub i32 %7, %add.i50
  %8 = tail call i32 @llvm.abs.i32(i32 %sub7.i54, i1 false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp12.i55 = icmp sgt i32 %8, 0
  %cond26.in.v.i56 = select i1 %cmp12.i55, i32 25, i32 -25
  %cond26.in.i57 = add i32 %cond26.in.v.i56, %8
  %cond26.i58 = sdiv i32 %cond26.in.i57, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %cond26.in.i57)
  %cmp27.i59 = icmp sgt i32 %cond26.in.i57, 49
  %dec.i60 = sext i1 %cmp27.i59 to i32
  %offset.0.i61 = add nsw i32 %cond26.i58, %dec.i60
  %9 = tail call i32 @llvm.smax.i32(i32 %offset.0.i61, i32 0) #9
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 7) #9
  %conv45.i62 = trunc i32 %10 to i8
  br label %stpddc60_get_offset.exit65

stpddc60_get_offset.exit65:                       ; preds = %if.end.i63, %if.end10.stpddc60_get_offset.exit65_crit_edge
  %retval.0.i64 = phi i8 [ %conv45.i62, %if.end.i63 ], [ 0, %if.end10.stpddc60_get_offset.exit65_crit_edge ]
  %call12 = tail call i32 @pmbus_write_byte_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext -26, i8 noundef zeroext %retval.0.i64) #9
  br label %cleanup

sw.bb13:                                          ; preds = %if.end.sw.bb13_crit_edge, %if.end.sw.bb13_crit_edge68, %if.end.sw.bb13_crit_edge69, %if.end.sw.bb13_crit_edge70, %if.end.sw.bb13_crit_edge71, %if.end.sw.bb13_crit_edge72, %if.end.sw.bb13_crit_edge73
  %conv = trunc i32 %reg to i8
  %call14 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef 255, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %sw.bb13.cleanup_crit_edge, label %if.end18

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %sw.bb13
  %11 = lshr i32 %call14, 11
  %conv19 = trunc i32 %11 to i16
  %12 = ashr i16 %word, 11
  %13 = shl i16 %word, 5
  %14 = ashr exact i16 %13, 5
  %sub.i = sub i16 %12, %conv19
  %conv10.i = sext i16 %sub.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %sub.i)
  %cmp.i66 = icmp sgt i16 %sub.i, -1
  br i1 %cmp.i66, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %conv13.i = sext i16 %14 to i32
  %shl14.i = shl i32 %conv13.i, %conv10.i
  br label %stpddc60_adjust_linear.exit

if.else.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %sub17.i = sub nsw i32 0, %conv10.i
  %conv18.i = sext i16 %14 to i32
  %shr19.i = ashr i32 %conv18.i, %sub17.i
  br label %stpddc60_adjust_linear.exit

stpddc60_adjust_linear.exit:                      ; preds = %if.else.i, %if.then.i
  %m.0.in.i = phi i32 [ %shl14.i, %if.then.i ], [ %shr19.i, %if.else.i ]
  %sext.i = shl i32 %m.0.in.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.i)
  %cmp23.i = icmp sgt i32 %sext.i, 0
  %phi.cast53.i = and i32 %m.0.in.i, 65535
  %15 = tail call i32 @llvm.umin.i32(i32 %phi.cast53.i, i32 1023) #9
  %16 = select i1 %cmp23.i, i32 %15, i32 0
  %17 = and i32 %call14, 63488
  %or.i = or i32 %16, %17
  %conv42.i = trunc i32 %or.i to i16
  %call22 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext %conv, i16 noundef zeroext %conv42.i) #9
  br label %cleanup

cleanup:                                          ; preds = %stpddc60_adjust_linear.exit, %sw.bb13.cleanup_crit_edge, %stpddc60_get_offset.exit65, %sw.bb6.cleanup_crit_edge, %stpddc60_get_offset.exit, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ %call, %sw.bb.cleanup_crit_edge ], [ %call7, %sw.bb6.cleanup_crit_edge ], [ %call14, %sw.bb13.cleanup_crit_edge ], [ %call22, %stpddc60_adjust_linear.exit ], [ %call12, %stpddc60_get_offset.exit65 ], [ %call5, %stpddc60_get_offset.exit ], [ -61, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmbus_set_update(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_word_data(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_write_byte_data(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_write_word_data(ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_stpddc60__296_244_stpddc60_driver_init6, !1, !"__initcall__kmod_stpddc60__296_244_stpddc60_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/stpddc60.c", i32 244, i32 1}
!2 = !{ptr @__exitcall_stpddc60_driver_exit, !1, !"__exitcall_stpddc60_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/stpddc60.c", i32 246, i32 1}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/stpddc60.c", i32 247, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/stpddc60.c", i32 248, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns301, !11, !"__UNIQUE_ID_import_ns301", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/stpddc60.c", i32 249, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/stpddc60.c", i32 238, i32 14}
!14 = !{ptr @stpddc60_driver, !15, !"stpddc60_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/stpddc60.c", i32 236, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/stpddc60.c", i32 210, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @stpddc60_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @stpddc60_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/pmbus/stpddc60.c", i32 218, i32 3}
!26 = !{ptr @stpddc60_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @stpddc60_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @stpddc60_info, !29, !"stpddc60_info", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/pmbus/stpddc60.c", i32 27, i32 33}
!30 = !{ptr @stpddc60_id, !31, !"stpddc60_id", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/pmbus/stpddc60.c", i32 20, i32 35}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
