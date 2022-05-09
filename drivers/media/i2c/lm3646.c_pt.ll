; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/lm3646.c_pt.bc'
source_filename = "../drivers/media/i2c/lm3646.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.lm3646_flash = type { ptr, ptr, ptr, %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.92 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { i32, i32 }
%struct.lm3646_platform_data = type { i32, i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.86, %union.anon.87, i32, ptr, i32, %struct.anon.88, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.86 = type { i64 }
%union.anon.87 = type { ptr }
%struct.anon.88 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__initcall__kmod_lm3646__292_407_lm3646_i2c_driver_init6 = internal global ptr @lm3646_i2c_driver_init, section ".initcall6.init", align 4
@lm3646_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lm3646_probe, ptr @lm3646_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm3646_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm3646_i2c_driver_exit = internal global ptr @lm3646_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [52 x i8] c"lm3646.author=Daniel Jeong <gshark.jeong@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [44 x i8] c"lm3646.author=Ldd Mlp <ldd-mlp@list.ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [66 x i8] c"lm3646.description=Texas Instruments LM3646 Dual Flash LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [37 x i8] c"lm3646.file=drivers/media/i2c/lm3646\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [19 x i8] c"lm3646.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lm3646\00", [25 x i8] zeroinitializer }, align 32
@lm3646_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lm3646\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lm3646_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lm3646_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"lm3646:348:(&lm3646_regmap)->lock\00", [62 x i8] zeroinitializer }, align 32
@lm3646_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } zeroinitializer, align 32
@lm3646_led_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @lm3646_get_ctrl, ptr null, ptr @lm3646_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@lm3646_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lm3646:209:(hdl)->_lock\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 10225921, i64 10225922, i64 10225923, i64 10225924, i64 10225926, i64 10225927, i64 10225928]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"lm3646_i2c_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 398, i32 26 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 400, i32 14 }
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"lm3646_id_table\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 391, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"lm3646_regmap\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 265, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 348, i32 18 }
@___asan_gen_.22 = private unnamed_addr constant [11 x i8] c"lm3646_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 261, i32 37 }
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"lm3646_led_ctrl_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 198, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [30 x i8] c"../drivers/media/i2c/lm3646.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 209, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_lm3646_i2c_driver_exit, ptr @__initcall__kmod_lm3646__292_407_lm3646_i2c_driver_init6, ptr @lm3646_i2c_driver_exit, ptr @lm3646_i2c_driver, ptr @.str, ptr @lm3646_id_table, ptr @lm3646_probe._key, ptr @lm3646_regmap, ptr @.str.1, ptr @lm3646_ops, ptr @lm3646_led_ctrl_ops, ptr @lm3646_init_controls._key, ptr @.str.2], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3646_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3646_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3646_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3646_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3646_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3646_led_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3646_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3646_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm3646_i2c_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm3646_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @lm3646_i2c_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3646_probe(ptr noundef %client, ptr nocapture noundef readnone %devid) #2 align 64 {
entry:
  %reg_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 396, i32 noundef 3520) #4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @lm3646_regmap, ptr noundef nonnull @lm3646_probe._key, ptr noundef nonnull @.str.1) #4
  %regmap = getelementptr inbounds %struct.lm3646_flash, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %cmp10 = icmp eq ptr %1, null
  br i1 %cmp10, label %if.then11, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then11:                                        ; preds = %if.end9
  %call.i52 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #4
  %cmp14 = icmp eq ptr %call.i52, null
  br i1 %cmp14, label %if.then11.cleanup_crit_edge, label %if.end16

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call.i52 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 400, ptr %call.i52, align 4
  %led1_torch_brt = getelementptr inbounds %struct.lm3646_platform_data, ptr %call.i52, i32 0, i32 2
  %5 = ptrtoint ptr %led1_torch_brt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 187100, ptr %led1_torch_brt, align 4
  %led1_flash_brt = getelementptr inbounds %struct.lm3646_platform_data, ptr %call.i52, i32 0, i32 1
  %6 = ptrtoint ptr %led1_flash_brt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1499600, ptr %led1_flash_brt, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end9.if.end17_crit_edge
  %pdata.0 = phi ptr [ %call.i52, %if.end16 ], [ %1, %if.end9.if.end17_crit_edge ]
  %pdata18 = getelementptr inbounds %struct.lm3646_flash, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %pdata18 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdata.0, ptr %pdata18, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %call.i, align 4
  %subdev_led.i = getelementptr inbounds %struct.lm3646_flash, ptr %call.i, i32 0, i32 4
  tail call void @v4l2_i2c_subdev_init(ptr noundef %subdev_led.i, ptr noundef %client, ptr noundef nonnull @lm3646_ops) #4
  %flags.i = getelementptr inbounds %struct.lm3646_flash, ptr %call.i, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %10, 4
  store i32 %or.i, ptr %flags.i, align 4
  %name.i = getelementptr inbounds %struct.lm3646_flash, ptr %call.i, i32 0, i32 4, i32 9
  %call.i53 = tail call i32 @strscpy(ptr noundef %name.i, ptr noundef nonnull @.str, i32 noundef 32) #4
  %ctrls_led.i.i = getelementptr inbounds %struct.lm3646_flash, ptr %call.i, i32 0, i32 3
  %call.i.i = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls_led.i.i, i32 noundef 8, ptr noundef nonnull @lm3646_init_controls._key, ptr noundef nonnull @.str.2) #4
  %call1.i.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls_led.i.i, ptr noundef nonnull @lm3646_led_ctrl_ops, i32 noundef 10225921, i8 noundef zeroext 2, i64 noundef -8, i8 noundef zeroext 0) #4
  %call2.i.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls_led.i.i, ptr noundef nonnull @lm3646_led_ctrl_ops, i32 noundef 10225922, i8 noundef zeroext 1, i64 noundef -4, i8 noundef zeroext 0) #4
  %call3.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls_led.i.i, ptr noundef nonnull @lm3646_led_ctrl_ops, i32 noundef 10225923, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #4
  %call4.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls_led.i.i, ptr noundef nonnull @lm3646_led_ctrl_ops, i32 noundef 10225924, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #4
  %11 = ptrtoint ptr %pdata18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata18, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %conv.i.i = zext i32 %14 to i64
  %call5.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls_led.i.i, ptr noundef nonnull @lm3646_led_ctrl_ops, i32 noundef 10225926, i64 noundef 50, i64 noundef 400, i64 noundef 50, i64 noundef %conv.i.i) #4
  %call6.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls_led.i.i, ptr noundef nonnull @lm3646_led_ctrl_ops, i32 noundef 10225927, i64 noundef 93350, i64 noundef 1499600, i64 noundef 93750, i64 noundef 1499600) #4
  %call7.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls_led.i.i, ptr noundef nonnull @lm3646_led_ctrl_ops, i32 noundef 10225928, i64 noundef 23040, i64 noundef 187100, i64 noundef 23430, i64 noundef 187100) #4
  %call8.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls_led.i.i, ptr noundef nonnull @lm3646_led_ctrl_ops, i32 noundef 10225930, i64 noundef 0, i64 noundef 15, i64 noundef 0, i64 noundef 0) #4
  %cmp.not.i.i = icmp eq ptr %call8.i.i, null
  br i1 %cmp.not.i.i, label %if.end17.if.end.i.i_crit_edge, label %if.then.i.i

if.end17.if.end.i.i_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %flags.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call8.i.i, i32 0, i32 20
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %16, 128
  store i32 %or.i.i, ptr %flags.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end17.if.end.i.i_crit_edge
  %error.i.i = getelementptr inbounds %struct.lm3646_flash, ptr %call.i, i32 0, i32 3, i32 9
  %17 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %lm3646_subdev_init.exit

if.end.i:                                         ; preds = %if.end.i.i
  %ctrl_handler.i.i = getelementptr inbounds %struct.lm3646_flash, ptr %call.i, i32 0, i32 4, i32 8
  %19 = ptrtoint ptr %ctrl_handler.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ctrls_led.i.i, ptr %ctrl_handler.i.i, align 4
  %call5.i = tail call i32 @media_entity_pads_init(ptr noundef %subdev_led.i, i16 noundef zeroext 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i54 = icmp slt i32 %call5.i, 0
  br i1 %cmp.i54, label %lm3646_subdev_init.exit.thread62, label %lm3646_subdev_init.exit.thread

lm3646_subdev_init.exit.thread62:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls_led.i.i) #4
  br label %cleanup

lm3646_subdev_init.exit.thread:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %function.i = getelementptr inbounds %struct.lm3646_flash, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  %20 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 131074, ptr %function.i, align 4
  br label %if.end24

lm3646_subdev_init.exit:                          ; preds = %if.end.i.i
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls_led.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp22 = icmp slt i32 %18, 0
  br i1 %cmp22, label %lm3646_subdev_init.exit.cleanup_crit_edge, label %lm3646_subdev_init.exit.if.end24_crit_edge

lm3646_subdev_init.exit.if.end24_crit_edge:       ; preds = %lm3646_subdev_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

lm3646_subdev_init.exit.cleanup_crit_edge:        ; preds = %lm3646_subdev_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %lm3646_subdev_init.exit.if.end24_crit_edge, %lm3646_subdev_init.exit.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i) #4
  %21 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %reg_val.i, align 4, !annotation !39
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i55 = call i32 @regmap_read(ptr noundef %23, i32 noundef 1, ptr noundef nonnull %reg_val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp.i56 = icmp slt i32 %call.i55, 0
  br i1 %cmp.i56, label %if.end24.lm3646_init_device.exit.thread_crit_edge, label %if.end.i57

if.end24.lm3646_init_device.exit.thread_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %lm3646_init_device.exit.thread

if.end.i57:                                       ; preds = %if.end24
  %24 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg_val.i, align 4
  %26 = trunc i32 %25 to i8
  %conv.i = and i8 %26, -4
  %mode_reg.i = getelementptr inbounds %struct.lm3646_flash, ptr %call.i, i32 0, i32 5
  %27 = ptrtoint ptr %mode_reg.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i, ptr %mode_reg.i, align 4
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %.sink.i.i = load ptr, ptr %regmap, align 4
  %or11.i.i = zext i8 %conv.i to i32
  %call12.i.i = call i32 @regmap_write(ptr noundef %.sink.i.i, i32 noundef 1, i32 noundef %or11.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp2.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp2.i, label %if.end.i57.lm3646_init_device.exit.thread_crit_edge, label %if.end5.i

if.end.i57.lm3646_init_device.exit.thread_crit_edge: ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #6
  br label %lm3646_init_device.exit.thread

if.end5.i:                                        ; preds = %if.end.i57
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %31 = ptrtoint ptr %pdata18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdata18, align 4
  %led1_flash_brt.i = getelementptr inbounds %struct.lm3646_platform_data, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %led1_flash_brt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %led1_flash_brt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23041, i32 %34)
  %cmp7.i = icmp ult i32 %34, 23041
  %sub.i = add i32 %34, -23040
  %div.i = udiv i32 %sub.i, 11718
  %add.i = add nuw nsw i32 %div.i, 1
  %cond.i = select i1 %cmp7.i, i32 0, i32 %add.i
  %call.i.i58 = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 6, i32 noundef 127, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58)
  %cmp12.i = icmp slt i32 %call.i.i58, 0
  br i1 %cmp12.i, label %if.end5.i.lm3646_init_device.exit.thread_crit_edge, label %if.end15.i

if.end5.i.lm3646_init_device.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lm3646_init_device.exit.thread

if.end15.i:                                       ; preds = %if.end5.i
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %37 = ptrtoint ptr %pdata18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdata18, align 4
  %led1_torch_brt.i = getelementptr inbounds %struct.lm3646_platform_data, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %led1_torch_brt.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %led1_torch_brt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2531, i32 %40)
  %cmp18.i = icmp ult i32 %40, 2531
  %sub24.i = add i32 %40, -2530
  %div25.i = udiv i32 %sub24.i, 1460
  %add26.i = add nuw nsw i32 %div25.i, 1
  %cond28.i = select i1 %cmp18.i, i32 0, i32 %add26.i
  %call.i54.i = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 7, i32 noundef 127, i32 noundef %cond28.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %cmp30.i = icmp slt i32 %call.i54.i, 0
  br i1 %cmp30.i, label %if.end15.i.lm3646_init_device.exit.thread_crit_edge, label %lm3646_init_device.exit

if.end15.i.lm3646_init_device.exit.thread_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lm3646_init_device.exit.thread

lm3646_init_device.exit.thread:                   ; preds = %if.end15.i.lm3646_init_device.exit.thread_crit_edge, %if.end5.i.lm3646_init_device.exit.thread_crit_edge, %if.end.i57.lm3646_init_device.exit.thread_crit_edge, %if.end24.lm3646_init_device.exit.thread_crit_edge
  %retval.0.i59.ph = phi i32 [ %call.i54.i, %if.end15.i.lm3646_init_device.exit.thread_crit_edge ], [ %call.i.i58, %if.end5.i.lm3646_init_device.exit.thread_crit_edge ], [ %call12.i.i, %if.end.i57.lm3646_init_device.exit.thread_crit_edge ], [ %call.i55, %if.end24.lm3646_init_device.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #4
  br label %cleanup

lm3646_init_device.exit:                          ; preds = %if.end15.i
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call35.i = call i32 @regmap_read(ptr noundef %42, i32 noundef 8, ptr noundef nonnull %reg_val.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp26 = icmp slt i32 %call35.i, 0
  br i1 %cmp26, label %lm3646_init_device.exit.cleanup_crit_edge, label %if.end28

lm3646_init_device.exit.cleanup_crit_edge:        ; preds = %lm3646_init_device.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %lm3646_init_device.exit
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %lm3646_init_device.exit.cleanup_crit_edge, %lm3646_init_device.exit.thread, %lm3646_subdev_init.exit.cleanup_crit_edge, %lm3646_subdev_init.exit.thread62, %if.then11.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ 0, %if.end28 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.then11.cleanup_crit_edge ], [ %18, %lm3646_subdev_init.exit.cleanup_crit_edge ], [ %call35.i, %lm3646_init_device.exit.cleanup_crit_edge ], [ %call5.i, %lm3646_subdev_init.exit.thread62 ], [ %retval.0.i59.ph, %lm3646_init_device.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3646_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %subdev_led = getelementptr inbounds %struct.lm3646_flash, ptr %1, i32 0, i32 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev_led) #4
  %ctrls_led = getelementptr inbounds %struct.lm3646_flash, ptr %1, i32 0, i32 3
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls_led) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3646_get_ctrl(ptr nocapture noundef %ctrl) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #4
  %2 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg_val, align 4, !annotation !39
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10225930, i32 %4)
  %cmp.not = icmp eq i32 %4, 10225930
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr i8, ptr %1, i32 -4
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %6, i32 noundef 8, ptr noundef nonnull %reg_val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_val, align 4
  %and = shl i32 %8, 1
  %9 = and i32 %and, 2
  %and7 = shl i32 %8, 2
  %10 = and i32 %and7, 8
  %11 = or i32 %10, %9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %val, align 4
  %and13 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end3.if.end18_crit_edge, label %if.then15

if.end3.if.end18_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then15:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %or17 = or i32 %14, 64
  store i32 %or17, ptr %val, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end3.if.end18_crit_edge
  %and19 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end24_crit_edge, label %if.then21

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %or23 = or i32 %16, 128
  store i32 %or23, ptr %val, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end18.if.end24_crit_edge
  %and25 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end30_crit_edge, label %if.then27

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %or29 = or i32 %18, 16
  store i32 %or29, ptr %val, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24.if.end30_crit_edge
  %and31 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end36_crit_edge, label %if.then33

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %or35 = or i32 %20, 4
  store i32 %or35, ptr %val, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end30.if.end36_crit_edge
  %and37 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end42_crit_edge, label %if.then39

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %or41 = or i32 %22, 256
  store i32 %or41, ptr %val, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end36.if.end42_crit_edge
  %and43 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.cleanup_crit_edge, label %if.then45

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %or47 = or i32 %24, 1
  store i32 %or47, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end42.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.then45 ], [ 0, %if.end42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3646_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #4
  %2 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg_val, align 4, !annotation !39
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 10225921, label %sw.bb
    i32 10225922, label %sw.bb3
    i32 10225923, label %sw.bb6
    i32 10225924, label %sw.bb14
    i32 10225926, label %sw.bb25
    i32 10225927, label %sw.bb31
    i32 10225928, label %sw.bb43
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %7, label %sw.bb.cleanup_crit_edge [
    i32 1, label %if.end
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb1.i
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %mode_reg.i = getelementptr i8, ptr %1, i32 380
  %9 = ptrtoint ptr %mode_reg.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mode_reg.i, align 4
  br label %return.sink.split.i

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %mode_reg3.i = getelementptr i8, ptr %1, i32 380
  %11 = ptrtoint ptr %mode_reg3.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mode_reg3.i, align 4
  %13 = or i8 %12, 2
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb1.i, %sw.bb.i
  %.sink18.i = phi i8 [ %13, %sw.bb1.i ], [ %10, %sw.bb.i ]
  %.sink.in.i = getelementptr i8, ptr %1, i32 -4
  %14 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.sink.i = load ptr, ptr %.sink.in.i, align 4
  %or11.i = zext i8 %.sink18.i to i32
  %call12.i = tail call i32 @regmap_write(ptr noundef %.sink.i, i32 noundef 1, i32 noundef %or11.i) #4
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %mode_reg.i84 = getelementptr i8, ptr %1, i32 380
  %15 = ptrtoint ptr %mode_reg.i84 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mode_reg.i84, align 4
  %.sink.in.i87 = getelementptr i8, ptr %1, i32 -4
  %17 = ptrtoint ptr %.sink.in.i87 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.sink.i88 = load ptr, ptr %.sink.in.i87, align 4
  %or11.i89 = zext i8 %16 to i32
  %call12.i90 = tail call i32 @regmap_write(ptr noundef %.sink.i88, i32 noundef 1, i32 noundef %or11.i89) #4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %regmap = getelementptr i8, ptr %1, i32 -4
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %20 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val4, align 4
  %shl = shl i32 %21, 7
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 6, i32 noundef 128, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %regmap7 = getelementptr i8, ptr %1, i32 -4
  %22 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap7, align 4
  %call8 = call i32 @regmap_read(ptr noundef %23, i32 noundef 1, ptr noundef nonnull %reg_val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %sw.bb6.cleanup_crit_edge, label %lor.lhs.false

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb6
  %24 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg_val, align 4
  %and = and i32 %25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp10.not = icmp eq i32 %and, 0
  br i1 %cmp10.not, label %if.end12, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %mode_reg9.i93 = getelementptr i8, ptr %1, i32 380
  %26 = ptrtoint ptr %mode_reg9.i93 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mode_reg9.i93, align 4
  %28 = or i8 %27, 3
  %29 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.sink.i97 = load ptr, ptr %regmap7, align 4
  %or11.i98 = zext i8 %28 to i32
  %call12.i99 = call i32 @regmap_write(ptr noundef %.sink.i97, i32 noundef 1, i32 noundef %or11.i98) #4
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %regmap15 = getelementptr i8, ptr %1, i32 -4
  %30 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap15, align 4
  %call16 = call i32 @regmap_read(ptr noundef %31, i32 noundef 1, ptr noundef nonnull %reg_val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %sw.bb14.cleanup_crit_edge, label %if.end19

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %sw.bb14
  %32 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg_val, align 4
  %and20 = and i32 %33, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and20)
  %cmp21 = icmp eq i32 %and20, 3
  br i1 %cmp21, label %if.then22, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %mode_reg.i102 = getelementptr i8, ptr %1, i32 380
  %34 = ptrtoint ptr %mode_reg.i102 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mode_reg.i102, align 4
  %36 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.sink.i106 = load ptr, ptr %regmap15, align 4
  %or11.i107 = zext i8 %35 to i32
  %call12.i108 = call i32 @regmap_write(ptr noundef %.sink.i106, i32 noundef 1, i32 noundef %or11.i107) #4
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %regmap26 = getelementptr i8, ptr %1, i32 -4
  %37 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap26, align 4
  %val27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %39 = ptrtoint ptr %val27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %40)
  %cmp28 = icmp slt i32 %40, 51
  %sub = add i32 %40, -50
  %div = sdiv i32 %sub, 50
  %cond = select i1 %cmp28, i32 0, i32 %div
  %call.i111 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 4, i32 noundef 7, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %regmap32 = getelementptr i8, ptr %1, i32 -4
  %41 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap32, align 4
  %val33 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %43 = ptrtoint ptr %val33 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 93350, i32 %44)
  %cmp34 = icmp slt i32 %44, 93350
  %sub38 = add i32 %44, -93350
  %div39 = sdiv i32 %sub38, 93750
  %cond41 = select i1 %cmp34, i32 0, i32 %div39
  %call.i112 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 5, i32 noundef 15, i32 noundef %cond41, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %regmap44 = getelementptr i8, ptr %1, i32 -4
  %45 = ptrtoint ptr %regmap44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap44, align 4
  %val45 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %47 = ptrtoint ptr %val45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23040, i32 %48)
  %cmp46 = icmp slt i32 %48, 23040
  %sub50 = add i32 %48, -23040
  %div51 = sdiv i32 %sub50, 23430
  %phi.bo = shl nsw i32 %div51, 4
  %cond53 = select i1 %cmp46, i32 0, i32 %phi.bo
  %call.i113 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 5, i32 noundef 112, i32 noundef %cond53, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb43, %sw.bb31, %sw.bb25, %if.then22, %if.end19.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %if.end12, %lor.lhs.false.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb3, %if.end, %return.sink.split.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i113, %sw.bb43 ], [ %call.i112, %sw.bb31 ], [ %call.i111, %sw.bb25 ], [ %call12.i108, %if.then22 ], [ %call12.i99, %if.end12 ], [ %call.i, %sw.bb3 ], [ %call12.i90, %if.end ], [ %call8, %lor.lhs.false.cleanup_crit_edge ], [ %call8, %sw.bb6.cleanup_crit_edge ], [ %call16, %sw.bb14.cleanup_crit_edge ], [ %call16, %if.end19.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call12.i, %return.sink.split.i ], [ -22, %sw.bb.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !25, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_lm3646__292_407_lm3646_i2c_driver_init6, !1, !"__initcall__kmod_lm3646__292_407_lm3646_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/lm3646.c", i32 407, i32 1}
!2 = !{ptr @__exitcall_lm3646_i2c_driver_exit, !1, !"__exitcall_lm3646_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/lm3646.c", i32 409, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/lm3646.c", i32 410, i32 1}
!7 = !{ptr @__UNIQUE_ID_description295, !8, !"__UNIQUE_ID_description295", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/lm3646.c", i32 411, i32 1}
!9 = !{ptr @__UNIQUE_ID_file296, !10, !"__UNIQUE_ID_file296", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/lm3646.c", i32 412, i32 1}
!11 = !{ptr @__UNIQUE_ID_license297, !10, !"__UNIQUE_ID_license297", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/lm3646.c", i32 400, i32 14}
!14 = !{ptr @lm3646_i2c_driver, !15, !"lm3646_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/lm3646.c", i32 398, i32 26}
!16 = !{ptr @lm3646_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/lm3646.c", i32 348, i32 18}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @lm3646_regmap, !20, !"lm3646_regmap", i1 false, i1 false}
!20 = !{!"../drivers/media/i2c/lm3646.c", i32 265, i32 35}
!21 = !{ptr @lm3646_ops, !22, !"lm3646_ops", i1 false, i1 false}
!22 = !{!"../drivers/media/i2c/lm3646.c", i32 261, i32 37}
!23 = !{ptr @lm3646_init_controls._key, !24, !"_key", i1 false, i1 false}
!24 = !{!"../drivers/media/i2c/lm3646.c", i32 209, i32 2}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @lm3646_led_ctrl_ops, !27, !"lm3646_led_ctrl_ops", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/lm3646.c", i32 198, i32 35}
!28 = !{ptr @lm3646_id_table, !29, !"lm3646_id_table", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/lm3646.c", i32 391, i32 35}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
