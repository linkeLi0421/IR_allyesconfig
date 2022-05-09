; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rcar-du/rcar_du_of.c_pt.bc'
source_filename = "../drivers/gpu/drm/rcar-du/rcar_du_of.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rcar_du_of_overlay = type { ptr, ptr, ptr }
%struct.of_changeset = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lvds_of_data = type { %struct.resource, %struct.of_phandle_args, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rcar_du_device_info = type { i32, i32, i32, i32, [9 x %struct.rcar_du_output_routing], i32, i32, i32, i32 }
%struct.rcar_du_output_routing = type { i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/rcar-du/rcar_du_of.c\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"renesas,%s-lvds\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lvds.%u\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clocks\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#clock-cells\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-names\00", [22 x i8] zeroinitializer }, align 32
@rcar_du_lvds_overlays = internal constant [6 x %struct.rcar_du_of_overlay] [%struct.rcar_du_of_overlay { ptr @.str.7, ptr @__dtb_rcar_du_of_lvds_r8a7790_begin, ptr @__dtb_rcar_du_of_lvds_r8a7790_end }, %struct.rcar_du_of_overlay { ptr @.str.8, ptr @__dtb_rcar_du_of_lvds_r8a7791_begin, ptr @__dtb_rcar_du_of_lvds_r8a7791_end }, %struct.rcar_du_of_overlay { ptr @.str.9, ptr @__dtb_rcar_du_of_lvds_r8a7793_begin, ptr @__dtb_rcar_du_of_lvds_r8a7793_end }, %struct.rcar_du_of_overlay { ptr @.str.10, ptr @__dtb_rcar_du_of_lvds_r8a7795_begin, ptr @__dtb_rcar_du_of_lvds_r8a7795_end }, %struct.rcar_du_of_overlay { ptr @.str.11, ptr @__dtb_rcar_du_of_lvds_r8a7796_begin, ptr @__dtb_rcar_du_of_lvds_r8a7796_end }, %struct.rcar_du_of_overlay zeroinitializer], section ".init.rodata", align 4
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"renesas,du-r8a7790\00", [45 x i8] zeroinitializer }, align 32
@__dtb_rcar_du_of_lvds_r8a7790_begin = external dso_local global [0 x i8], align 1
@__dtb_rcar_du_of_lvds_r8a7790_end = external dso_local global [0 x i8], align 1
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"renesas,du-r8a7791\00", [45 x i8] zeroinitializer }, align 32
@__dtb_rcar_du_of_lvds_r8a7791_begin = external dso_local global [0 x i8], align 1
@__dtb_rcar_du_of_lvds_r8a7791_end = external dso_local global [0 x i8], align 1
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"renesas,du-r8a7793\00", [45 x i8] zeroinitializer }, align 32
@__dtb_rcar_du_of_lvds_r8a7793_begin = external dso_local global [0 x i8], align 1
@__dtb_rcar_du_of_lvds_r8a7793_end = external dso_local global [0 x i8], align 1
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"renesas,du-r8a7795\00", [45 x i8] zeroinitializer }, align 32
@__dtb_rcar_du_of_lvds_r8a7795_begin = external dso_local global [0 x i8], align 1
@__dtb_rcar_du_of_lvds_r8a7795_end = external dso_local global [0 x i8], align 1
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"renesas,du-r8a7796\00", [45 x i8] zeroinitializer }, align 32
@__dtb_rcar_du_of_lvds_r8a7796_begin = external dso_local global [0 x i8], align 1
@__dtb_rcar_du_of_lvds_r8a7796_end = external dso_local global [0 x i8], align 1
@rcar_du_lvds_changeset = internal global { %struct.of_changeset, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"remote-endpoint\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 218, i32 6 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 231, i32 22 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 249, i32 17 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 250, i32 45 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 254, i32 45 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 255, i32 8 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 270, i32 45 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 112, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 113, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 114, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 115, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 116, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [23 x i8] c"rcar_du_lvds_changeset\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 120, i32 28 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [40 x i8] c"../drivers/gpu/drm/rcar-du/rcar_du_of.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 174, i32 22 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @rcar_du_lvds_changeset, ptr @.str.12], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_lvds_changeset to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @rcar_du_of_init(ptr noundef %of_ids) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rcar_du_of_lvds_patch(ptr noundef %of_ids) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_du_of_lvds_patch(ptr noundef %of_ids) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %match = alloca ptr, align 4
  %lvds_data = alloca [2 x %struct.lvds_of_data], align 4
  %compatible = alloca [22 x i8], align 1
  %name = alloca [7 x i8], align 1
  %res81 = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #6
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %lvds_data) #6
  %1 = call ptr @memset(ptr %lvds_data, i32 0, i32 224)
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %compatible) #6
  %2 = call ptr @memset(ptr %compatible, i32 255, i32 22)
  %call = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef %of_ids, ptr noundef nonnull %match) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %call) #6
  br i1 %call1, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @of_node_put(ptr noundef %call) #6
  br label %cleanup131

if.end:                                           ; preds = %lor.lhs.false
  %3 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %match, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %call2 = call ptr @of_get_parent(ptr noundef nonnull %call) #6
  %num_lvds = getelementptr inbounds %struct.rcar_du_device_info, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %num_lvds to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_lvds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp ugt i32 %8, 2
  br i1 %cmp, label %do.end, label %if.end26.critedge, !prof !40

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 218, i32 noundef 9, ptr noundef null) #6
  br label %done

if.end26.critedge:                                ; preds = %if.end
  %9 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %match, align 4
  %compatible27 = getelementptr inbounds %struct.of_device_id, ptr %10, i32 0, i32 2
  %call28 = call ptr @strchr(ptr noundef %compatible27, i32 noundef 45)
  %add.ptr = getelementptr i8, ptr %call28, i32 1
  %call30 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %compatible, ptr noundef nonnull @.str.1, ptr noundef %add.ptr)
  %call32 = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull %compatible) #6
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %for.cond.preheader, label %if.then34

for.cond.preheader:                               ; preds = %if.end26.critedge
  %11 = ptrtoint ptr %num_lvds to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_lvds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp37194.not = icmp eq i32 %12, 0
  br i1 %cmp37194.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then34:                                        ; preds = %if.end26.critedge
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %call32) #6
  br label %cleanup131

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0195 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.lvds_of_data], ptr %lvds_data, i32 0, i32 %i.0195
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %name) #6
  %13 = call ptr @memset(ptr %name, i32 255, i32 7)
  %call39 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.2, i32 noundef %i.0195)
  %call41 = call i32 @of_property_match_string(ptr noundef nonnull %call, ptr noundef nonnull @.str.3, ptr noundef nonnull %name) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %for.body.cleanup_crit_edge, label %if.end44

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %for.body
  %clkspec = getelementptr [2 x %struct.lvds_of_data], ptr %lvds_data, i32 0, i32 %i.0195, i32 1
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef -1, i32 noundef %call41, ptr noundef %clkspec) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp46 = icmp slt i32 %call.i, 0
  br i1 %cmp46, label %if.end44.cleanup_crit_edge, label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %add = add i32 %i.0195, 6
  %port50 = getelementptr %struct.rcar_du_device_info, ptr %6, i32 0, i32 4, i32 %add, i32 1
  %14 = ptrtoint ptr %port50 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port50, align 4
  %call51 = call ptr @of_graph_get_endpoint_by_regs(ptr noundef nonnull %call, i32 noundef %15, i32 noundef 0) #6
  %local = getelementptr [2 x %struct.lvds_of_data], ptr %lvds_data, i32 0, i32 %i.0195, i32 2
  %16 = ptrtoint ptr %local to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call51, ptr %local, align 4
  %tobool53.not = icmp eq ptr %call51, null
  br i1 %tobool53.not, label %if.end48.cleanup_crit_edge, label %if.end55

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end55:                                         ; preds = %if.end48
  %call57 = call ptr @of_graph_get_remote_endpoint(ptr noundef nonnull %call51) #6
  %remote = getelementptr [2 x %struct.lvds_of_data], ptr %lvds_data, i32 0, i32 %i.0195, i32 3
  %17 = ptrtoint ptr %remote to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call57, ptr %remote, align 4
  %tobool59.not = icmp eq ptr %call57, null
  br i1 %tobool59.not, label %if.end55.cleanup_crit_edge, label %if.end61

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end61:                                         ; preds = %if.end55
  %call63 = call i32 @of_property_match_string(ptr noundef nonnull %call, ptr noundef nonnull @.str.6, ptr noundef nonnull %name) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end61.cleanup_crit_edge, label %if.end66

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %call67 = call i32 @of_address_to_resource(ptr noundef nonnull %call, i32 noundef %call63, ptr noundef %arrayidx) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.end61.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %name) #6
  %inc = add nuw i32 %i.0195, 1
  %18 = ptrtoint ptr %num_lvds to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_lvds, align 4
  %cmp37 = icmp ult i32 %inc, %19
  br i1 %cmp37, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %20 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %match, align 4
  %compatible71 = getelementptr inbounds %struct.of_device_id, ptr %21, i32 0, i32 2
  %call73 = call fastcc i32 @rcar_du_of_apply_overlay(ptr noundef %compatible71) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %for.end.done_crit_edge, label %if.end76

for.end.done_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end76:                                         ; preds = %for.end
  %call77 = call ptr @of_get_next_child(ptr noundef %call2, ptr noundef null) #6
  %cmp79.not198 = icmp eq ptr %call77, null
  br i1 %cmp79.not198, label %if.end76.done_crit_edge, label %if.end76.for.body80_crit_edge

if.end76.for.body80_crit_edge:                    ; preds = %if.end76
  br label %for.body80

if.end76.done_crit_edge:                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

for.body80:                                       ; preds = %cleanup112.for.body80_crit_edge, %if.end76.for.body80_crit_edge
  %lvds_node.0199 = phi ptr [ %call116, %cleanup112.for.body80_crit_edge ], [ %call77, %if.end76.for.body80_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res81) #6
  %22 = call ptr @memset(ptr %res81, i32 255, i32 32)
  %call83 = call i32 @of_device_is_compatible(ptr noundef nonnull %lvds_node.0199, ptr noundef nonnull %compatible) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %for.body80.cleanup112_crit_edge, label %if.end86

for.body80.cleanup112_crit_edge:                  ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup112

if.end86:                                         ; preds = %for.body80
  %call87 = call i32 @of_address_to_resource(ptr noundef nonnull %lvds_node.0199, i32 noundef 0, ptr noundef nonnull %res81) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %if.end86.cleanup112_crit_edge, label %for.cond91.preheader

if.end86.cleanup112_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup112

for.cond91.preheader:                             ; preds = %if.end86
  %23 = ptrtoint ptr %res81 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %res81, align 4
  br label %for.body93

for.body93:                                       ; preds = %for.inc100.for.body93_crit_edge, %for.cond91.preheader
  %cmp92 = phi i1 [ true, %for.cond91.preheader ], [ false, %for.inc100.for.body93_crit_edge ]
  %i.1197 = phi i32 [ 0, %for.cond91.preheader ], [ 1, %for.inc100.for.body93_crit_edge ]
  %arrayidx94 = getelementptr [2 x %struct.lvds_of_data], ptr %lvds_data, i32 0, i32 %i.1197
  %25 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx94, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %24)
  %cmp97 = icmp eq i32 %26, %24
  br i1 %cmp97, label %if.end105, label %for.inc100

for.inc100:                                       ; preds = %for.body93
  br i1 %cmp92, label %for.inc100.for.body93_crit_edge, label %for.inc100.cleanup112_crit_edge

for.inc100.cleanup112_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup112

for.inc100.for.body93_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body93

if.end105:                                        ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #8
  %clkspec107 = getelementptr [2 x %struct.lvds_of_data], ptr %lvds_data, i32 0, i32 %i.1197, i32 1
  %local109 = getelementptr [2 x %struct.lvds_of_data], ptr %lvds_data, i32 0, i32 %i.1197, i32 2
  %27 = ptrtoint ptr %local109 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %local109, align 4
  %remote111 = getelementptr [2 x %struct.lvds_of_data], ptr %lvds_data, i32 0, i32 %i.1197, i32 3
  %29 = ptrtoint ptr %remote111 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %remote111, align 4
  call fastcc void @rcar_du_of_lvds_patch_one(ptr noundef nonnull %lvds_node.0199, ptr noundef %clkspec107, ptr noundef %28, ptr noundef %30) #9
  br label %cleanup112

cleanup112:                                       ; preds = %if.end105, %for.inc100.cleanup112_crit_edge, %if.end86.cleanup112_crit_edge, %for.body80.cleanup112_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res81) #6
  %call116 = call ptr @of_get_next_child(ptr noundef %call2, ptr noundef nonnull %lvds_node.0199) #6
  %cmp79.not = icmp eq ptr %call116, null
  br i1 %cmp79.not, label %cleanup112.done_crit_edge, label %cleanup112.for.body80_crit_edge

cleanup112.for.body80_crit_edge:                  ; preds = %cleanup112
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body80

cleanup112.done_crit_edge:                        ; preds = %cleanup112
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

done:                                             ; preds = %cleanup112.done_crit_edge, %if.end76.done_crit_edge, %for.end.done_crit_edge, %do.end
  %31 = ptrtoint ptr %num_lvds to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_lvds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp120201.not = icmp eq i32 %32, 0
  br i1 %cmp120201.not, label %done.for.end130_crit_edge, label %done.for.body121_crit_edge

done.for.body121_crit_edge:                       ; preds = %done
  br label %for.body121

done.for.end130_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end130

for.body121:                                      ; preds = %for.body121.for.body121_crit_edge, %done.for.body121_crit_edge
  %i.2202 = phi i32 [ %inc129, %for.body121.for.body121_crit_edge ], [ 0, %done.for.body121_crit_edge ]
  %clkspec123 = getelementptr [2 x %struct.lvds_of_data], ptr %lvds_data, i32 0, i32 %i.2202, i32 1
  %33 = ptrtoint ptr %clkspec123 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clkspec123, align 4
  call void @of_node_put(ptr noundef %34) #6
  %local125 = getelementptr [2 x %struct.lvds_of_data], ptr %lvds_data, i32 0, i32 %i.2202, i32 2
  %35 = ptrtoint ptr %local125 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %local125, align 4
  call void @of_node_put(ptr noundef %36) #6
  %remote127 = getelementptr [2 x %struct.lvds_of_data], ptr %lvds_data, i32 0, i32 %i.2202, i32 3
  %37 = ptrtoint ptr %remote127 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %remote127, align 4
  call void @of_node_put(ptr noundef %38) #6
  %inc129 = add nuw i32 %i.2202, 1
  %39 = ptrtoint ptr %num_lvds to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_lvds, align 4
  %cmp120 = icmp ult i32 %inc129, %40
  br i1 %cmp120, label %for.body121.for.body121_crit_edge, label %for.body121.for.end130_crit_edge

for.body121.for.end130_crit_edge:                 ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end130

for.body121.for.body121_crit_edge:                ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body121

for.end130:                                       ; preds = %for.body121.for.end130_crit_edge, %done.for.end130_crit_edge
  call void @of_node_put(ptr noundef %call2) #6
  call void @of_node_put(ptr noundef nonnull %call) #6
  br label %cleanup131

cleanup131:                                       ; preds = %for.end130, %if.then34, %if.then
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %compatible) #6
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %lvds_data) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_endpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_du_of_apply_overlay(ptr nocapture noundef readonly %compatible) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %ovcs_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ovcs_id) #6
  %call13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(19) @.str.7, ptr noundef %compatible) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool4.not14 = icmp eq i32 %call13, 0
  br i1 %tobool4.not14, label %entry.for.end_crit_edge, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  br label %for.inc

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc
  %arrayidx = getelementptr %struct.rcar_du_of_overlay, ptr @rcar_du_lvds_overlays, i32 %inc
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef %compatible) #10
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %for.body.for.end_crit_edge, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %entry.for.inc_crit_edge
  %i.0515 = phi i32 [ %inc, %for.body.for.inc_crit_edge ], [ 0, %entry.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0515, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc)
  %exitcond = icmp eq i32 %inc, 5
  br i1 %exitcond, label %for.inc.cleanup_crit_edge, label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cmp = icmp eq ptr %arrayidx, null
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %arrayidx6.lcssa = phi i1 [ %phi.cmp, %for.body.for.end_crit_edge ], [ false, %entry.for.end_crit_edge ]
  %i.05.lcssa = phi i32 [ %inc, %for.body.for.end_crit_edge ], [ 0, %entry.for.end_crit_edge ]
  br i1 %arrayidx6.lcssa, label %for.end.cleanup_crit_edge, label %if.end8

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %ovcs_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ovcs_id, align 4
  %begin = getelementptr %struct.rcar_du_of_overlay, ptr @rcar_du_lvds_overlays, i32 %i.05.lcssa, i32 1
  %3 = ptrtoint ptr %begin to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %begin, align 4
  %end = getelementptr %struct.rcar_du_of_overlay, ptr @rcar_du_lvds_overlays, i32 %i.05.lcssa, i32 2
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %4 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call10 = call i32 @of_overlay_fdt_apply(ptr noundef %4, i32 noundef %sub.ptr.sub, ptr noundef nonnull %ovcs_id) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end8 ], [ -19, %for.end.cleanup_crit_edge ], [ -19, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ovcs_id) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_du_of_lvds_patch_one(ptr noundef %lvds, ptr nocapture noundef readonly %clk, ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %remote) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %value = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %value) #6
  %0 = getelementptr inbounds [4 x i32], ptr %value, i32 0, i32 1
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %clk, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %value, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  %3 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp ugt i32 %4, 2
  br i1 %cmp, label %entry.cleanup32_crit_edge, label %if.end

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.end:                                           ; preds = %entry
  tail call void @of_changeset_init(ptr noundef nonnull @rcar_du_lvds_changeset) #6
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %phandle = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %phandle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phandle, align 4
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 4
  %10 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp258.not = icmp eq i32 %11, 0
  br i1 %cmp258.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %uglygep61 = getelementptr i8, ptr %clk, i32 8
  %12 = shl i32 %11, 2
  %13 = call ptr @memcpy(ptr %0, ptr %uglygep61, i32 %12)
  %phi.bo = add i32 %12, 4
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %if.end.for.end_crit_edge
  %add6.pre-phi = phi i32 [ %phi.bo, %for.body.preheader ], [ 4, %if.end.for.end_crit_edge ]
  %call = call fastcc i32 @rcar_du_of_add_property(ptr noundef %lvds, ptr noundef nonnull @.str.4, ptr noundef nonnull %value, i32 noundef %add6.pre-phi) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %for.end.if.then30_crit_edge, label %if.end9

for.end.if.then30_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

if.end9:                                          ; preds = %for.end
  %phandle10 = getelementptr inbounds %struct.device_node, ptr %local, i32 0, i32 1
  %14 = ptrtoint ptr %phandle10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phandle10, align 4
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %value, align 4
  %phandle12 = getelementptr inbounds %struct.device_node, ptr %remote, i32 0, i32 1
  %17 = ptrtoint ptr %phandle12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phandle12, align 4
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %0, align 4
  br label %for.body16

for.cond14:                                       ; preds = %if.end19
  br i1 %cmp15, label %for.cond14.for.body16_crit_edge, label %done

for.cond14.for.body16_crit_edge:                  ; preds = %for.cond14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body16

for.body16:                                       ; preds = %for.cond14.for.body16_crit_edge, %if.end9
  %cmp15 = phi i1 [ true, %if.end9 ], [ false, %for.cond14.for.body16_crit_edge ]
  %i.160 = phi i32 [ 0, %if.end9 ], [ 1, %for.cond14.for.body16_crit_edge ]
  %call17 = call ptr @of_graph_get_endpoint_by_regs(ptr noundef %lvds, i32 noundef %i.160, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call17, null
  br i1 %tobool.not, label %for.body16.if.then30_crit_edge, label %if.end19

for.body16.if.then30_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

if.end19:                                         ; preds = %for.body16
  %arrayidx20 = getelementptr [4 x i32], ptr %value, i32 0, i32 %i.160
  %call21 = call fastcc i32 @rcar_du_of_add_property(ptr noundef nonnull %call17, ptr noundef nonnull @.str.12, ptr noundef %arrayidx20, i32 noundef 4) #9
  call void @of_node_put(ptr noundef nonnull %call17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end19.if.then30_crit_edge, label %for.cond14

if.end19.if.then30_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

done:                                             ; preds = %for.cond14
  %call28 = call i32 @of_changeset_apply(ptr noundef nonnull @rcar_du_lvds_changeset) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %done.if.then30_crit_edge, label %done.cleanup32_crit_edge

done.cleanup32_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

done.if.then30_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

if.then30:                                        ; preds = %done.if.then30_crit_edge, %if.end19.if.then30_crit_edge, %for.body16.if.then30_crit_edge, %for.end.if.then30_crit_edge
  call void @of_changeset_destroy(ptr noundef nonnull @rcar_du_lvds_changeset) #6
  br label %cleanup32

cleanup32:                                        ; preds = %if.then30, %done.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %value) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_overlay_fdt_apply(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_changeset_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_du_of_add_property(ptr noundef %np, ptr noundef %name, ptr noundef %value, i32 noundef %length) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #6
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call7.i.i, align 8
  %tobool4.not = icmp eq ptr %call1, null
  br i1 %tobool4.not, label %if.end.out_err_crit_edge, label %if.end6

if.end.out_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @kmemdup(ptr noundef %value, i32 noundef %length, i32 noundef 3264) #6
  %value8 = getelementptr inbounds %struct.property, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %value8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %value8, align 8
  %tobool10.not = icmp eq ptr %call7, null
  br i1 %tobool10.not, label %if.end6.out_err_crit_edge, label %if.end12

if.end6.out_err_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.end12:                                         ; preds = %if.end6
  %_flags.i = getelementptr inbounds %struct.property, ptr %call7.i.i, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %_flags.i) #6
  %length13 = getelementptr inbounds %struct.property, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %length13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %length, ptr %length13, align 4
  %call.i = tail call i32 @of_changeset_action(ptr noundef nonnull @rcar_du_lvds_changeset, i32 noundef 3, ptr noundef %np, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.end12.out_err_crit_edge

if.end12.out_err_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out_err:                                          ; preds = %if.end12.out_err_crit_edge, %if.end6.out_err_crit_edge, %if.end.out_err_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end12.out_err_crit_edge ], [ -12, %if.end6.out_err_crit_edge ], [ -12, %if.end.out_err_crit_edge ]
  %value18 = getelementptr inbounds %struct.property, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %value18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %value18, align 8
  tail call void @kfree(ptr noundef %5) #6
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %7) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_err ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_changeset_apply(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_changeset_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_changeset_action(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { nobuiltin }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_of.c", i32 218, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_of.c", i32 231, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_of.c", i32 249, i32 17}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_of.c", i32 250, i32 45}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_of.c", i32 254, i32 45}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_of.c", i32 255, i32 8}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_of.c", i32 270, i32 45}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_of.c", i32 112, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_of.c", i32 113, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_of.c", i32 114, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_of.c", i32 115, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_of.c", i32 116, i32 2}
!24 = !{ptr @rcar_du_lvds_overlays, !25, !"rcar_du_lvds_overlays", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_of.c", i32 111, i32 40}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_of.c", i32 174, i32 22}
!28 = !{ptr @rcar_du_lvds_changeset, !29, !"rcar_du_lvds_changeset", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_of.c", i32 120, i32 28}
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
!40 = !{!"branch_weights", i32 1, i32 2000}
