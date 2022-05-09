; ModuleID = '/llk/IR_all_yes/drivers/i2c/muxes/i2c-mux-pca9541.c_pt.bc'
source_filename = "../drivers/i2c/muxes/i2c-mux-pca9541.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.i2c_lock_operations = type { ptr, ptr, ptr }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.pca9541 = type { ptr, i32, i32 }

@__initcall__kmod_i2c_mux_pca9541__288_346_pca9541_driver_init6 = internal global ptr @pca9541_driver_init, section ".initcall6.init", align 4
@pca9541_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @pca9541_probe, ptr @pca9541_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pca9541_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pca9541_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pca9541_driver_exit = internal global ptr @pca9541_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [58 x i8] c"i2c_mux_pca9541.author=Guenter Roeck <linux@roeck-us.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [63 x i8] c"i2c_mux_pca9541.description=PCA9541 I2C master selector driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [55 x i8] c"i2c_mux_pca9541.file=drivers/i2c/muxes/i2c-mux-pca9541\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [31 x i8] c"i2c_mux_pca9541.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pca9541\00", [24 x i8] zeroinitializer }, align 32
@pca9541_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9541\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pca9541_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pca9541\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pca9541_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 323, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"registered master selector for I2C %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pca9541_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/i2c/muxes/i2c-mux-pca9541.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pca9541_probe._entry_ptr = internal global ptr @pca9541_probe._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pca9541_control = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\04\00\01\05\04\04\05\05\00\00\01\01\00\04\05\01", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"pca9541_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 336, i32 26 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 338, i32 14 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"pca9541_of_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 88, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"pca9541_id\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 80, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 322, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"pca9541_control\00", align 1
@___asan_gen_.40 = private constant [39 x i8] c"../drivers/i2c/muxes/i2c-mux-pca9541.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 166, i32 17 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_pca9541_driver_exit, ptr @__initcall__kmod_i2c_mux_pca9541__288_346_pca9541_driver_init6, ptr @pca9541_driver_exit, ptr @pca9541_probe._entry, ptr @pca9541_probe._entry_ptr, ptr @pca9541_driver, ptr @.str, ptr @pca9541_of_match, ptr @pca9541_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pca9541_control], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9541_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9541_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9541_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9541_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9541_control to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9541_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pca9541_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pca9541_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @pca9541_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9541_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void %9(ptr noundef %1, i32 noundef 2) #5
  tail call fastcc void @pca9541_release_bus(ptr noundef %client)
  %10 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock_ops.i, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %unlock_bus.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef 2) #5
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call1 = tail call ptr @i2c_mux_alloc(ptr noundef %1, ptr noundef %dev, i32 noundef 1, i32 noundef 12, i32 noundef 2, ptr noundef nonnull @pca9541_select_chan, ptr noundef nonnull @pca9541_release_chan) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %call1, i32 0, i32 3
  %14 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %client, ptr %15, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call1, ptr %driver_data.i.i, align 4
  %call7 = tail call i32 @i2c_mux_add_adapter(ptr noundef nonnull %call1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %name) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call7, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9541_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pca9541_release_bus(ptr nocapture noundef readonly %client) unnamed_addr #2 align 64 {
entry:
  %data.i17 = alloca %union.i2c_smbus_data, align 2
  %data.i = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter.i, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i) #5
  %2 = call ptr @memset(ptr %data.i, i32 255, i32 34)
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr.i, align 2
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %client, align 8
  %call.i = call i32 @__i2c_smbus_xfer(ptr noundef %1, i16 noundef zeroext %4, i16 noundef zeroext %6, i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %pca9541_reg_read.exit.thread, label %pca9541_reg_read.exit

pca9541_reg_read.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data.i, align 2
  %conv.i = zext i8 %8 to i32
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #5
  br label %land.lhs.true

pca9541_reg_read.exit:                            ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  br i1 %cmp, label %pca9541_reg_read.exit.land.lhs.true_crit_edge, label %pca9541_reg_read.exit.if.end_crit_edge

pca9541_reg_read.exit.if.end_crit_edge:           ; preds = %pca9541_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

pca9541_reg_read.exit.land.lhs.true_crit_edge:    ; preds = %pca9541_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %pca9541_reg_read.exit.land.lhs.true_crit_edge, %pca9541_reg_read.exit.thread
  %cond.i23 = phi i32 [ %conv.i, %pca9541_reg_read.exit.thread ], [ %call.i, %pca9541_reg_read.exit.land.lhs.true_crit_edge ]
  %and = and i32 %cond.i23, 12
  %9 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %land.lhs.true3 [
    i32 0, label %land.lhs.true.if.end_crit_edge
    i32 12, label %land.lhs.true.if.end_crit_edge24
  ]

land.lhs.true.if.end_crit_edge24:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %and4 = and i32 %cond.i23, 3
  %10 = zext i32 %and4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %and4, label %land.lhs.true3.if.end_crit_edge [
    i32 0, label %land.lhs.true3.if.then_crit_edge
    i32 3, label %land.lhs.true3.if.then_crit_edge25
  ]

land.lhs.true3.if.then_crit_edge25:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true3.if.then_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3.if.then_crit_edge, %land.lhs.true3.if.then_crit_edge25
  %11 = trunc i32 %cond.i23 to i8
  %12 = lshr i8 %11, 1
  %conv = and i8 %12, 4
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i17) #5
  %15 = call ptr @memset(ptr %data.i17, i32 0, i32 34)
  %16 = ptrtoint ptr %data.i17 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %data.i17, align 2
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr.i, align 2
  %19 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %client, align 8
  %call.i20 = call i32 @__i2c_smbus_xfer(ptr noundef %14, i16 noundef zeroext %18, i16 noundef zeroext %20, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %data.i17) #5
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i17) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %land.lhs.true.if.end_crit_edge24, %pca9541_reg_read.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9541_select_chan(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #2 align 64 {
entry:
  %data.i = alloca %union.i2c_smbus_data, align 2
  %data.i97.i = alloca %union.i2c_smbus_data, align 2
  %data.i93.i = alloca %union.i2c_smbus_data, align 2
  %data.i89.i = alloca %union.i2c_smbus_data, align 2
  %data.i80.i = alloca %union.i2c_smbus_data, align 2
  %data.i.i = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 25
  %5 = load volatile i32, ptr @jiffies, align 128
  %add2 = add i32 %5, 12
  %arb_timeout = getelementptr inbounds %struct.pca9541, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %arb_timeout to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add2, ptr %arb_timeout, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %select_timeout = getelementptr inbounds %struct.pca9541, ptr %1, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.i2c_mux_core, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i.i, align 4
  %11 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i.i) #5
  %13 = call ptr @memset(ptr %data.i.i, i32 255, i32 34)
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr.i.i, align 2
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %3, align 8
  %call.i.i = call i32 @__i2c_smbus_xfer(ptr noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %17, i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %data.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %pca9541_reg_read.exit.thread.i, label %pca9541_reg_read.exit.i

pca9541_reg_read.exit.thread.i:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data.i.i, align 2
  %conv.i.i = zext i8 %19 to i32
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i.i) #5
  br label %if.end.i

pca9541_reg_read.exit.i:                          ; preds = %do.body
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %pca9541_reg_read.exit.i.cleanup_crit_edge, label %pca9541_reg_read.exit.i.if.end.i_crit_edge

pca9541_reg_read.exit.i.if.end.i_crit_edge:       ; preds = %pca9541_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

pca9541_reg_read.exit.i.cleanup_crit_edge:        ; preds = %pca9541_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %pca9541_reg_read.exit.i.if.end.i_crit_edge, %pca9541_reg_read.exit.thread.i
  %cond.i103.i = phi i32 [ %conv.i.i, %pca9541_reg_read.exit.thread.i ], [ %call.i.i, %pca9541_reg_read.exit.i.if.end.i_crit_edge ]
  %and.i = and i32 %cond.i103.i, 12
  %20 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %and.i, label %if.else17.i [
    i32 0, label %if.end.i.if.then5.i_crit_edge
    i32 12, label %if.end.i.if.then5.i_crit_edge38
  ]

if.end.i.if.then5.i_crit_edge38:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5.i

if.end.i.if.then5.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i.if.then5.i_crit_edge, %if.end.i.if.then5.i_crit_edge38
  %21 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i80.i) #5
  %23 = call ptr @memset(ptr %data.i80.i, i32 255, i32 34)
  %24 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %addr.i.i, align 2
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %3, align 8
  %call.i83.i = call i32 @__i2c_smbus_xfer(ptr noundef %22, i16 noundef zeroext %25, i16 noundef zeroext %27, i8 noundef zeroext 1, i8 noundef zeroext 2, i32 noundef 2, ptr noundef nonnull %data.i80.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i)
  %tobool.not.i84.i = icmp eq i32 %call.i83.i, 0
  br i1 %tobool.not.i84.i, label %cond.false.i86.i, label %if.then5.i.pca9541_reg_read.exit88.i_crit_edge

if.then5.i.pca9541_reg_read.exit88.i_crit_edge:   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pca9541_reg_read.exit88.i

cond.false.i86.i:                                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %data.i80.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %data.i80.i, align 2
  %conv.i85.i = zext i8 %29 to i32
  br label %pca9541_reg_read.exit88.i

pca9541_reg_read.exit88.i:                        ; preds = %cond.false.i86.i, %if.then5.i.pca9541_reg_read.exit88.i_crit_edge
  %cond.i87.i = phi i32 [ %conv.i85.i, %cond.false.i86.i ], [ %call.i83.i, %if.then5.i.pca9541_reg_read.exit88.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i80.i) #5
  %and7.i = and i32 %cond.i87.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %pca9541_reg_read.exit88.i.if.then11.i_crit_edge, label %lor.lhs.false9.i

pca9541_reg_read.exit88.i.if.then11.i_crit_edge:  ; preds = %pca9541_reg_read.exit88.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

lor.lhs.false9.i:                                 ; preds = %pca9541_reg_read.exit88.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %arb_timeout.i = getelementptr inbounds %struct.pca9541, ptr %10, i32 0, i32 2
  %31 = ptrtoint ptr %arb_timeout.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arb_timeout.i, align 4
  %sub.i = sub i32 %30, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp10.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp10.i, label %lor.lhs.false9.i.if.then11.i_crit_edge, label %if.else.i

lor.lhs.false9.i.if.then11.i_crit_edge:           ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

if.then11.i:                                      ; preds = %lor.lhs.false9.i.if.then11.i_crit_edge, %pca9541_reg_read.exit88.i.if.then11.i_crit_edge
  %and12.i = and i32 %cond.i103.i, 15
  %arrayidx.i = getelementptr [16 x i8], ptr @pca9541_control, i32 0, i32 %and12.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i, align 1
  %35 = or i8 %34, -128
  %36 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i89.i) #5
  %38 = call ptr @memset(ptr %data.i89.i, i32 0, i32 34)
  %39 = ptrtoint ptr %data.i89.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %35, ptr %data.i89.i, align 2
  %40 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %addr.i.i, align 2
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %3, align 8
  %call.i92.i = call i32 @__i2c_smbus_xfer(ptr noundef %37, i16 noundef zeroext %41, i16 noundef zeroext %43, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %data.i89.i) #5
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i89.i) #5
  %select_timeout.i = getelementptr inbounds %struct.pca9541, ptr %10, i32 0, i32 1
  %44 = ptrtoint ptr %select_timeout.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 50, ptr %select_timeout.i, align 4
  br label %if.end

if.else.i:                                        ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #7
  %select_timeout15.i = getelementptr inbounds %struct.pca9541, ptr %10, i32 0, i32 1
  %45 = ptrtoint ptr %select_timeout15.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2000, ptr %select_timeout15.i, align 4
  br label %if.end

if.else17.i:                                      ; preds = %if.end.i
  %and18.i = and i32 %cond.i103.i, 3
  %46 = zext i32 %and18.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %and18.i, label %if.else32.i [
    i32 0, label %if.else17.i.if.then24.i_crit_edge
    i32 3, label %if.else17.i.if.then24.i_crit_edge39
  ]

if.else17.i.if.then24.i_crit_edge39:              ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i

if.else17.i.if.then24.i_crit_edge:                ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i

if.then24.i:                                      ; preds = %if.else17.i.if.then24.i_crit_edge, %if.else17.i.if.then24.i_crit_edge39
  %and25.i = and i32 %cond.i103.i, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.then24.i.cleanup_crit_edge, label %if.then27.i

if.then24.i.cleanup_crit_edge:                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then27.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #7
  %47 = trunc i32 %cond.i103.i to i8
  %conv29.i = and i8 %47, 111
  %48 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adapter.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i93.i) #5
  %50 = call ptr @memset(ptr %data.i93.i, i32 0, i32 34)
  %51 = ptrtoint ptr %data.i93.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv29.i, ptr %data.i93.i, align 2
  %52 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %addr.i.i, align 2
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %3, align 8
  %call.i96.i = call i32 @__i2c_smbus_xfer(ptr noundef %49, i16 noundef zeroext %53, i16 noundef zeroext %55, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %data.i93.i) #5
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i93.i) #5
  br label %cleanup

if.else32.i:                                      ; preds = %if.else17.i
  %select_timeout33.i = getelementptr inbounds %struct.pca9541, ptr %10, i32 0, i32 1
  %56 = ptrtoint ptr %select_timeout33.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1000, ptr %select_timeout33.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %arb_timeout34.i = getelementptr inbounds %struct.pca9541, ptr %10, i32 0, i32 2
  %58 = ptrtoint ptr %arb_timeout34.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arb_timeout34.i, align 4
  %sub35.i = sub i32 %57, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub35.i)
  %cmp36.i = icmp sgt i32 %sub35.i, -1
  br i1 %cmp36.i, label %if.then38.i, label %if.else46.i

if.then38.i:                                      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #7
  %and39.i = and i32 %cond.i103.i, 15
  %arrayidx40.i = getelementptr [16 x i8], ptr @pca9541_control, i32 0, i32 %and39.i
  %60 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx40.i, align 1
  %62 = or i8 %61, -112
  %63 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %adapter.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i97.i) #5
  %65 = call ptr @memset(ptr %data.i97.i, i32 0, i32 34)
  %66 = ptrtoint ptr %data.i97.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %62, ptr %data.i97.i, align 2
  %67 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %addr.i.i, align 2
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %3, align 8
  %call.i100.i = call i32 @__i2c_smbus_xfer(ptr noundef %64, i16 noundef zeroext %68, i16 noundef zeroext %70, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %data.i97.i) #5
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i97.i) #5
  br label %if.end

if.else46.i:                                      ; preds = %if.else32.i
  %and47.i = and i32 %cond.i103.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.then49.i, label %if.else46.i.if.end_crit_edge

if.else46.i.if.end_crit_edge:                     ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then49.i:                                      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #7
  %71 = trunc i32 %cond.i103.i to i8
  %conv51.i = or i8 %71, -128
  %72 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adapter.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i) #5
  %74 = call ptr @memset(ptr %data.i, i32 0, i32 34)
  %75 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv51.i, ptr %data.i, align 2
  %76 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %addr.i.i, align 2
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %3, align 8
  %call.i = call i32 @__i2c_smbus_xfer(ptr noundef %73, i16 noundef zeroext %77, i16 noundef zeroext %79, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %data.i) #5
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then49.i, %if.else46.i.if.end_crit_edge, %if.then38.i, %if.else.i, %if.then11.i
  %80 = ptrtoint ptr %select_timeout to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %select_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %81)
  %cmp4 = icmp eq i32 %81, 50
  br i1 %cmp4, label %cond.false11, label %if.else

cond.false11:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %82(i32 noundef 10737400) #5
  br label %do.cond

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %div = udiv i32 %81, 1000
  call void @msleep(i32 noundef %div) #5
  br label %do.cond

do.cond:                                          ; preds = %if.else, %cond.false11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %83 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %83
  %cmp19 = icmp sgt i32 %sub, -1
  br i1 %cmp19, label %do.cond.do.body_crit_edge, label %do.cond.cleanup_crit_edge

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %if.then27.i, %if.then24.i.cleanup_crit_edge, %pca9541_reg_read.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then27.i ], [ 0, %if.then24.i.cleanup_crit_edge ], [ %call.i.i, %pca9541_reg_read.exit.i.cleanup_crit_edge ], [ -110, %do.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9541_release_chan(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call fastcc void @pca9541_release_bus(ptr noundef %3)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_i2c_mux_pca9541__288_346_pca9541_driver_init6, !1, !"__initcall__kmod_i2c_mux_pca9541__288_346_pca9541_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/muxes/i2c-mux-pca9541.c", i32 346, i32 1}
!2 = !{ptr @__exitcall_pca9541_driver_exit, !1, !"__exitcall_pca9541_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/i2c/muxes/i2c-mux-pca9541.c", i32 348, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/i2c/muxes/i2c-mux-pca9541.c", i32 349, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/i2c/muxes/i2c-mux-pca9541.c", i32 350, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/muxes/i2c-mux-pca9541.c", i32 338, i32 14}
!12 = !{ptr @pca9541_driver, !13, !"pca9541_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/muxes/i2c-mux-pca9541.c", i32 336, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/muxes/i2c-mux-pca9541.c", i32 322, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pca9541_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pca9541_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @pca9541_control, !23, !"pca9541_control", i1 false, i1 false}
!23 = !{!"../drivers/i2c/muxes/i2c-mux-pca9541.c", i32 166, i32 17}
!24 = !{ptr @pca9541_of_match, !25, !"pca9541_of_match", i1 false, i1 false}
!25 = !{!"../drivers/i2c/muxes/i2c-mux-pca9541.c", i32 88, i32 34}
!26 = !{ptr @pca9541_id, !27, !"pca9541_id", i1 false, i1 false}
!27 = !{!"../drivers/i2c/muxes/i2c-mux-pca9541.c", i32 80, i32 35}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
