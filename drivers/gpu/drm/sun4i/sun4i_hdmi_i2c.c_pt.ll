; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sun4i_hdmi = type { %struct.drm_connector, %struct.drm_encoder, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.sun4i_hdmi_variant = type { i8, i8, i32, i32, i32, %struct.reg_field, i8, i8, i8, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, i32, i8, i8 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@sun4i_hdmi_i2c_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @sun4i_hdmi_i2c_xfer, ptr null, ptr null, ptr null, ptr @sun4i_hdmi_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun4i_hdmi_i2c adapter\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c\00", [57 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [25 x i8] c"sun4i_hdmi_i2c_algorithm\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 193, i32 35 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 307, i32 22 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [42 x i8] c"../drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 167, i32 6 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @sun4i_hdmi_i2c_algorithm, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_hdmi_i2c_create(ptr noundef %dev, ptr noundef %hdmi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ddc_parent_clk = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 8
  %0 = ptrtoint ptr %ddc_parent_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc_parent_clk, align 8
  %call = tail call i32 @sun4i_ddc_create(ptr noundef %hdmi, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 8
  %regmap.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 4
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 8
  %variant.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 32
  %6 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant.i, align 8
  %field_ddc_en.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %field_ddc_en.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack.i = load i32, ptr %field_ddc_en.i, align 4
  %9 = insertvalue [5 x i32] undef, i32 %.unpack.i, 0
  %.elt232.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %7, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %.elt232.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack233.i = load i32, ptr %.elt232.i, align 4
  %11 = insertvalue [5 x i32] %9, i32 %.unpack233.i, 1
  %.elt234.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %7, i32 0, i32 9, i32 2
  %12 = ptrtoint ptr %.elt234.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack235.i = load i32, ptr %.elt234.i, align 4
  %13 = insertvalue [5 x i32] %11, i32 %.unpack235.i, 2
  %.elt236.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %7, i32 0, i32 9, i32 3
  %14 = ptrtoint ptr %.elt236.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack237.i = load i32, ptr %.elt236.i, align 4
  %15 = insertvalue [5 x i32] %13, i32 %.unpack237.i, 3
  %.elt238.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %7, i32 0, i32 9, i32 4
  %16 = ptrtoint ptr %.elt238.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack239.i = load i32, ptr %.elt238.i, align 4
  %17 = insertvalue [5 x i32] %15, i32 %.unpack239.i, 4
  %call.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %3, ptr noundef %5, [5 x i32] %17) #6
  %field_ddc_en1.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 15
  %18 = ptrtoint ptr %field_ddc_en1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %field_ddc_en1.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.sun4i_hdmi_init_regmap_fields.exit_crit_edge, label %if.end.i

if.end.sun4i_hdmi_init_regmap_fields.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_hdmi_init_regmap_fields.exit

if.end.i:                                         ; preds = %if.end
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 8
  %23 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %variant.i, align 8
  %field_ddc_start.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %field_ddc_start.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack240.i = load i32, ptr %field_ddc_start.i, align 4
  %26 = insertvalue [5 x i32] undef, i32 %.unpack240.i, 0
  %.elt241.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %24, i32 0, i32 10, i32 1
  %27 = ptrtoint ptr %.elt241.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack242.i = load i32, ptr %.elt241.i, align 4
  %28 = insertvalue [5 x i32] %26, i32 %.unpack242.i, 1
  %.elt243.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %24, i32 0, i32 10, i32 2
  %29 = ptrtoint ptr %.elt243.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack244.i = load i32, ptr %.elt243.i, align 4
  %30 = insertvalue [5 x i32] %28, i32 %.unpack244.i, 2
  %.elt245.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %24, i32 0, i32 10, i32 3
  %31 = ptrtoint ptr %.elt245.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack246.i = load i32, ptr %.elt245.i, align 4
  %32 = insertvalue [5 x i32] %30, i32 %.unpack246.i, 3
  %.elt247.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %24, i32 0, i32 10, i32 4
  %33 = ptrtoint ptr %.elt247.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack248.i = load i32, ptr %.elt247.i, align 4
  %34 = insertvalue [5 x i32] %32, i32 %.unpack248.i, 4
  %call9.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %20, ptr noundef %22, [5 x i32] %34) #6
  %field_ddc_start10.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 16
  %35 = ptrtoint ptr %field_ddc_start10.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call9.i, ptr %field_ddc_start10.i, align 8
  %cmp.i357.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i357.i, label %if.end.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, label %if.end16.i

if.end.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_hdmi_init_regmap_fields.exit

if.end16.i:                                       ; preds = %if.end.i
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 8
  %38 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i, align 8
  %40 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %variant.i, align 8
  %field_ddc_reset.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %field_ddc_reset.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.unpack249.i = load i32, ptr %field_ddc_reset.i, align 4
  %43 = insertvalue [5 x i32] undef, i32 %.unpack249.i, 0
  %.elt250.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %41, i32 0, i32 11, i32 1
  %44 = ptrtoint ptr %.elt250.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack251.i = load i32, ptr %.elt250.i, align 4
  %45 = insertvalue [5 x i32] %43, i32 %.unpack251.i, 1
  %.elt252.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %41, i32 0, i32 11, i32 2
  %46 = ptrtoint ptr %.elt252.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.unpack253.i = load i32, ptr %.elt252.i, align 4
  %47 = insertvalue [5 x i32] %45, i32 %.unpack253.i, 2
  %.elt254.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %41, i32 0, i32 11, i32 3
  %48 = ptrtoint ptr %.elt254.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.unpack255.i = load i32, ptr %.elt254.i, align 4
  %49 = insertvalue [5 x i32] %47, i32 %.unpack255.i, 3
  %.elt256.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %41, i32 0, i32 11, i32 4
  %50 = ptrtoint ptr %.elt256.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.unpack257.i = load i32, ptr %.elt256.i, align 4
  %51 = insertvalue [5 x i32] %49, i32 %.unpack257.i, 4
  %call20.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %37, ptr noundef %39, [5 x i32] %51) #6
  %field_ddc_reset21.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 17
  %52 = ptrtoint ptr %field_ddc_reset21.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call20.i, ptr %field_ddc_reset21.i, align 4
  %cmp.i358.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i358.i, label %if.end16.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, label %if.end27.i

if.end16.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_hdmi_init_regmap_fields.exit

if.end27.i:                                       ; preds = %if.end16.i
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 8
  %55 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i, align 8
  %57 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %variant.i, align 8
  %field_ddc_addr_reg.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %58, i32 0, i32 12
  %59 = ptrtoint ptr %field_ddc_addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.unpack258.i = load i32, ptr %field_ddc_addr_reg.i, align 4
  %60 = insertvalue [5 x i32] undef, i32 %.unpack258.i, 0
  %.elt259.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %58, i32 0, i32 12, i32 1
  %61 = ptrtoint ptr %.elt259.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.unpack260.i = load i32, ptr %.elt259.i, align 4
  %62 = insertvalue [5 x i32] %60, i32 %.unpack260.i, 1
  %.elt261.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %58, i32 0, i32 12, i32 2
  %63 = ptrtoint ptr %.elt261.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.unpack262.i = load i32, ptr %.elt261.i, align 4
  %64 = insertvalue [5 x i32] %62, i32 %.unpack262.i, 2
  %.elt263.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %58, i32 0, i32 12, i32 3
  %65 = ptrtoint ptr %.elt263.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.unpack264.i = load i32, ptr %.elt263.i, align 4
  %66 = insertvalue [5 x i32] %64, i32 %.unpack264.i, 3
  %.elt265.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %58, i32 0, i32 12, i32 4
  %67 = ptrtoint ptr %.elt265.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.unpack266.i = load i32, ptr %.elt265.i, align 4
  %68 = insertvalue [5 x i32] %66, i32 %.unpack266.i, 4
  %call31.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %54, ptr noundef %56, [5 x i32] %68) #6
  %field_ddc_addr_reg32.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 18
  %69 = ptrtoint ptr %field_ddc_addr_reg32.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call31.i, ptr %field_ddc_addr_reg32.i, align 8
  %cmp.i359.i = icmp ugt ptr %call31.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i359.i, label %if.end27.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, label %if.end38.i

if.end27.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_hdmi_init_regmap_fields.exit

if.end38.i:                                       ; preds = %if.end27.i
  %70 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i, align 8
  %72 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap.i, align 8
  %74 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %variant.i, align 8
  %field_ddc_slave_addr.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %75, i32 0, i32 13
  %76 = ptrtoint ptr %field_ddc_slave_addr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.unpack267.i = load i32, ptr %field_ddc_slave_addr.i, align 4
  %77 = insertvalue [5 x i32] undef, i32 %.unpack267.i, 0
  %.elt268.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %75, i32 0, i32 13, i32 1
  %78 = ptrtoint ptr %.elt268.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.unpack269.i = load i32, ptr %.elt268.i, align 4
  %79 = insertvalue [5 x i32] %77, i32 %.unpack269.i, 1
  %.elt270.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %75, i32 0, i32 13, i32 2
  %80 = ptrtoint ptr %.elt270.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %.unpack271.i = load i32, ptr %.elt270.i, align 4
  %81 = insertvalue [5 x i32] %79, i32 %.unpack271.i, 2
  %.elt272.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %75, i32 0, i32 13, i32 3
  %82 = ptrtoint ptr %.elt272.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.unpack273.i = load i32, ptr %.elt272.i, align 4
  %83 = insertvalue [5 x i32] %81, i32 %.unpack273.i, 3
  %.elt274.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %75, i32 0, i32 13, i32 4
  %84 = ptrtoint ptr %.elt274.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.unpack275.i = load i32, ptr %.elt274.i, align 4
  %85 = insertvalue [5 x i32] %83, i32 %.unpack275.i, 4
  %call42.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %71, ptr noundef %73, [5 x i32] %85) #6
  %field_ddc_slave_addr43.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 19
  %86 = ptrtoint ptr %field_ddc_slave_addr43.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call42.i, ptr %field_ddc_slave_addr43.i, align 4
  %cmp.i360.i = icmp ugt ptr %call42.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i360.i, label %if.end38.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, label %if.end49.i

if.end38.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_hdmi_init_regmap_fields.exit

if.end49.i:                                       ; preds = %if.end38.i
  %87 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i, align 8
  %89 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regmap.i, align 8
  %91 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %variant.i, align 8
  %field_ddc_int_mask.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %92, i32 0, i32 14
  %93 = ptrtoint ptr %field_ddc_int_mask.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %.unpack276.i = load i32, ptr %field_ddc_int_mask.i, align 4
  %94 = insertvalue [5 x i32] undef, i32 %.unpack276.i, 0
  %.elt277.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %92, i32 0, i32 14, i32 1
  %95 = ptrtoint ptr %.elt277.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %.unpack278.i = load i32, ptr %.elt277.i, align 4
  %96 = insertvalue [5 x i32] %94, i32 %.unpack278.i, 1
  %.elt279.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %92, i32 0, i32 14, i32 2
  %97 = ptrtoint ptr %.elt279.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %.unpack280.i = load i32, ptr %.elt279.i, align 4
  %98 = insertvalue [5 x i32] %96, i32 %.unpack280.i, 2
  %.elt281.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %92, i32 0, i32 14, i32 3
  %99 = ptrtoint ptr %.elt281.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %.unpack282.i = load i32, ptr %.elt281.i, align 4
  %100 = insertvalue [5 x i32] %98, i32 %.unpack282.i, 3
  %.elt283.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %92, i32 0, i32 14, i32 4
  %101 = ptrtoint ptr %.elt283.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %.unpack284.i = load i32, ptr %.elt283.i, align 4
  %102 = insertvalue [5 x i32] %100, i32 %.unpack284.i, 4
  %call53.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %88, ptr noundef %90, [5 x i32] %102) #6
  %field_ddc_int_mask54.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 20
  %103 = ptrtoint ptr %field_ddc_int_mask54.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call53.i, ptr %field_ddc_int_mask54.i, align 8
  %cmp.i361.i = icmp ugt ptr %call53.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i361.i, label %if.end49.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, label %if.end60.i

if.end49.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge: ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_hdmi_init_regmap_fields.exit

if.end60.i:                                       ; preds = %if.end49.i
  %104 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev.i, align 8
  %106 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regmap.i, align 8
  %108 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %variant.i, align 8
  %field_ddc_int_status.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %109, i32 0, i32 15
  %110 = ptrtoint ptr %field_ddc_int_status.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %.unpack285.i = load i32, ptr %field_ddc_int_status.i, align 4
  %111 = insertvalue [5 x i32] undef, i32 %.unpack285.i, 0
  %.elt286.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %109, i32 0, i32 15, i32 1
  %112 = ptrtoint ptr %.elt286.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %.unpack287.i = load i32, ptr %.elt286.i, align 4
  %113 = insertvalue [5 x i32] %111, i32 %.unpack287.i, 1
  %.elt288.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %109, i32 0, i32 15, i32 2
  %114 = ptrtoint ptr %.elt288.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %.unpack289.i = load i32, ptr %.elt288.i, align 4
  %115 = insertvalue [5 x i32] %113, i32 %.unpack289.i, 2
  %.elt290.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %109, i32 0, i32 15, i32 3
  %116 = ptrtoint ptr %.elt290.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %.unpack291.i = load i32, ptr %.elt290.i, align 4
  %117 = insertvalue [5 x i32] %115, i32 %.unpack291.i, 3
  %.elt292.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %109, i32 0, i32 15, i32 4
  %118 = ptrtoint ptr %.elt292.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %.unpack293.i = load i32, ptr %.elt292.i, align 4
  %119 = insertvalue [5 x i32] %117, i32 %.unpack293.i, 4
  %call64.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %105, ptr noundef %107, [5 x i32] %119) #6
  %field_ddc_int_status65.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 21
  %120 = ptrtoint ptr %field_ddc_int_status65.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call64.i, ptr %field_ddc_int_status65.i, align 4
  %cmp.i362.i = icmp ugt ptr %call64.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i362.i, label %if.end60.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, label %if.end71.i

if.end60.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge: ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_hdmi_init_regmap_fields.exit

if.end71.i:                                       ; preds = %if.end60.i
  %121 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev.i, align 8
  %123 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regmap.i, align 8
  %125 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %variant.i, align 8
  %field_ddc_fifo_clear.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %126, i32 0, i32 16
  %127 = ptrtoint ptr %field_ddc_fifo_clear.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %.unpack294.i = load i32, ptr %field_ddc_fifo_clear.i, align 4
  %128 = insertvalue [5 x i32] undef, i32 %.unpack294.i, 0
  %.elt295.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %126, i32 0, i32 16, i32 1
  %129 = ptrtoint ptr %.elt295.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %.unpack296.i = load i32, ptr %.elt295.i, align 4
  %130 = insertvalue [5 x i32] %128, i32 %.unpack296.i, 1
  %.elt297.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %126, i32 0, i32 16, i32 2
  %131 = ptrtoint ptr %.elt297.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %.unpack298.i = load i32, ptr %.elt297.i, align 4
  %132 = insertvalue [5 x i32] %130, i32 %.unpack298.i, 2
  %.elt299.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %126, i32 0, i32 16, i32 3
  %133 = ptrtoint ptr %.elt299.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %.unpack300.i = load i32, ptr %.elt299.i, align 4
  %134 = insertvalue [5 x i32] %132, i32 %.unpack300.i, 3
  %.elt301.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %126, i32 0, i32 16, i32 4
  %135 = ptrtoint ptr %.elt301.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %.unpack302.i = load i32, ptr %.elt301.i, align 4
  %136 = insertvalue [5 x i32] %134, i32 %.unpack302.i, 4
  %call75.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %122, ptr noundef %124, [5 x i32] %136) #6
  %field_ddc_fifo_clear76.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 22
  %137 = ptrtoint ptr %field_ddc_fifo_clear76.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call75.i, ptr %field_ddc_fifo_clear76.i, align 8
  %cmp.i363.i = icmp ugt ptr %call75.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i363.i, label %if.end71.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, label %if.end82.i

if.end71.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge: ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_hdmi_init_regmap_fields.exit

if.end82.i:                                       ; preds = %if.end71.i
  %138 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev.i, align 8
  %140 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regmap.i, align 8
  %142 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %variant.i, align 8
  %field_ddc_fifo_rx_thres.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %143, i32 0, i32 17
  %144 = ptrtoint ptr %field_ddc_fifo_rx_thres.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %.unpack303.i = load i32, ptr %field_ddc_fifo_rx_thres.i, align 4
  %145 = insertvalue [5 x i32] undef, i32 %.unpack303.i, 0
  %.elt304.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %143, i32 0, i32 17, i32 1
  %146 = ptrtoint ptr %.elt304.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %.unpack305.i = load i32, ptr %.elt304.i, align 4
  %147 = insertvalue [5 x i32] %145, i32 %.unpack305.i, 1
  %.elt306.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %143, i32 0, i32 17, i32 2
  %148 = ptrtoint ptr %.elt306.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %.unpack307.i = load i32, ptr %.elt306.i, align 4
  %149 = insertvalue [5 x i32] %147, i32 %.unpack307.i, 2
  %.elt308.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %143, i32 0, i32 17, i32 3
  %150 = ptrtoint ptr %.elt308.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %.unpack309.i = load i32, ptr %.elt308.i, align 4
  %151 = insertvalue [5 x i32] %149, i32 %.unpack309.i, 3
  %.elt310.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %143, i32 0, i32 17, i32 4
  %152 = ptrtoint ptr %.elt310.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %.unpack311.i = load i32, ptr %.elt310.i, align 4
  %153 = insertvalue [5 x i32] %151, i32 %.unpack311.i, 4
  %call86.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %139, ptr noundef %141, [5 x i32] %153) #6
  %field_ddc_fifo_rx_thres87.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 23
  %154 = ptrtoint ptr %field_ddc_fifo_rx_thres87.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call86.i, ptr %field_ddc_fifo_rx_thres87.i, align 4
  %cmp.i364.i = icmp ugt ptr %call86.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i364.i, label %if.end82.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, label %if.end93.i

if.end82.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge: ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_hdmi_init_regmap_fields.exit

if.end93.i:                                       ; preds = %if.end82.i
  %155 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev.i, align 8
  %157 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regmap.i, align 8
  %159 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %variant.i, align 8
  %field_ddc_fifo_tx_thres.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %160, i32 0, i32 18
  %161 = ptrtoint ptr %field_ddc_fifo_tx_thres.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %.unpack312.i = load i32, ptr %field_ddc_fifo_tx_thres.i, align 4
  %162 = insertvalue [5 x i32] undef, i32 %.unpack312.i, 0
  %.elt313.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %160, i32 0, i32 18, i32 1
  %163 = ptrtoint ptr %.elt313.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %.unpack314.i = load i32, ptr %.elt313.i, align 4
  %164 = insertvalue [5 x i32] %162, i32 %.unpack314.i, 1
  %.elt315.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %160, i32 0, i32 18, i32 2
  %165 = ptrtoint ptr %.elt315.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %.unpack316.i = load i32, ptr %.elt315.i, align 4
  %166 = insertvalue [5 x i32] %164, i32 %.unpack316.i, 2
  %.elt317.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %160, i32 0, i32 18, i32 3
  %167 = ptrtoint ptr %.elt317.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %.unpack318.i = load i32, ptr %.elt317.i, align 4
  %168 = insertvalue [5 x i32] %166, i32 %.unpack318.i, 3
  %.elt319.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %160, i32 0, i32 18, i32 4
  %169 = ptrtoint ptr %.elt319.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %.unpack320.i = load i32, ptr %.elt319.i, align 4
  %170 = insertvalue [5 x i32] %168, i32 %.unpack320.i, 4
  %call97.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %156, ptr noundef %158, [5 x i32] %170) #6
  %field_ddc_fifo_tx_thres98.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 24
  %171 = ptrtoint ptr %field_ddc_fifo_tx_thres98.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call97.i, ptr %field_ddc_fifo_tx_thres98.i, align 8
  %cmp.i365.i = icmp ugt ptr %call97.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i365.i, label %if.end93.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, label %if.end104.i

if.end93.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge: ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_hdmi_init_regmap_fields.exit

if.end104.i:                                      ; preds = %if.end93.i
  %172 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev.i, align 8
  %174 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regmap.i, align 8
  %176 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %variant.i, align 8
  %field_ddc_byte_count.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %177, i32 0, i32 19
  %178 = ptrtoint ptr %field_ddc_byte_count.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %.unpack321.i = load i32, ptr %field_ddc_byte_count.i, align 4
  %179 = insertvalue [5 x i32] undef, i32 %.unpack321.i, 0
  %.elt322.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %177, i32 0, i32 19, i32 1
  %180 = ptrtoint ptr %.elt322.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %.unpack323.i = load i32, ptr %.elt322.i, align 4
  %181 = insertvalue [5 x i32] %179, i32 %.unpack323.i, 1
  %.elt324.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %177, i32 0, i32 19, i32 2
  %182 = ptrtoint ptr %.elt324.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %.unpack325.i = load i32, ptr %.elt324.i, align 4
  %183 = insertvalue [5 x i32] %181, i32 %.unpack325.i, 2
  %.elt326.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %177, i32 0, i32 19, i32 3
  %184 = ptrtoint ptr %.elt326.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %.unpack327.i = load i32, ptr %.elt326.i, align 4
  %185 = insertvalue [5 x i32] %183, i32 %.unpack327.i, 3
  %.elt328.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %177, i32 0, i32 19, i32 4
  %186 = ptrtoint ptr %.elt328.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %.unpack329.i = load i32, ptr %.elt328.i, align 4
  %187 = insertvalue [5 x i32] %185, i32 %.unpack329.i, 4
  %call108.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %173, ptr noundef %175, [5 x i32] %187) #6
  %field_ddc_byte_count109.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 25
  %188 = ptrtoint ptr %field_ddc_byte_count109.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %call108.i, ptr %field_ddc_byte_count109.i, align 4
  %cmp.i366.i = icmp ugt ptr %call108.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i366.i, label %if.end104.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, label %if.end115.i

if.end104.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge: ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_hdmi_init_regmap_fields.exit

if.end115.i:                                      ; preds = %if.end104.i
  %189 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev.i, align 8
  %191 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %regmap.i, align 8
  %193 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %variant.i, align 8
  %field_ddc_cmd.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %194, i32 0, i32 20
  %195 = ptrtoint ptr %field_ddc_cmd.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %.unpack330.i = load i32, ptr %field_ddc_cmd.i, align 4
  %196 = insertvalue [5 x i32] undef, i32 %.unpack330.i, 0
  %.elt331.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %194, i32 0, i32 20, i32 1
  %197 = ptrtoint ptr %.elt331.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %.unpack332.i = load i32, ptr %.elt331.i, align 4
  %198 = insertvalue [5 x i32] %196, i32 %.unpack332.i, 1
  %.elt333.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %194, i32 0, i32 20, i32 2
  %199 = ptrtoint ptr %.elt333.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %.unpack334.i = load i32, ptr %.elt333.i, align 4
  %200 = insertvalue [5 x i32] %198, i32 %.unpack334.i, 2
  %.elt335.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %194, i32 0, i32 20, i32 3
  %201 = ptrtoint ptr %.elt335.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %.unpack336.i = load i32, ptr %.elt335.i, align 4
  %202 = insertvalue [5 x i32] %200, i32 %.unpack336.i, 3
  %.elt337.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %194, i32 0, i32 20, i32 4
  %203 = ptrtoint ptr %.elt337.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %.unpack338.i = load i32, ptr %.elt337.i, align 4
  %204 = insertvalue [5 x i32] %202, i32 %.unpack338.i, 4
  %call119.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %190, ptr noundef %192, [5 x i32] %204) #6
  %field_ddc_cmd120.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 26
  %205 = ptrtoint ptr %field_ddc_cmd120.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %call119.i, ptr %field_ddc_cmd120.i, align 8
  %cmp.i367.i = icmp ugt ptr %call119.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i367.i, label %if.end115.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, label %if.end126.i

if.end115.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge: ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_hdmi_init_regmap_fields.exit

if.end126.i:                                      ; preds = %if.end115.i
  %206 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev.i, align 8
  %208 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %regmap.i, align 8
  %210 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %variant.i, align 8
  %field_ddc_sda_en.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %211, i32 0, i32 21
  %212 = ptrtoint ptr %field_ddc_sda_en.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %.unpack339.i = load i32, ptr %field_ddc_sda_en.i, align 4
  %213 = insertvalue [5 x i32] undef, i32 %.unpack339.i, 0
  %.elt340.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %211, i32 0, i32 21, i32 1
  %214 = ptrtoint ptr %.elt340.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %.unpack341.i = load i32, ptr %.elt340.i, align 4
  %215 = insertvalue [5 x i32] %213, i32 %.unpack341.i, 1
  %.elt342.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %211, i32 0, i32 21, i32 2
  %216 = ptrtoint ptr %.elt342.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %.unpack343.i = load i32, ptr %.elt342.i, align 4
  %217 = insertvalue [5 x i32] %215, i32 %.unpack343.i, 2
  %.elt344.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %211, i32 0, i32 21, i32 3
  %218 = ptrtoint ptr %.elt344.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %.unpack345.i = load i32, ptr %.elt344.i, align 4
  %219 = insertvalue [5 x i32] %217, i32 %.unpack345.i, 3
  %.elt346.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %211, i32 0, i32 21, i32 4
  %220 = ptrtoint ptr %.elt346.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %.unpack347.i = load i32, ptr %.elt346.i, align 4
  %221 = insertvalue [5 x i32] %219, i32 %.unpack347.i, 4
  %call130.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %207, ptr noundef %209, [5 x i32] %221) #6
  %field_ddc_sda_en131.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 27
  %222 = ptrtoint ptr %field_ddc_sda_en131.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %call130.i, ptr %field_ddc_sda_en131.i, align 4
  %cmp.i368.i = icmp ugt ptr %call130.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i368.i, label %if.end126.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, label %if.end137.i

if.end126.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge: ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_hdmi_init_regmap_fields.exit

if.end137.i:                                      ; preds = %if.end126.i
  %223 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dev.i, align 8
  %225 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regmap.i, align 8
  %227 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %variant.i, align 8
  %field_ddc_sck_en.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %228, i32 0, i32 22
  %229 = ptrtoint ptr %field_ddc_sck_en.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %.unpack348.i = load i32, ptr %field_ddc_sck_en.i, align 4
  %230 = insertvalue [5 x i32] undef, i32 %.unpack348.i, 0
  %.elt349.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %228, i32 0, i32 22, i32 1
  %231 = ptrtoint ptr %.elt349.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %.unpack350.i = load i32, ptr %.elt349.i, align 4
  %232 = insertvalue [5 x i32] %230, i32 %.unpack350.i, 1
  %.elt351.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %228, i32 0, i32 22, i32 2
  %233 = ptrtoint ptr %.elt351.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %.unpack352.i = load i32, ptr %.elt351.i, align 4
  %234 = insertvalue [5 x i32] %232, i32 %.unpack352.i, 2
  %.elt353.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %228, i32 0, i32 22, i32 3
  %235 = ptrtoint ptr %.elt353.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %.unpack354.i = load i32, ptr %.elt353.i, align 4
  %236 = insertvalue [5 x i32] %234, i32 %.unpack354.i, 3
  %.elt355.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %228, i32 0, i32 22, i32 4
  %237 = ptrtoint ptr %.elt355.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %.unpack356.i = load i32, ptr %.elt355.i, align 4
  %238 = insertvalue [5 x i32] %236, i32 %.unpack356.i, 4
  %call141.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %224, ptr noundef %226, [5 x i32] %238) #6
  %field_ddc_sck_en142.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 28
  %239 = ptrtoint ptr %field_ddc_sck_en142.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %call141.i, ptr %field_ddc_sck_en142.i, align 8
  %cmp.i369.i = icmp ugt ptr %call141.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i369.i, label %if.end137.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, label %if.end137.i.if.end4_crit_edge

if.end137.i.if.end4_crit_edge:                    ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end137.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge: ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_hdmi_init_regmap_fields.exit

sun4i_hdmi_init_regmap_fields.exit:               ; preds = %if.end137.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, %if.end126.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, %if.end115.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, %if.end104.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, %if.end93.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, %if.end82.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, %if.end71.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, %if.end60.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, %if.end49.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, %if.end38.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, %if.end27.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, %if.end16.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, %if.end.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge, %if.end.sun4i_hdmi_init_regmap_fields.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call141.i, %if.end137.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge ], [ %call.i, %if.end.sun4i_hdmi_init_regmap_fields.exit_crit_edge ], [ %call9.i, %if.end.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge ], [ %call20.i, %if.end16.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge ], [ %call31.i, %if.end27.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge ], [ %call42.i, %if.end38.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge ], [ %call53.i, %if.end49.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge ], [ %call64.i, %if.end60.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge ], [ %call75.i, %if.end71.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge ], [ %call86.i, %if.end82.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge ], [ %call97.i, %if.end93.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge ], [ %call108.i, %if.end104.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge ], [ %call119.i, %if.end115.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge ], [ %call130.i, %if.end126.i.sun4i_hdmi_init_regmap_fields.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool2.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool2.not, label %sun4i_hdmi_init_regmap_fields.exit.if.end4_crit_edge, label %sun4i_hdmi_init_regmap_fields.exit.cleanup_crit_edge

sun4i_hdmi_init_regmap_fields.exit.cleanup_crit_edge: ; preds = %sun4i_hdmi_init_regmap_fields.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sun4i_hdmi_init_regmap_fields.exit.if.end4_crit_edge: ; preds = %sun4i_hdmi_init_regmap_fields.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %sun4i_hdmi_init_regmap_fields.exit.if.end4_crit_edge, %if.end137.i.if.end4_crit_edge
  %call.i32 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1360, i32 noundef 3520) #6
  %tobool6.not = icmp eq ptr %call.i32, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %240 = ptrtoint ptr %call.i32 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr null, ptr %call.i32, align 8
  %class = getelementptr inbounds %struct.i2c_adapter, ptr %call.i32, i32 0, i32 1
  %241 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 8, ptr %class, align 4
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i32, i32 0, i32 2
  %242 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr @sun4i_hdmi_i2c_algorithm, ptr %algo, align 8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i32, i32 0, i32 12
  %call9 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 48) #6
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i32, i32 0, i32 9, i32 8
  %243 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %hdmi, ptr %driver_data.i.i, align 4
  %call10 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %call.i32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %i2c = getelementptr inbounds %struct.sun4i_hdmi, ptr %hdmi, i32 0, i32 13
  %244 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %call.i32, ptr %i2c, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %sun4i_hdmi_init_regmap_fields.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call, %entry.cleanup_crit_edge ], [ %retval.0.i, %sun4i_hdmi_init_regmap_fields.exit.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ddc_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_hdmi_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  %reg.i.i = alloca i32, align 4
  %reg.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp128 = icmp sgt i32 %num, 0
  br i1 %cmp128, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0129, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0129 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0129, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %len, align 4
  %5 = add i16 %4, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1023, i16 %5)
  %6 = icmp ult i16 %5, -1023
  br i1 %6, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %ddc_clk = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %ddc_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ddc_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end.clk_prepare_enable.exit_crit_edge

for.end.clk_prepare_enable.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %for.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %8) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %for.end.clk_prepare_enable.exit_crit_edge
  %9 = ptrtoint ptr %ddc_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ddc_clk, align 4
  %call9 = tail call i32 @clk_set_rate(ptr noundef %10, i32 noundef 100000) #6
  %field_ddc_en = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %field_ddc_en to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %field_ddc_en, align 4
  %call.i99 = tail call i32 @regmap_field_update_bits_base(ptr noundef %12, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %field_ddc_reset = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 17
  %13 = ptrtoint ptr %field_ddc_reset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %field_ddc_reset, align 4
  %call.i100 = tail call i32 @regmap_field_update_bits_base(ptr noundef %14, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call12 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call12, 2000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 168) #6
  %15 = ptrtoint ptr %field_ddc_reset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %field_ddc_reset, align 4
  %call26130 = call i32 @regmap_field_read(ptr noundef %16, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26130)
  %tobool27.not131 = icmp eq i32 %call26130, 0
  br i1 %tobool27.not131, label %clk_prepare_enable.exit.lor.lhs.false_crit_edge, label %clk_prepare_enable.exit.cleanup.sink.split_crit_edge

clk_prepare_enable.exit.cleanup.sink.split_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

clk_prepare_enable.exit.lor.lhs.false_crit_edge:  ; preds = %clk_prepare_enable.exit
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then41.lor.lhs.false_crit_edge, %clk_prepare_enable.exit.lor.lhs.false_crit_edge
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool28.not = icmp eq i32 %18, 0
  br i1 %tobool28.not, label %lor.lhs.false.if.end52_crit_edge, label %land.lhs.true

lor.lhs.false.if.end52_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call32 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call32, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call32, %add.i
  br i1 %cmp3.i, label %for.end43, label %if.then41

if.then41:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #6
  %19 = ptrtoint ptr %field_ddc_reset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %field_ddc_reset, align 4
  %call26 = call i32 @regmap_field_read(ptr noundef %20, ptr noundef nonnull %reg) #6
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then41.lor.lhs.false_crit_edge, label %if.then41.cleanup.sink.split_crit_edge

if.then41.cleanup.sink.split_crit_edge:           ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then41.lor.lhs.false_crit_edge:                ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.end43:                                        ; preds = %land.lhs.true
  %21 = ptrtoint ptr %field_ddc_reset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %field_ddc_reset, align 4
  %call38 = call i32 @regmap_field_read(ptr noundef %22, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool44.not = icmp eq i32 %call38, 0
  br i1 %tobool44.not, label %lor.rhs, label %for.end43.cleanup.sink.split_crit_edge

for.end43.cleanup.sink.split_crit_edge:           ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

lor.rhs:                                          ; preds = %for.end43
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool45.not = icmp eq i32 %.pr, 0
  br i1 %tobool45.not, label %lor.rhs.if.end52_crit_edge, label %lor.rhs.cleanup.sink.split_crit_edge

lor.rhs.cleanup.sink.split_crit_edge:             ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

lor.rhs.if.end52_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.end52:                                         ; preds = %lor.rhs.if.end52_crit_edge, %lor.lhs.false.if.end52_crit_edge
  %field_ddc_sck_en = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 28
  %24 = ptrtoint ptr %field_ddc_sck_en to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %field_ddc_sck_en, align 8
  %call.i101 = call i32 @regmap_field_update_bits_base(ptr noundef %25, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %field_ddc_sda_en = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 27
  %26 = ptrtoint ptr %field_ddc_sda_en to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %field_ddc_sda_en, align 4
  %call.i102 = call i32 @regmap_field_update_bits_base(ptr noundef %27, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br i1 %cmp128, label %for.body58.lr.ph, label %if.end52.cleanup.sink.split_crit_edge

if.end52.cleanup.sink.split_crit_edge:            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.body58.lr.ph:                                 ; preds = %if.end52
  %variant.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 32
  %base.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 3
  %field_ddc_addr_reg.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 18
  %field_ddc_slave_addr.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 19
  %field_ddc_fifo_tx_thres.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 24
  %field_ddc_fifo_rx_thres.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 23
  %field_ddc_fifo_clear.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 22
  %field_ddc_byte_count.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 25
  %field_ddc_cmd.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 26
  %field_ddc_int_status.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 21
  %field_ddc_start.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 16
  br label %for.body58

for.body58:                                       ; preds = %for.inc64.for.body58_crit_edge, %for.body58.lr.ph
  %i.1133 = phi i32 [ 0, %for.body58.lr.ph ], [ %inc65, %for.inc64.for.body58_crit_edge ]
  %arrayidx59 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1133
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %28 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %reg.i, align 4, !annotation !15
  %29 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %variant.i, align 8
  %ddc_fifo_has_dir.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %30, i32 0, i32 25
  %31 = ptrtoint ptr %ddc_fifo_has_dir.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ddc_fifo_has_dir.i, align 1, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i103 = icmp eq i8 %32, 0
  br i1 %tobool.not.i103, label %for.body58.if.end.i104_crit_edge, label %if.then.i

for.body58.if.end.i104_crit_edge:                 ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i104

if.then.i:                                        ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 1280
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  %36 = and i32 %35, -65537
  %37 = call i32 @llvm.bswap.i32(i32 %36) #6
  %flags.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1133, i32 1
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flags.i, align 2
  %40 = shl i16 %39, 8
  %41 = and i16 %40, 256
  %42 = xor i16 %41, 256
  %43 = zext i16 %42 to i32
  %or.i = or i32 %37, %43
  %44 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or.i, ptr %reg.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !19
  call void @arm_heavy_mb() #6
  %45 = call i32 @llvm.bswap.i32(i32 %or.i) #6
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %47, i32 1280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %45) #6, !srcloc !20
  br label %if.end.i104

if.end.i104:                                      ; preds = %if.then.i, %for.body58.if.end.i104_crit_edge
  %48 = ptrtoint ptr %field_ddc_addr_reg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %field_ddc_addr_reg.i, align 8
  %call.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %49, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %50 = ptrtoint ptr %field_ddc_slave_addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %field_ddc_slave_addr.i, align 4
  %52 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx59, align 4
  %conv7.i = zext i16 %53 to i32
  %call.i204.i = call i32 @regmap_field_update_bits_base(ptr noundef %51, i32 noundef -1, i32 noundef %conv7.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %54 = ptrtoint ptr %field_ddc_fifo_tx_thres.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %field_ddc_fifo_tx_thres.i, align 8
  %56 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %variant.i, align 8
  %ddc_fifo_thres_incl.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %57, i32 0, i32 24
  %58 = ptrtoint ptr %ddc_fifo_thres_incl.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ddc_fifo_thres_incl.i, align 4, !range !16
  %60 = xor i8 %59, 1
  %61 = zext i8 %60 to i32
  %call.i205.i = call i32 @regmap_field_update_bits_base(ptr noundef %55, i32 noundef -1, i32 noundef %61, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %62 = ptrtoint ptr %field_ddc_fifo_rx_thres.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %field_ddc_fifo_rx_thres.i, align 4
  %call.i206.i = call i32 @regmap_field_update_bits_base(ptr noundef %63, i32 noundef -1, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %64 = ptrtoint ptr %field_ddc_fifo_clear.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %field_ddc_fifo_clear.i, align 8
  %call.i207.i = call i32 @regmap_field_update_bits_base(ptr noundef %65, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call16.i = call i64 @ktime_get() #6
  %add.i.i = add i64 %call16.i, 2000000
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 102) #6
  %66 = ptrtoint ptr %field_ddc_fifo_clear.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %field_ddc_fifo_clear.i, align 8
  %call31247.i = call i32 @regmap_field_read(ptr noundef %67, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31247.i)
  %tobool32.not248.i = icmp eq i32 %call31247.i, 0
  br i1 %tobool32.not248.i, label %if.end.i104.lor.lhs.false.i_crit_edge, label %if.end.i104.xfer_msg.exit.thread_crit_edge

if.end.i104.xfer_msg.exit.thread_crit_edge:       ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfer_msg.exit.thread

if.end.i104.lor.lhs.false.i_crit_edge:            ; preds = %if.end.i104
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then46.i.lor.lhs.false.i_crit_edge, %if.end.i104.lor.lhs.false.i_crit_edge
  %68 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool33.not.i = icmp eq i32 %69, 0
  br i1 %tobool33.not.i, label %lor.lhs.false.i.if.end57.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.end57.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call37.i = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call37.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call37.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then46.i

if.then46.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #6
  %70 = ptrtoint ptr %field_ddc_fifo_clear.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %field_ddc_fifo_clear.i, align 8
  %call31.i = call i32 @regmap_field_read(ptr noundef %71, ptr noundef nonnull %reg.i) #6
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.then46.i.lor.lhs.false.i_crit_edge, label %if.then46.i.xfer_msg.exit.thread_crit_edge

if.then46.i.xfer_msg.exit.thread_crit_edge:       ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfer_msg.exit.thread

if.then46.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %72 = ptrtoint ptr %field_ddc_fifo_clear.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %field_ddc_fifo_clear.i, align 8
  %call43.i = call i32 @regmap_field_read(ptr noundef %73, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool49.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool49.not.i, label %lor.rhs.i, label %for.end.i.xfer_msg.exit.thread_crit_edge

for.end.i.xfer_msg.exit.thread_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfer_msg.exit.thread

lor.rhs.i:                                        ; preds = %for.end.i
  %74 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr.i = load i32, ptr %reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool50.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool50.not.i, label %lor.rhs.i.if.end57.i_crit_edge, label %lor.rhs.i.xfer_msg.exit.thread_crit_edge

lor.rhs.i.xfer_msg.exit.thread_crit_edge:         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfer_msg.exit.thread

lor.rhs.i.if.end57.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i

if.end57.i:                                       ; preds = %lor.rhs.i.if.end57.i_crit_edge, %lor.lhs.false.i.if.end57.i_crit_edge
  %75 = ptrtoint ptr %field_ddc_byte_count.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %field_ddc_byte_count.i, align 4
  %len58.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1133, i32 2
  %77 = ptrtoint ptr %len58.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %len58.i, align 4
  %conv59.i = zext i16 %78 to i32
  %call.i208.i = call i32 @regmap_field_update_bits_base(ptr noundef %76, i32 noundef -1, i32 noundef %conv59.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %79 = ptrtoint ptr %field_ddc_cmd.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %field_ddc_cmd.i, align 8
  %flags61.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1133, i32 1
  %81 = ptrtoint ptr %flags61.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %flags61.i, align 2
  %83 = and i16 %82, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool64.not.i = icmp eq i16 %83, 0
  %cond65.i = select i1 %tobool64.not.i, i32 3, i32 5
  %call.i209.i = call i32 @regmap_field_update_bits_base(ptr noundef %80, i32 noundef -1, i32 noundef %cond65.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %84 = ptrtoint ptr %field_ddc_int_status.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %field_ddc_int_status.i, align 4
  %call.i210.i = call i32 @regmap_field_update_bits_base(ptr noundef %85, i32 noundef -1, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %86 = ptrtoint ptr %field_ddc_start.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %field_ddc_start.i, align 8
  %call.i211.i = call i32 @regmap_field_update_bits_base(ptr noundef %87, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %88 = ptrtoint ptr %len58.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %len58.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %cmp72250.not.i = icmp eq i16 %89, 0
  br i1 %cmp72250.not.i, label %if.end57.i.for.end87.i_crit_edge, label %for.body.lr.ph.i

if.end57.i.for.end87.i_crit_edge:                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end87.i

for.body.lr.ph.i:                                 ; preds = %if.end57.i
  %conv71249.i = zext i16 %89 to i32
  %buf.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1133, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv71252.i = phi i32 [ %conv71249.i, %for.body.lr.ph.i ], [ %conv71.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0251.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add86.i, %for.inc.i.for.body.i_crit_edge ]
  %90 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %buf.i, align 4
  %add.ptr74.i = getelementptr i8, ptr %91, i32 %i.0251.i
  %sub.i = sub i32 %conv71252.i, %i.0251.i
  %92 = ptrtoint ptr %flags61.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %flags61.i, align 2
  %94 = and i16 %93, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool80.not.i = icmp eq i16 %94, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #6
  %95 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !15
  br i1 %tobool80.not.i, label %for.body.i.cond.end.i.i_crit_edge, label %cond.true.i.i

for.body.i.cond.end.i.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %variant.i, align 8
  %ddc_fifo_thres_incl.i.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %97, i32 0, i32 24
  %98 = ptrtoint ptr %ddc_fifo_thres_incl.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %ddc_fifo_thres_incl.i.i, align 4, !range !16
  %narrow.i.i = sub nuw nsw i8 16, %99
  %add.i212.i = zext i8 %narrow.i.i to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %for.body.i.cond.end.i.i_crit_edge
  %cond2.i.i = phi i32 [ %add.i212.i, %cond.true.i.i ], [ 16, %for.body.i.cond.end.i.i_crit_edge ]
  %100 = call i32 @llvm.smin.i32(i32 %cond2.i.i, i32 %sub.i) #6
  %mul.i.i = mul i32 %100, 100
  %call.i213.i = call i64 @ktime_get() #6
  %add.i.i.i = add i64 %call.i213.i, 100000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp8.not.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %cmp8.not.i.i, label %cond.end.i.i.do.end14.i.i_crit_edge, label %do.body9.i.i

cond.end.i.i.do.end14.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i.i

do.body9.i.i:                                     ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 52) #6
  br label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.body9.i.i, %cond.end.i.i.do.end14.i.i_crit_edge
  %101 = ptrtoint ptr %field_ddc_int_status.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %field_ddc_int_status.i, align 4
  %call15101.i.i = call i32 @regmap_field_read(ptr noundef %102, ptr noundef nonnull %reg.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15101.i.i)
  %tobool16.not102.i.i = icmp eq i32 %call15101.i.i, 0
  br i1 %tobool16.not102.i.i, label %lor.lhs.false.lr.ph.i.i, label %do.end14.i.i.fifo_transfer.exit.thread.i_crit_edge

do.end14.i.i.fifo_transfer.exit.thread.i_crit_edge: ; preds = %do.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fifo_transfer.exit.thread.i

lor.lhs.false.lr.ph.i.i:                          ; preds = %do.end14.i.i
  %shr.i.i = lshr exact i32 %mul.i.i, 2
  %add30.i.i = add nuw nsw i32 %shr.i.i, 1
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.end31.i.i.lor.lhs.false.i.i_crit_edge, %lor.lhs.false.lr.ph.i.i
  %103 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %reg.i.i, align 4
  %and.i.i = and i32 %104, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool17.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool17.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.lor.rhs.i.i_crit_edge

lor.lhs.false.i.i.lor.rhs.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call21.i.i = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call21.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call21.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %if.end27.i.i

if.end27.i.i:                                     ; preds = %land.lhs.true.i.i
  br i1 %cmp8.not.i.i, label %if.end27.i.i.if.end31.i.i_crit_edge, label %if.then29.i.i

if.end27.i.i.if.end31.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i.i

if.then29.i.i:                                    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef %add30.i.i, i32 noundef %mul.i.i, i32 noundef 2) #6
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then29.i.i, %if.end27.i.i.if.end31.i.i_crit_edge
  %105 = ptrtoint ptr %field_ddc_int_status.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %field_ddc_int_status.i, align 4
  %call15.i.i = call i32 @regmap_field_read(ptr noundef %106, ptr noundef nonnull %reg.i.i) #6
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end31.i.i.lor.lhs.false.i.i_crit_edge, label %if.end31.i.i.fifo_transfer.exit.thread.i_crit_edge

if.end31.i.i.fifo_transfer.exit.thread.i_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fifo_transfer.exit.thread.i

if.end31.i.i.lor.lhs.false.i.i_crit_edge:         ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i.i

for.end.i.i:                                      ; preds = %land.lhs.true.i.i
  %107 = ptrtoint ptr %field_ddc_int_status.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %field_ddc_int_status.i, align 4
  %call26.i.i = call i32 @regmap_field_read(ptr noundef %108, ptr noundef nonnull %reg.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool33.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool33.not.i.i, label %for.end.i.i.lor.rhs.i.i_crit_edge, label %for.end.i.i.fifo_transfer.exit.thread.i_crit_edge

for.end.i.i.fifo_transfer.exit.thread.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fifo_transfer.exit.thread.i

for.end.i.i.lor.rhs.i.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %for.end.i.i.lor.rhs.i.i_crit_edge, %lor.lhs.false.i.i.lor.rhs.i.i_crit_edge
  %109 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %reg.i.i, align 4
  %and34.i.i = and i32 %110, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i)
  %tobool35.not.i.i = icmp eq i32 %and34.i.i, 0
  br i1 %tobool35.not.i.i, label %lor.rhs.i.i.fifo_transfer.exit.thread.i_crit_edge, label %if.end45.i.i

lor.rhs.i.i.fifo_transfer.exit.thread.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fifo_transfer.exit.thread.i

if.end45.i.i:                                     ; preds = %lor.rhs.i.i
  %and46.i.i = and i32 %110, 238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.i)
  %tobool47.not.i.i = icmp eq i32 %and46.i.i, 0
  br i1 %tobool47.not.i.i, label %if.end49.i.i, label %if.end45.i.i.fifo_transfer.exit.thread.i_crit_edge

if.end45.i.i.fifo_transfer.exit.thread.i_crit_edge: ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fifo_transfer.exit.thread.i

if.end49.i.i:                                     ; preds = %if.end45.i.i
  %111 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base.i, align 4
  %113 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %variant.i, align 8
  %ddc_fifo_reg.i.i = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %114, i32 0, i32 23
  %115 = ptrtoint ptr %ddc_fifo_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ddc_fifo_reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %112, i32 %116
  br i1 %tobool80.not.i, label %if.else.i.i, label %if.then51.i.i

if.then51.i.i:                                    ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__raw_readsb(ptr noundef %add.ptr.i.i, ptr noundef %add.ptr74.i, i32 noundef %100) #6
  br label %fifo_transfer.exit.i

if.else.i.i:                                      ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__raw_writesb(ptr noundef %add.ptr.i.i, ptr noundef %add.ptr74.i, i32 noundef %100) #6
  br label %fifo_transfer.exit.i

fifo_transfer.exit.thread.i:                      ; preds = %if.end45.i.i.fifo_transfer.exit.thread.i_crit_edge, %lor.rhs.i.i.fifo_transfer.exit.thread.i_crit_edge, %for.end.i.i.fifo_transfer.exit.thread.i_crit_edge, %if.end31.i.i.fifo_transfer.exit.thread.i_crit_edge, %do.end14.i.i.fifo_transfer.exit.thread.i_crit_edge
  %retval.0.i214.ph.i = phi i32 [ -110, %if.end31.i.i.fifo_transfer.exit.thread.i_crit_edge ], [ -110, %lor.rhs.i.i.fifo_transfer.exit.thread.i_crit_edge ], [ -110, %do.end14.i.i.fifo_transfer.exit.thread.i_crit_edge ], [ -110, %for.end.i.i.fifo_transfer.exit.thread.i_crit_edge ], [ -5, %if.end45.i.i.fifo_transfer.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #6
  br label %xfer_msg.exit.thread

fifo_transfer.exit.i:                             ; preds = %if.else.i.i, %if.then51.i.i
  %117 = ptrtoint ptr %field_ddc_int_status.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %field_ddc_int_status.i, align 4
  %call.i.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %118, i32 noundef -1, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %100)
  %cmp82.i = icmp slt i32 %100, 1
  br i1 %cmp82.i, label %xfer_msg.exit, label %for.inc.i

for.inc.i:                                        ; preds = %fifo_transfer.exit.i
  %add86.i = add i32 %100, %i.0251.i
  %119 = ptrtoint ptr %len58.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %len58.i, align 4
  %conv71.i = zext i16 %120 to i32
  %cmp72.i = icmp slt i32 %add86.i, %conv71.i
  br i1 %cmp72.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end87.i_crit_edge

for.inc.i.for.end87.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end87.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end87.i:                                      ; preds = %for.inc.i.for.end87.i_crit_edge, %if.end57.i.for.end87.i_crit_edge
  %call93.i = call i64 @ktime_get() #6
  %add.i215.i = add i64 %call93.i, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 133) #6
  %121 = ptrtoint ptr %field_ddc_start.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %field_ddc_start.i, align 8
  %call110253.i = call i32 @regmap_field_read(ptr noundef %122, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110253.i)
  %tobool111.not254.i = icmp eq i32 %call110253.i, 0
  br i1 %tobool111.not254.i, label %for.end87.i.lor.lhs.false112.i_crit_edge, label %for.end87.i.xfer_msg.exit.thread_crit_edge

for.end87.i.xfer_msg.exit.thread_crit_edge:       ; preds = %for.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfer_msg.exit.thread

for.end87.i.lor.lhs.false112.i_crit_edge:         ; preds = %for.end87.i
  br label %lor.lhs.false112.i

lor.lhs.false112.i:                               ; preds = %if.then127.i.lor.lhs.false112.i_crit_edge, %for.end87.i.lor.lhs.false112.i_crit_edge
  %123 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool113.not.i = icmp eq i32 %124, 0
  br i1 %tobool113.not.i, label %lor.lhs.false112.i.if.end147.i_crit_edge, label %land.lhs.true117.i

lor.lhs.false112.i.if.end147.i_crit_edge:         ; preds = %lor.lhs.false112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147.i

land.lhs.true117.i:                               ; preds = %lor.lhs.false112.i
  %call118.i = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call118.i, i64 %add.i215.i)
  %cmp3.i217.i = icmp sgt i64 %call118.i, %add.i215.i
  br i1 %cmp3.i217.i, label %for.end131.i, label %if.then127.i

if.then127.i:                                     ; preds = %land.lhs.true117.i
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #6
  %125 = ptrtoint ptr %field_ddc_start.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %field_ddc_start.i, align 8
  %call110.i = call i32 @regmap_field_read(ptr noundef %126, ptr noundef nonnull %reg.i) #6
  %tobool111.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool111.not.i, label %if.then127.i.lor.lhs.false112.i_crit_edge, label %if.then127.i.xfer_msg.exit.thread_crit_edge

if.then127.i.xfer_msg.exit.thread_crit_edge:      ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfer_msg.exit.thread

if.then127.i.lor.lhs.false112.i_crit_edge:        ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false112.i

for.end131.i:                                     ; preds = %land.lhs.true117.i
  %127 = ptrtoint ptr %field_ddc_start.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %field_ddc_start.i, align 8
  %call124.i = call i32 @regmap_field_read(ptr noundef %128, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124.i)
  %tobool133.not.i = icmp eq i32 %call124.i, 0
  br i1 %tobool133.not.i, label %lor.rhs134.i, label %for.end131.i.xfer_msg.exit.thread_crit_edge

for.end131.i.xfer_msg.exit.thread_crit_edge:      ; preds = %for.end131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfer_msg.exit.thread

lor.rhs134.i:                                     ; preds = %for.end131.i
  %129 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %.pr266.i = load i32, ptr %reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr266.i)
  %tobool135.not.i = icmp eq i32 %.pr266.i, 0
  br i1 %tobool135.not.i, label %lor.rhs134.i.if.end147.i_crit_edge, label %lor.rhs134.i.xfer_msg.exit.thread_crit_edge

lor.rhs134.i.xfer_msg.exit.thread_crit_edge:      ; preds = %lor.rhs134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfer_msg.exit.thread

lor.rhs134.i.if.end147.i_crit_edge:               ; preds = %lor.rhs134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147.i

if.end147.i:                                      ; preds = %lor.rhs134.i.if.end147.i_crit_edge, %lor.lhs.false112.i.if.end147.i_crit_edge
  %130 = ptrtoint ptr %field_ddc_int_status.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %field_ddc_int_status.i, align 4
  %call149.i = call i32 @regmap_field_read(ptr noundef %131, ptr noundef nonnull %reg.i) #6
  %132 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %reg.i, align 4
  %134 = and i32 %133, 239
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %.not.i = icmp eq i32 %134, 1
  br i1 %.not.i, label %xfer_msg.exit.thread117, label %if.end147.i.xfer_msg.exit.thread_crit_edge

if.end147.i.xfer_msg.exit.thread_crit_edge:       ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfer_msg.exit.thread

xfer_msg.exit.thread117:                          ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br label %for.inc64

xfer_msg.exit.thread:                             ; preds = %if.end147.i.xfer_msg.exit.thread_crit_edge, %lor.rhs134.i.xfer_msg.exit.thread_crit_edge, %for.end131.i.xfer_msg.exit.thread_crit_edge, %if.then127.i.xfer_msg.exit.thread_crit_edge, %for.end87.i.xfer_msg.exit.thread_crit_edge, %fifo_transfer.exit.thread.i, %lor.rhs.i.xfer_msg.exit.thread_crit_edge, %for.end.i.xfer_msg.exit.thread_crit_edge, %if.then46.i.xfer_msg.exit.thread_crit_edge, %if.end.i104.xfer_msg.exit.thread_crit_edge
  %retval.0.i105.ph = phi i32 [ %retval.0.i214.ph.i, %fifo_transfer.exit.thread.i ], [ -5, %if.then127.i.xfer_msg.exit.thread_crit_edge ], [ -5, %if.then46.i.xfer_msg.exit.thread_crit_edge ], [ -5, %for.end87.i.xfer_msg.exit.thread_crit_edge ], [ -5, %lor.rhs134.i.xfer_msg.exit.thread_crit_edge ], [ -5, %for.end131.i.xfer_msg.exit.thread_crit_edge ], [ -5, %if.end.i104.xfer_msg.exit.thread_crit_edge ], [ -5, %lor.rhs.i.xfer_msg.exit.thread_crit_edge ], [ -5, %for.end.i.xfer_msg.exit.thread_crit_edge ], [ -5, %if.end147.i.xfer_msg.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br label %cleanup.sink.split

xfer_msg.exit:                                    ; preds = %fifo_transfer.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool61.not = icmp eq i32 %100, 0
  br i1 %tobool61.not, label %xfer_msg.exit.for.inc64_crit_edge, label %xfer_msg.exit.cleanup.sink.split_crit_edge

xfer_msg.exit.cleanup.sink.split_crit_edge:       ; preds = %xfer_msg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

xfer_msg.exit.for.inc64_crit_edge:                ; preds = %xfer_msg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc64

for.inc64:                                        ; preds = %xfer_msg.exit.for.inc64_crit_edge, %xfer_msg.exit.thread117
  %inc65 = add nuw nsw i32 %i.1133, 1
  %exitcond144.not = icmp eq i32 %inc65, %num
  br i1 %exitcond144.not, label %for.inc64.cleanup.sink.split_crit_edge, label %for.inc64.for.body58_crit_edge

for.inc64.for.body58_crit_edge:                   ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body58

for.inc64.cleanup.sink.split_crit_edge:           ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.inc64.cleanup.sink.split_crit_edge, %xfer_msg.exit.cleanup.sink.split_crit_edge, %xfer_msg.exit.thread, %if.end52.cleanup.sink.split_crit_edge, %lor.rhs.cleanup.sink.split_crit_edge, %for.end43.cleanup.sink.split_crit_edge, %if.then41.cleanup.sink.split_crit_edge, %clk_prepare_enable.exit.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -5, %for.end43.cleanup.sink.split_crit_edge ], [ -5, %lor.rhs.cleanup.sink.split_crit_edge ], [ -5, %clk_prepare_enable.exit.cleanup.sink.split_crit_edge ], [ %retval.0.i105.ph, %xfer_msg.exit.thread ], [ %num, %if.end52.cleanup.sink.split_crit_edge ], [ %num, %for.inc64.cleanup.sink.split_crit_edge ], [ %100, %xfer_msg.exit.cleanup.sink.split_crit_edge ], [ -5, %if.then41.cleanup.sink.split_crit_edge ]
  %135 = ptrtoint ptr %ddc_clk to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ddc_clk, align 4
  call void @clk_disable(ptr noundef %136) #6
  call void @clk_unprepare(ptr noundef %136) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.ph, %cleanup.sink.split ], [ -22, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun4i_hdmi_i2c_func(ptr nocapture noundef readnone %adap) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c", i32 307, i32 22}
!2 = !{ptr @sun4i_hdmi_i2c_algorithm, !3, !"sun4i_hdmi_i2c_algorithm", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c", i32 193, i32 35}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c", i32 167, i32 6}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
!16 = !{i8 0, i8 2}
!17 = !{i64 6862322}
!18 = !{i64 2156856509}
!19 = !{i64 2156856837}
!20 = !{i64 6861904}
