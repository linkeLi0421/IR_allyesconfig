; ModuleID = '/llk/IR_all_yes/drivers/misc/lis3lv02d/lis3lv02d_i2c.c_pt.bc'
source_filename = "../drivers/misc/lis3lv02d/lis3lv02d_i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lis3lv02d = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i8, i8, i8, ptr, i32, i32, i32, ptr, ptr, [2 x %struct.regulator_bulk_data], %struct.atomic_t, %union.axis_conversion, [3 x i32], i32, ptr, %struct.wait_queue_head, i32, %struct.miscdevice, [2 x i32], %struct.atomic_t, i8, i32, ptr, %struct.mutex, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%union.axis_conversion = type { %struct.anon.87 }
%struct.anon.87 = type { i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.lis3lv02d_platform_data = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, ptr, ptr, [3 x i16], [3 x i16], i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_lis3lv02d_i2c__289_272_lis3lv02d_i2c_driver_init6 = internal global ptr @lis3lv02d_i2c_driver_init, section ".initcall6.init", align 4
@lis3lv02d_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lis3lv02d_i2c_probe, ptr @lis3lv02d_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lis3lv02d_i2c_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lis3_pm_ops, ptr null, ptr null }, ptr @lis3lv02d_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lis3lv02d_i2c_driver_exit = internal global ptr @lis3lv02d_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [39 x i8] c"lis3lv02d_i2c.author=Nokia Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [50 x i8] c"lis3lv02d_i2c.description=lis3lv02d I2C interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [56 x i8] c"lis3lv02d_i2c.file=drivers/misc/lis3lv02d/lis3lv02d_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [26 x i8] c"lis3lv02d_i2c.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lis3lv02d_i2c\00", [18 x i8] zeroinitializer }, align 32
@lis3lv02d_i2c_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,lis3lv02d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lis3_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @lis3lv02d_i2c_suspend, ptr @lis3lv02d_i2c_resume, ptr @lis3lv02d_i2c_suspend, ptr @lis3lv02d_i2c_resume, ptr @lis3lv02d_i2c_suspend, ptr @lis3lv02d_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lis3_i2c_runtime_suspend, ptr @lis3_i2c_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@lis3lv02d_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lis3lv02d\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lis331dlh\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@lis3_dev = external dso_local global %struct.lis3lv02d, align 4
@reg_vdd = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Vdd\00", [28 x i8] zeroinitializer }, align 32
@reg_vdd_io = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Vdd_IO\00", [25 x i8] zeroinitializer }, align 32
@lis3lv02d_axis_map = internal global { { [3 x i32] }, [20 x i8] } { { [3 x i32] } { [3 x i32] [i32 1, i32 2, i32 3] }, [20 x i8] zeroinitializer }, align 32
@lis3_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013lis3: power on failure\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lis3_i2c_init\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/misc/lis3lv02d/lis3lv02d_i2c.c\00", [57 x i8] zeroinitializer }, align 32
@lis3_i2c_init._entry_ptr = internal global ptr @lis3_i2c_init._entry, section ".printk_index", align 4
@___asan_gen_.5 = private unnamed_addr constant [21 x i8] c"lis3lv02d_i2c_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 261, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 263, i32 13 }
@___asan_gen_.11 = private unnamed_addr constant [21 x i8] c"lis3lv02d_i2c_dt_ids\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 96, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant [12 x i8] c"lis3_pm_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 253, i32 32 }
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"lis3lv02d_id\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 245, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant [8 x i8] c"reg_vdd\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 28, i32 19 }
@___asan_gen_.23 = private unnamed_addr constant [11 x i8] c"reg_vdd_io\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 29, i32 19 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"lis3lv02d_axis_map\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 92, i32 30 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [42 x i8] c"../drivers/misc/lis3lv02d/lis3lv02d_i2c.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 76, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_lis3lv02d_i2c_driver_exit, ptr @__initcall__kmod_lis3lv02d_i2c__289_272_lis3lv02d_i2c_driver_init6, ptr @lis3_i2c_init._entry, ptr @lis3_i2c_init._entry_ptr, ptr @lis3lv02d_i2c_driver_exit, ptr @lis3lv02d_i2c_driver, ptr @.str, ptr @lis3lv02d_i2c_dt_ids, ptr @lis3_pm_ops, ptr @lis3lv02d_id, ptr @reg_vdd, ptr @reg_vdd_io, ptr @lis3lv02d_axis_map, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lis3lv02d_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lis3lv02d_i2c_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lis3_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lis3lv02d_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_vdd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_vdd_io to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lis3lv02d_axis_map to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lis3_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lis3lv02d_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lis3lv02d_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lis3lv02d_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @lis3lv02d_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lis3lv02d_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @of_match_device(ptr noundef nonnull @lis3lv02d_i2c_dt_ids, ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 35) to i32))
  store ptr %3, ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 35), align 4
  %call3 = tail call i32 @lis3lv02d_init_dt(ptr noundef nonnull @lis3_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 33) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 33), align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %pdata.0 = phi ptr [ %4, %if.end ], [ %1, %entry.if.end6_crit_edge ]
  %tobool7.not = icmp eq ptr %pdata.0, null
  br i1 %tobool7.not, label %if.end6.if.end37_crit_edge, label %if.then8

if.end6.if.end37_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then8:                                         ; preds = %if.end6
  %driver_features = getelementptr inbounds %struct.lis3lv02d_platform_data, ptr %pdata.0, i32 0, i32 20
  %5 = ptrtoint ptr %driver_features to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %driver_features, align 4
  %7 = and i16 %6, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool9.not = icmp eq i16 %7, 0
  br i1 %tobool9.not, label %if.then8.if.end13_crit_edge, label %land.lhs.true

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

land.lhs.true:                                    ; preds = %if.then8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %13(ptr noundef %9) #6
  %and.i = and i32 %call.i.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 201326592
  br i1 %cmp.i.not, label %if.then12, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 5) to i32))
  store ptr @lis3_i2c_blockread, ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 5), align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true.if.end13_crit_edge, %if.then8.if.end13_crit_edge
  %axis_x = getelementptr inbounds %struct.lis3lv02d_platform_data, ptr %pdata.0, i32 0, i32 17
  %14 = ptrtoint ptr %axis_x to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %axis_x, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not = icmp eq i8 %15, 0
  br i1 %tobool14.not, label %if.end13.if.end18_crit_edge, label %if.then15

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %conv17 = sext i8 %15 to i32
  store i32 %conv17, ptr @lis3lv02d_axis_map, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13.if.end18_crit_edge
  %axis_y = getelementptr inbounds %struct.lis3lv02d_platform_data, ptr %pdata.0, i32 0, i32 18
  %16 = ptrtoint ptr %axis_y to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %axis_y, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool19.not = icmp eq i8 %17, 0
  br i1 %tobool19.not, label %if.end18.if.end23_crit_edge, label %if.then20

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %conv22 = sext i8 %17 to i32
  store i32 %conv22, ptr getelementptr inbounds ({ [3 x i32] }, ptr @lis3lv02d_axis_map, i32 0, i32 0, i32 1), align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end18.if.end23_crit_edge
  %axis_z = getelementptr inbounds %struct.lis3lv02d_platform_data, ptr %pdata.0, i32 0, i32 19
  %18 = ptrtoint ptr %axis_z to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %axis_z, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool24.not = icmp eq i8 %19, 0
  br i1 %tobool24.not, label %if.end23.if.end28_crit_edge, label %if.then25

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %conv27 = sext i8 %19 to i32
  store i32 %conv27, ptr getelementptr inbounds ({ [3 x i32] }, ptr @lis3lv02d_axis_map, i32 0, i32 0, i32 2), align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end23.if.end28_crit_edge
  %setup_resources = getelementptr inbounds %struct.lis3lv02d_platform_data, ptr %pdata.0, i32 0, i32 22
  %20 = ptrtoint ptr %setup_resources to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %setup_resources, align 4
  %tobool29.not = icmp eq ptr %21, null
  br i1 %tobool29.not, label %if.end28.if.end37_crit_edge, label %if.end33

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end33:                                         ; preds = %if.end28
  %call32 = tail call i32 %21() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool34.not = icmp eq i32 %call32, 0
  br i1 %tobool34.not, label %if.end33.if.end37_crit_edge, label %if.end33.land.lhs.true51_crit_edge

if.end33.land.lhs.true51_crit_edge:               ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true51

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end37:                                         ; preds = %if.end33.if.end37_crit_edge, %if.end28.if.end37_crit_edge, %if.end6.if.end37_crit_edge
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 20) to i32))
  store ptr @reg_vdd, ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 20), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 20, i32 1) to i32))
  store ptr @reg_vdd_io, ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 20, i32 1), align 4
  %call39 = tail call i32 @regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 20)) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp = icmp slt i32 %call39, 0
  br i1 %cmp, label %if.end37.fail_crit_edge, label %if.end42

if.end37.fail_crit_edge:                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end42:                                         ; preds = %if.end37
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 33) to i32))
  store ptr %pdata.0, ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 33), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @lis3_dev to i32))
  store ptr %client, ptr @lis3_dev, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 2) to i32))
  store ptr @lis3_i2c_init, ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 2), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 4) to i32))
  store ptr @lis3_i2c_read, ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 4), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 3) to i32))
  store ptr @lis3_i2c_write, ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 3), align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 24) to i32))
  store i32 %23, ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 24), align 4
  %24 = call ptr @memcpy(ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 22), ptr @lis3lv02d_axis_map, i32 12)
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 1) to i32))
  store ptr %dev, ptr getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 1), align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @lis3_dev, ptr %driver_data.i.i, align 4
  %call4.i = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 20)) #6
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #6
  %call45 = tail call i32 @lis3lv02d_init_device(ptr noundef nonnull @lis3_dev) #6
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 20)) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool47.not = icmp eq i32 %call45, 0
  br i1 %tobool47.not, label %if.end42.cleanup_crit_edge, label %fail2

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fail2:                                            ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @regulator_bulk_free(i32 noundef 2, ptr noundef getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 20)) #6
  br label %fail

fail:                                             ; preds = %fail2, %if.end37.fail_crit_edge
  %ret.2 = phi i32 [ %call39, %if.end37.fail_crit_edge ], [ %call45, %fail2 ]
  br i1 %tobool7.not, label %fail.cleanup_crit_edge, label %fail.land.lhs.true51_crit_edge

fail.land.lhs.true51_crit_edge:                   ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true51

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true51:                                  ; preds = %fail.land.lhs.true51_crit_edge, %if.end33.land.lhs.true51_crit_edge
  %ret.291 = phi i32 [ %ret.2, %fail.land.lhs.true51_crit_edge ], [ %call32, %if.end33.land.lhs.true51_crit_edge ]
  %release_resources = getelementptr inbounds %struct.lis3lv02d_platform_data, ptr %pdata.0, i32 0, i32 23
  %26 = ptrtoint ptr %release_resources to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %release_resources, align 4
  %tobool52.not = icmp eq ptr %27, null
  br i1 %tobool52.not, label %land.lhs.true51.cleanup_crit_edge, label %if.then53

land.lhs.true51.cleanup_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then53:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #8
  %call55 = tail call i32 %27() #6
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %land.lhs.true51.cleanup_crit_edge, %fail.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then.cleanup_crit_edge ], [ 0, %if.end42.cleanup_crit_edge ], [ %ret.291, %if.then53 ], [ %ret.291, %land.lhs.true51.cleanup_crit_edge ], [ %ret.2, %fail.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lis3lv02d_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %release_resources = getelementptr inbounds %struct.lis3lv02d_platform_data, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %release_resources to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %release_resources, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 %5() #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @lis3lv02d_joystick_disable(ptr noundef %1) #6
  tail call void @lis3lv02d_remove_fs(ptr noundef nonnull @lis3_dev) #6
  tail call void @regulator_bulk_free(i32 noundef 2, ptr noundef getelementptr inbounds (%struct.lis3lv02d, ptr @lis3_dev, i32 0, i32 20)) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lis3lv02d_init_dt(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lis3_i2c_blockread(ptr nocapture noundef readonly %lis3, i32 noundef %reg, i32 noundef %len, ptr noundef %v) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %lis3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lis3, align 4
  %2 = trunc i32 %reg to i8
  %conv = or i8 %2, -128
  %conv1 = trunc i32 %len to i8
  %call = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv1, ptr noundef %v) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lis3_i2c_init(ptr noundef %lis3) #2 align 64 {
entry:
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg, align 1, !annotation !41
  %regulators2.i = getelementptr inbounds %struct.lis3lv02d, ptr %lis3, i32 0, i32 20
  %call4.i = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regulators2.i) #6
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #6
  %read = getelementptr inbounds %struct.lis3lv02d, ptr %lis3, i32 0, i32 4
  %1 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read, align 4
  %call1 = call i32 %2(ptr noundef %lis3, i32 noundef 15, ptr noundef nonnull %reg) #6
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %reg, align 1
  %whoami = getelementptr inbounds %struct.lis3lv02d, ptr %lis3, i32 0, i32 13
  %5 = ptrtoint ptr %whoami to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %whoami, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp.not = icmp eq i8 %4, %6
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read, align 4
  %call6 = call i32 %8(ptr noundef %lis3, i32 noundef 32, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %whoami to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %whoami, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %10)
  %cmp13 = icmp eq i8 %10, 50
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reg, align 1
  %. = select i1 %cmp13, i8 39, i8 71
  %13 = or i8 %12, %.
  store i8 %13, ptr %reg, align 1
  %write = getelementptr inbounds %struct.lis3lv02d, ptr %lis3, i32 0, i32 3
  %14 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write, align 4
  %call22 = call i32 %15(ptr noundef %lis3, i32 noundef 32, i8 noundef zeroext %13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end10 ], [ %call6, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lis3_i2c_read(ptr nocapture noundef readonly %lis3, i32 noundef %reg, ptr nocapture noundef writeonly %v) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %lis3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lis3, align 4
  %conv = trunc i32 %reg to i8
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv) #6
  %conv1 = trunc i32 %call to i8
  %2 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %v, align 1
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lis3_i2c_write(ptr nocapture noundef readonly %lis3, i32 noundef %reg, i8 noundef zeroext %value) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %lis3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lis3, align 4
  %conv = trunc i32 %reg to i8
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %value) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lis3lv02d_init_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_bulk_free(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lis3lv02d_joystick_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lis3lv02d_remove_fs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lis3lv02d_i2c_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdata = getelementptr inbounds %struct.lis3lv02d, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %wakeup_flags = getelementptr inbounds %struct.lis3lv02d_platform_data, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %wakeup_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wakeup_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @lis3lv02d_poweroff(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lis3lv02d_i2c_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdata = getelementptr inbounds %struct.lis3lv02d, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %wakeup_flags = getelementptr inbounds %struct.lis3lv02d_platform_data, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %wakeup_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wakeup_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false3

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %6 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %lor.lhs.false3.if.end_crit_edge

lor.lhs.false3.if.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %lor.lhs.false3
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %8 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.if.then_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

pm_runtime_suspended.exit.if.then_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %pm_runtime_suspended.exit.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call5 = tail call i32 @lis3lv02d_poweron(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_runtime_suspended.exit.if.end_crit_edge, %lor.lhs.false3.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lis3_i2c_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @lis3lv02d_poweroff(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lis3_i2c_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @lis3lv02d_poweron(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lis3lv02d_poweroff(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lis3lv02d_poweron(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_lis3lv02d_i2c__289_272_lis3lv02d_i2c_driver_init6, !1, !"__initcall__kmod_lis3lv02d_i2c__289_272_lis3lv02d_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/misc/lis3lv02d/lis3lv02d_i2c.c", i32 272, i32 1}
!2 = !{ptr @__exitcall_lis3lv02d_i2c_driver_exit, !1, !"__exitcall_lis3lv02d_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/misc/lis3lv02d/lis3lv02d_i2c.c", i32 274, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/misc/lis3lv02d/lis3lv02d_i2c.c", i32 275, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/misc/lis3lv02d/lis3lv02d_i2c.c", i32 276, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/misc/lis3lv02d/lis3lv02d_i2c.c", i32 263, i32 13}
!12 = !{ptr @lis3lv02d_i2c_driver, !13, !"lis3lv02d_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/misc/lis3lv02d/lis3lv02d_i2c.c", i32 261, i32 26}
!14 = !{ptr @lis3lv02d_axis_map, !15, !"lis3lv02d_axis_map", i1 false, i1 false}
!15 = !{!"../drivers/misc/lis3lv02d/lis3lv02d_i2c.c", i32 92, i32 30}
!16 = !{ptr @reg_vdd, !17, !"reg_vdd", i1 false, i1 false}
!17 = !{!"../drivers/misc/lis3lv02d/lis3lv02d_i2c.c", i32 28, i32 19}
!18 = !{ptr @reg_vdd_io, !19, !"reg_vdd_io", i1 false, i1 false}
!19 = !{!"../drivers/misc/lis3lv02d/lis3lv02d_i2c.c", i32 29, i32 19}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/misc/lis3lv02d/lis3lv02d_i2c.c", i32 76, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @lis3_i2c_init._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @lis3_i2c_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @lis3lv02d_i2c_dt_ids, !27, !"lis3lv02d_i2c_dt_ids", i1 false, i1 false}
!27 = !{!"../drivers/misc/lis3lv02d/lis3lv02d_i2c.c", i32 96, i32 34}
!28 = !{ptr @lis3_pm_ops, !29, !"lis3_pm_ops", i1 false, i1 false}
!29 = !{!"../drivers/misc/lis3lv02d/lis3lv02d_i2c.c", i32 253, i32 32}
!30 = !{ptr @lis3lv02d_id, !31, !"lis3lv02d_id", i1 false, i1 false}
!31 = !{!"../drivers/misc/lis3lv02d/lis3lv02d_i2c.c", i32 245, i32 35}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
