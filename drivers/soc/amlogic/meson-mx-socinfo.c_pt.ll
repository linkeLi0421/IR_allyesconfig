; ModuleID = '/llk/IR_all_yes/drivers/soc/amlogic/meson-mx-socinfo.c_pt.bc'
source_filename = "../drivers/soc/amlogic/meson-mx-socinfo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_meson_mx_socinfo__183_175_meson_mx_socinfo_init6 = internal global ptr @meson_mx_socinfo_init, section ".initcall6.init", align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amlogic,meson-mx-assist\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amlogic,meson-mx-bootrom\00", [39 x i8] zeroinitializer }, align 32
@meson_mx_socinfo_analog_top_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-analog-top\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-analog-top\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Amlogic Meson\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@meson_mx_socinfo_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 171, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Amlogic %s %s detected\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"meson_mx_socinfo_init\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/soc/amlogic/meson-mx-socinfo.c\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_mx_socinfo_init._entry_ptr = internal global ptr @meson_mx_socinfo_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Rev%X (%x - 0:%X)\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Meson6 (AML8726-MX)\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Meson8m2 (S812)\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Meson8 (S802)\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Meson8b (S805)\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 22, i64 25, i64 27]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 286331153, i64 286331154, i64 286331155, i64 286331187]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 22, i64 25, i64 27]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 117, i32 38 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 122, i32 38 }
@___asan_gen_.24 = private unnamed_addr constant [32 x i8] c"meson_mx_socinfo_analog_top_ids\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 101, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 152, i32 25 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 154, i32 28 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 155, i32 30 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 170, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 67, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 78, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 83, i32 13 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 85, i32 13 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 90, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [42 x i8] c"../drivers/soc/amlogic/meson-mx-socinfo.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 94, i32 12 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__initcall__kmod_meson_mx_socinfo__183_175_meson_mx_socinfo_init6, ptr @meson_mx_socinfo_init._entry, ptr @meson_mx_socinfo_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @meson_mx_socinfo_analog_top_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_socinfo_analog_top_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_socinfo_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mx_socinfo_init() #0 section ".init.text" align 64 {
entry:
  %major_ver = alloca i32, align 4
  %misc_ver = alloca i32, align 4
  %metal_rev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %major_ver) #5
  %0 = ptrtoint ptr %major_ver to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %major_ver, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %misc_ver) #5
  %1 = ptrtoint ptr %misc_ver to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %misc_ver, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %metal_rev) #5
  %2 = ptrtoint ptr %metal_rev to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %metal_rev, align 4
  %call = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.1) #5
  %cmp.i80 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @meson_mx_socinfo_analog_top_ids, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end7.if.end19_crit_edge, label %if.then9

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then9:                                         ; preds = %if.end7
  %call10 = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %call.i) #5
  %cmp.i81 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.then9
  %call15 = call i32 @regmap_read(ptr noundef %call10, i32 noundef 0, ptr noundef nonnull %metal_rev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.if.end19_crit_edge, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.end19:                                         ; preds = %if.end14.if.end19_crit_edge, %if.end7.if.end19_crit_edge
  %call20 = call i32 @regmap_read(ptr noundef %call, i32 noundef 332, ptr noundef nonnull %major_ver) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %if.end19.cleanup_crit_edge, label %if.end22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  %call23 = call i32 @regmap_read(ptr noundef %call3, i32 noundef 4, ptr noundef nonnull %misc_ver) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 28) #8
  %tobool28.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %if.end30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %family = getelementptr inbounds %struct.soc_device_attribute, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %family to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.2, ptr %family, align 4
  %call.i82 = call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.3, ptr noundef null) #5
  %call32 = call i32 @of_property_read_string(ptr noundef %call.i82, ptr noundef nonnull @.str.4, ptr noundef nonnull %call7.i.i) #5
  call void @of_node_put(ptr noundef %call.i82) #5
  %8 = ptrtoint ptr %major_ver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %major_ver, align 4
  %10 = ptrtoint ptr %misc_ver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %misc_ver, align 4
  %12 = ptrtoint ptr %metal_rev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %metal_rev, align 4
  %14 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %sw.default.i [
    i32 22, label %if.end30.meson_mx_socinfo_revision.exit_crit_edge
    i32 25, label %sw.bb1.i
    i32 27, label %sw.bb14.i
  ]

if.end30.meson_mx_socinfo_revision.exit_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_mx_socinfo_revision.exit

sw.bb1.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 286331154, i32 %13)
  %cmp.i83 = icmp eq i32 %13, 286331154
  %spec.select.i = select i1 %cmp.i83, i32 29, i32 25
  %15 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %13, label %if.else10.i [
    i32 286331154, label %sw.bb1.i.meson_mx_socinfo_revision.exit_crit_edge
    i32 286331153, label %sw.bb1.i.meson_mx_socinfo_revision.exit_crit_edge90
    i32 286331155, label %sw.epilog.fold.split.i
    i32 286331187, label %if.then9.i
  ]

sw.bb1.i.meson_mx_socinfo_revision.exit_crit_edge90: ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_mx_socinfo_revision.exit

sw.bb1.i.meson_mx_socinfo_revision.exit_crit_edge: ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_mx_socinfo_revision.exit

if.then9.i:                                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_mx_socinfo_revision.exit

if.else10.i:                                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_mx_socinfo_revision.exit

sw.bb14.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 286331153, i32 %13)
  %cmp15.i = icmp eq i32 %13, 286331153
  %..i = select i1 %cmp15.i, i32 10, i32 11
  br label %meson_mx_socinfo_revision.exit

sw.default.i:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_mx_socinfo_revision.exit

sw.epilog.fold.split.i:                           ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_mx_socinfo_revision.exit

meson_mx_socinfo_revision.exit:                   ; preds = %sw.epilog.fold.split.i, %sw.default.i, %sw.bb14.i, %if.else10.i, %if.then9.i, %sw.bb1.i.meson_mx_socinfo_revision.exit_crit_edge, %sw.bb1.i.meson_mx_socinfo_revision.exit_crit_edge90, %if.end30.meson_mx_socinfo_revision.exit_crit_edge
  %major_ver.addr.1.i = phi i32 [ %9, %sw.default.i ], [ %spec.select.i, %if.then9.i ], [ %spec.select.i, %if.else10.i ], [ %9, %if.end30.meson_mx_socinfo_revision.exit_crit_edge ], [ %spec.select.i, %sw.bb1.i.meson_mx_socinfo_revision.exit_crit_edge ], [ 27, %sw.bb14.i ], [ %spec.select.i, %sw.bb1.i.meson_mx_socinfo_revision.exit_crit_edge90 ], [ %spec.select.i, %sw.epilog.fold.split.i ]
  %minor_ver.0.i = phi i32 [ 0, %sw.default.i ], [ 12, %if.then9.i ], [ 13, %if.else10.i ], [ 10, %if.end30.meson_mx_socinfo_revision.exit_crit_edge ], [ 10, %sw.bb1.i.meson_mx_socinfo_revision.exit_crit_edge ], [ %..i, %sw.bb14.i ], [ 10, %sw.bb1.i.meson_mx_socinfo_revision.exit_crit_edge90 ], [ 11, %sw.epilog.fold.split.i ]
  %call.i84 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.10, i32 noundef %minor_ver.0.i, i32 noundef %major_ver.addr.1.i, i32 noundef %11) #5
  %revision = getelementptr inbounds %struct.soc_device_attribute, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i84, ptr %revision, align 8
  %17 = ptrtoint ptr %major_ver to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %major_ver, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %18, label %sw.default.i87 [
    i32 22, label %meson_mx_socinfo_revision.exit.meson_mx_socinfo_soc_id.exit_crit_edge
    i32 25, label %sw.bb1.i86
    i32 27, label %sw.bb2.i
  ]

meson_mx_socinfo_revision.exit.meson_mx_socinfo_soc_id.exit_crit_edge: ; preds = %meson_mx_socinfo_revision.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_mx_socinfo_soc_id.exit

sw.bb1.i86:                                       ; preds = %meson_mx_socinfo_revision.exit
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %metal_rev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %metal_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 286331154, i32 %21)
  %cmp.i85 = icmp eq i32 %21, 286331154
  %.str.12..str.13.i = select i1 %cmp.i85, ptr @.str.12, ptr @.str.13
  br label %meson_mx_socinfo_soc_id.exit

sw.bb2.i:                                         ; preds = %meson_mx_socinfo_revision.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_mx_socinfo_soc_id.exit

sw.default.i87:                                   ; preds = %meson_mx_socinfo_revision.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_mx_socinfo_soc_id.exit

meson_mx_socinfo_soc_id.exit:                     ; preds = %sw.default.i87, %sw.bb2.i, %sw.bb1.i86, %meson_mx_socinfo_revision.exit.meson_mx_socinfo_soc_id.exit_crit_edge
  %soc_id.0.i = phi ptr [ @.str.15, %sw.default.i87 ], [ @.str.14, %sw.bb2.i ], [ @.str.11, %meson_mx_socinfo_revision.exit.meson_mx_socinfo_soc_id.exit_crit_edge ], [ %.str.12..str.13.i, %sw.bb1.i86 ]
  %call.i88 = call ptr @kstrdup_const(ptr noundef nonnull %soc_id.0.i, i32 noundef 3264) #5
  %soc_id = getelementptr inbounds %struct.soc_device_attribute, ptr %call7.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %soc_id to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i88, ptr %soc_id, align 8
  %call35 = call ptr @soc_device_register(ptr noundef nonnull %call7.i.i) #5
  %cmp.i89 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %if.then37, label %do.end

if.then37:                                        ; preds = %meson_mx_socinfo_soc_id.exit
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %revision, align 8
  call void @kfree_const(ptr noundef %24) #5
  %25 = ptrtoint ptr %soc_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %soc_id, align 8
  call void @kfree_const(ptr noundef %26) #5
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %27 = ptrtoint ptr %call35 to i32
  br label %cleanup

do.end:                                           ; preds = %meson_mx_socinfo_soc_id.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call42 = call ptr @soc_device_to_device(ptr noundef %call35) #5
  %28 = ptrtoint ptr %soc_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %soc_id, align 8
  %30 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %revision, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %call42, ptr noundef nonnull @.str.5, ptr noundef %29, ptr noundef %31) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then37, %if.end26.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then12, %if.then5, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %4, %if.then5 ], [ %5, %if.then12 ], [ %27, %if.then37 ], [ 0, %do.end ], [ %call15, %if.end14.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ -19, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metal_rev) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %misc_ver) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %major_ver) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_to_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_meson_mx_socinfo__183_175_meson_mx_socinfo_init6, !1, !"__initcall__kmod_meson_mx_socinfo__183_175_meson_mx_socinfo_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/amlogic/meson-mx-socinfo.c", i32 175, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/amlogic/meson-mx-socinfo.c", i32 117, i32 38}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/soc/amlogic/meson-mx-socinfo.c", i32 122, i32 38}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/soc/amlogic/meson-mx-socinfo.c", i32 152, i32 25}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soc/amlogic/meson-mx-socinfo.c", i32 154, i32 28}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/amlogic/meson-mx-socinfo.c", i32 155, i32 30}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/amlogic/meson-mx-socinfo.c", i32 170, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @meson_mx_socinfo_init._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @meson_mx_socinfo_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @meson_mx_socinfo_analog_top_ids, !21, !"meson_mx_socinfo_analog_top_ids", i1 false, i1 false}
!21 = !{!"../drivers/soc/amlogic/meson-mx-socinfo.c", i32 101, i32 34}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/amlogic/meson-mx-socinfo.c", i32 67, i32 31}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/amlogic/meson-mx-socinfo.c", i32 78, i32 12}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/amlogic/meson-mx-socinfo.c", i32 83, i32 13}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/amlogic/meson-mx-socinfo.c", i32 85, i32 13}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soc/amlogic/meson-mx-socinfo.c", i32 90, i32 12}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/soc/amlogic/meson-mx-socinfo.c", i32 94, i32 12}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
