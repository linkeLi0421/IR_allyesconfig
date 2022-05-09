; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/pim4328.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/pim4328.c"
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
%struct.pim4328_data = type { i32, %struct.pmbus_driver_info }
%struct.pmbus_driver_info = type { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_pim4328__288_228_pim4328_driver_init6 = internal global ptr @pim4328_driver_init, section ".initcall6.init", align 4
@pim4328_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @pim4328_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pim4328_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pim4328_driver_exit = internal global ptr @pim4328_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [53 x i8] c"pim4328.author=Erik Rosen <erik.rosen@metormote.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [87 x i8] c"pim4328.description=PMBus driver for PIM4006, PIM4328, PIM4820 power interface modules\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"pim4328.file=drivers/hwmon/pmbus/pim4328\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"pim4328.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns293 = internal constant [24 x i8] c"pim4328.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pim4328\00", [24 x i8] zeroinitializer }, align 32
@pim4328_id = internal constant { [9 x %struct.i2c_device_id], [40 x i8] } { [9 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bmr455\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"pim4006\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"pim4106\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"pim4206\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"pim4306\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"pim4328\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"pim4406\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"pim4820\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@pim4328_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 155, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read Manufacturer Model\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pim4328_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/hwmon/pmbus/pim4328.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pim4328_probe._entry_ptr = internal global ptr @pim4328_probe._entry, section ".printk_index", align 4
@pim4328_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 163, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unsupported device\0A\00", [44 x i8] zeroinitializer }, align 32
@pim4328_probe._entry_ptr.8 = internal global ptr @pim4328_probe._entry.6, section ".printk_index", align 4
@pim4328_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 170, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Device mismatch: Configured %s, detected %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@pim4328_probe._entry_ptr.12 = internal global ptr @pim4328_probe._entry.9, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 136, i64 137]
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"pim4328_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 220, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 222, i32 14 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"pim4328_id\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 41, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 155, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 163, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [33 x i8] c"../drivers/hwmon/pmbus/pim4328.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 168, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_import_ns293, ptr @__UNIQUE_ID_license292, ptr @__exitcall_pim4328_driver_exit, ptr @__initcall__kmod_pim4328__288_228_pim4328_driver_init6, ptr @pim4328_driver_exit, ptr @pim4328_probe._entry, ptr @pim4328_probe._entry.6, ptr @pim4328_probe._entry.9, ptr @pim4328_probe._entry_ptr, ptr @pim4328_probe._entry_ptr.12, ptr @pim4328_probe._entry_ptr.8, ptr @pim4328_driver, ptr @.str, ptr @pim4328_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pim4328_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pim4328_id to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pim4328_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pim4328_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pim4328_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pim4328_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pim4328_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pim4328_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @pim4328_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pim4328_probe(ptr noundef %client) #2 align 64 {
entry:
  %device_id = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %device_id) #7
  %0 = call ptr @memset(ptr %device_id, i32 255, i32 33)
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
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
  %call.i.i = tail call i32 %6(ptr noundef %2) #7
  %and.i = and i32 %call.i.i, 50855936
  call void @__sanitizer_cov_trace_const_cmp4(i32 50855936, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 50855936
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 496, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -102, ptr noundef nonnull %device_id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end6
  %call17 = call i32 @strlen(ptr noundef nonnull @pim4328_id) #10
  %call18 = call i32 @strncasecmp(ptr noundef nonnull @pim4328_id, ptr noundef nonnull %device_id, i32 noundef %call17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.body.preheader.if.end30_crit_edge, label %for.inc

for.body.preheader.if.end30_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %call17.1 = call i32 @strlen(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @pim4328_id, i32 0, i32 1)) #10
  %call18.1 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @pim4328_id, i32 0, i32 1), ptr noundef nonnull %device_id, i32 noundef %call17.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.1)
  %tobool19.not.1 = icmp eq i32 %call18.1, 0
  br i1 %tobool19.not.1, label %for.inc.if.end30_crit_edge, label %for.inc.1

for.inc.if.end30_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

for.inc.1:                                        ; preds = %for.inc
  %call17.2 = call i32 @strlen(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @pim4328_id, i32 0, i32 2)) #10
  %call18.2 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @pim4328_id, i32 0, i32 2), ptr noundef nonnull %device_id, i32 noundef %call17.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.2)
  %tobool19.not.2 = icmp eq i32 %call18.2, 0
  br i1 %tobool19.not.2, label %for.inc.1.if.end30_crit_edge, label %for.inc.2

for.inc.1.if.end30_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

for.inc.2:                                        ; preds = %for.inc.1
  %call17.3 = call i32 @strlen(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @pim4328_id, i32 0, i32 3)) #10
  %call18.3 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @pim4328_id, i32 0, i32 3), ptr noundef nonnull %device_id, i32 noundef %call17.3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.3)
  %tobool19.not.3 = icmp eq i32 %call18.3, 0
  br i1 %tobool19.not.3, label %for.inc.2.if.end30_crit_edge, label %for.inc.3

for.inc.2.if.end30_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

for.inc.3:                                        ; preds = %for.inc.2
  %call17.4 = call i32 @strlen(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @pim4328_id, i32 0, i32 4)) #10
  %call18.4 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @pim4328_id, i32 0, i32 4), ptr noundef nonnull %device_id, i32 noundef %call17.4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.4)
  %tobool19.not.4 = icmp eq i32 %call18.4, 0
  br i1 %tobool19.not.4, label %for.inc.3.if.end30_crit_edge, label %for.inc.4

for.inc.3.if.end30_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

for.inc.4:                                        ; preds = %for.inc.3
  %call17.5 = call i32 @strlen(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @pim4328_id, i32 0, i32 5)) #10
  %call18.5 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @pim4328_id, i32 0, i32 5), ptr noundef nonnull %device_id, i32 noundef %call17.5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.5)
  %tobool19.not.5 = icmp eq i32 %call18.5, 0
  br i1 %tobool19.not.5, label %for.inc.4.if.end30_crit_edge, label %for.inc.5

for.inc.4.if.end30_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

for.inc.5:                                        ; preds = %for.inc.4
  %call17.6 = call i32 @strlen(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @pim4328_id, i32 0, i32 6)) #10
  %call18.6 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @pim4328_id, i32 0, i32 6), ptr noundef nonnull %device_id, i32 noundef %call17.6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.6)
  %tobool19.not.6 = icmp eq i32 %call18.6, 0
  br i1 %tobool19.not.6, label %for.inc.5.if.end30_crit_edge, label %for.inc.6

for.inc.5.if.end30_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

for.inc.6:                                        ; preds = %for.inc.5
  %call17.7 = call i32 @strlen(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @pim4328_id, i32 0, i32 7)) #10
  %call18.7 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @pim4328_id, i32 0, i32 7), ptr noundef nonnull %device_id, i32 noundef %call17.7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.7)
  %tobool19.not.7 = icmp eq i32 %call18.7, 0
  br i1 %tobool19.not.7, label %for.inc.6.if.end30_crit_edge, label %for.inc.7

for.inc.6.if.end30_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end30:                                         ; preds = %for.inc.6.if.end30_crit_edge, %for.inc.5.if.end30_crit_edge, %for.inc.4.if.end30_crit_edge, %for.inc.3.if.end30_crit_edge, %for.inc.2.if.end30_crit_edge, %for.inc.1.if.end30_crit_edge, %for.inc.if.end30_crit_edge, %for.body.preheader.if.end30_crit_edge
  %mid.0137.lcssa = phi ptr [ @pim4328_id, %for.body.preheader.if.end30_crit_edge ], [ getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @pim4328_id, i32 0, i32 1), %for.inc.if.end30_crit_edge ], [ getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @pim4328_id, i32 0, i32 2), %for.inc.1.if.end30_crit_edge ], [ getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @pim4328_id, i32 0, i32 3), %for.inc.2.if.end30_crit_edge ], [ getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @pim4328_id, i32 0, i32 4), %for.inc.3.if.end30_crit_edge ], [ getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @pim4328_id, i32 0, i32 5), %for.inc.4.if.end30_crit_edge ], [ getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @pim4328_id, i32 0, i32 6), %for.inc.5.if.end30_crit_edge ], [ getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @pim4328_id, i32 0, i32 7), %for.inc.6.if.end30_crit_edge ]
  %name31 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call35 = call i32 @strcmp(ptr noundef %name31, ptr noundef nonnull %mid.0137.lcssa) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end30.if.end46_crit_edge, label %do.end40

if.end30.if.end46_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

do.end40:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef %name31, ptr noundef %mid.0137.lcssa) #11
  br label %if.end46

if.end46:                                         ; preds = %do.end40, %if.end30.if.end46_crit_edge
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %mid.0137.lcssa, i32 0, i32 1
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call.i, align 4
  %info47 = getelementptr inbounds %struct.pim4328_data, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %info47 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %info47, align 4
  %read_byte_data = getelementptr inbounds %struct.pim4328_data, ptr %call.i, i32 0, i32 1, i32 9
  %11 = ptrtoint ptr %read_byte_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @pim4328_read_byte_data, ptr %read_byte_data, align 4
  %read_word_data = getelementptr inbounds %struct.pim4328_data, ptr %call.i, i32 0, i32 1, i32 10
  %12 = ptrtoint ptr %read_word_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @pim4328_read_word_data, ptr %read_word_data, align 4
  %call.i134 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #7
  %tobool49.not = icmp eq ptr %call.i134, null
  br i1 %tobool49.not, label %if.end46.cleanup_crit_edge, label %if.end51

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end51:                                         ; preds = %if.end46
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %13 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i134, ptr %platform_data, align 8
  %14 = ptrtoint ptr %call.i134 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 20, ptr %call.i134, align 4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.end51.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb58
    i32 2, label %sw.bb73
  ]

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %phases = getelementptr inbounds %struct.pim4328_data, ptr %call.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %phases to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %phases, align 4
  %func = getelementptr inbounds %struct.pim4328_data, ptr %call.i, i32 0, i32 1, i32 7
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1073742353, ptr %func, align 4
  %pfunc = getelementptr inbounds %struct.pim4328_data, ptr %call.i, i32 0, i32 1, i32 8
  %20 = ptrtoint ptr %pfunc to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 9, ptr %pfunc, align 4
  %arrayidx57 = getelementptr %struct.pim4328_data, ptr %call.i, i32 0, i32 1, i32 8, i32 1
  %21 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 9, ptr %arrayidx57, align 4
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %phases59 = getelementptr inbounds %struct.pim4328_data, ptr %call.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %phases59 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %phases59, align 4
  %func61 = getelementptr inbounds %struct.pim4328_data, ptr %call.i, i32 0, i32 1, i32 7
  %23 = ptrtoint ptr %func61 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1073742355, ptr %func61, align 4
  %pfunc63 = getelementptr inbounds %struct.pim4328_data, ptr %call.i, i32 0, i32 1, i32 8
  %24 = ptrtoint ptr %pfunc63 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %pfunc63, align 4
  %arrayidx66 = getelementptr %struct.pim4328_data, ptr %call.i, i32 0, i32 1, i32 8, i32 1
  %25 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %arrayidx66, align 4
  %format = getelementptr inbounds %struct.pim4328_data, ptr %call.i, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %format, align 4
  %arrayidx69 = getelementptr %struct.pim4328_data, ptr %call.i, i32 0, i32 1, i32 2, i32 5
  %27 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %arrayidx69, align 4
  %arrayidx71 = getelementptr %struct.pim4328_data, ptr %call.i, i32 0, i32 1, i32 2, i32 3
  %28 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %arrayidx71, align 4
  %29 = ptrtoint ptr %call.i134 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 52, ptr %call.i134, align 4
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %func74 = getelementptr inbounds %struct.pim4328_data, ptr %call.i, i32 0, i32 1, i32 7
  %30 = ptrtoint ptr %func74 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 521, ptr %func74, align 4
  %format76 = getelementptr inbounds %struct.pim4328_data, ptr %call.i, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %format76 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %format76, align 4
  %arrayidx79 = getelementptr %struct.pim4328_data, ptr %call.i, i32 0, i32 1, i32 2, i32 5
  %32 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %arrayidx79, align 4
  %arrayidx81 = getelementptr %struct.pim4328_data, ptr %call.i, i32 0, i32 1, i32 2, i32 2
  %33 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %arrayidx81, align 4
  %34 = ptrtoint ptr %call.i134 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 52, ptr %call.i134, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb73, %sw.bb58, %sw.bb
  %call84 = call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef %info47) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end51.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %for.inc.7, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ %call84, %sw.epilog ], [ -19, %for.inc.7 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end46.cleanup_crit_edge ], [ -19, %if.end51.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %device_id) #7
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

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pim4328_read_byte_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #7
  %add.ptr = getelementptr i8, ptr %call, i32 -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp = icmp sgt i32 %page, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %reg)
  %cond = icmp eq i32 %reg, 120
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call1 = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext 120) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %sw.bb.cleanup_crit_edge, label %if.end4

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %1, label %if.end4.cleanup_crit_edge [
    i32 0, label %if.then6
    i32 1, label %if.then15
    i32 2, label %if.then33
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  %call7 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef 255, i8 noundef zeroext -39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then6.cleanup_crit_edge, label %if.end10

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %call7, 1584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or = or i32 %call1, 8
  %spec.select = select i1 %tobool.not, i32 %call1, i32 %or
  br label %cleanup

if.then15:                                        ; preds = %if.end4
  %call16 = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext -43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then15.cleanup_crit_edge, label %if.end19

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %and20 = shl nuw i32 %call16, 1
  %3 = and i32 %and20, 8
  %4 = or i32 %3, %call1
  %and25 = lshr i32 %call16, 6
  %5 = and i32 %and25, 1
  %6 = or i32 %4, %5
  br label %cleanup

if.then33:                                        ; preds = %if.end4
  %call34 = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext -48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then33.cleanup_crit_edge, label %if.end37

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %and38 = and i32 %call34, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp ne i32 %and38, 0
  %or41 = zext i1 %tobool39.not to i32
  %spec.select89 = or i32 %call1, %or41
  %and43 = and i32 %call34, 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %or46 = or i32 %spec.select89, 8
  %ret.2 = select i1 %tobool44.not, i32 %spec.select89, i32 %or46
  %and48 = lshr i32 %call34, 4
  %7 = and i32 %and48, 4
  %8 = or i32 %ret.2, %7
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then33.cleanup_crit_edge, %if.end19, %if.then15.cleanup_crit_edge, %if.end10, %if.then6.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call7, %if.then6.cleanup_crit_edge ], [ %call16, %if.then15.cleanup_crit_edge ], [ %call34, %if.then33.cleanup_crit_edge ], [ %spec.select, %if.end10 ], [ %call1, %if.end4.cleanup_crit_edge ], [ -61, %if.end.cleanup_crit_edge ], [ %6, %if.end19 ], [ %8, %if.end37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pim4328_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp = icmp sgt i32 %page, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %phase)
  %cmp1 = icmp eq i32 %phase, 255
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %reg, label %if.end3.cleanup_crit_edge [
    i32 136, label %sw.bb
    i32 137, label %sw.bb5
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phase)
  %cmp4 = icmp eq i32 %phase, 0
  %conv = select i1 %cmp4, i8 -45, i8 -44
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phase)
  %cmp6 = icmp eq i32 %phase, 0
  %conv9 = select i1 %cmp6, i8 -42, i8 -41
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb5, %sw.bb
  %conv.sink = phi i8 [ %conv, %sw.bb ], [ %conv9, %sw.bb5 ]
  %call = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext %conv.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ -61, %if.end.cleanup_crit_edge ], [ -61, %if.end3.cleanup_crit_edge ], [ %call, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pmbus_get_driver_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_byte_data(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_word_data(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_pim4328__288_228_pim4328_driver_init6, !1, !"__initcall__kmod_pim4328__288_228_pim4328_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/pim4328.c", i32 228, i32 1}
!2 = !{ptr @__exitcall_pim4328_driver_exit, !1, !"__exitcall_pim4328_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/pim4328.c", i32 230, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/pim4328.c", i32 231, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/pim4328.c", i32 232, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns293, !11, !"__UNIQUE_ID_import_ns293", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/pim4328.c", i32 233, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/pim4328.c", i32 222, i32 14}
!14 = !{ptr @pim4328_driver, !15, !"pim4328_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/pim4328.c", i32 220, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/pim4328.c", i32 155, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pim4328_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pim4328_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/pmbus/pim4328.c", i32 163, i32 3}
!26 = !{ptr @pim4328_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @pim4328_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/pmbus/pim4328.c", i32 168, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @pim4328_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @pim4328_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @pim4328_id, !34, !"pim4328_id", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/pmbus/pim4328.c", i32 41, i32 35}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
