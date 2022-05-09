; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/lm3560.c_pt.bc'
source_filename = "../drivers/media/i2c/lm3560.c"
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
%struct.lm3560_flash = type { ptr, ptr, ptr, %struct.mutex, i32, [2 x %struct.v4l2_ctrl_handler], [2 x %struct.v4l2_subdev] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.92 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { i32, i32 }
%struct.lm3560_platform_data = type { i32, i32, [2 x i32], [2 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.86, %union.anon.87, i32, ptr, i32, %struct.anon.88, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.86 = type { i64 }
%union.anon.87 = type { ptr }
%struct.anon.88 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__initcall__kmod_lm3560__292_478_lm3560_i2c_driver_init6 = internal global ptr @lm3560_i2c_driver_init, section ".initcall6.init", align 4
@lm3560_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lm3560_probe, ptr @lm3560_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm3560_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm3560_i2c_driver_exit = internal global ptr @lm3560_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [52 x i8] c"lm3560.author=Daniel Jeong <gshark.jeong@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [44 x i8] c"lm3560.author=Ldd Mlp <ldd-mlp@list.ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [61 x i8] c"lm3560.description=Texas Instruments LM3560 LED flash driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [37 x i8] c"lm3560.file=drivers/media/i2c/lm3560\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [19 x i8] c"lm3560.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lm3560\00", [25 x i8] zeroinitializer }, align 32
@lm3560_id_table = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lm3559\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lm3560\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@lm3560_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lm3560_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"lm3560:405:(&lm3560_regmap)->lock\00", [62 x i8] zeroinitializer }, align 32
@lm3560_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&flash->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lm3560-led0\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lm3560-led1\00", [20 x i8] zeroinitializer }, align 32
@lm3560_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } zeroinitializer, align 32
@lm3560_led_ctrl_ops = internal constant { [2 x %struct.v4l2_ctrl_ops], [40 x i8] } { [2 x %struct.v4l2_ctrl_ops] [%struct.v4l2_ctrl_ops { ptr @lm3560_led0_get_ctrl, ptr null, ptr @lm3560_led0_set_ctrl }, %struct.v4l2_ctrl_ops { ptr @lm3560_led1_get_ctrl, ptr null, ptr @lm3560_led1_set_ctrl }], [40 x i8] zeroinitializer }, align 32
@lm3560_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lm3560:287:(hdl)->_lock\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 10225921, i64 10225922, i64 10225923, i64 10225924, i64 10225926, i64 10225927, i64 10225928]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"lm3560_i2c_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 468, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 470, i32 14 }
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"lm3560_id_table\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 460, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"lm3560_regmap\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 343, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 405, i32 18 }
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 427, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 429, i32 48 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 433, i32 48 }
@___asan_gen_.37 = private unnamed_addr constant [11 x i8] c"lm3560_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 339, i32 37 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"lm3560_led_ctrl_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 267, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [30 x i8] c"../drivers/media/i2c/lm3560.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 287, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_lm3560_i2c_driver_exit, ptr @__initcall__kmod_lm3560__292_478_lm3560_i2c_driver_init6, ptr @lm3560_i2c_driver_exit, ptr @lm3560_i2c_driver, ptr @.str, ptr @lm3560_id_table, ptr @lm3560_probe._key, ptr @lm3560_regmap, ptr @.str.1, ptr @lm3560_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @lm3560_ops, ptr @lm3560_led_ctrl_ops, ptr @lm3560_init_controls._key, ptr @.str.5], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3560_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3560_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3560_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3560_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3560_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3560_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3560_led_ctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3560_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3560_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm3560_i2c_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm3560_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @lm3560_i2c_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3560_probe(ptr noundef %client, ptr nocapture noundef readnone %devid) #2 align 64 {
entry:
  %reg_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 868, i32 noundef 3520) #4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @lm3560_regmap, ptr noundef nonnull @lm3560_probe._key, ptr noundef nonnull @.str.1) #4
  %regmap = getelementptr inbounds %struct.lm3560_flash, ptr %call.i, i32 0, i32 2
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
  br i1 %cmp10, label %if.then11, label %if.end9.if.end22_crit_edge

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then11:                                        ; preds = %if.end9
  %call.i69 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #4
  %cmp14 = icmp eq ptr %call.i69, null
  br i1 %cmp14, label %if.then11.cleanup_crit_edge, label %if.end16

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call.i69 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 96, ptr %call.i69, align 4
  %max_flash_timeout = getelementptr inbounds %struct.lm3560_platform_data, ptr %call.i69, i32 0, i32 1
  %5 = ptrtoint ptr %max_flash_timeout to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1024, ptr %max_flash_timeout, align 4
  %max_flash_brt = getelementptr inbounds %struct.lm3560_platform_data, ptr %call.i69, i32 0, i32 2
  %6 = ptrtoint ptr %max_flash_brt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1000000, ptr %max_flash_brt, align 4
  %max_torch_brt = getelementptr inbounds %struct.lm3560_platform_data, ptr %call.i69, i32 0, i32 3
  %7 = ptrtoint ptr %max_torch_brt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 250000, ptr %max_torch_brt, align 4
  %arrayidx19 = getelementptr %struct.lm3560_platform_data, ptr %call.i69, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1000000, ptr %arrayidx19, align 4
  %arrayidx21 = getelementptr %struct.lm3560_platform_data, ptr %call.i69, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 250000, ptr %arrayidx21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end16, %if.end9.if.end22_crit_edge
  %pdata.0 = phi ptr [ %call.i69, %if.end16 ], [ %1, %if.end9.if.end22_crit_edge ]
  %pdata23 = getelementptr inbounds %struct.lm3560_flash, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %pdata23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pdata.0, ptr %pdata23, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.lm3560_flash, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @lm3560_probe.__key) #4
  %call26 = tail call fastcc i32 @lm3560_subdev_init(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef nonnull @.str.3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end22.cleanup_crit_edge, label %if.end29

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %call30 = tail call fastcc i32 @lm3560_subdev_init(ptr noundef nonnull %call.i, i32 noundef 1, ptr noundef nonnull @.str.4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i) #4
  %12 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %reg_val.i, align 4, !annotation !46
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %15 = ptrtoint ptr %pdata23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdata23, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 192, i32 noundef 96, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i70 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i70, label %if.end33.lm3560_init_device.exit.thread_crit_edge, label %lm3560_mode_ctrl.exit.i

if.end33.lm3560_init_device.exit.thread_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %lm3560_init_device.exit.thread

lm3560_mode_ctrl.exit.i:                          ; preds = %if.end33
  %led_mode.i = getelementptr inbounds %struct.lm3560_flash, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %led_mode.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %led_mode.i, align 4
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i11.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 16, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i.i)
  %cmp2.i = icmp slt i32 %call.i11.i.i, 0
  br i1 %cmp2.i, label %lm3560_mode_ctrl.exit.i.lm3560_init_device.exit.thread_crit_edge, label %lm3560_init_device.exit

lm3560_mode_ctrl.exit.i.lm3560_init_device.exit.thread_crit_edge: ; preds = %lm3560_mode_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lm3560_init_device.exit.thread

lm3560_init_device.exit.thread:                   ; preds = %lm3560_mode_ctrl.exit.i.lm3560_init_device.exit.thread_crit_edge, %if.end33.lm3560_init_device.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i11.i.i, %lm3560_mode_ctrl.exit.i.lm3560_init_device.exit.thread_crit_edge ], [ %call.i.i, %if.end33.lm3560_init_device.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #4
  br label %cleanup

lm3560_init_device.exit:                          ; preds = %lm3560_mode_ctrl.exit.i
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call6.i = call i32 @regmap_read(ptr noundef %23, i32 noundef 208, ptr noundef nonnull %reg_val.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp35 = icmp slt i32 %call6.i, 0
  br i1 %cmp35, label %lm3560_init_device.exit.cleanup_crit_edge, label %if.end37

lm3560_init_device.exit.cleanup_crit_edge:        ; preds = %lm3560_init_device.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end37:                                         ; preds = %lm3560_init_device.exit
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %lm3560_init_device.exit.cleanup_crit_edge, %lm3560_init_device.exit.thread, %if.end29.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ 0, %if.end37 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.then11.cleanup_crit_edge ], [ %call26, %if.end22.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call6.i, %lm3560_init_device.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %lm3560_init_device.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3560_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.lm3560_flash, ptr %1, i32 0, i32 6, i32 0
  tail call void @v4l2_device_unregister_subdev(ptr noundef %arrayidx) #4
  %arrayidx1 = getelementptr %struct.lm3560_flash, ptr %1, i32 0, i32 5, i32 0
  tail call void @v4l2_ctrl_handler_free(ptr noundef %arrayidx1) #4
  %arrayidx.1 = getelementptr %struct.lm3560_flash, ptr %1, i32 0, i32 6, i32 1
  tail call void @v4l2_device_unregister_subdev(ptr noundef %arrayidx.1) #4
  %arrayidx1.1 = getelementptr %struct.lm3560_flash, ptr %1, i32 0, i32 5, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %arrayidx1.1) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm3560_subdev_init(ptr noundef %flash, i32 noundef %led_no, ptr noundef %led_name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flash, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %arrayidx = getelementptr %struct.lm3560_flash, ptr %flash, i32 0, i32 6, i32 %led_no
  tail call void @v4l2_i2c_subdev_init(ptr noundef %arrayidx, ptr noundef %add.ptr, ptr noundef nonnull @lm3560_ops) #4
  %flags = getelementptr %struct.lm3560_flash, ptr %flash, i32 0, i32 6, i32 %led_no, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 4
  store i32 %or, ptr %flags, align 4
  %name = getelementptr %struct.lm3560_flash, ptr %flash, i32 0, i32 6, i32 %led_no, i32 9
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef %led_name, i32 noundef 32) #4
  %pdata.i = getelementptr inbounds %struct.lm3560_flash, ptr %flash, i32 0, i32 1
  %4 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata.i, align 4
  %arrayidx.i = getelementptr %struct.lm3560_platform_data, ptr %5, i32 0, i32 2, i32 %led_no
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %arrayidx4.i = getelementptr %struct.lm3560_platform_data, ptr %5, i32 0, i32 3, i32 %led_no
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr %struct.lm3560_flash, ptr %flash, i32 0, i32 5, i32 %led_no
  %arrayidx6.i = getelementptr [2 x %struct.v4l2_ctrl_ops], ptr @lm3560_led_ctrl_ops, i32 0, i32 %led_no
  %call.i = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %arrayidx5.i, i32 noundef 8, ptr noundef nonnull @lm3560_init_controls._key, ptr noundef nonnull @.str.5) #4
  %call7.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %arrayidx5.i, ptr noundef %arrayidx6.i, i32 noundef 10225921, i8 noundef zeroext 2, i64 noundef -8, i8 noundef zeroext 0) #4
  %led_mode.i = getelementptr inbounds %struct.lm3560_flash, ptr %flash, i32 0, i32 4
  %10 = ptrtoint ptr %led_mode.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %led_mode.i, align 4
  %call8.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %arrayidx5.i, ptr noundef %arrayidx6.i, i32 noundef 10225922, i8 noundef zeroext 1, i64 noundef -4, i8 noundef zeroext 0) #4
  %call9.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %arrayidx5.i, ptr noundef %arrayidx6.i, i32 noundef 10225923, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #4
  %call10.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %arrayidx5.i, ptr noundef %arrayidx6.i, i32 noundef 10225924, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #4
  %11 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata.i, align 4
  %max_flash_timeout.i = getelementptr inbounds %struct.lm3560_platform_data, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %max_flash_timeout.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_flash_timeout.i, align 4
  %conv.i = zext i32 %14 to i64
  %call15.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %arrayidx5.i, ptr noundef %arrayidx6.i, i32 noundef 10225926, i64 noundef 32, i64 noundef %conv.i, i64 noundef 32, i64 noundef %conv.i) #4
  %conv16.i = zext i32 %7 to i64
  %call18.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %arrayidx5.i, ptr noundef %arrayidx6.i, i32 noundef 10225927, i64 noundef 62500, i64 noundef %conv16.i, i64 noundef 62500, i64 noundef %conv16.i) #4
  %conv19.i = zext i32 %9 to i64
  %call21.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %arrayidx5.i, ptr noundef %arrayidx6.i, i32 noundef 10225928, i64 noundef 31250, i64 noundef %conv19.i, i64 noundef 31250, i64 noundef %conv19.i) #4
  %call22.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %arrayidx5.i, ptr noundef %arrayidx6.i, i32 noundef 10225930, i64 noundef 0, i64 noundef 15, i64 noundef 0, i64 noundef 0) #4
  %cmp.not.i = icmp eq ptr %call22.i, null
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call22.i, i32 0, i32 20
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %16, 128
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %error.i = getelementptr %struct.lm3560_flash, ptr %flash, i32 0, i32 5, i32 %led_no, i32 9
  %17 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i.err_out_crit_edge

if.end.i.err_out_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_out

if.end:                                           ; preds = %if.end.i
  %ctrl_handler.i = getelementptr %struct.lm3560_flash, ptr %flash, i32 0, i32 6, i32 %led_no, i32 8
  %19 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx5.i, ptr %ctrl_handler.i, align 4
  %call8 = tail call i32 @media_entity_pads_init(ptr noundef %arrayidx, i16 noundef zeroext 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end.err_out_crit_edge, label %if.end10

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_out

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %function = getelementptr inbounds %struct.media_entity, ptr %arrayidx, i32 0, i32 3
  %20 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 131074, ptr %function, align 4
  br label %cleanup

err_out:                                          ; preds = %if.end.err_out_crit_edge, %if.end.i.err_out_crit_edge
  %rval.0 = phi i32 [ %call8, %if.end.err_out_crit_edge ], [ %18, %if.end.i.err_out_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %arrayidx5.i) #4
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end10
  %retval.0 = phi i32 [ %rval.0, %err_out ], [ %call8, %if.end10 ]
  ret i32 %retval.0
}

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
define internal i32 @lm3560_led0_get_ctrl(ptr nocapture noundef %ctrl) #2 align 64 {
entry:
  %reg_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %lock.i = getelementptr i8, ptr %1, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %id.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10225930, i32 %3)
  %cmp.i = icmp eq i32 %3, 10225930
  br i1 %cmp.i, label %if.then.i, label %entry.lm3560_get_ctrl.exit_crit_edge

entry.lm3560_get_ctrl.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %lm3560_get_ctrl.exit

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i) #4
  %4 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg_val.i, align 4, !annotation !46
  %regmap.i = getelementptr i8, ptr %1, i32 -100
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 208, ptr noundef nonnull %reg_val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.then.i.cleanup.i_crit_edge, label %if.end.i

if.then.i.cleanup.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_val.i, align 4
  %and.i = shl i32 %8, 1
  %9 = and i32 %and.i, 14
  %cur.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 23
  %10 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %cur.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %if.then.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #4
  br label %lm3560_get_ctrl.exit

lm3560_get_ctrl.exit:                             ; preds = %cleanup.i, %entry.lm3560_get_ctrl.exit_crit_edge
  %rval.0.i = phi i32 [ %call.i, %cleanup.i ], [ -22, %entry.lm3560_get_ctrl.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i) #4
  ret i32 %rval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3560_led0_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lm3560_set_ctrl(ptr noundef %ctrl, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3560_led1_get_ctrl(ptr nocapture noundef %ctrl) #2 align 64 {
entry:
  %reg_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %lock.i = getelementptr i8, ptr %1, i32 -280
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %id.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10225930, i32 %3)
  %cmp.i = icmp eq i32 %3, 10225930
  br i1 %cmp.i, label %if.then.i, label %entry.lm3560_get_ctrl.exit_crit_edge

entry.lm3560_get_ctrl.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %lm3560_get_ctrl.exit

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i) #4
  %4 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg_val.i, align 4, !annotation !46
  %regmap.i = getelementptr i8, ptr %1, i32 -284
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 208, ptr noundef nonnull %reg_val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.then.i.cleanup.i_crit_edge, label %if.end.i

if.then.i.cleanup.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_val.i, align 4
  %and.i = shl i32 %8, 1
  %9 = and i32 %and.i, 14
  %cur.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 23
  %10 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %cur.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %if.then.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #4
  br label %lm3560_get_ctrl.exit

lm3560_get_ctrl.exit:                             ; preds = %cleanup.i, %entry.lm3560_get_ctrl.exit_crit_edge
  %rval.0.i = phi i32 [ %call.i, %cleanup.i ], [ -22, %entry.lm3560_get_ctrl.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i) #4
  ret i32 %rval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3560_led1_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lm3560_set_ctrl(ptr noundef %ctrl, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm3560_set_ctrl(ptr nocapture noundef readonly %ctrl, i32 noundef %led_no) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %.neg = mul i32 %led_no, -184
  %idx.neg = add i32 %.neg, -108
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.neg
  %lock = getelementptr inbounds %struct.lm3560_flash, ptr %add.ptr, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.err_out_crit_edge [
    i32 10225921, label %sw.bb
    i32 10225922, label %sw.bb2
    i32 10225923, label %sw.bb8
    i32 10225924, label %sw.bb15
    i32 10225926, label %sw.bb22
    i32 10225927, label %sw.bb29
    i32 10225928, label %sw.bb32
  ]

entry.err_out_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_out

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %led_mode = getelementptr inbounds %struct.lm3560_flash, ptr %add.ptr, i32 0, i32 4
  %7 = ptrtoint ptr %led_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %led_mode, align 4
  %8 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %6, label %sw.bb.err_out_crit_edge [
    i32 2, label %sw.bb.sw.epilog.sink.split.i_crit_edge
    i32 0, label %sw.bb.sw.epilog.sink.split.i_crit_edge102
  ]

sw.bb.sw.epilog.sink.split.i_crit_edge102:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

sw.bb.sw.epilog.sink.split.i_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

sw.bb.err_out_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_out

sw.epilog.sink.split.i:                           ; preds = %sw.bb.sw.epilog.sink.split.i_crit_edge, %sw.bb.sw.epilog.sink.split.i_crit_edge102
  %regmap5.i = getelementptr inbounds %struct.lm3560_flash, ptr %add.ptr, i32 0, i32 2
  %9 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap5.i, align 4
  %call.i11.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 16, i32 noundef 3, i32 noundef %6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %err_out

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %regmap = getelementptr inbounds %struct.lm3560_flash, ptr %add.ptr, i32 0, i32 2
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val3, align 4
  %shl = shl i32 %14, 2
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 224, i32 noundef 4, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %err_out

sw.bb8:                                           ; preds = %entry
  %led_mode9 = getelementptr inbounds %struct.lm3560_flash, ptr %add.ptr, i32 0, i32 4
  %15 = ptrtoint ptr %led_mode9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %led_mode9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp10.not = icmp eq i32 %16, 1
  br i1 %cmp10.not, label %lm3560_mode_ctrl.exit68, label %sw.bb8.err_out_crit_edge

sw.bb8.err_out_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_out

lm3560_mode_ctrl.exit68:                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %led_mode9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %led_mode9, align 4
  %regmap5.i64 = getelementptr inbounds %struct.lm3560_flash, ptr %add.ptr, i32 0, i32 2
  %18 = ptrtoint ptr %regmap5.i64 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap5.i64, align 4
  %call.i11.i65 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 16, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %err_out

sw.bb15:                                          ; preds = %entry
  %led_mode16 = getelementptr inbounds %struct.lm3560_flash, ptr %add.ptr, i32 0, i32 4
  %20 = ptrtoint ptr %led_mode16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %led_mode16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp17.not = icmp eq i32 %21, 1
  br i1 %cmp17.not, label %lm3560_mode_ctrl.exit77, label %sw.bb15.err_out_crit_edge

sw.bb15.err_out_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_out

lm3560_mode_ctrl.exit77:                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %led_mode16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %led_mode16, align 4
  %regmap5.i73 = getelementptr inbounds %struct.lm3560_flash, ptr %add.ptr, i32 0, i32 2
  %23 = ptrtoint ptr %regmap5.i73 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap5.i73, align 4
  %call.i11.i74 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 16, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %err_out

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %25 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %26)
  %cmp24 = icmp slt i32 %26, 32
  %sub = add i32 %26, -32
  %div = sdiv i32 %sub, 32
  %phi.cast59 = and i32 %div, 255
  %cond = select i1 %cmp24, i32 0, i32 %phi.cast59
  %regmap26 = getelementptr inbounds %struct.lm3560_flash, ptr %add.ptr, i32 0, i32 2
  %27 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap26, align 4
  %call.i78 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 192, i32 noundef 31, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %err_out

sw.bb29:                                          ; preds = %entry
  %val30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62500, i32 %30)
  %cmp.i = icmp ult i32 %30, 62500
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %led_no)
  %cmp.i.i = icmp eq i32 %led_no, 0
  %regmap.i.i = getelementptr inbounds %struct.lm3560_flash, ptr %add.ptr, i32 0, i32 2
  %31 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb29
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else4.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i18.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 16, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %err_out

if.else4.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i20.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 16, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %err_out

if.else.i:                                        ; preds = %sw.bb29
  br i1 %cmp.i.i, label %if.then5.i, label %if.else8.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 16, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %sub29.i = add i32 %30, -62500
  %div30.i = udiv i32 %sub29.i, 62500
  %33 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i.i, align 4
  %conv6.i = and i32 %div30.i, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 176, i32 noundef 15, i32 noundef %conv6.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %err_out

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i19.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 16, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %sub.i = add i32 %30, -62500
  %div.i = udiv i32 %sub.i, 62500
  %35 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i.i, align 4
  %conv10.i = shl nuw nsw i32 %div.i, 4
  %shl.i = and i32 %conv10.i, 4080
  %call.i28.i = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 176, i32 noundef 240, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %err_out

sw.bb32:                                          ; preds = %entry
  %val33 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %37 = ptrtoint ptr %val33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31250, i32 %38)
  %cmp.i79 = icmp ult i32 %38, 31250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %led_no)
  %cmp.i.i80 = icmp eq i32 %led_no, 0
  %regmap.i.i81 = getelementptr inbounds %struct.lm3560_flash, ptr %add.ptr, i32 0, i32 2
  %39 = ptrtoint ptr %regmap.i.i81 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i.i81, align 4
  br i1 %cmp.i79, label %if.then.i82, label %if.else.i87

if.then.i82:                                      ; preds = %sw.bb32
  br i1 %cmp.i.i80, label %if.then.i.i84, label %if.else4.i.i86

if.then.i.i84:                                    ; preds = %if.then.i82
  call void @__sanitizer_cov_trace_pc() #6
  %call.i18.i.i83 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 16, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %err_out

if.else4.i.i86:                                   ; preds = %if.then.i82
  call void @__sanitizer_cov_trace_pc() #6
  %call.i20.i.i85 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 16, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %err_out

if.else.i87:                                      ; preds = %sw.bb32
  br i1 %cmp.i.i80, label %if.then5.i93, label %if.else8.i100

if.then5.i93:                                     ; preds = %if.else.i87
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i.i88 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 16, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %sub29.i89 = add i32 %38, -31250
  %div30.i90 = udiv i32 %sub29.i89, 31250
  %41 = ptrtoint ptr %regmap.i.i81 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap.i.i81, align 4
  %conv6.i91 = and i32 %div30.i90, 255
  %call.i.i92 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 160, i32 noundef 7, i32 noundef %conv6.i91, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %err_out

if.else8.i100:                                    ; preds = %if.else.i87
  call void @__sanitizer_cov_trace_pc() #6
  %call.i19.i.i94 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 16, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %sub.i95 = add i32 %38, -31250
  %div.i96 = udiv i32 %sub.i95, 31250
  %43 = ptrtoint ptr %regmap.i.i81 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i.i81, align 4
  %conv10.i97 = shl nuw nsw i32 %div.i96, 3
  %shl.i98 = and i32 %conv10.i97, 2040
  %call.i28.i99 = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 160, i32 noundef 56, i32 noundef %shl.i98, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %err_out

err_out:                                          ; preds = %if.else8.i100, %if.then5.i93, %if.else4.i.i86, %if.then.i.i84, %if.else8.i, %if.then5.i, %if.else4.i.i, %if.then.i.i, %sw.bb22, %lm3560_mode_ctrl.exit77, %sw.bb15.err_out_crit_edge, %lm3560_mode_ctrl.exit68, %sw.bb8.err_out_crit_edge, %sw.bb2, %sw.epilog.sink.split.i, %sw.bb.err_out_crit_edge, %entry.err_out_crit_edge
  %rval.0 = phi i32 [ -22, %entry.err_out_crit_edge ], [ %call.i78, %sw.bb22 ], [ %call.i11.i74, %lm3560_mode_ctrl.exit77 ], [ %call.i11.i65, %lm3560_mode_ctrl.exit68 ], [ %call.i, %sw.bb2 ], [ -16, %sw.bb8.err_out_crit_edge ], [ -16, %sw.bb15.err_out_crit_edge ], [ %call.i11.i, %sw.epilog.sink.split.i ], [ %call.i.i, %if.then5.i ], [ %call.i28.i, %if.else8.i ], [ %call.i18.i.i, %if.then.i.i ], [ %call.i20.i.i, %if.else4.i.i ], [ %call.i.i92, %if.then5.i93 ], [ %call.i28.i99, %if.else8.i100 ], [ %call.i18.i.i83, %if.then.i.i84 ], [ %call.i20.i.i85, %if.else4.i.i86 ], [ -22, %sw.bb.err_out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret i32 %rval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !24, !26, !28, !30, !32, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_lm3560__292_478_lm3560_i2c_driver_init6, !1, !"__initcall__kmod_lm3560__292_478_lm3560_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/lm3560.c", i32 478, i32 1}
!2 = !{ptr @__exitcall_lm3560_i2c_driver_exit, !1, !"__exitcall_lm3560_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/lm3560.c", i32 480, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/lm3560.c", i32 481, i32 1}
!7 = !{ptr @__UNIQUE_ID_description295, !8, !"__UNIQUE_ID_description295", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/lm3560.c", i32 482, i32 1}
!9 = !{ptr @__UNIQUE_ID_file296, !10, !"__UNIQUE_ID_file296", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/lm3560.c", i32 483, i32 1}
!11 = !{ptr @__UNIQUE_ID_license297, !10, !"__UNIQUE_ID_license297", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/lm3560.c", i32 470, i32 14}
!14 = !{ptr @lm3560_i2c_driver, !15, !"lm3560_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/lm3560.c", i32 468, i32 26}
!16 = !{ptr @lm3560_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/lm3560.c", i32 405, i32 18}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @lm3560_probe.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/media/i2c/lm3560.c", i32 427, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/lm3560.c", i32 429, i32 48}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/lm3560.c", i32 433, i32 48}
!26 = !{ptr @lm3560_regmap, !27, !"lm3560_regmap", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/lm3560.c", i32 343, i32 35}
!28 = !{ptr @lm3560_ops, !29, !"lm3560_ops", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/lm3560.c", i32 339, i32 37}
!30 = !{ptr @lm3560_init_controls._key, !31, !"_key", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/lm3560.c", i32 287, i32 2}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @lm3560_led_ctrl_ops, !34, !"lm3560_led_ctrl_ops", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/lm3560.c", i32 267, i32 35}
!35 = !{ptr @lm3560_id_table, !36, !"lm3560_id_table", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/lm3560.c", i32 460, i32 35}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"auto-init"}
