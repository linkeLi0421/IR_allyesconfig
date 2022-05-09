; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_mode_object.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_mode_object.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_mode_object_find\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_mode_object_find\09\09\09\09"
module asm "\09.long\09__crc_drm_mode_object_find\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_mode_object_find:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_mode_object_find\22\09\09\09\09\09"
module asm "__kstrtabns_drm_mode_object_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_mode_object_put\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_mode_object_put\09\09\09\09"
module asm "\09.long\09__crc_drm_mode_object_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_mode_object_put:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_mode_object_put\22\09\09\09\09\09"
module asm "__kstrtabns_drm_mode_object_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_mode_object_get\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_mode_object_get\09\09\09\09"
module asm "\09.long\09__crc_drm_mode_object_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_mode_object_get:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_mode_object_get\22\09\09\09\09\09"
module asm "__kstrtabns_drm_mode_object_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_object_attach_property\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_object_attach_property\09\09\09\09"
module asm "\09.long\09__crc_drm_object_attach_property\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_object_attach_property:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_object_attach_property\22\09\09\09\09\09"
module asm "__kstrtabns_drm_object_attach_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_object_property_set_value\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_object_property_set_value\09\09\09\09"
module asm "\09.long\09__crc_drm_object_property_set_value\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_object_property_set_value:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_object_property_set_value\22\09\09\09\09\09"
module asm "__kstrtabns_drm_object_property_set_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_object_property_get_value\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_object_property_get_value\09\09\09\09"
module asm "\09.long\09__crc_drm_object_property_get_value\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_object_property_get_value:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_object_property_get_value\22\09\09\09\09\09"
module asm "__kstrtabns_drm_object_property_get_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.85 = type { i32, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_property = type { %struct.list_head, %struct.drm_mode_object, i32, [32 x i8], i32, ptr, ptr, %struct.list_head }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.drm_mode_obj_get_properties = type { i64, i64, i32, i32, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_mode_obj_set_property = type { i64, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/drm_mode_object.c\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_drm_mode_object_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_mode_object_find = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_mode_object_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_mode_object_find to i32), ptr @__kstrtab_drm_mode_object_find, ptr @__kstrtabns_drm_mode_object_find }, section "___ksymtab+drm_mode_object_find", align 4
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"OBJ ID: %d (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_drm_mode_object_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_mode_object_put = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_mode_object_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_mode_object_put to i32), ptr @__kstrtab_drm_mode_object_put, ptr @__kstrtabns_drm_mode_object_put }, section "___ksymtab+drm_mode_object_put", align 4
@__kstrtab_drm_mode_object_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_mode_object_get = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_mode_object_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_mode_object_get to i32), ptr @__kstrtab_drm_mode_object_get, ptr @__kstrtabns_drm_mode_object_get }, section "___ksymtab+drm_mode_object_get", align 4
@.str.2 = internal constant { [153 x i8], [39 x i8] } { [153 x i8] c"Failed to attach object property (type: 0x%x). Please increase DRM_OBJECT_MAX_PROPERTY by 1 for each time you see this message on the same object type.\0A\00", [39 x i8] zeroinitializer }, align 32
@__kstrtab_drm_object_attach_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_object_attach_property = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_object_attach_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_object_attach_property to i32), ptr @__kstrtab_drm_object_attach_property, ptr @__kstrtabns_drm_object_attach_property }, section "___ksymtab+drm_object_attach_property", align 4
@__kstrtab_drm_object_property_set_value = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_object_property_set_value = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_object_property_set_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_object_property_set_value to i32), ptr @__kstrtab_drm_object_property_set_value, ptr @__kstrtabns_drm_object_property_set_value }, section "___ksymtab+drm_object_property_set_value", align 4
@__kstrtab_drm_object_property_get_value = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_object_property_get_value = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_object_property_get_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_object_property_get_value to i32), ptr @__kstrtab_drm_object_property_get_value, ptr @__kstrtabns_drm_object_property_get_value }, section "___ksymtab+drm_object_property_get_value", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 3233857728, i64 3435973836, i64 4008636142]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 3233857728, i64 3435973836, i64 4008636142]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 3233857728, i64 3435973836, i64 4008636142]
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 45, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 195, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [37 x i8] c"../drivers/gpu/drm/drm_mode_object.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 249, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_drm_mode_object_find, ptr @__ksymtab_drm_mode_object_get, ptr @__ksymtab_drm_mode_object_put, ptr @__ksymtab_drm_object_attach_property, ptr @__ksymtab_drm_object_property_get_value, ptr @__ksymtab_drm_object_property_set_value, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 153, i32 192, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__drm_mode_object_add(ptr noundef %dev, ptr noundef %obj, i32 noundef %obj_type, i1 noundef zeroext %register_obj, ptr noundef %obj_free_cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %registered = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %registered, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp ne i8 %5, 0
  %tobool2.not = icmp eq ptr %obj_free_cb, null
  %spec.select = and i1 %tobool2.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %land.lhs.true.if.end_crit_edge, !prof !29

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %idr_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 3
  tail call void @mutex_lock_nested(ptr noundef %idr_mutex, i32 noundef 0) #8
  %object_idr = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 4
  %spec.select51 = select i1 %register_obj, ptr %obj, ptr null
  %call = tail call i32 @idr_alloc(ptr noundef %object_idr, ptr noundef %spec.select51, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then25, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then25:                                        ; preds = %if.end
  %6 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %obj, align 4
  %type = getelementptr inbounds %struct.drm_mode_object, ptr %obj, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %obj_type, ptr %type, align 4
  %tobool26.not = icmp eq ptr %obj_free_cb, null
  br i1 %tobool26.not, label %if.then25.if.end29_crit_edge, label %if.then27

if.then25.if.end29_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %free_cb = getelementptr inbounds %struct.drm_mode_object, ptr %obj, i32 0, i32 4
  %8 = ptrtoint ptr %free_cb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %obj_free_cb, ptr %free_cb, align 4
  %refcount = getelementptr inbounds %struct.drm_mode_object, ptr %obj, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %9 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %refcount, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then25.if.end29_crit_edge, %if.end.if.end29_crit_edge
  tail call void @mutex_unlock(ptr noundef %idr_mutex) #8
  %10 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_mode_object_add(ptr noundef %dev, ptr noundef %obj, i32 noundef %obj_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %registered.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %registered.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %registered.i, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i.not = icmp eq i8 %5, 0
  br i1 %tobool1.not.i.not, label %land.lhs.true.i.if.end.i_crit_edge, label %do.end.i, !prof !30

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %idr_mutex.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 3
  tail call void @mutex_lock_nested(ptr noundef %idr_mutex.i, i32 noundef 0) #8
  %object_idr.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 4
  %call.i = tail call i32 @idr_alloc(ptr noundef %object_idr.i, ptr noundef %obj, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then25.i, label %if.end.i.__drm_mode_object_add.exit_crit_edge

if.end.i.__drm_mode_object_add.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__drm_mode_object_add.exit

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i, ptr %obj, align 4
  %type.i = getelementptr inbounds %struct.drm_mode_object, ptr %obj, i32 0, i32 1
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %obj_type, ptr %type.i, align 4
  br label %__drm_mode_object_add.exit

__drm_mode_object_add.exit:                       ; preds = %if.then25.i, %if.end.i.__drm_mode_object_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %idr_mutex.i) #8
  %8 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #8
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_mode_object_register(ptr noundef %dev, ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idr_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 3
  tail call void @mutex_lock_nested(ptr noundef %idr_mutex, i32 noundef 0) #8
  %object_idr = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 4
  %0 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %obj, align 4
  %call = tail call ptr @idr_replace(ptr noundef %object_idr, ptr noundef %obj, i32 noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %idr_mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_mode_object_unregister(ptr noundef %dev, ptr nocapture noundef %object) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %registered = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %registered, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.rhs

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %land.lhs.true
  %free_cb = getelementptr inbounds %struct.drm_mode_object, ptr %object, i32 0, i32 4
  %6 = ptrtoint ptr %free_cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %free_cb, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !29

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 107, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %idr_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 3
  tail call void @mutex_lock_nested(ptr noundef %idr_mutex, i32 noundef 0) #8
  %8 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %object, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool23.not = icmp eq i32 %9, 0
  br i1 %tobool23.not, label %if.end.if.end28_crit_edge, label %if.then24

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %object_idr = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 4
  %call = tail call ptr @idr_remove(ptr noundef %object_idr, i32 noundef %9) #8
  %10 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %object, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end.if.end28_crit_edge
  tail call void @mutex_unlock(ptr noundef %idr_mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @drm_mode_object_lease_required(i32 noundef %type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %sw.default [
    i32 -858993460, label %entry.return_crit_edge
    i32 -1061109568, label %entry.return_crit_edge1
    i32 -286331154, label %entry.return_crit_edge2
  ]

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__drm_mode_object_find(ptr noundef %dev, ptr noundef %file_priv, i32 noundef %id, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idr_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 3
  tail call void @mutex_lock_nested(ptr noundef %idr_mutex, i32 noundef 0) #8
  %object_idr = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 4
  %call = tail call ptr @idr_find(ptr noundef %object_idr, i32 noundef %id) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.lhs.true

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp eq i32 %type, 0
  br i1 %cmp.not, label %land.lhs.true.land.lhs.true6_crit_edge, label %land.lhs.true2

land.lhs.true.land.lhs.true6_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true6

land.lhs.true2:                                   ; preds = %land.lhs.true
  %type3 = getelementptr inbounds %struct.drm_mode_object, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %type3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %type)
  %cmp4.not = icmp eq i32 %1, %type
  br i1 %cmp4.not, label %land.lhs.true2.land.lhs.true6_crit_edge, label %land.lhs.true2.if.end28_crit_edge

land.lhs.true2.if.end28_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true2.land.lhs.true6_crit_edge:          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true2.land.lhs.true6_crit_edge, %land.lhs.true.land.lhs.true6_crit_edge
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %id)
  %cmp8.not = icmp eq i32 %3, %id
  br i1 %cmp8.not, label %land.lhs.true12, label %land.lhs.true6.if.end28_crit_edge

land.lhs.true6.if.end28_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true12:                                  ; preds = %land.lhs.true6
  %type13 = getelementptr inbounds %struct.drm_mode_object, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %type13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type13, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %5, label %land.lhs.true12.land.lhs.true21_crit_edge [
    i32 -858993460, label %land.lhs.true12.land.lhs.true15_crit_edge
    i32 -1061109568, label %land.lhs.true12.land.lhs.true15_crit_edge56
    i32 -286331154, label %land.lhs.true12.land.lhs.true15_crit_edge57
  ]

land.lhs.true12.land.lhs.true15_crit_edge57:      ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true15

land.lhs.true12.land.lhs.true15_crit_edge56:      ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true15

land.lhs.true12.land.lhs.true15_crit_edge:        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true15

land.lhs.true12.land.lhs.true21_crit_edge:        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true21

land.lhs.true15:                                  ; preds = %land.lhs.true12.land.lhs.true15_crit_edge, %land.lhs.true12.land.lhs.true15_crit_edge56, %land.lhs.true12.land.lhs.true15_crit_edge57
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 4
  %call17 = tail call zeroext i1 @_drm_lease_held(ptr noundef %file_priv, i32 noundef %8) #8
  br i1 %call17, label %land.lhs.true15.land.lhs.true21_crit_edge, label %land.lhs.true15.if.end28_crit_edge

land.lhs.true15.if.end28_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true15.land.lhs.true21_crit_edge:        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true15.land.lhs.true21_crit_edge, %land.lhs.true12.land.lhs.true21_crit_edge
  %free_cb = getelementptr inbounds %struct.drm_mode_object, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %free_cb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %free_cb, align 4
  %tobool22.not = icmp eq ptr %10, null
  br i1 %tobool22.not, label %land.lhs.true21.if.end28_crit_edge, label %if.then23

land.lhs.true21.if.end28_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then23:                                        ; preds = %land.lhs.true21
  %refcount = getelementptr inbounds %struct.drm_mode_object, ptr %call, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #8
  %11 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then23
  %13 = phi i32 [ %12, %if.then23 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %14 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %13, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #8
  %15 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %17 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %16, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #8, !srcloc !31
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %16
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !30

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %18 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %19, 1
  %20 = or i32 %add5.i.i.i.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !30

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #8
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %21 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool12.i.i.i.i.not = icmp eq i32 %22, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  %spec.select46 = select i1 %tobool12.i.i.i.i.not, ptr null, ptr %call
  br label %if.end28

if.end28:                                         ; preds = %kref_get_unless_zero.exit, %land.lhs.true21.if.end28_crit_edge, %land.lhs.true15.if.end28_crit_edge, %land.lhs.true6.if.end28_crit_edge, %land.lhs.true2.if.end28_crit_edge, %entry.if.end28_crit_edge
  %obj.3 = phi ptr [ %call, %land.lhs.true21.if.end28_crit_edge ], [ %spec.select46, %kref_get_unless_zero.exit ], [ null, %land.lhs.true15.if.end28_crit_edge ], [ null, %land.lhs.true6.if.end28_crit_edge ], [ null, %land.lhs.true2.if.end28_crit_edge ], [ null, %entry.if.end28_crit_edge ]
  call void @mutex_unlock(ptr noundef %idr_mutex) #8
  ret ptr %obj.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @_drm_lease_held(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drm_mode_object_find(ptr noundef %dev, ptr noundef %file_priv, i32 noundef %id, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__drm_mode_object_find(ptr noundef %dev, ptr noundef %file_priv, i32 noundef %id, i32 noundef %type)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_mode_object_put(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %free_cb = getelementptr inbounds %struct.drm_mode_object, ptr %obj, i32 0, i32 4
  %0 = ptrtoint ptr %free_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_cb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj, align 4
  %refcount = getelementptr inbounds %struct.drm_mode_object, ptr %obj, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #8
  %4 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %refcount, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %3, i32 noundef %5) #8
  %6 = ptrtoint ptr %free_cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %free_cb, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !32
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !33
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !30

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !34
  tail call void %7(ptr noundef %refcount) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_mode_object_get(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %free_cb = getelementptr inbounds %struct.drm_mode_object, ptr %obj, i32 0, i32 4
  %0 = ptrtoint ptr %free_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_cb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj, align 4
  %refcount = getelementptr inbounds %struct.drm_mode_object, ptr %obj, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #8
  %4 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %refcount, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %3, i32 noundef %5) #8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !35
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !29

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !30

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #8
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_object_attach_property(ptr nocapture noundef readonly %obj, ptr noundef %property, i64 noundef %init_val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %properties = getelementptr inbounds %struct.drm_mode_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %properties, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %dev2 = getelementptr inbounds %struct.drm_property, ptr %property, i32 0, i32 6
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %type = getelementptr inbounds %struct.drm_mode_object, ptr %obj, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1061109568, i32 %7)
  %cmp = icmp eq i32 %7, -1061109568
  %driver = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %land.rhs, label %if.then.if.end61_crit_edge

if.then.if.end61_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

land.rhs:                                         ; preds = %if.then
  %registration_state = getelementptr i8, ptr %obj, i32 132
  %12 = ptrtoint ptr %registration_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %registration_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp3 = icmp eq i32 %13, 1
  br i1 %cmp3, label %land.rhs.if.end61.sink.split_crit_edge, label %land.rhs.if.end61_crit_edge, !prof !29

land.rhs.if.end61_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

land.rhs.if.end61.sink.split_crit_edge:           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.sink.split

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %land.rhs29, label %if.else.if.end61_crit_edge

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

land.rhs29:                                       ; preds = %if.else
  %registered = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %registered, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool30.not = icmp eq i8 %15, 0
  br i1 %tobool30.not, label %land.rhs29.if.end61_crit_edge, label %land.rhs29.if.end61.sink.split_crit_edge, !prof !30

land.rhs29.if.end61.sink.split_crit_edge:         ; preds = %land.rhs29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.sink.split

land.rhs29.if.end61_crit_edge:                    ; preds = %land.rhs29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.end61.sink.split:                              ; preds = %land.rhs29.if.end61.sink.split_crit_edge, %land.rhs.if.end61.sink.split_crit_edge
  %.sink = phi i32 [ 243, %land.rhs.if.end61.sink.split_crit_edge ], [ 245, %land.rhs29.if.end61.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #8
  br label %if.end61

if.end61:                                         ; preds = %if.end61.sink.split, %land.rhs29.if.end61_crit_edge, %if.else.if.end61_crit_edge, %land.rhs.if.end61_crit_edge, %if.then.if.end61_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %3)
  %cmp62 = icmp eq i32 %3, 24
  br i1 %cmp62, label %do.end76, label %if.end91

do.end76:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %17) #8
  br label %cleanup

if.end91:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %properties, align 4
  %arrayidx = getelementptr %struct.drm_object_properties, ptr %19, i32 0, i32 1, i32 %3
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %property, ptr %arrayidx, align 4
  %21 = load ptr, ptr %properties, align 4
  %arrayidx95 = getelementptr %struct.drm_object_properties, ptr %21, i32 0, i32 2, i32 %3
  %22 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %init_val, ptr %arrayidx95, align 8
  %23 = load ptr, ptr %properties, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %inc = add i32 %25, 1
  store i32 %inc, ptr %23, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %do.end76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_object_property_set_value(ptr nocapture noundef readonly %obj, ptr noundef readonly %property, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_property, ptr %property, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver.i.i.i, align 4
  %driver_features.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features.i.i.i, align 4
  %driver_features1.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %driver_features1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_features1.i.i.i, align 4
  %and.i.i.i = and i32 %5, 16
  %and2.i.i.i = and i32 %and.i.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and2.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and2.i.i.i, 16
  br i1 %cmp.i.i.i, label %entry.land.rhs_crit_edge, label %lor.rhs.i

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

lor.rhs.i:                                        ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 27
  %8 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %lor.rhs.i.if.end_crit_edge, label %drm_drv_uses_atomic_modeset.exit

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

drm_drv_uses_atomic_modeset.exit:                 ; preds = %lor.rhs.i
  %atomic_commit.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %atomic_commit.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %atomic_commit.i, align 4
  %cmp.i.not = icmp eq ptr %11, null
  br i1 %cmp.i.not, label %drm_drv_uses_atomic_modeset.exit.if.end_crit_edge, label %drm_drv_uses_atomic_modeset.exit.land.rhs_crit_edge

drm_drv_uses_atomic_modeset.exit.land.rhs_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

drm_drv_uses_atomic_modeset.exit.if.end_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %drm_drv_uses_atomic_modeset.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %flags = getelementptr inbounds %struct.drm_property, ptr %property, i32 0, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !29

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 287, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %drm_drv_uses_atomic_modeset.exit.if.end_crit_edge, %lor.rhs.i.if.end_crit_edge
  %properties = getelementptr inbounds %struct.drm_mode_object, ptr %obj, i32 0, i32 2
  %14 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %properties, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp39 = icmp sgt i32 %17, 0
  br i1 %cmp39, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.040 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.drm_object_properties, ptr %15, i32 0, i32 1, i32 %i.040
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %cmp23 = icmp eq ptr %19, %property
  br i1 %cmp23, label %if.then24, label %for.inc

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx26 = getelementptr %struct.drm_object_properties, ptr %15, i32 0, i32 2, i32 %i.040
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %val, ptr %arrayidx26, align 8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, %17
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then24, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then24 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_object_property_get_value(ptr noundef %obj, ptr noundef %property, ptr noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_property, ptr %property, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver.i.i.i, align 4
  %driver_features.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features.i.i.i, align 4
  %driver_features1.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %driver_features1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_features1.i.i.i, align 4
  %and.i.i.i = and i32 %5, 16
  %and2.i.i.i = and i32 %and.i.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and2.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and2.i.i.i, 16
  br i1 %cmp.i.i.i, label %entry.do.end_crit_edge, label %lor.rhs.i, !prof !36

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.rhs.i:                                        ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 27
  %8 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %lor.rhs.i.if.end_crit_edge, label %drm_drv_uses_atomic_modeset.exit

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

drm_drv_uses_atomic_modeset.exit:                 ; preds = %lor.rhs.i
  %atomic_commit.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %atomic_commit.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %atomic_commit.i, align 4
  %cmp.i.not = icmp eq ptr %11, null
  br i1 %cmp.i.not, label %drm_drv_uses_atomic_modeset.exit.if.end_crit_edge, label %drm_drv_uses_atomic_modeset.exit.do.end_crit_edge, !prof !30

drm_drv_uses_atomic_modeset.exit.do.end_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

drm_drv_uses_atomic_modeset.exit.if.end_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %drm_drv_uses_atomic_modeset.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 345, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %drm_drv_uses_atomic_modeset.exit.if.end_crit_edge, %lor.rhs.i.if.end_crit_edge
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %driver.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %driver.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver.i.i.i.i, align 4
  %driver_features.i.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %15, i32 0, i32 24
  %16 = ptrtoint ptr %driver_features.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %driver_features.i.i.i.i, align 4
  %driver_features1.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 10
  %18 = ptrtoint ptr %driver_features1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %driver_features1.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %17, 16
  %and2.i.i.i.i = and i32 %and.i.i.i.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and2.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 16
  br i1 %cmp.i.i.i.i, label %if.end.land.lhs.true.i_crit_edge, label %lor.rhs.i.i

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

lor.rhs.i.i:                                      ; preds = %if.end
  %funcs.i.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 30, i32 27
  %20 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %lor.rhs.i.i.if.end.i_crit_edge, label %drm_drv_uses_atomic_modeset.exit.i

lor.rhs.i.i.if.end.i_crit_edge:                   ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

drm_drv_uses_atomic_modeset.exit.i:               ; preds = %lor.rhs.i.i
  %atomic_commit.i.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %atomic_commit.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %atomic_commit.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %23, null
  br i1 %cmp.i.not.i, label %drm_drv_uses_atomic_modeset.exit.i.if.end.i_crit_edge, label %drm_drv_uses_atomic_modeset.exit.i.land.lhs.true.i_crit_edge

drm_drv_uses_atomic_modeset.exit.i.land.lhs.true.i_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

drm_drv_uses_atomic_modeset.exit.i.if.end.i_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %drm_drv_uses_atomic_modeset.exit.i.land.lhs.true.i_crit_edge, %if.end.land.lhs.true.i_crit_edge
  %flags.i = getelementptr inbounds %struct.drm_property, ptr %property, i32 0, i32 2
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i22 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i22, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 @drm_atomic_get_property(ptr noundef %obj, ptr noundef %property, ptr noundef %val) #8
  br label %__drm_object_property_get_value.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %drm_drv_uses_atomic_modeset.exit.i.if.end.i_crit_edge, %lor.rhs.i.i.if.end.i_crit_edge
  %properties.i = getelementptr inbounds %struct.drm_mode_object, ptr %obj, i32 0, i32 2
  %26 = ptrtoint ptr %properties.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %properties.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp22.i = icmp sgt i32 %29, 0
  br i1 %cmp22.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.__drm_object_property_get_value.exit_crit_edge

if.end.i.__drm_object_property_get_value.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__drm_object_property_get_value.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.drm_object_properties, ptr %27, i32 0, i32 1, i32 %i.023.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %cmp4.i = icmp eq ptr %31, %property
  br i1 %cmp4.i, label %if.then5.i, label %for.inc.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7.i = getelementptr %struct.drm_object_properties, ptr %27, i32 0, i32 2, i32 %i.023.i
  %32 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx7.i, align 8
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %val, align 8
  br label %__drm_object_property_get_value.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %29
  br i1 %exitcond.not.i, label %for.inc.i.__drm_object_property_get_value.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.__drm_object_property_get_value.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__drm_object_property_get_value.exit

__drm_object_property_get_value.exit:             ; preds = %for.inc.i.__drm_object_property_get_value.exit_crit_edge, %if.then5.i, %if.end.i.__drm_object_property_get_value.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ 0, %if.then5.i ], [ %call1.i, %if.then.i ], [ -22, %if.end.i.__drm_object_property_get_value.exit_crit_edge ], [ -22, %for.inc.i.__drm_object_property_get_value.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_mode_object_get_properties(ptr noundef %obj, i1 noundef zeroext %atomic, ptr noundef %prop_ptr, ptr noundef %prop_values, ptr nocapture noundef %arg_count_props) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %properties = getelementptr inbounds %struct.drm_mode_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %properties, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp69 = icmp sgt i32 %3, 0
  br i1 %cmp69, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %4 = phi ptr [ %44, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %i.072 = phi i32 [ %inc36, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %count.070 = phi i32 [ %count.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.drm_object_properties, ptr %4, i32 0, i32 1, i32 %i.072
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %val, align 8, !annotation !37
  %flags = getelementptr inbounds %struct.drm_property, ptr %6, i32 0, i32 2
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not = icmp sgt i32 %9, -1
  %brmerge = or i1 %tobool.not, %atomic
  br i1 %brmerge, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %10 = ptrtoint ptr %arg_count_props to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arg_count_props, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %count.070)
  %cmp5 = icmp ugt i32 %11, %count.070
  br i1 %cmp5, label %if.then6, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then6:                                         ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.drm_property, ptr %6, i32 0, i32 6
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %driver.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %driver.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver.i.i.i.i, align 4
  %driver_features.i.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %15, i32 0, i32 24
  %16 = ptrtoint ptr %driver_features.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %driver_features.i.i.i.i, align 4
  %driver_features1.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 10
  %18 = ptrtoint ptr %driver_features1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %driver_features1.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %17, 16
  %and2.i.i.i.i = and i32 %and.i.i.i.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and2.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 16
  br i1 %cmp.i.i.i.i, label %land.lhs.true.i, label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %if.then6
  %funcs.i.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 30, i32 27
  %20 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %lor.rhs.i.i.if.end.i_crit_edge, label %drm_drv_uses_atomic_modeset.exit.i

lor.rhs.i.i.if.end.i_crit_edge:                   ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

drm_drv_uses_atomic_modeset.exit.i:               ; preds = %lor.rhs.i.i
  %atomic_commit.i.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %atomic_commit.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %atomic_commit.i.i, align 4
  %cmp.i.not.i = icmp ne ptr %23, null
  %and.i56 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool.not.i = icmp eq i32 %and.i56, 0
  %or.cond = select i1 %cmp.i.not.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond, label %drm_drv_uses_atomic_modeset.exit.i.__drm_object_property_get_value.exit_crit_edge, label %drm_drv_uses_atomic_modeset.exit.i.if.end.i_crit_edge

drm_drv_uses_atomic_modeset.exit.i.if.end.i_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

drm_drv_uses_atomic_modeset.exit.i.__drm_object_property_get_value.exit_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__drm_object_property_get_value.exit

land.lhs.true.i:                                  ; preds = %if.then6
  %and.i56.old = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56.old)
  %tobool.not.i.old = icmp eq i32 %and.i56.old, 0
  br i1 %tobool.not.i.old, label %land.lhs.true.i.__drm_object_property_get_value.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i.__drm_object_property_get_value.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__drm_object_property_get_value.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %drm_drv_uses_atomic_modeset.exit.i.if.end.i_crit_edge, %lor.rhs.i.i.if.end.i_crit_edge
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp22.i = icmp sgt i32 %25, 0
  br i1 %cmp22.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.cleanup.thread_crit_edge

if.end.i.cleanup.thread_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.drm_object_properties, ptr %4, i32 0, i32 1, i32 %i.023.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %cmp4.i = icmp eq ptr %27, %6
  br i1 %cmp4.i, label %__drm_object_property_get_value.exit.thread59, label %for.inc.i

__drm_object_property_get_value.exit.thread59:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7.i = getelementptr %struct.drm_object_properties, ptr %4, i32 0, i32 2, i32 %i.023.i
  %28 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx7.i, align 8
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %val, align 8
  br label %if.end9

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %25
  br i1 %exitcond.not.i, label %for.inc.i.cleanup.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup.thread_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

__drm_object_property_get_value.exit:             ; preds = %land.lhs.true.i.__drm_object_property_get_value.exit_crit_edge, %drm_drv_uses_atomic_modeset.exit.i.__drm_object_property_get_value.exit_crit_edge
  %call1.i = call i32 @drm_atomic_get_property(ptr noundef %obj, ptr noundef %6, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool7.not = icmp eq i32 %call1.i, 0
  br i1 %tobool7.not, label %__drm_object_property_get_value.exit.if.end9_crit_edge, label %__drm_object_property_get_value.exit.cleanup.thread_crit_edge

__drm_object_property_get_value.exit.cleanup.thread_crit_edge: ; preds = %__drm_object_property_get_value.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

__drm_object_property_get_value.exit.if.end9_crit_edge: ; preds = %__drm_object_property_get_value.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %__drm_object_property_get_value.exit.if.end9_crit_edge, %__drm_object_property_get_value.exit.thread59
  %add.ptr = getelementptr i32, ptr %prop_ptr, i32 %count.070
  %base = getelementptr inbounds %struct.drm_property, ptr %6, i32 0, i32 1
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base, align 4
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 371) #8
  %33 = call i32 @llvm.read_register.i32(metadata !18) #8
  %and.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 4
  %35 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !38
  %and.i = and i32 %35, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  %36 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr, i32 %32, i32 -1226833921) #8, !srcloc !41
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #8, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool12.not = icmp eq i32 %36, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup.thread_crit_edge

if.end9.cleanup.thread_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end14:                                         ; preds = %if.end9
  %add.ptr18 = getelementptr i64, ptr %prop_values, i32 %count.070
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %val, align 8
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 374) #8
  %39 = call i32 @llvm.read_register.i32(metadata !18) #8
  %and.i.i.i52 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i52 to ptr
  %cpu_domain.i.i53 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 4
  %41 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i53) #6, !srcloc !38
  %and.i54 = and i32 %41, -13
  %or.i55 = or i32 %and.i54, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i55) #8, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  %42 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr18, i64 %38, i32 -1226833921) #8, !srcloc !42
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #8, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool31.not = icmp eq i32 %42, 0
  br i1 %tobool31.not, label %if.end14.if.end34_crit_edge, label %if.end14.cleanup.thread_crit_edge

if.end14.cleanup.thread_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end14.if.end34_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.end34:                                         ; preds = %if.end14.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %inc = add i32 %count.070, 1
  br label %for.inc

cleanup.thread:                                   ; preds = %if.end14.cleanup.thread_crit_edge, %if.end9.cleanup.thread_crit_edge, %__drm_object_property_get_value.exit.cleanup.thread_crit_edge, %for.inc.i.cleanup.thread_crit_edge, %if.end.i.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ -22, %for.inc.i.cleanup.thread_crit_edge ], [ -22, %if.end.i.cleanup.thread_crit_edge ], [ %call1.i, %__drm_object_property_get_value.exit.cleanup.thread_crit_edge ], [ -14, %if.end9.cleanup.thread_crit_edge ], [ -14, %if.end14.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #8
  br label %cleanup37

for.inc:                                          ; preds = %if.end34, %for.body.for.inc_crit_edge
  %count.1 = phi i32 [ %inc, %if.end34 ], [ %count.070, %for.body.for.inc_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #8
  %inc36 = add nuw nsw i32 %i.072, 1
  %43 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %properties, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %cmp = icmp slt i32 %inc36, %46
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %count.1, %for.inc.for.end_crit_edge ]
  %47 = ptrtoint ptr %arg_count_props to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %count.0.lcssa, ptr %arg_count_props, align 4
  br label %cleanup37

cleanup37:                                        ; preds = %for.end, %cleanup.thread
  %retval.2 = phi i32 [ 0, %for.end ], [ %retval.1.ph, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_mode_obj_get_properties_ioctl(ptr noundef %dev, ptr nocapture noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.drm_modeset_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %ctx) #8
  %0 = call ptr @memset(ptr %ctx, i32 255, i32 84)
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %1 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %2, i32 0, i32 24
  %3 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %5 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %6, %4
  %and2.i.i = and i32 %and.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2.i.i.i = and i32 %and.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %cmp.i.i.i.not = icmp eq i32 %and2.i.i.i, 0
  br i1 %cmp.i.i.i.not, label %lor.rhs.i, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

lor.rhs.i:                                        ; preds = %if.end
  %funcs.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 27
  %7 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %lor.rhs.i.if.then2_crit_edge, label %drm_drv_uses_atomic_modeset.exit

lor.rhs.i.if.then2_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

drm_drv_uses_atomic_modeset.exit:                 ; preds = %lor.rhs.i
  %atomic_commit.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %atomic_commit.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %atomic_commit.i, align 4
  %cmp.i.not = icmp eq ptr %10, null
  br i1 %cmp.i.not, label %drm_drv_uses_atomic_modeset.exit.if.then2_crit_edge, label %drm_drv_uses_atomic_modeset.exit.if.end3_crit_edge

drm_drv_uses_atomic_modeset.exit.if.end3_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

drm_drv_uses_atomic_modeset.exit.if.then2_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.then2:                                         ; preds = %drm_drv_uses_atomic_modeset.exit.if.then2_crit_edge, %lor.rhs.i.if.then2_crit_edge
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %mode_config, i32 noundef 0) #8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %drm_drv_uses_atomic_modeset.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  call void @drm_modeset_acquire_init(ptr noundef nonnull %ctx, i32 noundef 0) #8
  %obj_id = getelementptr inbounds %struct.drm_mode_obj_get_properties, ptr %data, i32 0, i32 3
  %obj_type = getelementptr inbounds %struct.drm_mode_obj_get_properties, ptr %data, i32 0, i32 4
  %atomic = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 3
  %prop_values_ptr = getelementptr inbounds %struct.drm_mode_obj_get_properties, ptr %data, i32 0, i32 1
  %count_props = getelementptr inbounds %struct.drm_mode_obj_get_properties, ptr %data, i32 0, i32 2
  br label %modeset_lock_retry

modeset_lock_retry:                               ; preds = %if.then18.modeset_lock_retry_crit_edge, %if.end3
  %call4 = call i32 @drm_modeset_lock_all_ctx(ptr noundef %dev, ptr noundef nonnull %ctx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %modeset_lock_retry.modeset_lock_fail_crit_edge

modeset_lock_retry.modeset_lock_fail_crit_edge:   ; preds = %modeset_lock_retry
  call void @__sanitizer_cov_trace_pc() #10
  br label %modeset_lock_fail

if.end6:                                          ; preds = %modeset_lock_retry
  %11 = ptrtoint ptr %obj_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %obj_id, align 4
  %13 = ptrtoint ptr %obj_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %obj_type, align 8
  %call.i = call ptr @__drm_mode_object_find(ptr noundef %dev, ptr noundef %file_priv, i32 noundef %12, i32 noundef %14) #8
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end6.if.end23_crit_edge, label %if.end10

if.end6.if.end23_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.end10:                                         ; preds = %if.end6
  %properties = getelementptr inbounds %struct.drm_mode_object, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %properties, align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %if.end10.out_unref_crit_edge, label %if.end13

if.end10.out_unref_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unref

if.end13:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %atomic to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %atomic, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool14 = icmp ne i8 %18, 0
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %data, align 8
  %conv = trunc i64 %20 to i32
  %21 = inttoptr i32 %conv to ptr
  %22 = ptrtoint ptr %prop_values_ptr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %prop_values_ptr, align 8
  %conv15 = trunc i64 %23 to i32
  %24 = inttoptr i32 %conv15 to ptr
  %call16 = call i32 @drm_mode_object_get_properties(ptr noundef nonnull %call.i, i1 noundef zeroext %tobool14, ptr noundef %21, ptr noundef %24, ptr noundef %count_props)
  br label %out_unref

out_unref:                                        ; preds = %if.end13, %if.end10.out_unref_crit_edge
  %ret.0 = phi i32 [ %call16, %if.end13 ], [ -22, %if.end10.out_unref_crit_edge ]
  call void @drm_mode_object_put(ptr noundef nonnull %call.i)
  br label %modeset_lock_fail

modeset_lock_fail:                                ; preds = %out_unref, %modeset_lock_retry.modeset_lock_fail_crit_edge
  %ret.1 = phi i32 [ %call4, %modeset_lock_retry.modeset_lock_fail_crit_edge ], [ %ret.0, %out_unref ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %ret.1)
  %cmp = icmp eq i32 %ret.1, -35
  br i1 %cmp, label %if.then18, label %modeset_lock_fail.if.end23_crit_edge

modeset_lock_fail.if.end23_crit_edge:             ; preds = %modeset_lock_fail
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then18:                                        ; preds = %modeset_lock_fail
  %call19 = call i32 @drm_modeset_backoff(ptr noundef nonnull %ctx) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.modeset_lock_retry_crit_edge, label %if.then18.if.end23_crit_edge

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then18.modeset_lock_retry_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %modeset_lock_retry

if.end23:                                         ; preds = %if.then18.if.end23_crit_edge, %modeset_lock_fail.if.end23_crit_edge, %if.end6.if.end23_crit_edge
  %ret.2 = phi i32 [ %call19, %if.then18.if.end23_crit_edge ], [ %ret.1, %modeset_lock_fail.if.end23_crit_edge ], [ -2, %if.end6.if.end23_crit_edge ]
  call void @drm_modeset_drop_locks(ptr noundef nonnull %ctx) #8
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %ctx) #8
  %25 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i.i50 = getelementptr inbounds %struct.drm_driver, ptr %26, i32 0, i32 24
  %27 = ptrtoint ptr %driver_features.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %driver_features.i.i.i50, align 4
  %29 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i.i52 = and i32 %28, 16
  %and2.i.i.i53 = and i32 %and.i.i.i52, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and2.i.i.i53)
  %cmp.i.i.i54 = icmp eq i32 %and2.i.i.i53, 16
  br i1 %cmp.i.i.i54, label %if.end23.cleanup_crit_edge, label %lor.rhs.i57

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs.i57:                                      ; preds = %if.end23
  %funcs.i55 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 27
  %31 = ptrtoint ptr %funcs.i55 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %funcs.i55, align 4
  %tobool.not.i56 = icmp eq ptr %32, null
  br i1 %tobool.not.i56, label %lor.rhs.i57.if.then25_crit_edge, label %drm_drv_uses_atomic_modeset.exit61

lor.rhs.i57.if.then25_crit_edge:                  ; preds = %lor.rhs.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

drm_drv_uses_atomic_modeset.exit61:               ; preds = %lor.rhs.i57
  %atomic_commit.i58 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %atomic_commit.i58 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %atomic_commit.i58, align 4
  %cmp.i59.not = icmp eq ptr %34, null
  br i1 %cmp.i59.not, label %drm_drv_uses_atomic_modeset.exit61.if.then25_crit_edge, label %drm_drv_uses_atomic_modeset.exit61.cleanup_crit_edge

drm_drv_uses_atomic_modeset.exit61.cleanup_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

drm_drv_uses_atomic_modeset.exit61.if.then25_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

if.then25:                                        ; preds = %drm_drv_uses_atomic_modeset.exit61.if.then25_crit_edge, %lor.rhs.i57.if.then25_crit_edge
  %mode_config26 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30
  call void @mutex_unlock(ptr noundef %mode_config26) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %drm_drv_uses_atomic_modeset.exit61.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %ret.2, %if.then25 ], [ %ret.2, %drm_drv_uses_atomic_modeset.exit61.cleanup_crit_edge ], [ %ret.2, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctx) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock_all_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drm_mode_obj_find_prop_id(ptr nocapture noundef readonly %obj, i32 noundef %prop_id) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %properties = getelementptr inbounds %struct.drm_mode_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %properties, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12 = icmp sgt i32 %3, 0
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.drm_object_properties, ptr %1, i32 0, i32 1, i32 %i.013
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr inbounds %struct.drm_property, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %prop_id)
  %cmp3 = icmp eq i32 %7, %prop_id
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ], [ %5, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_mode_obj_set_property_ioctl(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %ref.i = alloca ptr, align 4
  %ctx.i39 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %ctx.i = alloca %struct.drm_modeset_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %3, 2
  %and2.i.i = and i32 %and.i.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and2.i.i)
  %cmp.i.i = icmp eq i32 %and2.i.i, 2
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %obj_id = getelementptr inbounds %struct.drm_mode_obj_set_property, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %obj_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %obj_id, align 4
  %obj_type = getelementptr inbounds %struct.drm_mode_obj_set_property, ptr %data, i32 0, i32 3
  %8 = ptrtoint ptr %obj_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %obj_type, align 8
  %call.i = tail call ptr @__drm_mode_object_find(ptr noundef %dev, ptr noundef %file_priv, i32 noundef %7, i32 noundef %9) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %properties = getelementptr inbounds %struct.drm_mode_object, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %properties, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.end3.out_unref_crit_edge, label %if.end6

if.end3.out_unref_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unref

if.end6:                                          ; preds = %if.end3
  %prop_id = getelementptr inbounds %struct.drm_mode_obj_set_property, ptr %data, i32 0, i32 1
  %12 = ptrtoint ptr %prop_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prop_id, align 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp12.i = icmp sgt i32 %15, 0
  br i1 %cmp12.i, label %if.end6.for.body.i_crit_edge, label %if.end6.out_unref_crit_edge

if.end6.out_unref_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unref

if.end6.for.body.i_crit_edge:                     ; preds = %if.end6
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.cond.i.out_unref_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.out_unref_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unref

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end6.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end6.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.drm_object_properties, ptr %11, i32 0, i32 1, i32 %i.013.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %base.i = getelementptr inbounds %struct.drm_property, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %13)
  %cmp3.i = icmp eq i32 %19, %13
  br i1 %cmp3.i, label %drm_mode_obj_find_prop_id.exit, label %for.cond.i

drm_mode_obj_find_prop_id.exit:                   ; preds = %for.body.i
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %drm_mode_obj_find_prop_id.exit.out_unref_crit_edge, label %if.end10

drm_mode_obj_find_prop_id.exit.out_unref_crit_edge: ; preds = %drm_mode_obj_find_prop_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unref

if.end10:                                         ; preds = %drm_mode_obj_find_prop_id.exit
  %dev11 = getelementptr inbounds %struct.drm_property, ptr %17, i32 0, i32 6
  %20 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev11, align 4
  %driver.i.i.i = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver.i.i.i, align 4
  %driver_features.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %23, i32 0, i32 24
  %24 = ptrtoint ptr %driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %driver_features.i.i.i, align 4
  %driver_features1.i.i.i = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 10
  %26 = ptrtoint ptr %driver_features1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %driver_features1.i.i.i, align 4
  %and.i.i.i = and i32 %25, 16
  %and2.i.i.i = and i32 %and.i.i.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and2.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and2.i.i.i, 16
  br i1 %cmp.i.i.i, label %if.end10.if.then13_crit_edge, label %lor.rhs.i

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

lor.rhs.i:                                        ; preds = %if.end10
  %funcs.i = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 30, i32 27
  %28 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %lor.rhs.i.if.else_crit_edge, label %drm_drv_uses_atomic_modeset.exit

lor.rhs.i.if.else_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

drm_drv_uses_atomic_modeset.exit:                 ; preds = %lor.rhs.i
  %atomic_commit.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %atomic_commit.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %atomic_commit.i, align 4
  %cmp.i.not = icmp eq ptr %31, null
  br i1 %cmp.i.not, label %drm_drv_uses_atomic_modeset.exit.if.else_crit_edge, label %drm_drv_uses_atomic_modeset.exit.if.then13_crit_edge

drm_drv_uses_atomic_modeset.exit.if.then13_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

drm_drv_uses_atomic_modeset.exit.if.else_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then13:                                        ; preds = %drm_drv_uses_atomic_modeset.exit.if.then13_crit_edge, %if.end10.if.then13_crit_edge
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %ctx.i) #8
  %34 = call ptr @memset(ptr %ctx.i, i32 255, i32 84)
  %call.i35 = tail call ptr @drm_atomic_state_alloc(ptr noundef %21) #8
  %tobool.not.i36 = icmp eq ptr %call.i35, null
  br i1 %tobool.not.i36, label %if.then13.set_property_atomic.exit_crit_edge, label %if.end.i

if.then13.set_property_atomic.exit_crit_edge:     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_property_atomic.exit

if.end.i:                                         ; preds = %if.then13
  call void @drm_modeset_acquire_init(ptr noundef nonnull %ctx.i, i32 noundef 0) #8
  %acquire_ctx.i = getelementptr inbounds %struct.drm_atomic_state, ptr %call.i35, i32 0, i32 9
  %35 = ptrtoint ptr %acquire_ctx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %ctx.i, ptr %acquire_ctx.i, align 4
  %type.i = getelementptr inbounds %struct.drm_mode_object, ptr %call.i, i32 0, i32 1
  %dev2.i = getelementptr inbounds %struct.drm_atomic_state, ptr %call.i35, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -32
  %conv.i = trunc i64 %33 to i32
  br label %retry.i

retry.i:                                          ; preds = %if.then16.i, %if.end.i
  %36 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev2.i, align 4
  %dpms_property.i = getelementptr inbounds %struct.drm_device, ptr %37, i32 0, i32 30, i32 36
  %38 = ptrtoint ptr %dpms_property.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dpms_property.i, align 4
  %cmp.i37 = icmp eq ptr %39, %17
  br i1 %cmp.i37, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %retry.i
  %40 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1061109568, i32 %41)
  %cmp4.not.i = icmp eq i32 %41, -1061109568
  br i1 %cmp4.not.i, label %if.end6.i, label %if.then3.i.if.end18.i_crit_edge

if.then3.i.if.end18.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.end6.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = call i32 @drm_atomic_connector_commit_dpms(ptr noundef nonnull %call.i35, ptr noundef %add.ptr.i, i32 noundef %conv.i) #8
  br label %out.i

if.else.i:                                        ; preds = %retry.i
  %call8.i = call i32 @drm_atomic_set_property(ptr noundef nonnull %call.i35, ptr noundef %file_priv, ptr noundef nonnull %call.i, ptr noundef nonnull %17, i64 noundef %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.else.i.out.i_crit_edge

if.else.i.out.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end11.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i = call i32 @drm_atomic_commit(ptr noundef nonnull %call.i35) #8
  br label %out.i

out.i:                                            ; preds = %if.end11.i, %if.else.i.out.i_crit_edge, %if.end6.i
  %ret.0.i = phi i32 [ %call7.i, %if.end6.i ], [ %call8.i, %if.else.i.out.i_crit_edge ], [ %call12.i, %if.end11.i ]
  %cmp14.i = icmp eq i32 %ret.0.i, -35
  br i1 %cmp14.i, label %if.then16.i, label %out.i.if.end18.i_crit_edge

out.i.if.end18.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then16.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @drm_atomic_state_clear(ptr noundef nonnull %call.i35) #8
  %call17.i = call i32 @drm_modeset_backoff(ptr noundef nonnull %ctx.i) #8
  br label %retry.i

if.end18.i:                                       ; preds = %out.i.if.end18.i_crit_edge, %if.then3.i.if.end18.i_crit_edge
  %ret.038.i = phi i32 [ %ret.0.i, %out.i.if.end18.i_crit_edge ], [ -22, %if.then3.i.if.end18.i_crit_edge ]
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i35, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !32
  call void @llvm.prefetch.p0(ptr nonnull %call.i35, i32 1, i32 3, i32 1) #8
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i35, ptr nonnull %call.i35, i32 1, ptr nonnull elementtype(i32) %call.i35) #8, !srcloc !33
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_atomic_state_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !30

if.end5.i.i.i.i.i.i.drm_atomic_state_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_atomic_state_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %call.i35, i32 noundef 3) #8
  br label %drm_atomic_state_put.exit.i

if.then.i.i.i:                                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !34
  call void @__drm_atomic_state_free(ptr noundef nonnull %call.i35) #8
  br label %drm_atomic_state_put.exit.i

drm_atomic_state_put.exit.i:                      ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_atomic_state_put.exit.i_crit_edge
  call void @drm_modeset_drop_locks(ptr noundef nonnull %ctx.i) #8
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %ctx.i) #8
  br label %set_property_atomic.exit

set_property_atomic.exit:                         ; preds = %drm_atomic_state_put.exit.i, %if.then13.set_property_atomic.exit_crit_edge
  %retval.0.i38 = phi i32 [ %ret.038.i, %drm_atomic_state_put.exit.i ], [ -12, %if.then13.set_property_atomic.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctx.i) #8
  br label %out_unref

if.else:                                          ; preds = %drm_drv_uses_atomic_modeset.exit.if.else_crit_edge, %lor.rhs.i.if.else_crit_edge
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ref.i) #8
  %45 = ptrtoint ptr %ref.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 -1 to ptr), ptr %ref.i, align 4, !annotation !37
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %ctx.i39) #8
  %46 = call ptr @memset(ptr %ctx.i39, i32 255, i32 84)
  %call.i41 = call zeroext i1 @drm_property_change_valid_get(ptr noundef nonnull %17, i64 noundef %44, ptr noundef nonnull %ref.i) #8
  br i1 %call.i41, label %if.end.i42, label %if.else.set_property_legacy.exit_crit_edge

if.else.set_property_legacy.exit_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_property_legacy.exit

if.end.i42:                                       ; preds = %if.else
  %47 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver.i.i.i, align 4
  %driver_features.i.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %48, i32 0, i32 24
  %49 = ptrtoint ptr %driver_features.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %driver_features.i.i.i.i, align 4
  %51 = ptrtoint ptr %driver_features1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %driver_features1.i.i.i, align 4
  %and.i.i.i.i = and i32 %50, 16
  %and2.i.i.i.i = and i32 %and.i.i.i.i, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and2.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 16
  br i1 %cmp.i.i.i.i, label %if.end.i42.if.end4.i_crit_edge, label %lor.rhs.i.i

if.end.i42.if.end4.i_crit_edge:                   ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

lor.rhs.i.i:                                      ; preds = %if.end.i42
  %53 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i, label %lor.rhs.i.i.if.then3.i43_crit_edge, label %drm_drv_uses_atomic_modeset.exit.i

lor.rhs.i.i.if.then3.i43_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i43

drm_drv_uses_atomic_modeset.exit.i:               ; preds = %lor.rhs.i.i
  %atomic_commit.i.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %atomic_commit.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %atomic_commit.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %56, null
  br i1 %cmp.i.not.i, label %drm_drv_uses_atomic_modeset.exit.i.if.then3.i43_crit_edge, label %drm_drv_uses_atomic_modeset.exit.i.if.end4.i_crit_edge

drm_drv_uses_atomic_modeset.exit.i.if.end4.i_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

drm_drv_uses_atomic_modeset.exit.i.if.then3.i43_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i43

if.then3.i43:                                     ; preds = %drm_drv_uses_atomic_modeset.exit.i.if.then3.i43_crit_edge, %lor.rhs.i.i.if.then3.i43_crit_edge
  %mode_config.i = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 30
  call void @mutex_lock_nested(ptr noundef %mode_config.i, i32 noundef 0) #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i43, %drm_drv_uses_atomic_modeset.exit.i.if.end4.i_crit_edge, %if.end.i42.if.end4.i_crit_edge
  call void @drm_modeset_acquire_init(ptr noundef nonnull %ctx.i39, i32 noundef 0) #8
  %type.i44 = getelementptr inbounds %struct.drm_mode_object, ptr %call.i, i32 0, i32 1
  %add.ptr.i45 = getelementptr i8, ptr %call.i, i32 -124
  br label %modeset_lock_retry.i

modeset_lock_retry.i:                             ; preds = %if.then13.i.modeset_lock_retry.i_crit_edge, %if.end4.i
  %call5.i = call i32 @drm_modeset_lock_all_ctx(ptr noundef %21, ptr noundef nonnull %ctx.i39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i46 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i46, label %if.end7.i, label %modeset_lock_retry.i.modeset_lock_fail.i_crit_edge

modeset_lock_retry.i.modeset_lock_fail.i_crit_edge: ; preds = %modeset_lock_retry.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %modeset_lock_fail.i

if.end7.i:                                        ; preds = %modeset_lock_retry.i
  %57 = ptrtoint ptr %type.i44 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %type.i44, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %58, label %if.end7.i.sw.epilog.i_crit_edge [
    i32 -1061109568, label %sw.bb.i
    i32 -858993460, label %sw.bb9.i
    i32 -286331154, label %sw.bb11.i
  ]

if.end7.i.sw.epilog.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i47 = call i32 @drm_connector_set_obj_prop(ptr noundef nonnull %call.i, ptr noundef nonnull %17, i64 noundef %44) #8
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i = call i32 @drm_mode_crtc_set_obj_prop(ptr noundef nonnull %call.i, ptr noundef nonnull %17, i64 noundef %44) #8
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i48 = call i32 @drm_mode_plane_set_obj_prop(ptr noundef %add.ptr.i45, ptr noundef nonnull %17, i64 noundef %44) #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb11.i, %sw.bb9.i, %sw.bb.i, %if.end7.i.sw.epilog.i_crit_edge
  %ret.0.i49 = phi i32 [ 0, %if.end7.i.sw.epilog.i_crit_edge ], [ %call12.i48, %sw.bb11.i ], [ %call10.i, %sw.bb9.i ], [ %call8.i47, %sw.bb.i ]
  %60 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ref.i, align 4
  call void @drm_property_change_valid_put(ptr noundef nonnull %17, ptr noundef %61) #8
  br label %modeset_lock_fail.i

modeset_lock_fail.i:                              ; preds = %sw.epilog.i, %modeset_lock_retry.i.modeset_lock_fail.i_crit_edge
  %ret.1.i = phi i32 [ %call5.i, %modeset_lock_retry.i.modeset_lock_fail.i_crit_edge ], [ %ret.0.i49, %sw.epilog.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %ret.1.i)
  %cmp.i50 = icmp eq i32 %ret.1.i, -35
  br i1 %cmp.i50, label %if.then13.i, label %modeset_lock_fail.i.if.end18.i51_crit_edge

modeset_lock_fail.i.if.end18.i51_crit_edge:       ; preds = %modeset_lock_fail.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i51

if.then13.i:                                      ; preds = %modeset_lock_fail.i
  %call14.i = call i32 @drm_modeset_backoff(ptr noundef nonnull %ctx.i39) #8
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then13.i.modeset_lock_retry.i_crit_edge, label %if.then13.i.if.end18.i51_crit_edge

if.then13.i.if.end18.i51_crit_edge:               ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i51

if.then13.i.modeset_lock_retry.i_crit_edge:       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %modeset_lock_retry.i

if.end18.i51:                                     ; preds = %if.then13.i.if.end18.i51_crit_edge, %modeset_lock_fail.i.if.end18.i51_crit_edge
  %ret.2.i = phi i32 [ %call14.i, %if.then13.i.if.end18.i51_crit_edge ], [ %ret.1.i, %modeset_lock_fail.i.if.end18.i51_crit_edge ]
  call void @drm_modeset_drop_locks(ptr noundef nonnull %ctx.i39) #8
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %ctx.i39) #8
  %62 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %driver.i.i.i, align 4
  %driver_features.i.i.i46.i = getelementptr inbounds %struct.drm_driver, ptr %63, i32 0, i32 24
  %64 = ptrtoint ptr %driver_features.i.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %driver_features.i.i.i46.i, align 4
  %66 = ptrtoint ptr %driver_features1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %driver_features1.i.i.i, align 4
  %and.i.i.i48.i = and i32 %65, 16
  %and2.i.i.i49.i = and i32 %and.i.i.i48.i, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and2.i.i.i49.i)
  %cmp.i.i.i50.i = icmp eq i32 %and2.i.i.i49.i, 16
  br i1 %cmp.i.i.i50.i, label %if.end18.i51.set_property_legacy.exit_crit_edge, label %lor.rhs.i53.i

if.end18.i51.set_property_legacy.exit_crit_edge:  ; preds = %if.end18.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_property_legacy.exit

lor.rhs.i53.i:                                    ; preds = %if.end18.i51
  %68 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i52.i = icmp eq ptr %69, null
  br i1 %tobool.not.i52.i, label %lor.rhs.i53.i.if.then20.i_crit_edge, label %drm_drv_uses_atomic_modeset.exit57.i

lor.rhs.i53.i.if.then20.i_crit_edge:              ; preds = %lor.rhs.i53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20.i

drm_drv_uses_atomic_modeset.exit57.i:             ; preds = %lor.rhs.i53.i
  %atomic_commit.i54.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %atomic_commit.i54.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %atomic_commit.i54.i, align 4
  %cmp.i55.not.i = icmp eq ptr %71, null
  br i1 %cmp.i55.not.i, label %drm_drv_uses_atomic_modeset.exit57.i.if.then20.i_crit_edge, label %drm_drv_uses_atomic_modeset.exit57.i.set_property_legacy.exit_crit_edge

drm_drv_uses_atomic_modeset.exit57.i.set_property_legacy.exit_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_property_legacy.exit

drm_drv_uses_atomic_modeset.exit57.i.if.then20.i_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20.i

if.then20.i:                                      ; preds = %drm_drv_uses_atomic_modeset.exit57.i.if.then20.i_crit_edge, %lor.rhs.i53.i.if.then20.i_crit_edge
  %mode_config21.i = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 30
  call void @mutex_unlock(ptr noundef %mode_config21.i) #8
  br label %set_property_legacy.exit

set_property_legacy.exit:                         ; preds = %if.then20.i, %drm_drv_uses_atomic_modeset.exit57.i.set_property_legacy.exit_crit_edge, %if.end18.i51.set_property_legacy.exit_crit_edge, %if.else.set_property_legacy.exit_crit_edge
  %retval.0.i52 = phi i32 [ -22, %if.else.set_property_legacy.exit_crit_edge ], [ %ret.2.i, %if.then20.i ], [ %ret.2.i, %drm_drv_uses_atomic_modeset.exit57.i.set_property_legacy.exit_crit_edge ], [ %ret.2.i, %if.end18.i51.set_property_legacy.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctx.i39) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ref.i) #8
  br label %out_unref

out_unref:                                        ; preds = %set_property_legacy.exit, %set_property_atomic.exit, %drm_mode_obj_find_prop_id.exit.out_unref_crit_edge, %for.cond.i.out_unref_crit_edge, %if.end6.out_unref_crit_edge, %if.end3.out_unref_crit_edge
  %ret.0 = phi i32 [ %retval.0.i38, %set_property_atomic.exit ], [ %retval.0.i52, %set_property_legacy.exit ], [ -22, %drm_mode_obj_find_prop_id.exit.out_unref_crit_edge ], [ -22, %if.end3.out_unref_crit_edge ], [ -22, %if.end6.out_unref_crit_edge ], [ -22, %for.cond.i.out_unref_crit_edge ]
  call void @drm_mode_object_put(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %out_unref, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_unref ], [ -95, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_state_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_connector_commit_dpms(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_set_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_state_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_property_change_valid_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_set_obj_prop(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_obj_prop(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_plane_set_obj_prop(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_property_change_valid_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.named.register.sp = !{!18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_mode_object.c", i32 45, i32 2}
!2 = !{ptr @__ksymtab_drm_mode_object_find, !3, !"__ksymtab_drm_mode_object_find", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_mode_object.c", i32 182, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_mode_object.c", i32 195, i32 3}
!6 = !{ptr @__ksymtab_drm_mode_object_put, !7, !"__ksymtab_drm_mode_object_put", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_mode_object.c", i32 199, i32 1}
!8 = !{ptr @__ksymtab_drm_mode_object_get, !9, !"__ksymtab_drm_mode_object_get", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_mode_object.c", i32 216, i32 1}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/drm_mode_object.c", i32 249, i32 3}
!12 = !{ptr @__ksymtab_drm_object_attach_property, !13, !"__ksymtab_drm_object_attach_property", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/drm_mode_object.c", i32 260, i32 1}
!14 = !{ptr @__ksymtab_drm_object_property_set_value, !15, !"__ksymtab_drm_object_property_set_value", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/drm_mode_object.c", i32 298, i32 1}
!16 = !{ptr @__ksymtab_drm_object_property_get_value, !17, !"__ksymtab_drm_object_property_get_value", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/drm_mode_object.c", i32 349, i32 1}
!18 = !{!"sp"}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i8 0, i8 2}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 942692, i64 942716, i64 942737, i64 942754, i64 942771}
!32 = !{i64 2148546710}
!33 = !{i64 2148461174, i64 2148461206, i64 2148461235, i64 2148461269, i64 2148461300, i64 2148461323}
!34 = !{i64 2149582433}
!35 = !{i64 2148458709, i64 2148458741, i64 2148458770, i64 2148458804, i64 2148458835, i64 2148458858}
!36 = !{!"branch_weights", i32 1073205, i32 2146410443}
!37 = !{!"auto-init"}
!38 = !{i64 3007434}
!39 = !{i64 3007631}
!40 = !{i64 2150492864}
!41 = !{i64 2156543352, i64 2156543632, i64 2156543966, i64 2156544300}
!42 = !{i64 2156554178, i64 2156554458, i64 2156554792, i64 2156555126}
