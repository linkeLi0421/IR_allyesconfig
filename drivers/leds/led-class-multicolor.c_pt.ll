; ModuleID = '/llk/IR_all_yes/drivers/leds/led-class-multicolor.c_pt.bc'
source_filename = "../drivers/leds/led-class-multicolor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+led_mc_calc_color_components\22, \22a\22\09"
module asm "\09.weak\09__crc_led_mc_calc_color_components\09\09\09\09"
module asm "\09.long\09__crc_led_mc_calc_color_components\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_mc_calc_color_components:\09\09\09\09\09"
module asm "\09.asciz \09\22led_mc_calc_color_components\22\09\09\09\09\09"
module asm "__kstrtabns_led_mc_calc_color_components:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+led_classdev_multicolor_register_ext\22, \22a\22\09"
module asm "\09.weak\09__crc_led_classdev_multicolor_register_ext\09\09\09\09"
module asm "\09.long\09__crc_led_classdev_multicolor_register_ext\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_classdev_multicolor_register_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22led_classdev_multicolor_register_ext\22\09\09\09\09\09"
module asm "__kstrtabns_led_classdev_multicolor_register_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+led_classdev_multicolor_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_led_classdev_multicolor_unregister\09\09\09\09"
module asm "\09.long\09__crc_led_classdev_multicolor_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_led_classdev_multicolor_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22led_classdev_multicolor_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_led_classdev_multicolor_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_led_classdev_multicolor_register_ext\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_led_classdev_multicolor_register_ext\09\09\09\09"
module asm "\09.long\09__crc_devm_led_classdev_multicolor_register_ext\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_led_classdev_multicolor_register_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_led_classdev_multicolor_register_ext\22\09\09\09\09\09"
module asm "__kstrtabns_devm_led_classdev_multicolor_register_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_led_classdev_multicolor_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_led_classdev_multicolor_unregister\09\09\09\09"
module asm "\09.long\09__crc_devm_led_classdev_multicolor_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_led_classdev_multicolor_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_led_classdev_multicolor_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_devm_led_classdev_multicolor_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.led_classdev_mc = type { %struct.led_classdev, i32, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mc_subled = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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

@__kstrtab_led_mc_calc_color_components = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_mc_calc_color_components = external dso_local constant [0 x i8], align 1
@__ksymtab_led_mc_calc_color_components = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_mc_calc_color_components to i32), ptr @__kstrtab_led_mc_calc_color_components, ptr @__kstrtabns_led_mc_calc_color_components }, section "___ksymtab_gpl+led_mc_calc_color_components", align 4
@led_multicolor_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @led_multicolor_group, ptr null], [24 x i8] zeroinitializer }, align 32
@__kstrtab_led_classdev_multicolor_register_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_classdev_multicolor_register_ext = external dso_local constant [0 x i8], align 1
@__ksymtab_led_classdev_multicolor_register_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_classdev_multicolor_register_ext to i32), ptr @__kstrtab_led_classdev_multicolor_register_ext, ptr @__kstrtabns_led_classdev_multicolor_register_ext }, section "___ksymtab_gpl+led_classdev_multicolor_register_ext", align 4
@__kstrtab_led_classdev_multicolor_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_led_classdev_multicolor_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_led_classdev_multicolor_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @led_classdev_multicolor_unregister to i32), ptr @__kstrtab_led_classdev_multicolor_unregister, ptr @__kstrtabns_led_classdev_multicolor_unregister }, section "___ksymtab_gpl+led_classdev_multicolor_unregister", align 4
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"devm_led_classdev_multicolor_release\00", [59 x i8] zeroinitializer }, align 32
@__kstrtab_devm_led_classdev_multicolor_register_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_led_classdev_multicolor_register_ext = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_led_classdev_multicolor_register_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_led_classdev_multicolor_register_ext to i32), ptr @__kstrtab_devm_led_classdev_multicolor_register_ext, ptr @__kstrtabns_devm_led_classdev_multicolor_register_ext }, section "___ksymtab_gpl+devm_led_classdev_multicolor_register_ext", align 4
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/leds/led-class-multicolor.c\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_devm_led_classdev_multicolor_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_led_classdev_multicolor_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_led_classdev_multicolor_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_led_classdev_multicolor_unregister to i32), ptr @__kstrtab_devm_led_classdev_multicolor_unregister, ptr @__kstrtabns_devm_led_classdev_multicolor_unregister }, section "___ksymtab_gpl+devm_led_classdev_multicolor_unregister", align 4
@__UNIQUE_ID_author187 = internal constant [56 x i8] c"led_class_multicolor.author=Dan Murphy <dmurphy@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description188 = internal constant [64 x i8] c"led_class_multicolor.description=Multicolor LED class interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [60 x i8] c"led_class_multicolor.file=drivers/leds/led-class-multicolor\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [36 x i8] c"led_class_multicolor.license=GPL v2\00", section ".modinfo", align 1
@led_multicolor_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @led_multicolor_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@led_multicolor_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_multi_intensity, ptr @dev_attr_multi_index, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_multi_intensity = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @multi_intensity_show, ptr @multi_intensity_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_multi_index = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @multi_index_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"multi_intensity\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%i%n\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"multi_index\00", [20 x i8] zeroinitializer }, align 32
@led_colors = external dso_local local_unnamed_addr constant [10 x ptr], align 4
@___asan_gen_.8 = private unnamed_addr constant [22 x i8] c"led_multicolor_groups\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 162, i32 7 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 195, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [21 x i8] c"led_multicolor_group\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 117, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"led_multicolor_attrs\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 112, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant [25 x i8] c"dev_attr_multi_intensity\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"dev_attr_multi_index\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 88, i32 8 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 79, i32 29 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 44, i32 30 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [39 x i8] c"../drivers/leds/led-class-multicolor.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 110, i32 8 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author187, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__ksymtab_devm_led_classdev_multicolor_register_ext, ptr @__ksymtab_devm_led_classdev_multicolor_unregister, ptr @__ksymtab_led_classdev_multicolor_register_ext, ptr @__ksymtab_led_classdev_multicolor_unregister, ptr @__ksymtab_led_mc_calc_color_components, ptr @led_multicolor_groups, ptr @.str, ptr @.str.1, ptr @led_multicolor_group, ptr @led_multicolor_attrs, ptr @dev_attr_multi_intensity, ptr @dev_attr_multi_index, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_multicolor_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_multicolor_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_multicolor_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_multi_intensity to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_multi_index to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @led_mc_calc_color_components(ptr nocapture noundef readonly %mcled_cdev, i32 noundef %brightness) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_colors = getelementptr inbounds %struct.led_classdev_mc, ptr %mcled_cdev, i32 0, i32 1
  %0 = ptrtoint ptr %num_colors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_colors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11.not = icmp eq i32 %1, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %subled_info = getelementptr inbounds %struct.led_classdev_mc, ptr %mcled_cdev, i32 0, i32 2
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %mcled_cdev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %subled_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subled_info, align 4
  %intensity = getelementptr %struct.mc_subled, ptr %3, i32 %i.012, i32 2
  %4 = ptrtoint ptr %intensity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %intensity, align 4
  %mul = mul i32 %5, %brightness
  %6 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_brightness, align 4
  %div = udiv i32 %mul, %7
  %brightness4 = getelementptr %struct.mc_subled, ptr %3, i32 %i.012, i32 1
  %8 = ptrtoint ptr %brightness4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div, ptr %brightness4, align 4
  %inc = add nuw i32 %i.012, 1
  %9 = ptrtoint ptr %num_colors to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_colors, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @led_classdev_multicolor_register_ext(ptr noundef %parent, ptr noundef %mcled_cdev, ptr noundef %init_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mcled_cdev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_colors = getelementptr inbounds %struct.led_classdev_mc, ptr %mcled_cdev, i32 0, i32 1
  %0 = ptrtoint ptr %num_colors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_colors, align 4
  %2 = add i32 %1, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %2)
  %3 = icmp ult i32 %2, -10
  br i1 %3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %groups = getelementptr inbounds %struct.led_classdev, ptr %mcled_cdev, i32 0, i32 12
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @led_multicolor_groups, ptr %groups, align 4
  %call = tail call i32 @led_classdev_register_ext(ptr noundef %parent, ptr noundef nonnull %mcled_cdev, ptr noundef %init_data) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @led_classdev_multicolor_unregister(ptr noundef %mcled_cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mcled_cdev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_classdev_unregister(ptr noundef nonnull %mcled_cdev) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_led_classdev_multicolor_register_ext(ptr noundef %parent, ptr noundef %mcled_cdev, ptr noundef %init_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_led_classdev_multicolor_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %mcled_cdev, null
  br i1 %tobool.not.i, label %if.end.if.then3_crit_edge, label %if.end.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %num_colors.i = getelementptr inbounds %struct.led_classdev_mc, ptr %mcled_cdev, i32 0, i32 1
  %0 = ptrtoint ptr %num_colors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_colors.i, align 4
  %2 = add i32 %1, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %2)
  %3 = icmp ult i32 %2, -10
  br i1 %3, label %if.end.i.if.then3_crit_edge, label %led_classdev_multicolor_register_ext.exit

if.end.i.if.then3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

led_classdev_multicolor_register_ext.exit:        ; preds = %if.end.i
  %groups.i = getelementptr inbounds %struct.led_classdev, ptr %mcled_cdev, i32 0, i32 12
  %4 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @led_multicolor_groups, ptr %groups.i, align 4
  %call.i = tail call i32 @led_classdev_register_ext(ptr noundef %parent, ptr noundef nonnull %mcled_cdev, ptr noundef %init_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %led_classdev_multicolor_register_ext.exit.if.then3_crit_edge

led_classdev_multicolor_register_ext.exit.if.then3_crit_edge: ; preds = %led_classdev_multicolor_register_ext.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %led_classdev_multicolor_register_ext.exit.if.then3_crit_edge, %if.end.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i14 = phi i32 [ %call.i, %led_classdev_multicolor_register_ext.exit.if.then3_crit_edge ], [ -22, %if.end.if.then3_crit_edge ], [ -22, %if.end.i.if.then3_crit_edge ]
  tail call void @devres_free(ptr noundef nonnull %call) #7
  br label %cleanup

if.end4:                                          ; preds = %led_classdev_multicolor_register_ext.exit
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mcled_cdev, ptr %call, align 4
  tail call void @devres_add(ptr noundef %parent, ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i14, %if.then3 ], [ 0, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_led_classdev_multicolor_release(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.led_classdev_multicolor_unregister.exit_crit_edge, label %if.end.i

entry.led_classdev_multicolor_unregister.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %led_classdev_multicolor_unregister.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_classdev_unregister(ptr noundef nonnull %1) #7
  br label %led_classdev_multicolor_unregister.exit

led_classdev_multicolor_unregister.exit:          ; preds = %if.end.i, %entry.led_classdev_multicolor_unregister.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devm_led_classdev_multicolor_unregister(ptr noundef %dev, ptr noundef %mcled_cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devres_release(ptr noundef %dev, ptr noundef nonnull @devm_led_classdev_multicolor_release, ptr noundef nonnull @devm_led_classdev_multicolor_match, ptr noundef %mcled_cdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !49

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 197, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devm_led_classdev_multicolor_match(ptr nocapture noundef readnone %dev, ptr noundef readonly %res, ptr noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %res, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %if.end24, !prof !50

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 186, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %conv, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multi_intensity_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %intensity_attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_colors = getelementptr inbounds %struct.led_classdev_mc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_colors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_colors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp22.not = icmp eq i32 %3, 0
  br i1 %cmp22.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %subled_info = getelementptr inbounds %struct.led_classdev_mc, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %len.023 = phi i32 [ 0, %for.body.lr.ph ], [ %len.1, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.023
  %4 = ptrtoint ptr %subled_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %subled_info, align 4
  %intensity = getelementptr %struct.mc_subled, ptr %5, i32 %i.024, i32 2
  %6 = ptrtoint ptr %intensity to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intensity, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.3, i32 noundef %7)
  %add = add i32 %call2, %len.023
  %8 = ptrtoint ptr %num_colors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_colors, align 4
  %sub = add i32 %9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.024, i32 %sub)
  %cmp4 = icmp ult i32 %i.024, %sub
  br i1 %cmp4, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5 = getelementptr i8, ptr %buf, i32 %add
  %10 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 8192, ptr %add.ptr5, align 1
  %add7 = add i32 %add, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %len.1 = phi i32 [ %add7, %if.then ], [ %add, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.024, 1
  %11 = ptrtoint ptr %num_colors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_colors, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %len.1, %for.inc.for.end_crit_edge ]
  %inc8 = add i32 %len.0.lcssa, 1
  %arrayidx9 = getelementptr i8, ptr %buf, i32 %len.0.lcssa
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 10, ptr %arrayidx9, align 1
  ret i32 %inc8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multi_intensity_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %intensity_attr, ptr nocapture noundef readonly %buf, i32 noundef %size) #2 align 64 {
entry:
  %nrchars = alloca i32, align 4
  %intensity_value = alloca [10 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nrchars) #7
  %2 = ptrtoint ptr %nrchars to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %nrchars, align 4, !annotation !51
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %intensity_value) #7
  %3 = call ptr @memset(ptr %intensity_value, i32 255, i32 40)
  %led_access = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %led_access, i32 noundef 0) #7
  %num_colors = getelementptr inbounds %struct.led_classdev_mc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %num_colors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_colors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp37.not = icmp eq i32 %5, 0
  br i1 %cmp37.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %offset.038 = phi i32 [ %add, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %offset.038
  %arrayidx = getelementptr [10 x i32], ptr %intensity_value, i32 0, i32 %i.039
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr, ptr noundef nonnull @.str.5, ptr noundef %arrayidx, ptr noundef nonnull %nrchars)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 1
  br i1 %cmp3.not, label %if.end, label %for.body.err_out_crit_edge

for.body.err_out_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %nrchars to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nrchars, align 4
  %add = add i32 %7, %offset.038
  %inc = add nuw i32 %i.039, 1
  %8 = ptrtoint ptr %num_colors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_colors, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %if.end.for.body_crit_edge, label %for.end.loopexit

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = add i32 %add, 1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %offset.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0.lcssa, i32 %size)
  %cmp5 = icmp ult i32 %offset.0.lcssa, %size
  br i1 %cmp5, label %for.end.err_out_crit_edge, label %for.cond8.preheader

for.end.err_out_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

for.cond8.preheader:                              ; preds = %for.end
  %10 = ptrtoint ptr %num_colors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_colors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1040.not = icmp eq i32 %11, 0
  br i1 %cmp1040.not, label %for.cond8.preheader.for.end16_crit_edge, label %for.body11.lr.ph

for.cond8.preheader.for.end16_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end16

for.body11.lr.ph:                                 ; preds = %for.cond8.preheader
  %subled_info = getelementptr inbounds %struct.led_classdev_mc, ptr %1, i32 0, i32 2
  br label %for.body11

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.body11.lr.ph
  %i.141 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc15, %for.body11.for.body11_crit_edge ]
  %arrayidx12 = getelementptr [10 x i32], ptr %intensity_value, i32 0, i32 %i.141
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12, align 4
  %14 = ptrtoint ptr %subled_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %subled_info, align 4
  %intensity = getelementptr %struct.mc_subled, ptr %15, i32 %i.141, i32 2
  %16 = ptrtoint ptr %intensity to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %intensity, align 4
  %inc15 = add nuw i32 %i.141, 1
  %17 = ptrtoint ptr %num_colors to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_colors, align 4
  %cmp10 = icmp ult i32 %inc15, %18
  br i1 %cmp10, label %for.body11.for.body11_crit_edge, label %for.body11.for.end16_crit_edge

for.body11.for.end16_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end16

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11

for.end16:                                        ; preds = %for.body11.for.end16_crit_edge, %for.cond8.preheader.for.end16_crit_edge
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %brightness, align 4
  call void @led_set_brightness(ptr noundef %1, i32 noundef %20) #7
  br label %err_out

err_out:                                          ; preds = %for.end16, %for.end.err_out_crit_edge, %for.body.err_out_crit_edge
  %ret.0 = phi i32 [ %size, %for.end16 ], [ -22, %for.end.err_out_crit_edge ], [ -22, %for.body.err_out_crit_edge ]
  call void @mutex_unlock(ptr noundef %led_access) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %intensity_value) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nrchars) #7
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_set_brightness(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multi_index_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %multi_index_attr, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_colors = getelementptr inbounds %struct.led_classdev_mc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_colors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_colors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp23.not = icmp eq i32 %3, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %subled_info = getelementptr inbounds %struct.led_classdev_mc, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %len.024 = phi i32 [ 0, %for.body.lr.ph ], [ %len.1, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %subled_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %subled_info, align 4
  %arrayidx = getelementptr %struct.mc_subled, ptr %5, i32 %i.025
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.024
  %arrayidx2 = getelementptr [10 x ptr], ptr @led_colors, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %stpcpy = tail call ptr @stpcpy(ptr %add.ptr, ptr %9) #10
  %10 = ptrtoint ptr %stpcpy to i32
  %11 = ptrtoint ptr %add.ptr to i32
  %12 = sub i32 %10, %11
  %add = add i32 %12, %len.024
  %13 = ptrtoint ptr %num_colors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_colors, align 4
  %sub = add i32 %14, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.025, i32 %sub)
  %cmp5 = icmp ult i32 %i.025, %sub
  br i1 %cmp5, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr6 = getelementptr i8, ptr %buf, i32 %add
  %15 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 8192, ptr %add.ptr6, align 1
  %add8 = add i32 %add, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %len.1 = phi i32 [ %add8, %if.then ], [ %add, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.025, 1
  %16 = ptrtoint ptr %num_colors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_colors, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %len.1, %for.inc.for.end_crit_edge ]
  %inc9 = add i32 %len.0.lcssa, 1
  %arrayidx10 = getelementptr i8, ptr %buf, i32 %len.0.lcssa
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 10, ptr %arrayidx10, align 1
  ret i32 %inc9
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !24, !26, !28, !29, !31, !33, !35, !37, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__ksymtab_led_mc_calc_color_components, !1, !"__ksymtab_led_mc_calc_color_components", i1 false, i1 false}
!1 = !{!"../drivers/leds/led-class-multicolor.c", i32 28, i32 1}
!2 = !{ptr @__ksymtab_led_classdev_multicolor_register_ext, !3, !"__ksymtab_led_classdev_multicolor_register_ext", i1 false, i1 false}
!3 = !{!"../drivers/leds/led-class-multicolor.c", i32 139, i32 1}
!4 = !{ptr @__ksymtab_led_classdev_multicolor_unregister, !5, !"__ksymtab_led_classdev_multicolor_unregister", i1 false, i1 false}
!5 = !{!"../drivers/leds/led-class-multicolor.c", i32 148, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/leds/led-class-multicolor.c", i32 162, i32 7}
!8 = !{ptr @__ksymtab_devm_led_classdev_multicolor_register_ext, !9, !"__ksymtab_devm_led_classdev_multicolor_register_ext", i1 false, i1 false}
!9 = !{!"../drivers/leds/led-class-multicolor.c", i32 179, i32 1}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/led-class-multicolor.c", i32 195, i32 2}
!12 = !{ptr @__ksymtab_devm_led_classdev_multicolor_unregister, !13, !"__ksymtab_devm_led_classdev_multicolor_unregister", i1 false, i1 false}
!13 = !{!"../drivers/leds/led-class-multicolor.c", i32 199, i32 1}
!14 = !{ptr @__UNIQUE_ID_author187, !15, !"__UNIQUE_ID_author187", i1 false, i1 false}
!15 = !{!"../drivers/leds/led-class-multicolor.c", i32 201, i32 1}
!16 = !{ptr @__UNIQUE_ID_description188, !17, !"__UNIQUE_ID_description188", i1 false, i1 false}
!17 = !{!"../drivers/leds/led-class-multicolor.c", i32 202, i32 1}
!18 = !{ptr @__UNIQUE_ID_file189, !19, !"__UNIQUE_ID_file189", i1 false, i1 false}
!19 = !{!"../drivers/leds/led-class-multicolor.c", i32 203, i32 1}
!20 = !{ptr @__UNIQUE_ID_license190, !19, !"__UNIQUE_ID_license190", i1 false, i1 false}
!21 = !{ptr @led_multicolor_groups, !22, !"led_multicolor_groups", i1 false, i1 false}
!22 = !{!"../drivers/leds/led-class-multicolor.c", i32 117, i32 1}
!23 = !{ptr @led_multicolor_group, !22, !"led_multicolor_group", i1 false, i1 false}
!24 = !{ptr @led_multicolor_attrs, !25, !"led_multicolor_attrs", i1 false, i1 false}
!25 = !{!"../drivers/leds/led-class-multicolor.c", i32 112, i32 26}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/leds/led-class-multicolor.c", i32 88, i32 8}
!28 = !{ptr @dev_attr_multi_intensity, !27, !"dev_attr_multi_intensity", i1 false, i1 false}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/leds/led-class-multicolor.c", i32 79, i32 29}
!31 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/leds/led-class-multicolor.c", i32 82, i32 30}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/leds/led-class-multicolor.c", i32 44, i32 30}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/leds/led-class-multicolor.c", i32 110, i32 8}
!37 = !{ptr @dev_attr_multi_index, !36, !"dev_attr_multi_index", i1 false, i1 false}
!38 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/leds/led-class-multicolor.c", i32 102, i32 29}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{!"auto-init"}
