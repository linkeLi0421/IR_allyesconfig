; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/max15301.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/max15301.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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

@__param_str_delay = internal constant [15 x i8] c"max15301.delay\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@delay = internal global { i16, [30 x i8] } { i16 100, [30 x i8] zeroinitializer }, align 32
@__param_delay = internal constant %struct.kernel_param { ptr @__param_str_delay, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @delay } }, section "__param", align 4
@__UNIQUE_ID_delaytype288 = internal constant [31 x i8] c"max15301.parmtype=delay:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_delay289 = internal constant [54 x i8] c"max15301.parm=delay:Delay between chip accesses in us\00", section ".modinfo", align 1
@__initcall__kmod_max15301__290_185_max15301_driver_init6 = internal global ptr @max15301_driver_init, section ".initcall6.init", align 4
@max15301_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @max15301_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max15301_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max15301_driver_exit = internal global ptr @max15301_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [54 x i8] c"max15301.author=Erik Rosen <erik.rosen@metormote.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [53 x i8] c"max15301.description=PMBus driver for Maxim MAX15301\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [43 x i8] c"max15301.file=drivers/hwmon/pmbus/max15301\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [21 x i8] c"max15301.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns295 = internal constant [25 x i8] c"max15301.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max15301\00", [23 x i8] zeroinitializer }, align 32
@max15301_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bmr461\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max15301\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@max15301_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 155, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to read Device Id\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max15301_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/hwmon/pmbus/max15301.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max15301_probe._entry_ptr = internal global ptr @max15301_probe._entry, section ".printk_index", align 4
@max15301_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 163, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unsupported device\0A\00", [44 x i8] zeroinitializer }, align 32
@max15301_probe._entry_ptr.8 = internal global ptr @max15301_probe._entry.6, section ".printk_index", align 4
@max15301_data = internal global { { i32, i64, i32, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } }, [128 x i8] } { { i32, i64, i32, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } } { i32 0, i64 0, i32 0, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 1, [32 x i8] zeroinitializer, [8 x i32] zeroinitializer, [32 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, <{ i32, [31 x i32] }> <{ i32 62997, [31 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null } }, [128 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 43, i32 15 }
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"max15301_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 177, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 179, i32 14 }
@___asan_gen_.19 = private unnamed_addr constant [12 x i8] c"max15301_id\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 25, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 155, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 163, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"max15301_data\00", align 1
@___asan_gen_.47 = private constant [34 x i8] c"../drivers/hwmon/pmbus/max15301.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 47, i32 29 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_delay289, ptr @__UNIQUE_ID_delaytype288, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_import_ns295, ptr @__UNIQUE_ID_license294, ptr @__exitcall_max15301_driver_exit, ptr @__initcall__kmod_max15301__290_185_max15301_driver_init6, ptr @__param_delay, ptr @max15301_driver_exit, ptr @max15301_probe._entry, ptr @max15301_probe._entry.6, ptr @max15301_probe._entry_ptr, ptr @max15301_probe._entry_ptr.8, ptr @delay, ptr @max15301_driver, ptr @.str, ptr @max15301_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @max15301_data], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max15301_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max15301_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max15301_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max15301_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max15301_data to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max15301_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max15301_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max15301_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @max15301_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max15301_probe(ptr noundef %client) #2 align 64 {
entry:
  %device_id = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %device_id) #8
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
  %call.i.i = tail call i32 %6(ptr noundef %2) #8
  %and.i = and i32 %call.i.i, 50855936
  call void @__sanitizer_cov_trace_const_cmp4(i32 50855936, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 50855936
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -83, ptr noundef nonnull %device_id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %call10 = call i32 @strlen(ptr noundef nonnull @max15301_id) #11
  %call11 = call i32 @strncasecmp(ptr noundef nonnull @max15301_id, ptr noundef nonnull %device_id, i32 noundef %call10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.body.preheader.if.end23_crit_edge, label %for.cond

for.body.preheader.if.end23_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %call10.1 = call i32 @strlen(ptr noundef getelementptr inbounds ([3 x %struct.i2c_device_id], ptr @max15301_id, i32 0, i32 1)) #11
  %call11.1 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([3 x %struct.i2c_device_id], ptr @max15301_id, i32 0, i32 1), ptr noundef nonnull %device_id, i32 noundef %call10.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.1)
  %tobool12.not.1 = icmp eq i32 %call11.1, 0
  br i1 %tobool12.not.1, label %for.cond.if.end23_crit_edge, label %for.cond.1

for.cond.if.end23_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end23:                                         ; preds = %for.cond.if.end23_crit_edge, %for.body.preheader.if.end23_crit_edge
  %7 = load i16, ptr @delay, align 2
  %conv = zext i16 %7 to i32
  store i32 %conv, ptr getelementptr inbounds ({ i32, i64, i32, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } }, ptr @max15301_data, i32 0, i32 2), align 8
  store ptr @max15301_read_byte_data, ptr getelementptr inbounds ({ i32, i64, i32, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } }, ptr @max15301_data, i32 0, i32 3, i32 9), align 8
  store ptr @max15301_read_word_data, ptr getelementptr inbounds ({ i32, i64, i32, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } }, ptr @max15301_data, i32 0, i32 3, i32 10), align 4
  store ptr @max15301_write_byte, ptr getelementptr inbounds ({ i32, i64, i32, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } }, ptr @max15301_data, i32 0, i32 3, i32 12), align 4
  store ptr @max15301_write_word_data, ptr getelementptr inbounds ({ i32, i64, i32, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } }, ptr @max15301_data, i32 0, i32 3, i32 11), align 8
  %call24 = call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef getelementptr inbounds ({ i32, i64, i32, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } }, ptr @max15301_data, i32 0, i32 3, i32 0)) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %for.cond.1, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call24, %if.end23 ], [ -19, %for.cond.1 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %device_id) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max15301_read_byte_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp = icmp sgt i32 %page, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %delay.i = getelementptr i8, ptr %call, i32 -4
  %0 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end.max15301_wait.exit_crit_edge, label %if.then.i

if.end.max15301_wait.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %max15301_wait.exit

if.then.i:                                        ; preds = %if.end
  %call.i = tail call i64 @ktime_get() #8
  %access.i = getelementptr i8, ptr %call, i32 -12
  %2 = ptrtoint ptr %access.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %access.i, align 8
  %sub.i.i = sub i64 %call.i, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp8.i.i.i.i = icmp slt i64 %sub.i.i, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #8
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #13, !srcloc !49
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #13, !srcloc !50
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1811.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %sub210.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i
  %cond213.i.i.i.i = select i1 %cmp8.i.i.i.i, i64 %sub210.i.i.i.i, i64 %div1811.i.i.i.i
  %7 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delay.i, align 8
  %conv.i = sext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i.i, i64 %conv.i)
  %cmp.i = icmp slt i64 %cond213.i.i.i.i, %conv.i
  br i1 %cmp.i, label %cond.false17.i, label %if.then.i.max15301_wait.exit_crit_edge

if.then.i.max15301_wait.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max15301_wait.exit

cond.false17.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %10 = trunc i64 %cond213.i.i.i.i to i32
  %conv21.i = sub i32 %8, %10
  tail call void %9(i32 noundef %conv21.i) #8
  br label %max15301_wait.exit

max15301_wait.exit:                               ; preds = %cond.false17.i, %if.then.i.max15301_wait.exit_crit_edge, %if.end.max15301_wait.exit_crit_edge
  %conv = trunc i32 %reg to i8
  %call1 = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext %conv) #8
  %call2 = tail call i64 @ktime_get() #8
  %access = getelementptr i8, ptr %call, i32 -12
  %11 = ptrtoint ptr %access to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call2, ptr %access, align 8
  br label %cleanup

cleanup:                                          ; preds = %max15301_wait.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %max15301_wait.exit ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max15301_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp = icmp sgt i32 %page, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %reg)
  %cmp1 = icmp sgt i32 %reg, 255
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %entry
  %delay.i = getelementptr i8, ptr %call, i32 -4
  %0 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end3.max15301_wait.exit_crit_edge, label %if.then.i

if.end3.max15301_wait.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %max15301_wait.exit

if.then.i:                                        ; preds = %if.end3
  %call.i = tail call i64 @ktime_get() #8
  %access.i = getelementptr i8, ptr %call, i32 -12
  %2 = ptrtoint ptr %access.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %access.i, align 8
  %sub.i.i = sub i64 %call.i, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp8.i.i.i.i = icmp slt i64 %sub.i.i, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #8
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #13, !srcloc !49
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #13, !srcloc !50
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1811.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %sub210.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i
  %cond213.i.i.i.i = select i1 %cmp8.i.i.i.i, i64 %sub210.i.i.i.i, i64 %div1811.i.i.i.i
  %7 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delay.i, align 8
  %conv.i = sext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i.i, i64 %conv.i)
  %cmp.i = icmp slt i64 %cond213.i.i.i.i, %conv.i
  br i1 %cmp.i, label %cond.false17.i, label %if.then.i.max15301_wait.exit_crit_edge

if.then.i.max15301_wait.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max15301_wait.exit

cond.false17.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %10 = trunc i64 %cond213.i.i.i.i to i32
  %conv21.i = sub i32 %8, %10
  tail call void %9(i32 noundef %conv21.i) #8
  br label %max15301_wait.exit

max15301_wait.exit:                               ; preds = %cond.false17.i, %if.then.i.max15301_wait.exit_crit_edge, %if.end3.max15301_wait.exit_crit_edge
  %conv = trunc i32 %reg to i8
  %call4 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext %conv) #8
  %call5 = tail call i64 @ktime_get() #8
  %access = getelementptr i8, ptr %call, i32 -12
  %11 = ptrtoint ptr %access to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call5, ptr %access, align 8
  br label %cleanup

cleanup:                                          ; preds = %max15301_wait.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %max15301_wait.exit ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max15301_write_byte(ptr noundef %client, i32 noundef %page, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp = icmp sgt i32 %page, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %delay.i = getelementptr i8, ptr %call, i32 -4
  %0 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end.max15301_wait.exit_crit_edge, label %if.then.i

if.end.max15301_wait.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %max15301_wait.exit

if.then.i:                                        ; preds = %if.end
  %call.i = tail call i64 @ktime_get() #8
  %access.i = getelementptr i8, ptr %call, i32 -12
  %2 = ptrtoint ptr %access.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %access.i, align 8
  %sub.i.i = sub i64 %call.i, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp8.i.i.i.i = icmp slt i64 %sub.i.i, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #8
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #13, !srcloc !49
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #13, !srcloc !50
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1811.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %sub210.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i
  %cond213.i.i.i.i = select i1 %cmp8.i.i.i.i, i64 %sub210.i.i.i.i, i64 %div1811.i.i.i.i
  %7 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delay.i, align 8
  %conv.i = sext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i.i, i64 %conv.i)
  %cmp.i = icmp slt i64 %cond213.i.i.i.i, %conv.i
  br i1 %cmp.i, label %cond.false17.i, label %if.then.i.max15301_wait.exit_crit_edge

if.then.i.max15301_wait.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max15301_wait.exit

cond.false17.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %10 = trunc i64 %cond213.i.i.i.i to i32
  %conv21.i = sub i32 %8, %10
  tail call void %9(i32 noundef %conv21.i) #8
  br label %max15301_wait.exit

max15301_wait.exit:                               ; preds = %cond.false17.i, %if.then.i.max15301_wait.exit_crit_edge, %if.end.max15301_wait.exit_crit_edge
  %call1 = tail call i32 @pmbus_write_byte(ptr noundef %client, i32 noundef %page, i8 noundef zeroext %value) #8
  %call2 = tail call i64 @ktime_get() #8
  %access = getelementptr i8, ptr %call, i32 -12
  %11 = ptrtoint ptr %access to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call2, ptr %access, align 8
  br label %cleanup

cleanup:                                          ; preds = %max15301_wait.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %max15301_wait.exit ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max15301_write_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg, i16 noundef zeroext %word) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp = icmp sgt i32 %page, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %reg)
  %cmp1 = icmp sgt i32 %reg, 255
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %entry
  %delay.i = getelementptr i8, ptr %call, i32 -4
  %0 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end3.max15301_wait.exit_crit_edge, label %if.then.i

if.end3.max15301_wait.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %max15301_wait.exit

if.then.i:                                        ; preds = %if.end3
  %call.i = tail call i64 @ktime_get() #8
  %access.i = getelementptr i8, ptr %call, i32 -12
  %2 = ptrtoint ptr %access.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %access.i, align 8
  %sub.i.i = sub i64 %call.i, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp8.i.i.i.i = icmp slt i64 %sub.i.i, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #8
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #13, !srcloc !49
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #13, !srcloc !50
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1811.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %sub210.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i
  %cond213.i.i.i.i = select i1 %cmp8.i.i.i.i, i64 %sub210.i.i.i.i, i64 %div1811.i.i.i.i
  %7 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delay.i, align 8
  %conv.i = sext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i.i, i64 %conv.i)
  %cmp.i = icmp slt i64 %cond213.i.i.i.i, %conv.i
  br i1 %cmp.i, label %cond.false17.i, label %if.then.i.max15301_wait.exit_crit_edge

if.then.i.max15301_wait.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max15301_wait.exit

cond.false17.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %10 = trunc i64 %cond213.i.i.i.i to i32
  %conv21.i = sub i32 %8, %10
  tail call void %9(i32 noundef %conv21.i) #8
  br label %max15301_wait.exit

max15301_wait.exit:                               ; preds = %cond.false17.i, %if.then.i.max15301_wait.exit_crit_edge, %if.end3.max15301_wait.exit_crit_edge
  %conv = trunc i32 %reg to i8
  %call4 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext %conv, i16 noundef zeroext %word) #8
  %call5 = tail call i64 @ktime_get() #8
  %access = getelementptr i8, ptr %call, i32 -12
  %11 = ptrtoint ptr %access to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call5, ptr %access, align 8
  br label %cleanup

cleanup:                                          ; preds = %max15301_wait.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %max15301_wait.exit ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pmbus_get_driver_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_byte_data(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_word_data(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_write_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_write_word_data(ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__param_delay, !1, !"__param_delay", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/max15301.c", i32 44, i32 1}
!2 = !{ptr @__UNIQUE_ID_delaytype288, !1, !"__UNIQUE_ID_delaytype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_delay289, !4, !"__UNIQUE_ID_delay289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/max15301.c", i32 45, i32 1}
!5 = !{ptr @__initcall__kmod_max15301__290_185_max15301_driver_init6, !6, !"__initcall__kmod_max15301__290_185_max15301_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/max15301.c", i32 185, i32 1}
!7 = !{ptr @__exitcall_max15301_driver_exit, !6, !"__exitcall_max15301_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author291, !9, !"__UNIQUE_ID_author291", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/pmbus/max15301.c", i32 187, i32 1}
!10 = !{ptr @__UNIQUE_ID_description292, !11, !"__UNIQUE_ID_description292", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/max15301.c", i32 188, i32 1}
!12 = !{ptr @__UNIQUE_ID_file293, !13, !"__UNIQUE_ID_file293", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/max15301.c", i32 189, i32 1}
!14 = !{ptr @__UNIQUE_ID_license294, !13, !"__UNIQUE_ID_license294", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_import_ns295, !16, !"__UNIQUE_ID_import_ns295", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/pmbus/max15301.c", i32 190, i32 1}
!17 = !{ptr @__param_str_delay, !1, !"__param_str_delay", i1 false, i1 false}
!18 = !{ptr @delay, !19, !"delay", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/pmbus/max15301.c", i32 43, i32 15}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/pmbus/max15301.c", i32 179, i32 14}
!22 = !{ptr @max15301_driver, !23, !"max15301_driver", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/pmbus/max15301.c", i32 177, i32 26}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/pmbus/max15301.c", i32 155, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @max15301_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @max15301_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/pmbus/max15301.c", i32 163, i32 3}
!34 = !{ptr @max15301_probe._entry.6, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @max15301_probe._entry_ptr.8, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @max15301_data, !37, !"max15301_data", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/pmbus/max15301.c", i32 47, i32 29}
!38 = !{ptr @max15301_id, !39, !"max15301_id", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/pmbus/max15301.c", i32 25, i32 35}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 1117539, i64 1117566, i64 1117588, i64 1117616}
!50 = !{i64 1117947, i64 1117974, i64 1118007, i64 1118028, i64 1118055, i64 1118081}
