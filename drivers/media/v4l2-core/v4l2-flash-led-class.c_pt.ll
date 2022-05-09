; ModuleID = '/llk/IR_all_yes/drivers/media/v4l2-core/v4l2-flash-led-class.c_pt.bc'
source_filename = "../drivers/media/v4l2-core/v4l2-flash-led-class.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+v4l2_flash_init\22, \22a\22\09"
module asm "\09.weak\09__crc_v4l2_flash_init\09\09\09\09"
module asm "\09.long\09__crc_v4l2_flash_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_flash_init:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_flash_init\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_flash_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+v4l2_flash_indicator_init\22, \22a\22\09"
module asm "\09.weak\09__crc_v4l2_flash_indicator_init\09\09\09\09"
module asm "\09.long\09__crc_v4l2_flash_indicator_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_flash_indicator_init:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_flash_indicator_init\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_flash_indicator_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+v4l2_flash_release\22, \22a\22\09"
module asm "\09.weak\09__crc_v4l2_flash_release\09\09\09\09"
module asm "\09.long\09__crc_v4l2_flash_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_flash_release:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_flash_release\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_flash_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_flash = type { ptr, ptr, ptr, %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_flash_ctrl_data = type { %struct.v4l2_ctrl_config, i32 }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_flash_config = type { [32 x i8], %struct.led_flash_setting, i32, i8 }
%struct.led_flash_setting = type { i32, i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.led_classdev_flash = type { %struct.led_classdev, ptr, %struct.led_flash_setting, %struct.led_flash_setting, [5 x ptr] }
%struct.led_flash_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%struct.v4l2_flash_ops = type { ptr, ptr, ptr }

@__kstrtab_v4l2_flash_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_flash_init = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_flash_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_flash_init to i32), ptr @__kstrtab_v4l2_flash_init, ptr @__kstrtabns_v4l2_flash_init }, section "___ksymtab_gpl+v4l2_flash_init", align 4
@__kstrtab_v4l2_flash_indicator_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_flash_indicator_init = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_flash_indicator_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_flash_indicator_init to i32), ptr @__kstrtab_v4l2_flash_indicator_init, ptr @__kstrtabns_v4l2_flash_indicator_init }, section "___ksymtab_gpl+v4l2_flash_indicator_init", align 4
@__kstrtab_v4l2_flash_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_flash_release = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_flash_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_flash_release to i32), ptr @__kstrtab_v4l2_flash_release, ptr @__kstrtabns_v4l2_flash_release }, section "___ksymtab_gpl+v4l2_flash_release", align 4
@__UNIQUE_ID_author292 = internal constant [72 x i8] c"v4l2_flash_led_class.author=Jacek Anaszewski <j.anaszewski@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [63 x i8] c"v4l2_flash_led_class.description=V4L2 Flash sub-device helpers\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [71 x i8] c"v4l2_flash_led_class.file=drivers/media/v4l2-core/v4l2-flash-led-class\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [36 x i8] c"v4l2_flash_led_class.license=GPL v2\00", section ".modinfo", align 1
@v4l2_flash_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } zeroinitializer, align 32
@v4l2_flash_subdev_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @v4l2_flash_open, ptr @v4l2_flash_close, ptr null }, [44 x i8] zeroinitializer }, align 32
@__sync_device_with_v4l2_controls.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/media/v4l2-core/v4l2-flash-led-class.c\00", [49 x i8] zeroinitializer }, align 32
@__sync_device_with_v4l2_controls.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@v4l2_flash_set_led_brightness.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@v4l2_flash_set_led_brightness.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@v4l2_flash_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"v4l2_flash_led_class:457:(&v4l2_flash->hdl)->_lock\00", [45 x i8] zeroinitializer }, align 32
@v4l2_flash_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @v4l2_flash_g_volatile_ctrl, ptr null, ptr @v4l2_flash_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@v4l2_flash_update_led_brightness.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@v4l2_flash_update_led_brightness.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 10225925, i64 10225927, i64 10225930]
@__sancov_gen_cov_switch_values.5 = internal global [8 x i64] [i64 6, i64 32, i64 10225921, i64 10225922, i64 10225923, i64 10225924, i64 10225926, i64 10225927]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"v4l2_flash_subdev_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 651, i32 37 }
@___asan_gen_.10 = private unnamed_addr constant [31 x i8] c"v4l2_flash_subdev_internal_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 646, i32 46 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 527, i32 7 }
@___asan_gen_.16 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 457, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"v4l2_flash_ctrl_ops\00", align 1
@___asan_gen_.23 = private constant [50 x i8] c"../drivers/media/v4l2-core/v4l2-flash-led-class.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 306, i32 35 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_v4l2_flash_indicator_init, ptr @__ksymtab_v4l2_flash_init, ptr @__ksymtab_v4l2_flash_release, ptr @v4l2_flash_subdev_ops, ptr @v4l2_flash_subdev_internal_ops, ptr @.str, ptr @v4l2_flash_init_controls._key, ptr @.str.3, ptr @v4l2_flash_ctrl_ops], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l2_flash_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l2_flash_subdev_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l2_flash_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l2_flash_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @v4l2_flash_init(ptr noundef %dev, ptr noundef %fwn, ptr noundef %fled_cdev, ptr noundef %ops, ptr noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__v4l2_flash_init(ptr noundef %dev, ptr noundef %fwn, ptr noundef %fled_cdev, ptr noundef null, ptr noundef %ops, ptr noundef %config)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__v4l2_flash_init(ptr noundef %dev, ptr noundef %fwn, ptr noundef %fled_cdev, ptr noundef %iled_cdev, ptr noundef %ops, ptr noundef %config) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %config, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 396, i32 noundef 3520) #4
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sd6 = getelementptr inbounds %struct.v4l2_flash, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %fled_cdev, ptr %call.i, align 4
  %iled_cdev8 = getelementptr inbounds %struct.v4l2_flash, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %iled_cdev8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %iled_cdev, ptr %iled_cdev8, align 4
  %ops9 = getelementptr inbounds %struct.v4l2_flash, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %ops9 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ops, ptr %ops9, align 4
  %dev10 = getelementptr inbounds %struct.v4l2_flash, ptr %call.i, i32 0, i32 3, i32 14
  %3 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev10, align 4
  %tobool11.not = icmp eq ptr %fwn, null
  br i1 %tobool11.not, label %cond.false, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call ptr @dev_fwnode(ptr noundef %dev) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ %call12, %cond.false ], [ %fwn, %if.end5.cond.end_crit_edge ]
  %fwnode = getelementptr inbounds %struct.v4l2_flash, ptr %call.i, i32 0, i32 3, i32 15
  %4 = ptrtoint ptr %fwnode to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cond, ptr %fwnode, align 4
  tail call void @v4l2_subdev_init(ptr noundef %sd6, ptr noundef nonnull @v4l2_flash_subdev_ops) #4
  %internal_ops = getelementptr inbounds %struct.v4l2_flash, ptr %call.i, i32 0, i32 3, i32 7
  %5 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @v4l2_flash_subdev_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_flash, ptr %call.i, i32 0, i32 3, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or = or i32 %7, 4
  store i32 %or, ptr %flags, align 4
  %name = getelementptr inbounds %struct.v4l2_flash, ptr %call.i, i32 0, i32 3, i32 9
  %call14 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull %config, i32 noundef 32) #4
  %call15 = tail call i32 @media_entity_pads_init(ptr noundef %sd6, i16 noundef zeroext 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.then16, label %if.end18

if.then16:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = inttoptr i32 %call15 to ptr
  br label %cleanup

if.end18:                                         ; preds = %cond.end
  %function = getelementptr inbounds %struct.v4l2_flash, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  %9 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 131074, ptr %function, align 4
  %10 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev10, align 4
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 24, i32 noundef 3520) #4
  %ctrls.i = getelementptr inbounds %struct.v4l2_flash, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %ctrls.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i.i, ptr %ctrls.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %if.end18.err_init_controls_crit_edge, label %if.end.i

if.end18.err_init_controls_crit_edge:             ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_init_controls

if.end.i:                                         ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 1200) #7
  %tobool3.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.err_init_controls_crit_edge, label %if.end5.i

if.end.i.err_init_controls_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_init_controls

if.end5.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  %16 = ptrtoint ptr %iled_cdev8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iled_cdev8, align 4
  %tobool3.not.i.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i.i, label %if.end5.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end5.i.if.end.i.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %cid.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 3, i32 1
  %18 = ptrtoint ptr %cid.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 10225929, ptr %cid.i.i, align 8
  %min1.i.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 3, i32 0, i32 5
  %max.i.i.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %config, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max.i.i.i, align 4
  %conv2.i.i.i = zext i32 %20 to i64
  %max3.i.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 3, i32 0, i32 6
  %21 = ptrtoint ptr %max3.i.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv2.i.i.i, ptr %max3.i.i.i, align 8
  %step.i.i.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %config, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %step.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %step.i.i.i, align 4
  %conv4.i.i.i = zext i32 %23 to i64
  %step5.i.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 3, i32 0, i32 7
  %24 = ptrtoint ptr %step5.i.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv4.i.i.i, ptr %step5.i.i.i, align 8
  %val.i.i.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %config, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i.i.i, align 4
  %conv6.i.i.i = zext i32 %26 to i64
  %def.i.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 3, i32 0, i32 8
  %27 = ptrtoint ptr %def.i.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv6.i.i.i, ptr %def.i.i.i, align 8
  %id.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 3, i32 0, i32 2
  %28 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 10225929, ptr %id.i.i, align 8
  %29 = ptrtoint ptr %min1.i.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %min1.i.i.i, align 8
  %flags.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 3, i32 0, i32 12
  %30 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 640, ptr %flags.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end5.i.if.end.i.i_crit_edge
  br i1 %tobool.not.i.i, label %if.end.i.i.__fill_ctrl_init_data.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.__fill_ctrl_init_data.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__fill_ctrl_init_data.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %flags6.i.i = getelementptr inbounds %struct.led_classdev, ptr %15, i32 0, i32 3
  %31 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags6.i.i, align 4
  %and.i.i = and i32 %32, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool7.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool7.not.i.i, label %do.end.i.i, label %if.end32.i.i, !prof !44

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 342, i32 noundef 9, ptr noundef null) #4
  br label %__fill_ctrl_init_data.exit.i

if.end32.i.i:                                     ; preds = %lor.lhs.false.i.i
  %flash_faults.i.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %config, i32 0, i32 2
  %33 = ptrtoint ptr %flash_faults.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flash_faults.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool33.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool33.not.i.i, label %if.end32.i.i.if.end42.i.i_crit_edge, label %if.then34.i.i

if.end32.i.i.if.end42.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42.i.i

if.then34.i.i:                                    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %cid36.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 9, i32 1
  %35 = ptrtoint ptr %cid36.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 10225930, ptr %cid36.i.i, align 8
  %id39.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 9, i32 0, i32 2
  %36 = ptrtoint ptr %id39.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 10225930, ptr %id39.i.i, align 8
  %conv.i.i = zext i32 %34 to i64
  %max.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 9, i32 0, i32 6
  %37 = ptrtoint ptr %max.i.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv.i.i, ptr %max.i.i, align 8
  %flags41.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 9, i32 0, i32 12
  %38 = ptrtoint ptr %flags41.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 132, ptr %flags41.i.i, align 8
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then34.i.i, %if.end32.i.i.if.end42.i.i_crit_edge
  %39 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags6.i.i, align 4
  %and44.i.i = and i32 %40, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i.i)
  %tobool45.not.i.i = icmp eq i32 %and44.i.i, 0
  %spec.select202.i.i = select i1 %tobool45.not.i.i, i32 -6, i32 -8
  %cid49.i.i = getelementptr inbounds %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %cid49.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 10225921, ptr %cid49.i.i, align 8
  %id52.i.i = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %call7.i.i.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %id52.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 10225921, ptr %id52.i.i, align 8
  %max53.i.i = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %call7.i.i.i.i, i32 0, i32 6
  %43 = ptrtoint ptr %max53.i.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 2, ptr %max53.i.i, align 8
  %conv54.i.i = zext i32 %spec.select202.i.i to i64
  %menu_skip_mask.i.i = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %call7.i.i.i.i, i32 0, i32 13
  %44 = ptrtoint ptr %menu_skip_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv54.i.i, ptr %menu_skip_mask.i.i, align 8
  %def.i.i = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %call7.i.i.i.i, i32 0, i32 8
  %45 = ptrtoint ptr %def.i.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %def.i.i, align 8
  %flags55.i.i = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %call7.i.i.i.i, i32 0, i32 12
  %46 = ptrtoint ptr %flags55.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %flags55.i.i, align 8
  %cid57.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 1, i32 1
  %47 = ptrtoint ptr %cid57.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 10225928, ptr %cid57.i.i, align 8
  %intensity60.i.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %config, i32 0, i32 1
  %48 = ptrtoint ptr %intensity60.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %intensity60.i.i, align 4
  %conv.i205.i.i = zext i32 %49 to i64
  %min1.i206.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 1, i32 0, i32 5
  %50 = ptrtoint ptr %min1.i206.i.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv.i205.i.i, ptr %min1.i206.i.i, align 8
  %max.i207.i.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %config, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %max.i207.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max.i207.i.i, align 4
  %conv2.i208.i.i = zext i32 %52 to i64
  %max3.i209.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 1, i32 0, i32 6
  %53 = ptrtoint ptr %max3.i209.i.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv2.i208.i.i, ptr %max3.i209.i.i, align 8
  %step.i210.i.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %config, i32 0, i32 1, i32 2
  %54 = ptrtoint ptr %step.i210.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %step.i210.i.i, align 4
  %conv4.i211.i.i = zext i32 %55 to i64
  %step5.i212.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 1, i32 0, i32 7
  %56 = ptrtoint ptr %step5.i212.i.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv4.i211.i.i, ptr %step5.i212.i.i, align 8
  %val.i213.i.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %config, i32 0, i32 1, i32 3
  %57 = ptrtoint ptr %val.i213.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val.i213.i.i, align 4
  %conv6.i214.i.i = zext i32 %58 to i64
  %def.i215.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 1, i32 0, i32 8
  %59 = ptrtoint ptr %def.i215.i.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv6.i214.i.i, ptr %def.i215.i.i, align 8
  %id61.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 1, i32 0, i32 2
  %60 = ptrtoint ptr %id61.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 10225928, ptr %id61.i.i, align 8
  %flags62.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 1, i32 0, i32 12
  %61 = ptrtoint ptr %flags62.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 640, ptr %flags62.i.i, align 8
  %cid64.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 6, i32 1
  %62 = ptrtoint ptr %cid64.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 10225923, ptr %cid64.i.i, align 8
  %id67.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 6, i32 0, i32 2
  %63 = ptrtoint ptr %id67.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 10225923, ptr %id67.i.i, align 8
  %cid69.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 7, i32 1
  %64 = ptrtoint ptr %cid69.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 10225924, ptr %cid69.i.i, align 8
  %id72.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 7, i32 0, i32 2
  %65 = ptrtoint ptr %id72.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 10225924, ptr %id72.i.i, align 8
  %has_external_strobe.i.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %config, i32 0, i32 3
  %66 = ptrtoint ptr %has_external_strobe.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load.i.i = load i8, ptr %has_external_strobe.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool73.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool73.not.i.i, label %if.end42.i.i.land.lhs.true.i.i_crit_edge, label %if.then74.i.i

if.end42.i.i.land.lhs.true.i.i_crit_edge:         ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i.i

if.then74.i.i:                                    ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %cid76.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 5, i32 1
  %67 = ptrtoint ptr %cid76.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 10225922, ptr %cid76.i.i, align 8
  %id79.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 5, i32 0, i32 2
  %68 = ptrtoint ptr %id79.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 10225922, ptr %id79.i.i, align 8
  %max80.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 5, i32 0, i32 6
  %69 = ptrtoint ptr %max80.i.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 1, ptr %max80.i.i, align 8
  %menu_skip_mask83.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 5, i32 0, i32 13
  %70 = ptrtoint ptr %menu_skip_mask83.i.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 4294967292, ptr %menu_skip_mask83.i.i, align 8
  %def84.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 5, i32 0, i32 8
  %71 = ptrtoint ptr %def84.i.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 0, ptr %def84.i.i, align 8
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.then74.i.i, %if.end42.i.i.land.lhs.true.i.i_crit_edge
  %ops.i.i = getelementptr inbounds %struct.led_classdev_flash, ptr %15, i32 0, i32 1
  %72 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i.i, align 4
  %tobool87.not.i.i = icmp eq ptr %73, null
  br i1 %tobool87.not.i.i, label %land.lhs.true.i.i.__fill_ctrl_init_data.exit.i_crit_edge, label %land.lhs.true88.i.i

land.lhs.true.i.i.__fill_ctrl_init_data.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__fill_ctrl_init_data.exit.i

land.lhs.true88.i.i:                              ; preds = %land.lhs.true.i.i
  %strobe_get.i.i = getelementptr inbounds %struct.led_flash_ops, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %strobe_get.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %strobe_get.i.i, align 4
  %tobool90.not.i.i = icmp eq ptr %75, null
  br i1 %tobool90.not.i.i, label %land.lhs.true88.i.i.land.lhs.true100.i.i_crit_edge, label %if.then91.i.i

land.lhs.true88.i.i.land.lhs.true100.i.i_crit_edge: ; preds = %land.lhs.true88.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true100.i.i

if.then91.i.i:                                    ; preds = %land.lhs.true88.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %cid93.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 8, i32 1
  %76 = ptrtoint ptr %cid93.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 10225925, ptr %cid93.i.i, align 8
  %id96.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 8, i32 0, i32 2
  %77 = ptrtoint ptr %id96.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 10225925, ptr %id96.i.i, align 8
  %flags97.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 8, i32 0, i32 12
  %78 = ptrtoint ptr %flags97.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 132, ptr %flags97.i.i, align 8
  br label %land.lhs.true100.i.i

land.lhs.true100.i.i:                             ; preds = %if.then91.i.i, %land.lhs.true88.i.i.land.lhs.true100.i.i_crit_edge
  %79 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr.i.i = load ptr, ptr %ops.i.i, align 4
  %tobool102.not.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool102.not.i.i, label %land.lhs.true100.i.i.__fill_ctrl_init_data.exit.i_crit_edge, label %land.lhs.true103.i.i

land.lhs.true100.i.i.__fill_ctrl_init_data.exit.i_crit_edge: ; preds = %land.lhs.true100.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__fill_ctrl_init_data.exit.i

land.lhs.true103.i.i:                             ; preds = %land.lhs.true100.i.i
  %timeout_set.i.i = getelementptr inbounds %struct.led_flash_ops, ptr %.pr.i.i, i32 0, i32 4
  %80 = ptrtoint ptr %timeout_set.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %timeout_set.i.i, align 4
  %tobool105.not.i.i = icmp eq ptr %81, null
  br i1 %tobool105.not.i.i, label %land.lhs.true103.i.i.land.lhs.true114.i.i_crit_edge, label %if.then106.i.i

land.lhs.true103.i.i.land.lhs.true114.i.i_crit_edge: ; preds = %land.lhs.true103.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true114.i.i

if.then106.i.i:                                   ; preds = %land.lhs.true103.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %cid108.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 4, i32 1
  %82 = ptrtoint ptr %cid108.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 10225926, ptr %cid108.i.i, align 8
  %timeout.i.i = getelementptr inbounds %struct.led_classdev_flash, ptr %15, i32 0, i32 3
  %83 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %timeout.i.i, align 4
  %conv.i216.i.i = zext i32 %84 to i64
  %min1.i217.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 4, i32 0, i32 5
  %85 = ptrtoint ptr %min1.i217.i.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %conv.i216.i.i, ptr %min1.i217.i.i, align 8
  %max.i218.i.i = getelementptr inbounds %struct.led_classdev_flash, ptr %15, i32 0, i32 3, i32 1
  %86 = ptrtoint ptr %max.i218.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %max.i218.i.i, align 4
  %conv2.i219.i.i = zext i32 %87 to i64
  %max3.i220.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 4, i32 0, i32 6
  %88 = ptrtoint ptr %max3.i220.i.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %conv2.i219.i.i, ptr %max3.i220.i.i, align 8
  %step.i221.i.i = getelementptr inbounds %struct.led_classdev_flash, ptr %15, i32 0, i32 3, i32 2
  %89 = ptrtoint ptr %step.i221.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %step.i221.i.i, align 4
  %conv4.i222.i.i = zext i32 %90 to i64
  %step5.i223.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 4, i32 0, i32 7
  %91 = ptrtoint ptr %step5.i223.i.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %conv4.i222.i.i, ptr %step5.i223.i.i, align 8
  %val.i224.i.i = getelementptr inbounds %struct.led_classdev_flash, ptr %15, i32 0, i32 3, i32 3
  %92 = ptrtoint ptr %val.i224.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %val.i224.i.i, align 4
  %conv6.i225.i.i = zext i32 %93 to i64
  %def.i226.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 4, i32 0, i32 8
  %94 = ptrtoint ptr %def.i226.i.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %conv6.i225.i.i, ptr %def.i226.i.i, align 8
  %id111.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 4, i32 0, i32 2
  %95 = ptrtoint ptr %id111.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 10225926, ptr %id111.i.i, align 8
  br label %land.lhs.true114.i.i

land.lhs.true114.i.i:                             ; preds = %if.then106.i.i, %land.lhs.true103.i.i.land.lhs.true114.i.i_crit_edge
  %96 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pr239.i.i = load ptr, ptr %ops.i.i, align 4
  %tobool116.not.i.i = icmp eq ptr %.pr239.i.i, null
  br i1 %tobool116.not.i.i, label %land.lhs.true114.i.i.__fill_ctrl_init_data.exit.i_crit_edge, label %land.lhs.true117.i.i

land.lhs.true114.i.i.__fill_ctrl_init_data.exit.i_crit_edge: ; preds = %land.lhs.true114.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__fill_ctrl_init_data.exit.i

land.lhs.true117.i.i:                             ; preds = %land.lhs.true114.i.i
  %97 = ptrtoint ptr %.pr239.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %.pr239.i.i, align 4
  %tobool119.not.i.i = icmp eq ptr %98, null
  br i1 %tobool119.not.i.i, label %land.lhs.true117.i.i.__fill_ctrl_init_data.exit.i_crit_edge, label %if.then120.i.i

land.lhs.true117.i.i.__fill_ctrl_init_data.exit.i_crit_edge: ; preds = %land.lhs.true117.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__fill_ctrl_init_data.exit.i

if.then120.i.i:                                   ; preds = %land.lhs.true117.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %cid122.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 2, i32 1
  %99 = ptrtoint ptr %cid122.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 10225927, ptr %cid122.i.i, align 8
  %brightness.i.i = getelementptr inbounds %struct.led_classdev_flash, ptr %15, i32 0, i32 2
  %100 = ptrtoint ptr %brightness.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %brightness.i.i, align 4
  %conv.i227.i.i = zext i32 %101 to i64
  %min1.i228.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 2, i32 0, i32 5
  %102 = ptrtoint ptr %min1.i228.i.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %conv.i227.i.i, ptr %min1.i228.i.i, align 8
  %max.i229.i.i = getelementptr inbounds %struct.led_classdev_flash, ptr %15, i32 0, i32 2, i32 1
  %103 = ptrtoint ptr %max.i229.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %max.i229.i.i, align 4
  %conv2.i230.i.i = zext i32 %104 to i64
  %max3.i231.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 2, i32 0, i32 6
  %105 = ptrtoint ptr %max3.i231.i.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %conv2.i230.i.i, ptr %max3.i231.i.i, align 8
  %step.i232.i.i = getelementptr inbounds %struct.led_classdev_flash, ptr %15, i32 0, i32 2, i32 2
  %106 = ptrtoint ptr %step.i232.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %step.i232.i.i, align 4
  %conv4.i233.i.i = zext i32 %107 to i64
  %step5.i234.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 2, i32 0, i32 7
  %108 = ptrtoint ptr %step5.i234.i.i to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %conv4.i233.i.i, ptr %step5.i234.i.i, align 8
  %val.i235.i.i = getelementptr inbounds %struct.led_classdev_flash, ptr %15, i32 0, i32 2, i32 3
  %109 = ptrtoint ptr %val.i235.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %val.i235.i.i, align 4
  %conv6.i236.i.i = zext i32 %110 to i64
  %def.i237.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 2, i32 0, i32 8
  %111 = ptrtoint ptr %def.i237.i.i to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %conv6.i236.i.i, ptr %def.i237.i.i, align 8
  %id125.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 2, i32 0, i32 2
  %112 = ptrtoint ptr %id125.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 10225927, ptr %id125.i.i, align 8
  %flags126.i.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 2, i32 0, i32 12
  %113 = ptrtoint ptr %flags126.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 640, ptr %flags126.i.i, align 8
  br label %__fill_ctrl_init_data.exit.i

__fill_ctrl_init_data.exit.i:                     ; preds = %if.then120.i.i, %land.lhs.true117.i.i.__fill_ctrl_init_data.exit.i_crit_edge, %land.lhs.true114.i.i.__fill_ctrl_init_data.exit.i_crit_edge, %land.lhs.true100.i.i.__fill_ctrl_init_data.exit.i_crit_edge, %land.lhs.true.i.i.__fill_ctrl_init_data.exit.i_crit_edge, %do.end.i.i, %if.end.i.i.__fill_ctrl_init_data.exit.i_crit_edge
  %cid.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 0, i32 1
  %114 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool6.not.i = icmp ne i32 %115, 0
  %inc.i = zext i1 %tobool6.not.i to i32
  %cid.1.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 1, i32 1
  %116 = ptrtoint ptr %cid.1.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cid.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool6.not.1.i = icmp ne i32 %117, 0
  %inc.1.i = zext i1 %tobool6.not.1.i to i32
  %spec.select.1.i = add nuw nsw i32 %inc.1.i, %inc.i
  %cid.2.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 2, i32 1
  %118 = ptrtoint ptr %cid.2.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cid.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool6.not.2.i = icmp ne i32 %119, 0
  %inc.2.i = zext i1 %tobool6.not.2.i to i32
  %spec.select.2.i = add nuw nsw i32 %spec.select.1.i, %inc.2.i
  %cid.3.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 3, i32 1
  %120 = ptrtoint ptr %cid.3.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cid.3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool6.not.3.i = icmp ne i32 %121, 0
  %inc.3.i = zext i1 %tobool6.not.3.i to i32
  %spec.select.3.i = add nuw nsw i32 %spec.select.2.i, %inc.3.i
  %cid.4.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 4, i32 1
  %122 = ptrtoint ptr %cid.4.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %cid.4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool6.not.4.i = icmp ne i32 %123, 0
  %inc.4.i = zext i1 %tobool6.not.4.i to i32
  %spec.select.4.i = add nuw nsw i32 %spec.select.3.i, %inc.4.i
  %cid.5.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 5, i32 1
  %124 = ptrtoint ptr %cid.5.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cid.5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool6.not.5.i = icmp ne i32 %125, 0
  %inc.5.i = zext i1 %tobool6.not.5.i to i32
  %spec.select.5.i = add nuw nsw i32 %spec.select.4.i, %inc.5.i
  %cid.6.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 6, i32 1
  %126 = ptrtoint ptr %cid.6.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %cid.6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool6.not.6.i = icmp ne i32 %127, 0
  %inc.6.i = zext i1 %tobool6.not.6.i to i32
  %spec.select.6.i = add nuw nsw i32 %spec.select.5.i, %inc.6.i
  %cid.7.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 7, i32 1
  %128 = ptrtoint ptr %cid.7.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cid.7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool6.not.7.i = icmp ne i32 %129, 0
  %inc.7.i = zext i1 %tobool6.not.7.i to i32
  %spec.select.7.i = add nuw nsw i32 %spec.select.6.i, %inc.7.i
  %cid.8.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 8, i32 1
  %130 = ptrtoint ptr %cid.8.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cid.8.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool6.not.8.i = icmp ne i32 %131, 0
  %inc.8.i = zext i1 %tobool6.not.8.i to i32
  %spec.select.8.i = add nuw nsw i32 %spec.select.7.i, %inc.8.i
  %cid.9.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 9, i32 1
  %132 = ptrtoint ptr %cid.9.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cid.9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool6.not.9.i = icmp ne i32 %133, 0
  %inc.9.i = zext i1 %tobool6.not.9.i to i32
  %spec.select.9.i = add nuw nsw i32 %spec.select.8.i, %inc.9.i
  %hdl.i = getelementptr inbounds %struct.v4l2_flash, ptr %call.i, i32 0, i32 4
  %call10.i = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl.i, i32 noundef %spec.select.9.i, ptr noundef nonnull @v4l2_flash_init_controls._key, ptr noundef nonnull @.str.3) #4
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.inc44.i.for.body13.i_crit_edge, %__fill_ctrl_init_data.exit.i
  %i.1106.i = phi i32 [ 0, %__fill_ctrl_init_data.exit.i ], [ %inc45.i, %for.inc44.i.for.body13.i_crit_edge ]
  %arrayidx14.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 %i.1106.i
  %cid16.i = getelementptr %struct.v4l2_flash_ctrl_data, ptr %call7.i.i.i.i, i32 %i.1106.i, i32 1
  %134 = ptrtoint ptr %cid16.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %cid16.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool17.not.i = icmp eq i32 %135, 0
  br i1 %tobool17.not.i, label %for.body13.i.for.inc44.i_crit_edge, label %if.end19.i

for.body13.i.for.inc44.i_crit_edge:               ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc44.i

if.end19.i:                                       ; preds = %for.body13.i
  %id.i = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %arrayidx14.i, i32 0, i32 2
  %136 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %id.i, align 8
  %.off.i = add i32 %137, -10225921
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then23.i, label %if.else.i

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  %max.i = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %arrayidx14.i, i32 0, i32 6
  %138 = ptrtoint ptr %max.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %max.i, align 8
  %conv.i = trunc i64 %139 to i8
  %menu_skip_mask.i = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %arrayidx14.i, i32 0, i32 13
  %140 = ptrtoint ptr %menu_skip_mask.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %menu_skip_mask.i, align 8
  %def.i = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %arrayidx14.i, i32 0, i32 8
  %142 = ptrtoint ptr %def.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %def.i, align 8
  %conv26.i = trunc i64 %143 to i8
  %call27.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl.i, ptr noundef nonnull @v4l2_flash_ctrl_ops, i32 noundef %137, i8 noundef zeroext %conv.i, i64 noundef %141, i8 noundef zeroext %conv26.i) #4
  br label %if.end33.i

if.else.i:                                        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  %min.i = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %arrayidx14.i, i32 0, i32 5
  %144 = ptrtoint ptr %min.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %min.i, align 8
  %max30.i = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %arrayidx14.i, i32 0, i32 6
  %146 = ptrtoint ptr %max30.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %max30.i, align 8
  %step.i = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %arrayidx14.i, i32 0, i32 7
  %148 = ptrtoint ptr %step.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %step.i, align 8
  %def31.i = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %arrayidx14.i, i32 0, i32 8
  %150 = ptrtoint ptr %def31.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %def31.i, align 8
  %call32.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl.i, ptr noundef nonnull @v4l2_flash_ctrl_ops, i32 noundef %137, i64 noundef %145, i64 noundef %147, i64 noundef %149, i64 noundef %151) #4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else.i, %if.then23.i
  %ctrl.0.i = phi ptr [ %call27.i, %if.then23.i ], [ %call32.i, %if.else.i ]
  %tobool34.not.i = icmp eq ptr %ctrl.0.i, null
  br i1 %tobool34.not.i, label %if.end33.i.if.end37.i_crit_edge, label %if.then35.i

if.end33.i.if.end37.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37.i

if.then35.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %arrayidx14.i, i32 0, i32 12
  %152 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %flags.i, align 8
  %flags36.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl.0.i, i32 0, i32 20
  %154 = ptrtoint ptr %flags36.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %flags36.i, align 4
  %or.i = or i32 %155, %153
  store i32 %or.i, ptr %flags36.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then35.i, %if.end33.i.if.end37.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.1106.i)
  %cmp38.i = icmp ult i32 %i.1106.i, 6
  br i1 %cmp38.i, label %if.then40.i, label %if.end37.i.for.inc44.i_crit_edge

if.end37.i.for.inc44.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc44.i

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #6
  %156 = ptrtoint ptr %ctrls.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ctrls.i, align 4
  %arrayidx42.i = getelementptr ptr, ptr %157, i32 %i.1106.i
  %158 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %ctrl.0.i, ptr %arrayidx42.i, align 4
  br label %for.inc44.i

for.inc44.i:                                      ; preds = %if.then40.i, %if.end37.i.for.inc44.i_crit_edge, %for.body13.i.for.inc44.i_crit_edge
  %inc45.i = add nuw nsw i32 %i.1106.i, 1
  %exitcond.not.i = icmp eq i32 %inc45.i, 10
  br i1 %exitcond.not.i, label %for.end46.i, label %for.inc44.i.for.body13.i_crit_edge

for.inc44.i.for.body13.i_crit_edge:               ; preds = %for.inc44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body13.i

for.end46.i:                                      ; preds = %for.inc44.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #4
  %error.i = getelementptr inbounds %struct.v4l2_flash, ptr %call.i, i32 0, i32 4, i32 9
  %159 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool48.not.i = icmp eq i32 %160, 0
  br i1 %tobool48.not.i, label %v4l2_flash_init_controls.exit.thread64, label %v4l2_flash_init_controls.exit

v4l2_flash_init_controls.exit.thread64:           ; preds = %for.end46.i
  call void @__sanitizer_cov_trace_pc() #6
  %call54.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl.i) #4
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_flash, ptr %call.i, i32 0, i32 3, i32 8
  %161 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %hdl.i, ptr %ctrl_handler.i, align 4
  br label %if.end23

v4l2_flash_init_controls.exit:                    ; preds = %for.end46.i
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp21 = icmp slt i32 %160, 0
  br i1 %cmp21, label %v4l2_flash_init_controls.exit.err_init_controls_crit_edge, label %v4l2_flash_init_controls.exit.if.end23_crit_edge

v4l2_flash_init_controls.exit.if.end23_crit_edge: ; preds = %v4l2_flash_init_controls.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

v4l2_flash_init_controls.exit.err_init_controls_crit_edge: ; preds = %v4l2_flash_init_controls.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_init_controls

if.end23:                                         ; preds = %v4l2_flash_init_controls.exit.if.end23_crit_edge, %v4l2_flash_init_controls.exit.thread64
  %162 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %fwnode, align 4
  %call25 = tail call ptr @fwnode_handle_get(ptr noundef %163) #4
  %call26 = tail call i32 @v4l2_async_register_subdev(ptr noundef %sd6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %err_async_register_sd, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err_async_register_sd:                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %164 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %fwnode, align 4
  tail call void @fwnode_handle_put(ptr noundef %165) #4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_flash, ptr %call.i, i32 0, i32 3, i32 8
  %166 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %167) #4
  br label %err_init_controls

err_init_controls:                                ; preds = %err_async_register_sd, %v4l2_flash_init_controls.exit.err_init_controls_crit_edge, %if.end.i.err_init_controls_crit_edge, %if.end18.err_init_controls_crit_edge
  %ret.0 = phi i32 [ %160, %v4l2_flash_init_controls.exit.err_init_controls_crit_edge ], [ %call26, %err_async_register_sd ], [ -12, %if.end18.err_init_controls_crit_edge ], [ -12, %if.end.i.err_init_controls_crit_edge ]
  %168 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_init_controls, %if.end23.cleanup_crit_edge, %if.then16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %8, %if.then16 ], [ %168, %err_init_controls ], [ %call.i, %if.end23.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @v4l2_flash_indicator_init(ptr noundef %dev, ptr noundef %fwn, ptr noundef %iled_cdev, ptr noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__v4l2_flash_init(ptr noundef %dev, ptr noundef %fwn, ptr noundef null, ptr noundef %iled_cdev, ptr noundef null, ptr noundef %config)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v4l2_flash_release(ptr noundef %v4l2_flash) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %v4l2_flash, null
  %cmp.i = icmp ugt ptr %v4l2_flash, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sd1 = getelementptr inbounds %struct.v4l2_flash, ptr %v4l2_flash, i32 0, i32 3
  tail call void @v4l2_async_unregister_subdev(ptr noundef %sd1) #4
  %fwnode = getelementptr inbounds %struct.v4l2_flash, ptr %v4l2_flash, i32 0, i32 3, i32 15
  %0 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwnode, align 4
  tail call void @fwnode_handle_put(ptr noundef %1) #4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_flash, ptr %v4l2_flash, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_handle_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v4l2_flash_open(ptr noundef %sd, ptr noundef %fh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -12
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not = icmp eq ptr %1, null
  %iled_cdev = getelementptr i8, ptr %sd, i32 -8
  %2 = ptrtoint ptr %iled_cdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iled_cdev, align 4
  %call3 = tail call i32 @v4l2_fh_is_singular(ptr noundef %fh) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %led_access = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %led_access, i32 noundef 0) #4
  tail call void @led_sysfs_disable(ptr noundef nonnull %1) #4
  tail call void @led_trigger_remove(ptr noundef nonnull %1) #4
  tail call void @mutex_unlock(ptr noundef %led_access) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end8.if.end13_crit_edge, label %if.then10

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %led_access11 = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %led_access11, i32 noundef 0) #4
  tail call void @led_sysfs_disable(ptr noundef nonnull %3) #4
  tail call void @led_trigger_remove(ptr noundef nonnull %3) #4
  tail call void @mutex_unlock(ptr noundef %led_access11) #4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %ctrls2.i = getelementptr i8, ptr %sd, i32 380
  %6 = ptrtoint ptr %ctrls2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrls2.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end13.if.end5.i_crit_edge, label %if.then.i

if.end13.if.end5.i_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end13
  %call.i = tail call fastcc i32 @v4l2_flash_set_led_brightness(ptr noundef %add.ptr.i, ptr noundef nonnull %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i.out_sync_device_crit_edge, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i

if.then.i.out_sync_device_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_sync_device

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %if.end13.if.end5.i_crit_edge
  %arrayidx6.i = getelementptr ptr, ptr %7, i32 3
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %11, null
  br i1 %tobool7.not.i, label %if.end5.i.if.end14.i_crit_edge, label %if.then8.i

if.end5.i.if.end14.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.end5.i
  %call10.i = tail call fastcc i32 @v4l2_flash_set_led_brightness(ptr noundef %add.ptr.i, ptr noundef nonnull %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.then8.i.out_sync_device_crit_edge, label %if.then8.i.if.end14.i_crit_edge

if.then8.i.if.end14.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i

if.then8.i.out_sync_device_crit_edge:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_sync_device

if.end14.i:                                       ; preds = %if.then8.i.if.end14.i_crit_edge, %if.end5.i.if.end14.i_crit_edge
  %arrayidx15.i = getelementptr ptr, ptr %7, i32 4
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15.i, align 4
  %tobool16.not.i = icmp eq ptr %13, null
  br i1 %tobool16.not.i, label %if.end14.i.if.end65.i_crit_edge, label %if.then17.i

if.end14.i.if.end65.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65.i

if.then17.i:                                      ; preds = %if.end14.i
  %tobool18.not.i = icmp eq ptr %5, null
  br i1 %tobool18.not.i, label %land.rhs.i, label %if.end59.i

land.rhs.i:                                       ; preds = %if.then17.i
  %.b195.i = load i1, ptr @__sync_device_with_v4l2_controls.__already_done, align 1
  br i1 %.b195.i, label %land.rhs.i.out_sync_device_crit_edge, label %land.rhs.i.out_sync_device.sink.split_crit_edge, !prof !45

land.rhs.i.out_sync_device.sink.split_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_sync_device.sink.split

land.rhs.i.out_sync_device_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_sync_device

if.end59.i:                                       ; preds = %if.then17.i
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i, align 4
  %call61.i = tail call i32 @led_set_flash_timeout(ptr noundef nonnull %5, i32 noundef %15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %cmp62.i = icmp slt i32 %call61.i, 0
  br i1 %cmp62.i, label %if.end59.i.out_sync_device_crit_edge, label %if.end59.i.if.end65.i_crit_edge

if.end59.i.if.end65.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65.i

if.end59.i.out_sync_device_crit_edge:             ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_sync_device

if.end65.i:                                       ; preds = %if.end59.i.if.end65.i_crit_edge, %if.end14.i.if.end65.i_crit_edge
  %arrayidx66.i = getelementptr ptr, ptr %7, i32 2
  %16 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx66.i, align 4
  %tobool67.not.i = icmp eq ptr %17, null
  br i1 %tobool67.not.i, label %if.end65.i.if.end134.i_crit_edge, label %if.then68.i

if.end65.i.if.end134.i_crit_edge:                 ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end134.i

if.then68.i:                                      ; preds = %if.end65.i
  %tobool70.not.i = icmp eq ptr %5, null
  br i1 %tobool70.not.i, label %land.rhs79.i, label %if.end127.i

land.rhs79.i:                                     ; preds = %if.then68.i
  %.b193194.i = load i1, ptr @__sync_device_with_v4l2_controls.__already_done.1, align 1
  br i1 %.b193194.i, label %land.rhs79.i.out_sync_device_crit_edge, label %land.rhs79.i.out_sync_device.sink.split_crit_edge, !prof !45

land.rhs79.i.out_sync_device.sink.split_crit_edge: ; preds = %land.rhs79.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_sync_device.sink.split

land.rhs79.i.out_sync_device_crit_edge:           ; preds = %land.rhs79.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_sync_device

if.end127.i:                                      ; preds = %if.then68.i
  %val129.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %val129.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val129.i, align 4
  %call130.i = tail call i32 @led_set_flash_brightness(ptr noundef nonnull %5, i32 noundef %19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130.i)
  %cmp131.i = icmp slt i32 %call130.i, 0
  br i1 %cmp131.i, label %if.end127.i.out_sync_device_crit_edge, label %if.end127.i.if.end134.i_crit_edge

if.end127.i.if.end134.i_crit_edge:                ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end134.i

if.end127.i.out_sync_device_crit_edge:            ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_sync_device

if.end134.i:                                      ; preds = %if.end127.i.if.end134.i_crit_edge, %if.end65.i.if.end134.i_crit_edge
  %arrayidx135.i = getelementptr ptr, ptr %7, i32 5
  %20 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx135.i, align 4
  %tobool136.not.i = icmp eq ptr %21, null
  br i1 %tobool136.not.i, label %if.end134.i.cleanup_crit_edge, label %land.lhs.true.i

if.end134.i.cleanup_crit_edge:                    ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end134.i
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %7, align 4
  %val138.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %val138.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val138.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp139.not.i = icmp eq i32 %25, 2
  br i1 %cmp139.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then140.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then140.i:                                     ; preds = %land.lhs.true.i
  %tobool141.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool141.not.i, label %if.then140.i.out_sync_device_crit_edge, label %land.lhs.true142.i

if.then140.i.out_sync_device_crit_edge:           ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_sync_device

land.lhs.true142.i:                               ; preds = %if.then140.i
  %ops.i = getelementptr i8, ptr %sd, i32 -4
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %tobool143.not.i = icmp eq ptr %27, null
  br i1 %tobool143.not.i, label %land.lhs.true142.i.out_sync_device_crit_edge, label %land.lhs.true144.i

land.lhs.true142.i.out_sync_device_crit_edge:     ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_sync_device

land.lhs.true144.i:                               ; preds = %land.lhs.true142.i
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool146.not.i = icmp eq ptr %29, null
  br i1 %tobool146.not.i, label %land.lhs.true144.i.out_sync_device_crit_edge, label %__sync_device_with_v4l2_controls.exit

land.lhs.true144.i.out_sync_device_crit_edge:     ; preds = %land.lhs.true144.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_sync_device

__sync_device_with_v4l2_controls.exit:            ; preds = %land.lhs.true144.i
  %val150.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %21, i32 0, i32 22
  %30 = ptrtoint ptr %val150.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val150.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool151.i = icmp ne i32 %31, 0
  %call152.i = tail call i32 %29(ptr noundef nonnull %add.ptr.i, i1 noundef zeroext %tobool151.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152.i)
  %cmp = icmp slt i32 %call152.i, 0
  br i1 %cmp, label %__sync_device_with_v4l2_controls.exit.out_sync_device_crit_edge, label %__sync_device_with_v4l2_controls.exit.cleanup_crit_edge

__sync_device_with_v4l2_controls.exit.cleanup_crit_edge: ; preds = %__sync_device_with_v4l2_controls.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

__sync_device_with_v4l2_controls.exit.out_sync_device_crit_edge: ; preds = %__sync_device_with_v4l2_controls.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_sync_device

out_sync_device.sink.split:                       ; preds = %land.rhs79.i.out_sync_device.sink.split_crit_edge, %land.rhs.i.out_sync_device.sink.split_crit_edge
  %__sync_device_with_v4l2_controls.__already_done.1.sink = phi ptr [ @__sync_device_with_v4l2_controls.__already_done, %land.rhs.i.out_sync_device.sink.split_crit_edge ], [ @__sync_device_with_v4l2_controls.__already_done.1, %land.rhs79.i.out_sync_device.sink.split_crit_edge ]
  %.sink = phi i32 [ 527, %land.rhs.i.out_sync_device.sink.split_crit_edge ], [ 537, %land.rhs79.i.out_sync_device.sink.split_crit_edge ]
  %32 = ptrtoint ptr %__sync_device_with_v4l2_controls.__already_done.1.sink to i32
  call void @__asan_store1_noabort(i32 %32)
  store i1 true, ptr %__sync_device_with_v4l2_controls.__already_done.1.sink, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #4
  br label %out_sync_device

out_sync_device:                                  ; preds = %out_sync_device.sink.split, %__sync_device_with_v4l2_controls.exit.out_sync_device_crit_edge, %land.lhs.true144.i.out_sync_device_crit_edge, %land.lhs.true142.i.out_sync_device_crit_edge, %if.then140.i.out_sync_device_crit_edge, %if.end127.i.out_sync_device_crit_edge, %land.rhs79.i.out_sync_device_crit_edge, %if.end59.i.out_sync_device_crit_edge, %land.rhs.i.out_sync_device_crit_edge, %if.then8.i.out_sync_device_crit_edge, %if.then.i.out_sync_device_crit_edge
  %retval.0.i54 = phi i32 [ %call152.i, %__sync_device_with_v4l2_controls.exit.out_sync_device_crit_edge ], [ -22, %land.rhs79.i.out_sync_device_crit_edge ], [ -22, %land.rhs.i.out_sync_device_crit_edge ], [ -22, %if.then140.i.out_sync_device_crit_edge ], [ -22, %land.lhs.true142.i.out_sync_device_crit_edge ], [ -22, %land.lhs.true144.i.out_sync_device_crit_edge ], [ %call130.i, %if.end127.i.out_sync_device_crit_edge ], [ %call61.i, %if.end59.i.out_sync_device_crit_edge ], [ %call10.i, %if.then8.i.out_sync_device_crit_edge ], [ %call.i, %if.then.i.out_sync_device_crit_edge ], [ -22, %out_sync_device.sink.split ]
  br i1 %tobool.not, label %out_sync_device.if.end21_crit_edge, label %if.then18

out_sync_device.if.end21_crit_edge:               ; preds = %out_sync_device
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then18:                                        ; preds = %out_sync_device
  call void @__sanitizer_cov_trace_pc() #6
  %led_access19 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %led_access19, i32 noundef 0) #4
  tail call void @led_sysfs_enable(ptr noundef nonnull %1) #4
  tail call void @mutex_unlock(ptr noundef %led_access19) #4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %out_sync_device.if.end21_crit_edge
  br i1 %tobool9.not, label %if.end21.cleanup_crit_edge, label %if.then23

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %led_access24 = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %led_access24, i32 noundef 0) #4
  tail call void @led_sysfs_enable(ptr noundef nonnull %3) #4
  tail call void @mutex_unlock(ptr noundef %led_access24) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end21.cleanup_crit_edge, %__sync_device_with_v4l2_controls.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end134.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %__sync_device_with_v4l2_controls.exit.cleanup_crit_edge ], [ %retval.0.i54, %if.then23 ], [ %retval.0.i54, %if.end21.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.end134.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v4l2_flash_close(ptr nocapture noundef readonly %sd, ptr noundef %fh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -12
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %iled_cdev = getelementptr i8, ptr %sd, i32 -8
  %2 = ptrtoint ptr %iled_cdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iled_cdev, align 4
  %call3 = tail call i32 @v4l2_fh_is_singular(ptr noundef %fh) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %if.then6

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then6:                                         ; preds = %if.end
  %led_access = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %led_access, i32 noundef 0) #4
  %ctrls = getelementptr i8, ptr %sd, i32 380
  %4 = ptrtoint ptr %ctrls to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrls, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.then6.if.end12_crit_edge, label %if.then8

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %11, i32 noundef 0) #4
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef nonnull %7, i32 noundef 0) #4
  %12 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %15) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then6.if.end12_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then8 ], [ 0, %if.then6.if.end12_crit_edge ]
  tail call void @led_sysfs_enable(ptr noundef nonnull %1) #4
  tail call void @mutex_unlock(ptr noundef %led_access) #4
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.end.if.end14_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end12 ], [ 0, %if.end.if.end14_crit_edge ]
  %tobool15.not = icmp eq ptr %3, null
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.then16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %led_access17 = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %led_access17, i32 noundef 0) #4
  tail call void @led_sysfs_enable(ptr noundef nonnull %3) #4
  tail call void @mutex_unlock(ptr noundef %led_access17) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.1, %if.then16 ], [ %ret.1, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_sysfs_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_sysfs_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @v4l2_flash_set_led_brightness(ptr noundef %v4l2_flash, ptr noundef %ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrls1 = getelementptr inbounds %struct.v4l2_flash, ptr %v4l2_flash, i32 0, i32 5
  %0 = ptrtoint ptr %ctrls1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrls1, align 4
  %tobool.not = icmp eq ptr %v4l2_flash, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_flash, ptr %v4l2_flash, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %intensity_to_led_brightness = getelementptr inbounds %struct.v4l2_flash_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %intensity_to_led_brightness to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intensity_to_led_brightness, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %land.lhs.true3.if.end_crit_edge, label %if.end.thread

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.thread:                                    ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %call = tail call i32 %5(ptr noundef nonnull %v4l2_flash, i32 noundef %7) #4
  br label %land.lhs.true19

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %val16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val16, align 4
  %minimum.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 11
  %10 = ptrtoint ptr %minimum.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %minimum.i, align 8
  %12 = trunc i64 %11 to i32
  %conv1.i = sub i32 %9, %12
  %13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 18
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %13, align 8
  %conv2.i = trunc i64 %15 to i32
  %div.i = udiv i32 %conv1.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not.i = icmp ne i64 %11, 0
  %inc.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add i32 %div.i, %inc.i
  br i1 %tobool.not, label %if.end.if.end42_crit_edge, label %if.end.land.lhs.true19_crit_edge

if.end.land.lhs.true19_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true19

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

land.lhs.true19:                                  ; preds = %if.end.land.lhs.true19_crit_edge, %if.end.thread
  %brightness.0197 = phi i32 [ %call, %if.end.thread ], [ %spec.select.i, %if.end.land.lhs.true19_crit_edge ]
  %ops20 = getelementptr inbounds %struct.v4l2_flash, ptr %v4l2_flash, i32 0, i32 2
  %16 = ptrtoint ptr %ops20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops20, align 4
  %tobool21.not = icmp eq ptr %17, null
  br i1 %tobool21.not, label %land.lhs.true19.if.end42_crit_edge, label %land.lhs.true22

land.lhs.true19.if.end42_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %led_brightness_to_intensity = getelementptr inbounds %struct.v4l2_flash_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %led_brightness_to_intensity to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %led_brightness_to_intensity, align 4
  %tobool24.not = icmp eq ptr %19, null
  br i1 %tobool24.not, label %land.lhs.true22.if.end42_crit_edge, label %cond.true34

land.lhs.true22.if.end42_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

cond.true34:                                      ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #6
  %call37 = tail call i32 %19(ptr noundef nonnull %v4l2_flash, i32 noundef %brightness.0197) #4
  %val41 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %20 = ptrtoint ptr %val41 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call37, ptr %val41, align 4
  br label %if.end42

if.end42:                                         ; preds = %cond.true34, %land.lhs.true22.if.end42_crit_edge, %land.lhs.true19.if.end42_crit_edge, %if.end.if.end42_crit_edge
  %brightness.0198 = phi i32 [ %brightness.0197, %cond.true34 ], [ %brightness.0197, %land.lhs.true22.if.end42_crit_edge ], [ %brightness.0197, %land.lhs.true19.if.end42_crit_edge ], [ %spec.select.i, %if.end.if.end42_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %22, %ctrl
  br i1 %cmp, label %if.then43, label %if.else93

if.then43:                                        ; preds = %if.end42
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %val45 = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %val45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp46.not = icmp eq i32 %26, 2
  br i1 %cmp46.not, label %if.end48, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end48:                                         ; preds = %if.then43
  %27 = ptrtoint ptr %v4l2_flash to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %v4l2_flash, align 4
  %tobool49.not = icmp eq ptr %28, null
  br i1 %tobool49.not, label %land.rhs, label %if.end48.if.end154_crit_edge

if.end48.if.end154_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end154

land.rhs:                                         ; preds = %if.end48
  %.b193 = load i1, ptr @v4l2_flash_set_led_brightness.__already_done, align 1
  br i1 %.b193, label %land.rhs.cleanup_crit_edge, label %if.then58, !prof !45

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then58:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @v4l2_flash_set_led_brightness.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.else93:                                        ; preds = %if.end42
  %iled_cdev = getelementptr inbounds %struct.v4l2_flash, ptr %v4l2_flash, i32 0, i32 1
  %29 = ptrtoint ptr %iled_cdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iled_cdev, align 4
  %tobool95.not = icmp eq ptr %30, null
  br i1 %tobool95.not, label %land.rhs104, label %if.else93.if.end154_crit_edge

if.else93.if.end154_crit_edge:                    ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end154

land.rhs104:                                      ; preds = %if.else93
  %.b191192 = load i1, ptr @v4l2_flash_set_led_brightness.__already_done.2, align 1
  br i1 %.b191192, label %land.rhs104.cleanup_crit_edge, label %if.then115, !prof !45

land.rhs104.cleanup_crit_edge:                    ; preds = %land.rhs104
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then115:                                       ; preds = %land.rhs104
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @v4l2_flash_set_led_brightness.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end154:                                        ; preds = %if.else93.if.end154_crit_edge, %if.end48.if.end154_crit_edge
  %led_cdev.0.in = phi ptr [ %v4l2_flash, %if.end48.if.end154_crit_edge ], [ %iled_cdev, %if.else93.if.end154_crit_edge ]
  %31 = ptrtoint ptr %led_cdev.0.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %led_cdev.0 = load ptr, ptr %led_cdev.0.in, align 4
  %call155 = tail call i32 @led_set_brightness_sync(ptr noundef %led_cdev.0, i32 noundef %brightness.0198) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end154, %if.then115, %land.rhs104.cleanup_crit_edge, %if.then58, %land.rhs.cleanup_crit_edge, %if.then43.cleanup_crit_edge
  %retval.0 = phi i32 [ %call155, %if.end154 ], [ 0, %if.then43.cleanup_crit_edge ], [ -22, %if.then58 ], [ -22, %if.then115 ], [ -22, %land.rhs.cleanup_crit_edge ], [ -22, %land.rhs104.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_set_flash_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_set_flash_brightness(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_set_brightness_sync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v4l2_flash_g_volatile_ctrl(ptr noundef %c) #0 align 64 {
entry:
  %is_strobing = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %c, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -208
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %is_strobing) #4
  %4 = ptrtoint ptr %is_strobing to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %is_strobing, align 1, !annotation !46
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %c, i32 0, i32 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  %7 = and i32 %6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10225928, i32 %7)
  %switch = icmp eq i32 %7, 10225928
  br i1 %switch, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  %ctrls1.i = getelementptr i8, ptr %1, i32 184
  %8 = ptrtoint ptr %ctrls1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrls1.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i = icmp eq ptr %11, %c
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp3.not.i = icmp eq i32 %15, 2
  br i1 %cmp3.not.i, label %if.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.i.if.end108.i_crit_edge

if.end.i.if.end108.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end108.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b163.i = load i1, ptr @v4l2_flash_update_led_brightness.__already_done, align 1
  br i1 %.b163.i, label %land.rhs.i.cleanup_crit_edge, label %if.then13.i, !prof !45

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then13.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @v4l2_flash_update_led_brightness.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 139, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.else.i:                                        ; preds = %sw.bb
  %iled_cdev.i = getelementptr i8, ptr %1, i32 -204
  %16 = ptrtoint ptr %iled_cdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iled_cdev.i, align 4
  %tobool49.not.i = icmp eq ptr %17, null
  br i1 %tobool49.not.i, label %land.rhs58.i, label %if.else.i.if.end108.i_crit_edge

if.else.i.if.end108.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end108.i

land.rhs58.i:                                     ; preds = %if.else.i
  %.b161162.i = load i1, ptr @v4l2_flash_update_led_brightness.__already_done.4, align 1
  br i1 %.b161162.i, label %land.rhs58.i.cleanup_crit_edge, label %if.then69.i, !prof !45

land.rhs58.i.cleanup_crit_edge:                   ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then69.i:                                      ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @v4l2_flash_update_led_brightness.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end108.i:                                      ; preds = %if.else.i.if.end108.i_crit_edge, %if.end.i.if.end108.i_crit_edge
  %led_cdev.0.in.i = phi ptr [ %add.ptr.i, %if.end.i.if.end108.i_crit_edge ], [ %iled_cdev.i, %if.else.i.if.end108.i_crit_edge ]
  %18 = ptrtoint ptr %led_cdev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %led_cdev.0.i = load ptr, ptr %led_cdev.0.in.i, align 4
  %call.i = tail call i32 @led_update_brightness(ptr noundef %led_cdev.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp109.i = icmp slt i32 %call.i, 0
  br i1 %cmp109.i, label %if.end108.i.cleanup_crit_edge, label %if.end111.i

if.end108.i.cleanup_crit_edge:                    ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end111.i:                                      ; preds = %if.end108.i
  %tobool112.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool112.not.i, label %if.end111.i.if.else130.i_crit_edge, label %land.lhs.true.i

if.end111.i.if.else130.i_crit_edge:               ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else130.i

land.lhs.true.i:                                  ; preds = %if.end111.i
  %ops.i = getelementptr i8, ptr %1, i32 -200
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %tobool113.not.i = icmp eq ptr %20, null
  br i1 %tobool113.not.i, label %land.lhs.true.i.if.else130.i_crit_edge, label %land.lhs.true114.i

land.lhs.true.i.if.else130.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else130.i

land.lhs.true114.i:                               ; preds = %land.lhs.true.i
  %led_brightness_to_intensity.i = getelementptr inbounds %struct.v4l2_flash_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %led_brightness_to_intensity.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %led_brightness_to_intensity.i, align 4
  %tobool116.not.i = icmp eq ptr %22, null
  br i1 %tobool116.not.i, label %land.lhs.true114.i.if.else130.i_crit_edge, label %cond.true.i

land.lhs.true114.i.if.else130.i_crit_edge:        ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else130.i

cond.true.i:                                      ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #6
  %brightness.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev.0.i, i32 0, i32 1
  %23 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %brightness.i, align 4
  %call128.i = tail call i32 %22(ptr noundef nonnull %add.ptr.i, i32 noundef %24) #4
  %val129.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %c, i32 0, i32 22
  %25 = ptrtoint ptr %val129.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call128.i, ptr %val129.i, align 4
  br label %cleanup

if.else130.i:                                     ; preds = %land.lhs.true114.i.if.else130.i_crit_edge, %land.lhs.true.i.if.else130.i_crit_edge, %if.end111.i.if.else130.i_crit_edge
  %brightness131.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %brightness131.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %brightness131.i, align 4
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10225929, i32 %29)
  %cmp.not.i.i = icmp ne i32 %29, 10225929
  %dec.i.i = sext i1 %cmp.not.i.i to i32
  %spec.select.i.i = add i32 %27, %dec.i.i
  %conv.i.i = zext i32 %spec.select.i.i to i64
  %30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %c, i32 0, i32 18
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %30, align 8
  %mul.i.i = mul i64 %32, %conv.i.i
  %minimum.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %c, i32 0, i32 11
  %33 = ptrtoint ptr %minimum.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %minimum.i.i, align 8
  %add.i.i = add i64 %mul.i.i, %34
  %conv1.i.i = trunc i64 %add.i.i to i32
  %val133.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %c, i32 0, i32 22
  %35 = ptrtoint ptr %val133.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv1.i.i, ptr %val133.i, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %36 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end.cleanup_crit_edge [
    i32 10225927, label %sw.bb4
    i32 10225925, label %if.end.i38
    i32 10225930, label %sw.bb16
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %call5 = tail call i32 @led_update_flash_brightness(ptr noundef nonnull %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %sw.bb4.cleanup_crit_edge, label %if.end7

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  %val = getelementptr inbounds %struct.led_classdev_flash, ptr %3, i32 0, i32 2, i32 3
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val, align 4
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %c, i32 0, i32 22
  %39 = ptrtoint ptr %val8 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %val8, align 4
  br label %cleanup

if.end.i38:                                       ; preds = %if.end
  %ops.i37 = getelementptr inbounds %struct.led_classdev_flash, ptr %3, i32 0, i32 1
  %40 = ptrtoint ptr %ops.i37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i37, align 4
  %strobe_get.i = getelementptr inbounds %struct.led_flash_ops, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %strobe_get.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %strobe_get.i, align 4
  %tobool1.not.i = icmp eq ptr %43, null
  br i1 %tobool1.not.i, label %if.end.i38.cleanup_crit_edge, label %led_get_flash_strobe.exit

if.end.i38.cleanup_crit_edge:                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

led_get_flash_strobe.exit:                        ; preds = %if.end.i38
  %call.i39 = call i32 %43(ptr noundef nonnull %3, ptr noundef nonnull %is_strobing) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %cmp11 = icmp slt i32 %call.i39, 0
  br i1 %cmp11, label %led_get_flash_strobe.exit.cleanup_crit_edge, label %if.end13

led_get_flash_strobe.exit.cleanup_crit_edge:      ; preds = %led_get_flash_strobe.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %led_get_flash_strobe.exit
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %is_strobing to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %is_strobing, align 1, !range !47
  %46 = zext i8 %45 to i32
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %c, i32 0, i32 22
  %47 = ptrtoint ptr %val15 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %val15, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %c, i32 0, i32 22
  %call18 = tail call i32 @led_get_flash_fault(ptr noundef nonnull %3, ptr noundef %val17) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb16, %if.end13, %led_get_flash_strobe.exit.cleanup_crit_edge, %if.end.i38.cleanup_crit_edge, %if.end7, %sw.bb4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.else130.i, %cond.true.i, %if.end108.i.cleanup_crit_edge, %if.then69.i, %land.rhs58.i.cleanup_crit_edge, %if.then13.i, %land.rhs.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %sw.bb16 ], [ 0, %if.end13 ], [ 0, %if.end7 ], [ -22, %sw.epilog.cleanup_crit_edge ], [ %call5, %sw.bb4.cleanup_crit_edge ], [ %call.i39, %led_get_flash_strobe.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ -22, %if.then13.i ], [ -22, %if.then69.i ], [ %call.i, %if.end108.i.cleanup_crit_edge ], [ 0, %if.else130.i ], [ 0, %cond.true.i ], [ -22, %land.rhs.i.cleanup_crit_edge ], [ -22, %land.rhs58.i.cleanup_crit_edge ], [ -22, %if.end.i38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_strobing) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v4l2_flash_s_ctrl(ptr noundef %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %c, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -208
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %ctrls2 = getelementptr i8, ptr %1, i32 184
  %4 = ptrtoint ptr %ctrls2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrls2, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %c, i32 0, i32 8
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %8 = and i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10225928, i32 %8)
  %switch = icmp eq i32 %8, 10225928
  br i1 %switch, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call fastcc i32 @v4l2_flash_set_led_brightness(ptr noundef %add.ptr.i, ptr noundef %c)
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %9 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 10225921, label %sw.bb6
    i32 10225922, label %sw.bb56
    i32 10225923, label %sw.bb81
    i32 10225924, label %sw.bb86
    i32 10225926, label %sw.bb91
    i32 10225927, label %sw.bb94
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %c, i32 0, i32 22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %11, label %sw.bb6.cleanup_crit_edge [
    i32 0, label %led_set_flash_strobe.exit
    i32 1, label %sw.bb10
    i32 2, label %sw.bb26
  ]

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

led_set_flash_strobe.exit:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call i32 @led_set_brightness_sync(ptr noundef nonnull %3, i32 noundef 0) #4
  %ops.i = getelementptr inbounds %struct.led_classdev_flash, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %strobe_set.i = getelementptr inbounds %struct.led_flash_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %strobe_set.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %strobe_set.i, align 4
  %call.i = tail call i32 %16(ptr noundef nonnull %3, i1 noundef zeroext false) #4
  br label %cleanup

sw.bb10:                                          ; preds = %sw.bb6
  %call11 = tail call i32 @led_set_brightness_sync(ptr noundef nonnull %3, i32 noundef 0) #4
  %arrayidx = getelementptr ptr, ptr %5, i32 5
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %18, null
  br i1 %tobool12.not, label %sw.bb10.cleanup_crit_edge, label %if.then13

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then13:                                        ; preds = %sw.bb10
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp = icmp eq i32 %20, 1
  %tobool16.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool16.not, label %if.then13.cleanup_crit_edge, label %land.lhs.true

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then13
  %ops = getelementptr i8, ptr %1, i32 -200
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %tobool17.not = icmp eq ptr %22, null
  br i1 %tobool17.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true18

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true18:                                  ; preds = %land.lhs.true
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %tobool20.not = icmp eq ptr %24, null
  br i1 %tobool20.not, label %land.lhs.true18.cleanup_crit_edge, label %cond.true

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cond.true:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #6
  %call24 = tail call i32 %24(ptr noundef nonnull %add.ptr.i, i1 noundef zeroext %cmp) #4
  br label %cleanup

sw.bb26:                                          ; preds = %sw.bb6
  %arrayidx27 = getelementptr ptr, ptr %5, i32 5
  %25 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx27, align 4
  %tobool28.not = icmp eq ptr %26, null
  br i1 %tobool28.not, label %sw.bb26.led_set_flash_strobe.exit160_crit_edge, label %if.then29

sw.bb26.led_set_flash_strobe.exit160_crit_edge:   ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #6
  br label %led_set_flash_strobe.exit160

if.then29:                                        ; preds = %sw.bb26
  %tobool30.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool30.not, label %if.then29.cleanup_crit_edge, label %land.lhs.true31

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true31:                                  ; preds = %if.then29
  %ops32 = getelementptr i8, ptr %1, i32 -200
  %27 = ptrtoint ptr %ops32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops32, align 4
  %tobool33.not = icmp eq ptr %28, null
  br i1 %tobool33.not, label %land.lhs.true31.cleanup_crit_edge, label %land.lhs.true34

land.lhs.true31.cleanup_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %tobool37.not = icmp eq ptr %30, null
  br i1 %tobool37.not, label %land.lhs.true34.cleanup_crit_edge, label %cond.end43

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cond.end43:                                       ; preds = %land.lhs.true34
  %call41 = tail call i32 %30(ptr noundef nonnull %add.ptr.i, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp45 = icmp slt i32 %call41, 0
  br i1 %cmp45, label %cond.end43.cleanup_crit_edge, label %cond.end43.led_set_flash_strobe.exit160_crit_edge

cond.end43.led_set_flash_strobe.exit160_crit_edge: ; preds = %cond.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %led_set_flash_strobe.exit160

cond.end43.cleanup_crit_edge:                     ; preds = %cond.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

led_set_flash_strobe.exit160:                     ; preds = %cond.end43.led_set_flash_strobe.exit160_crit_edge, %sw.bb26.led_set_flash_strobe.exit160_crit_edge
  %ops.i155 = getelementptr inbounds %struct.led_classdev_flash, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %ops.i155 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i155, align 4
  %strobe_set.i156 = getelementptr inbounds %struct.led_flash_ops, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %strobe_set.i156 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %strobe_set.i156, align 4
  %call.i157 = tail call i32 %34(ptr noundef nonnull %3, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %cmp50 = icmp slt i32 %call.i157, 0
  br i1 %cmp50, label %led_set_flash_strobe.exit160.cleanup_crit_edge, label %if.end52

led_set_flash_strobe.exit160.cleanup_crit_edge:   ; preds = %led_set_flash_strobe.exit160
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end52:                                         ; preds = %led_set_flash_strobe.exit160
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx53 = getelementptr ptr, ptr %5, i32 1
  %35 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx53, align 4
  %call54 = tail call fastcc i32 @v4l2_flash_set_led_brightness(ptr noundef %add.ptr.i, ptr noundef %36)
  br label %cleanup

sw.bb56:                                          ; preds = %if.end
  %val57 = getelementptr inbounds %struct.v4l2_ctrl, ptr %c, i32 0, i32 22
  %37 = ptrtoint ptr %val57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp58 = icmp eq i32 %38, 1
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 4
  %val61 = getelementptr inbounds %struct.v4l2_ctrl, ptr %40, i32 0, i32 22
  %41 = ptrtoint ptr %val61 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp62.not = icmp eq i32 %42, 1
  br i1 %cmp62.not, label %if.end64, label %sw.bb56.cleanup_crit_edge

sw.bb56.cleanup_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end64:                                         ; preds = %sw.bb56
  %tobool65.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool65.not, label %if.end64.cleanup_crit_edge, label %land.lhs.true66

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true66:                                  ; preds = %if.end64
  %ops67 = getelementptr i8, ptr %1, i32 -200
  %43 = ptrtoint ptr %ops67 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops67, align 4
  %tobool68.not = icmp eq ptr %44, null
  br i1 %tobool68.not, label %land.lhs.true66.cleanup_crit_edge, label %land.lhs.true69

land.lhs.true66.cleanup_crit_edge:                ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true69:                                  ; preds = %land.lhs.true66
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %tobool72.not = icmp eq ptr %46, null
  br i1 %tobool72.not, label %land.lhs.true69.cleanup_crit_edge, label %cond.true73

land.lhs.true69.cleanup_crit_edge:                ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cond.true73:                                      ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #6
  %call77 = tail call i32 %46(ptr noundef nonnull %add.ptr.i, i1 noundef zeroext %cmp58) #4
  br label %cleanup

sw.bb81:                                          ; preds = %if.end
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %5, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %48, i32 0, i32 22
  %49 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp.not.i = icmp eq i32 %50, 1
  br i1 %cmp.not.i, label %lor.rhs.i, label %sw.bb81.cleanup_crit_edge

sw.bb81.cleanup_crit_edge:                        ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.rhs.i:                                        ; preds = %sw.bb81
  %arrayidx1.i = getelementptr ptr, ptr %5, i32 5
  %51 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx1.i, align 4
  %tobool.not.i161 = icmp eq ptr %52, null
  br i1 %tobool.not.i161, label %lor.rhs.i.led_set_flash_strobe.exit168_crit_edge, label %__software_strobe_mode_inactive.exit

lor.rhs.i.led_set_flash_strobe.exit168_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %led_set_flash_strobe.exit168

__software_strobe_mode_inactive.exit:             ; preds = %lor.rhs.i
  %val3.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %52, i32 0, i32 22
  %53 = ptrtoint ptr %val3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp4.i.not = icmp eq i32 %54, 0
  br i1 %cmp4.i.not, label %__software_strobe_mode_inactive.exit.led_set_flash_strobe.exit168_crit_edge, label %__software_strobe_mode_inactive.exit.cleanup_crit_edge

__software_strobe_mode_inactive.exit.cleanup_crit_edge: ; preds = %__software_strobe_mode_inactive.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

__software_strobe_mode_inactive.exit.led_set_flash_strobe.exit168_crit_edge: ; preds = %__software_strobe_mode_inactive.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %led_set_flash_strobe.exit168

led_set_flash_strobe.exit168:                     ; preds = %__software_strobe_mode_inactive.exit.led_set_flash_strobe.exit168_crit_edge, %lor.rhs.i.led_set_flash_strobe.exit168_crit_edge
  %ops.i163 = getelementptr inbounds %struct.led_classdev_flash, ptr %3, i32 0, i32 1
  %55 = ptrtoint ptr %ops.i163 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i163, align 4
  %strobe_set.i164 = getelementptr inbounds %struct.led_flash_ops, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %strobe_set.i164 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %strobe_set.i164, align 4
  %call.i165 = tail call i32 %58(ptr noundef nonnull %3, i1 noundef zeroext true) #4
  br label %cleanup

sw.bb86:                                          ; preds = %if.end
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %5, align 4
  %val.i169 = getelementptr inbounds %struct.v4l2_ctrl, ptr %60, i32 0, i32 22
  %61 = ptrtoint ptr %val.i169 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val.i169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp.not.i170 = icmp eq i32 %62, 1
  br i1 %cmp.not.i170, label %lor.rhs.i173, label %sw.bb86.cleanup_crit_edge

sw.bb86.cleanup_crit_edge:                        ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.rhs.i173:                                     ; preds = %sw.bb86
  %arrayidx1.i171 = getelementptr ptr, ptr %5, i32 5
  %63 = ptrtoint ptr %arrayidx1.i171 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx1.i171, align 4
  %tobool.not.i172 = icmp eq ptr %64, null
  br i1 %tobool.not.i172, label %lor.rhs.i173.led_set_flash_strobe.exit184_crit_edge, label %__software_strobe_mode_inactive.exit177

lor.rhs.i173.led_set_flash_strobe.exit184_crit_edge: ; preds = %lor.rhs.i173
  call void @__sanitizer_cov_trace_pc() #6
  br label %led_set_flash_strobe.exit184

__software_strobe_mode_inactive.exit177:          ; preds = %lor.rhs.i173
  %val3.i174 = getelementptr inbounds %struct.v4l2_ctrl, ptr %64, i32 0, i32 22
  %65 = ptrtoint ptr %val3.i174 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val3.i174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp4.i175.not = icmp eq i32 %66, 0
  br i1 %cmp4.i175.not, label %__software_strobe_mode_inactive.exit177.led_set_flash_strobe.exit184_crit_edge, label %__software_strobe_mode_inactive.exit177.cleanup_crit_edge

__software_strobe_mode_inactive.exit177.cleanup_crit_edge: ; preds = %__software_strobe_mode_inactive.exit177
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

__software_strobe_mode_inactive.exit177.led_set_flash_strobe.exit184_crit_edge: ; preds = %__software_strobe_mode_inactive.exit177
  call void @__sanitizer_cov_trace_pc() #6
  br label %led_set_flash_strobe.exit184

led_set_flash_strobe.exit184:                     ; preds = %__software_strobe_mode_inactive.exit177.led_set_flash_strobe.exit184_crit_edge, %lor.rhs.i173.led_set_flash_strobe.exit184_crit_edge
  %ops.i179 = getelementptr inbounds %struct.led_classdev_flash, ptr %3, i32 0, i32 1
  %67 = ptrtoint ptr %ops.i179 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops.i179, align 4
  %strobe_set.i180 = getelementptr inbounds %struct.led_flash_ops, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %strobe_set.i180 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %strobe_set.i180, align 4
  %call.i181 = tail call i32 %70(ptr noundef nonnull %3, i1 noundef zeroext false) #4
  br label %cleanup

sw.bb91:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %val92 = getelementptr inbounds %struct.v4l2_ctrl, ptr %c, i32 0, i32 22
  %71 = ptrtoint ptr %val92 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val92, align 4
  %call93 = tail call i32 @led_set_flash_timeout(ptr noundef nonnull %3, i32 noundef %72) #4
  br label %cleanup

sw.bb94:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %val95 = getelementptr inbounds %struct.v4l2_ctrl, ptr %c, i32 0, i32 22
  %73 = ptrtoint ptr %val95 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %val95, align 4
  %call96 = tail call i32 @led_set_flash_brightness(ptr noundef nonnull %3, i32 noundef %74) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb94, %sw.bb91, %led_set_flash_strobe.exit184, %__software_strobe_mode_inactive.exit177.cleanup_crit_edge, %sw.bb86.cleanup_crit_edge, %led_set_flash_strobe.exit168, %__software_strobe_mode_inactive.exit.cleanup_crit_edge, %sw.bb81.cleanup_crit_edge, %cond.true73, %land.lhs.true69.cleanup_crit_edge, %land.lhs.true66.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %sw.bb56.cleanup_crit_edge, %if.end52, %led_set_flash_strobe.exit160.cleanup_crit_edge, %cond.end43.cleanup_crit_edge, %land.lhs.true34.cleanup_crit_edge, %land.lhs.true31.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %cond.true, %land.lhs.true18.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %led_set_flash_strobe.exit, %sw.bb6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb
  %retval.0 = phi i32 [ %call96, %sw.bb94 ], [ %call93, %sw.bb91 ], [ %call.i181, %led_set_flash_strobe.exit184 ], [ %call.i165, %led_set_flash_strobe.exit168 ], [ %call54, %if.end52 ], [ %call.i, %led_set_flash_strobe.exit ], [ %call3, %sw.bb ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.bb10.cleanup_crit_edge ], [ %call24, %cond.true ], [ -22, %land.lhs.true18.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.then13.cleanup_crit_edge ], [ %call41, %cond.end43.cleanup_crit_edge ], [ %call.i157, %led_set_flash_strobe.exit160.cleanup_crit_edge ], [ 0, %sw.bb56.cleanup_crit_edge ], [ %call77, %cond.true73 ], [ -22, %land.lhs.true69.cleanup_crit_edge ], [ -22, %land.lhs.true66.cleanup_crit_edge ], [ -22, %if.end64.cleanup_crit_edge ], [ -16, %__software_strobe_mode_inactive.exit.cleanup_crit_edge ], [ -16, %__software_strobe_mode_inactive.exit177.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true34.cleanup_crit_edge ], [ -22, %land.lhs.true31.cleanup_crit_edge ], [ -22, %if.then29.cleanup_crit_edge ], [ -16, %sw.bb81.cleanup_crit_edge ], [ -16, %sw.bb86.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_update_flash_brightness(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_get_flash_fault(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_update_brightness(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !22, !24, !26, !28, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__ksymtab_v4l2_flash_init, !1, !"__ksymtab_v4l2_flash_init", i1 false, i1 false}
!1 = !{!"../drivers/media/v4l2-core/v4l2-flash-led-class.c", i32 715, i32 1}
!2 = !{ptr @__ksymtab_v4l2_flash_indicator_init, !3, !"__ksymtab_v4l2_flash_indicator_init", i1 false, i1 false}
!3 = !{!"../drivers/media/v4l2-core/v4l2-flash-led-class.c", i32 724, i32 1}
!4 = !{ptr @__ksymtab_v4l2_flash_release, !5, !"__ksymtab_v4l2_flash_release", i1 false, i1 false}
!5 = !{!"../drivers/media/v4l2-core/v4l2-flash-led-class.c", i32 742, i32 1}
!6 = !{ptr @__UNIQUE_ID_author292, !7, !"__UNIQUE_ID_author292", i1 false, i1 false}
!7 = !{!"../drivers/media/v4l2-core/v4l2-flash-led-class.c", i32 744, i32 1}
!8 = !{ptr @__UNIQUE_ID_description293, !9, !"__UNIQUE_ID_description293", i1 false, i1 false}
!9 = !{!"../drivers/media/v4l2-core/v4l2-flash-led-class.c", i32 745, i32 1}
!10 = !{ptr @__UNIQUE_ID_file294, !11, !"__UNIQUE_ID_file294", i1 false, i1 false}
!11 = !{!"../drivers/media/v4l2-core/v4l2-flash-led-class.c", i32 746, i32 1}
!12 = !{ptr @__UNIQUE_ID_license295, !11, !"__UNIQUE_ID_license295", i1 false, i1 false}
!13 = !{ptr @v4l2_flash_subdev_ops, !14, !"v4l2_flash_subdev_ops", i1 false, i1 false}
!14 = !{!"../drivers/media/v4l2-core/v4l2-flash-led-class.c", i32 651, i32 37}
!15 = !{ptr @v4l2_flash_subdev_internal_ops, !16, !"v4l2_flash_subdev_internal_ops", i1 false, i1 false}
!16 = !{!"../drivers/media/v4l2-core/v4l2-flash-led-class.c", i32 646, i32 46}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/media/v4l2-core/v4l2-flash-led-class.c", i32 527, i32 7}
!19 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../drivers/media/v4l2-core/v4l2-flash-led-class.c", i32 537, i32 7}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/media/v4l2-core/v4l2-flash-led-class.c", i32 108, i32 7}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../drivers/media/v4l2-core/v4l2-flash-led-class.c", i32 113, i32 7}
!26 = !{ptr @v4l2_flash_init_controls._key, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/media/v4l2-core/v4l2-flash-led-class.c", i32 457, i32 2}
!28 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @v4l2_flash_ctrl_ops, !30, !"v4l2_flash_ctrl_ops", i1 false, i1 false}
!30 = !{!"../drivers/media/v4l2-core/v4l2-flash-led-class.c", i32 306, i32 35}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../drivers/media/v4l2-core/v4l2-flash-led-class.c", i32 139, i32 7}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/media/v4l2-core/v4l2-flash-led-class.c", i32 144, i32 7}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 1, i32 2000}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!"auto-init"}
!47 = !{i8 0, i8 2}
