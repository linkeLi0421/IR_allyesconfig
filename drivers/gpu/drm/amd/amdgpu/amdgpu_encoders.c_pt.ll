; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_encoders.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_encoders.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
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
%struct.anon.89 = type { i32, ptr }
%struct.amdgpu_connector = type { %struct.drm_connector, i32, i32, ptr, i8, i8, ptr, ptr, i8, i8, i16, %struct.amdgpu_hpd, %struct.amdgpu_router, ptr, i32, i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.amdgpu_hpd = type { i32, i8, %struct.amdgpu_gpio_rec }
%struct.amdgpu_gpio_rec = type { i8, i8, i32, i32, i32 }
%struct.amdgpu_router = type { i32, %struct.amdgpu_i2c_bus_rec, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.amdgpu_i2c_bus_rec = type { i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.amdgpu_connector_atom_dig = type { [15 x i8], [16 x i8], i8, i32, i32, i8 }

@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"setting active device to %08x from %08x %08x for encoder %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 10, i64 11, i64 12]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [48 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_encoders.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 75, i32 4 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_link_encoder_connector(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #4
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !11
  %1 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !11
  call void @drm_connector_list_iter_begin(ptr noundef %dev, ptr noundef nonnull %iter) #4
  %call139 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #4
  %tobool.not40 = icmp eq ptr %call139, null
  br i1 %tobool.not40, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 16
  %bl_encoder = getelementptr i8, ptr %dev, i32 22132
  br label %while.body

while.cond.loopexit:                              ; preds = %for.inc.while.cond.loopexit_crit_edge, %while.body.while.cond.loopexit_crit_edge
  %call1 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %while.cond.loopexit.while.end_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %call141 = phi ptr [ %call139, %while.body.lr.ph ], [ %call1, %while.cond.loopexit.while.body_crit_edge ]
  %3 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn34 = load ptr, ptr %encoder_list, align 4
  %cmp.not36 = icmp eq ptr %.pn34, %encoder_list
  br i1 %cmp.not36, label %while.body.while.cond.loopexit_crit_edge, label %for.body.lr.ph

while.body.while.cond.loopexit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.loopexit

for.body.lr.ph:                                   ; preds = %while.body
  %devices10 = getelementptr inbounds %struct.amdgpu_connector, ptr %call141, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn37 = phi ptr [ %.pn34, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %encoder.038 = getelementptr i8, ptr %.pn37, i32 -4
  %devices = getelementptr i8, ptr %.pn37, i32 76
  %4 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devices, align 4
  %6 = ptrtoint ptr %devices10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devices10, align 4
  %and = and i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call12 = call i32 @drm_connector_attach_encoder(ptr noundef nonnull %call141, ptr noundef %encoder.038) #4
  %8 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devices, align 4
  %and14 = and i32 %9, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then.for.inc_crit_edge, label %if.then16

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void @amdgpu_atombios_encoder_init_backlight(ptr noundef %encoder.038, ptr noundef nonnull %call141) #4
  %10 = ptrtoint ptr %bl_encoder to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %encoder.038, ptr %bl_encoder, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn37 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn37, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.inc.while.cond.loopexit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.while.cond.loopexit_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.loopexit

while.end:                                        ; preds = %while.cond.loopexit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_encoder_init_backlight(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_encoder_set_active_device(ptr noundef %encoder) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #4
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !11
  %3 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !11
  call void @drm_connector_list_iter_begin(ptr noundef %1, ptr noundef nonnull %iter) #4
  %call18 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #4
  %tobool.not19 = icmp eq ptr %call18, null
  br i1 %tobool.not19, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %devices = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  %active_device = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 4
  %encoder_type = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %call20 = phi ptr [ %call18, %while.body.lr.ph ], [ %call, %if.end.while.body_crit_edge ]
  %encoder2 = getelementptr inbounds %struct.drm_connector, ptr %call20, i32 0, i32 41
  %5 = ptrtoint ptr %encoder2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %encoder2, align 4
  %cmp = icmp eq ptr %6, %encoder
  br i1 %cmp, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devices, align 4
  %devices6 = getelementptr inbounds %struct.amdgpu_connector, ptr %call20, i32 0, i32 2
  %9 = ptrtoint ptr %devices6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %devices6, align 4
  %and = and i32 %10, %8
  %11 = ptrtoint ptr %active_device to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and, ptr %active_device, align 4
  %12 = load i32, ptr %devices6, align 4
  %13 = ptrtoint ptr %encoder_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %encoder_type, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %and, i32 noundef %8, i32 noundef %12, i32 noundef %14) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %call = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amdgpu_get_connector_for_encoder(ptr nocapture noundef readonly %encoder) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #4
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !11
  %3 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !11
  call void @drm_connector_list_iter_begin(ptr noundef %1, ptr noundef nonnull %iter) #4
  %active_device = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %call = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %while.cond
  %5 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %active_device, align 4
  %devices = getelementptr inbounds %struct.amdgpu_connector, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devices, align 4
  %and = and i32 %8, %6
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %while.body.while.cond_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #4
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amdgpu_get_connector_for_encoder_init(ptr nocapture noundef readonly %encoder) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #4
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !11
  %3 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !11
  call void @drm_connector_list_iter_begin(ptr noundef %1, ptr noundef nonnull %iter) #4
  %devices = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %call = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %while.cond
  %5 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %devices, align 4
  %devices5 = getelementptr inbounds %struct.amdgpu_connector, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %devices5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devices5, align 4
  %and = and i32 %8, %6
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %while.body.while.cond_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #4
  ret ptr %call
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amdgpu_get_external_encoder(ptr noundef readonly %encoder) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %is_ext_encoder = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 14
  %0 = ptrtoint ptr %is_ext_encoder to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_ext_encoder, align 4, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 16
  %devices = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  %4 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn36 = load ptr, ptr %encoder_list, align 4
  %cmp.not38 = icmp eq ptr %.pn36, %encoder_list
  br i1 %cmp.not38, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn39 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn36, %if.end.for.body_crit_edge ]
  %other_encoder.040 = getelementptr i8, ptr %.pn39, i32 -4
  %cmp7 = icmp eq ptr %other_encoder.040, %encoder
  br i1 %cmp7, label %for.body.for.inc_crit_edge, label %if.end9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %is_ext_encoder13 = getelementptr i8, ptr %.pn39, i32 228
  %5 = ptrtoint ptr %is_ext_encoder13 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_ext_encoder13, align 4, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool14.not = icmp eq i8 %6, 0
  br i1 %tobool14.not, label %if.end9.for.inc_crit_edge, label %land.lhs.true

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end9
  %7 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devices, align 4
  %devices15 = getelementptr i8, ptr %.pn39, i32 76
  %9 = ptrtoint ptr %devices15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %devices15, align 4
  %and = and i32 %10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end9.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn39, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %other_encoder.040, %land.lhs.true.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @amdgpu_encoder_get_dp_bridge_encoder_id(ptr noundef readonly %encoder) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %is_ext_encoder.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 14
  %0 = ptrtoint ptr %is_ext_encoder.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_ext_encoder.i, align 4, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup2_crit_edge

entry.cleanup2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup2

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 16
  %devices.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  %4 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn36.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not38.i = icmp eq ptr %.pn36.i, %encoder_list.i
  br i1 %cmp.not38.i, label %if.end.i.cleanup2_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.cleanup2_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup2

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn39.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn36.i, %if.end.i.for.body.i_crit_edge ]
  %other_encoder.040.i = getelementptr i8, ptr %.pn39.i, i32 -4
  %cmp7.i = icmp eq ptr %other_encoder.040.i, %encoder
  br i1 %cmp7.i, label %for.body.i.for.inc.i_crit_edge, label %if.end9.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end9.i:                                        ; preds = %for.body.i
  %is_ext_encoder13.i = getelementptr i8, ptr %.pn39.i, i32 228
  %5 = ptrtoint ptr %is_ext_encoder13.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_ext_encoder13.i, align 4, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool14.not.i = icmp eq i8 %6, 0
  br i1 %tobool14.not.i, label %if.end9.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.end9.i.for.inc.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  %7 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devices.i, align 4
  %devices15.i = getelementptr i8, ptr %.pn39.i, i32 76
  %9 = ptrtoint ptr %devices15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %devices15.i, align 4
  %and.i = and i32 %10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %amdgpu_get_external_encoder.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end9.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %.pn39.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn39.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup2_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.cleanup2_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup2

amdgpu_get_external_encoder.exit:                 ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %other_encoder.040.i, null
  br i1 %tobool.not, label %amdgpu_get_external_encoder.exit.cleanup2_crit_edge, label %if.then

amdgpu_get_external_encoder.exit.cleanup2_crit_edge: ; preds = %amdgpu_get_external_encoder.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup2

if.then:                                          ; preds = %amdgpu_get_external_encoder.exit
  call void @__sanitizer_cov_trace_pc() #6
  %encoder_id = getelementptr i8, ptr %.pn39.i, i32 72
  %12 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %encoder_id, align 4
  %14 = and i32 %13, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %14)
  %switch = icmp eq i32 %14, 34
  %conv = trunc i32 %13 to i16
  %spec.select = select i1 %switch, i16 %conv, i16 0
  br label %cleanup2

cleanup2:                                         ; preds = %if.then, %amdgpu_get_external_encoder.exit.cleanup2_crit_edge, %for.inc.i.cleanup2_crit_edge, %if.end.i.cleanup2_crit_edge, %entry.cleanup2_crit_edge
  %retval.1 = phi i16 [ 0, %amdgpu_get_external_encoder.exit.cleanup2_crit_edge ], [ 0, %entry.cleanup2_crit_edge ], [ 0, %if.end.i.cleanup2_crit_edge ], [ %spec.select, %if.then ], [ 0, %for.inc.i.cleanup2_crit_edge ]
  ret i16 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_panel_mode_fixup(ptr nocapture noundef readonly %encoder, ptr noundef %adjusted_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %native_mode1 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 11
  %htotal = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 11, i32 4
  %0 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %htotal, align 2
  %hdisplay = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay, align 4
  %sub = sub i16 %1, %3
  %vtotal = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 11, i32 9
  %4 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vtotal, align 4
  %vdisplay = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 11, i32 6
  %6 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vdisplay, align 2
  %sub5 = sub i16 %5, %7
  %hsync_start = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 11, i32 2
  %8 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hsync_start, align 2
  %sub9 = sub i16 %9, %3
  %vsync_start = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 11, i32 7
  %10 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vsync_start, align 4
  %sub13 = sub i16 %11, %7
  %hsync_end = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 11, i32 3
  %12 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hsync_end, align 4
  %sub17 = sub i16 %13, %9
  %vsync_end = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 11, i32 8
  %14 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vsync_end, align 2
  %sub21 = sub i16 %15, %11
  %16 = ptrtoint ptr %native_mode1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %native_mode1, align 4
  %18 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %adjusted_mode, align 4
  %flags = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 11, i32 11
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %flags23 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 11
  %21 = ptrtoint ptr %flags23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %flags23, align 4
  %22 = load i16, ptr %hdisplay, align 4
  %hdisplay25 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 1
  %23 = ptrtoint ptr %hdisplay25 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %hdisplay25, align 4
  %24 = load i16, ptr %vdisplay, align 2
  %vdisplay27 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 6
  %25 = ptrtoint ptr %vdisplay27 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %vdisplay27, align 2
  %26 = load i16, ptr %hdisplay, align 4
  %conv30 = add i16 %26, %sub
  %htotal31 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 4
  %27 = ptrtoint ptr %htotal31 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv30, ptr %htotal31, align 2
  %28 = load i16, ptr %hdisplay, align 4
  %conv35 = add i16 %28, %sub9
  %hsync_start36 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 2
  %29 = ptrtoint ptr %hsync_start36 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv35, ptr %hsync_start36, align 2
  %conv40 = add i16 %conv35, %sub17
  %hsync_end41 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 3
  %30 = ptrtoint ptr %hsync_end41 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv40, ptr %hsync_end41, align 4
  %31 = load i16, ptr %vdisplay, align 2
  %conv45 = add i16 %31, %sub5
  %vtotal46 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 9
  %32 = ptrtoint ptr %vtotal46 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv45, ptr %vtotal46, align 4
  %33 = load i16, ptr %vdisplay, align 2
  %conv50 = add i16 %33, %sub13
  %vsync_start51 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 7
  %34 = ptrtoint ptr %vsync_start51 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv50, ptr %vsync_start51, align 4
  %conv55 = add i16 %conv50, %sub21
  %vsync_end56 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 8
  %35 = ptrtoint ptr %vsync_end56 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv55, ptr %vsync_end56, align 2
  tail call void @drm_mode_set_crtcinfo(ptr noundef %adjusted_mode, i32 noundef 1) #4
  %36 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hdisplay, align 4
  %crtc_hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 13
  %38 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %crtc_hdisplay, align 4
  %39 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vdisplay, align 2
  %crtc_vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 20
  %41 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %crtc_vdisplay, align 2
  %conv62 = add i16 %37, %sub
  %crtc_htotal = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 18
  %42 = ptrtoint ptr %crtc_htotal to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv62, ptr %crtc_htotal, align 2
  %conv66 = add i16 %37, %sub9
  %crtc_hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 16
  %43 = ptrtoint ptr %crtc_hsync_start to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv66, ptr %crtc_hsync_start, align 2
  %conv70 = add i16 %conv66, %sub17
  %crtc_hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 17
  %44 = ptrtoint ptr %crtc_hsync_end to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv70, ptr %crtc_hsync_end, align 4
  %conv74 = add i16 %40, %sub5
  %crtc_vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 25
  %45 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv74, ptr %crtc_vtotal, align 4
  %conv78 = add i16 %40, %sub13
  %crtc_vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 23
  %46 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv78, ptr %crtc_vsync_start, align 4
  %conv82 = add i16 %conv78, %sub21
  %crtc_vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 24
  %47 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv82, ptr %crtc_vsync_end, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_crtcinfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr nocapture noundef readonly %encoder, i32 noundef %pixel_clock) local_unnamed_addr #0 align 64 {
entry:
  %iter.i49 = alloca %struct.drm_connector_list_iter, align 4
  %iter.i = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter.i) #4
  %2 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter.i, align 4, !annotation !11
  %3 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !11
  call void @drm_connector_list_iter_begin(ptr noundef %1, ptr noundef nonnull %iter.i) #4
  %active_device.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %call.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %5 = ptrtoint ptr %active_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %active_device.i, align 4
  %devices.i = getelementptr inbounds %struct.amdgpu_connector, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devices.i, align 4
  %and.i = and i32 %8, %6
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %while.body.i.while.cond.i_crit_edge, label %amdgpu_get_connector_for_encoder.exit

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

amdgpu_get_connector_for_encoder.exit:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i) #4
  br label %if.end

if.then:                                          ; preds = %while.cond.i
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i) #4
  %9 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %encoder, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter.i49) #4
  %11 = ptrtoint ptr %iter.i49 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter.i49, align 4, !annotation !11
  %12 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter.i49, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %12, align 4, !annotation !11
  call void @drm_connector_list_iter_begin(ptr noundef %10, ptr noundef nonnull %iter.i49) #4
  %devices.i50 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  br label %while.cond.i53

while.cond.i53:                                   ; preds = %while.body.i55.while.cond.i53_crit_edge, %if.then
  %call.i51 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i49) #4
  %tobool.not.i52 = icmp eq ptr %call.i51, null
  br i1 %tobool.not.i52, label %while.cond.i53.amdgpu_get_connector_for_encoder_init.exit_crit_edge, label %while.body.i55

while.cond.i53.amdgpu_get_connector_for_encoder_init.exit_crit_edge: ; preds = %while.cond.i53
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_get_connector_for_encoder_init.exit

while.body.i55:                                   ; preds = %while.cond.i53
  %14 = ptrtoint ptr %devices.i50 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %devices.i50, align 4
  %devices5.i = getelementptr inbounds %struct.amdgpu_connector, ptr %call.i51, i32 0, i32 2
  %16 = ptrtoint ptr %devices5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %devices5.i, align 4
  %and.i54 = and i32 %17, %15
  %tobool6.not.i = icmp eq i32 %and.i54, 0
  br i1 %tobool6.not.i, label %while.body.i55.while.cond.i53_crit_edge, label %while.body.i55.amdgpu_get_connector_for_encoder_init.exit_crit_edge

while.body.i55.amdgpu_get_connector_for_encoder_init.exit_crit_edge: ; preds = %while.body.i55
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_get_connector_for_encoder_init.exit

while.body.i55.while.cond.i53_crit_edge:          ; preds = %while.body.i55
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i53

amdgpu_get_connector_for_encoder_init.exit:       ; preds = %while.body.i55.amdgpu_get_connector_for_encoder_init.exit_crit_edge, %while.cond.i53.amdgpu_get_connector_for_encoder_init.exit_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i49) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i49) #4
  br label %if.end

if.end:                                           ; preds = %amdgpu_get_connector_for_encoder_init.exit, %amdgpu_get_connector_for_encoder.exit
  %connector.0 = phi ptr [ %call.i, %amdgpu_get_connector_for_encoder.exit ], [ %call.i51, %amdgpu_get_connector_for_encoder_init.exit ]
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector.0, i32 0, i32 10
  %18 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %connector_type, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %if.end.cleanup_crit_edge [
    i32 2, label %if.end.sw.bb_crit_edge
    i32 12, label %if.end.sw.bb_crit_edge62
    i32 3, label %if.end.sw.bb12_crit_edge
    i32 11, label %if.end.sw.bb12_crit_edge63
    i32 10, label %if.end.sw.bb12_crit_edge64
  ]

if.end.sw.bb12_crit_edge64:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb12

if.end.sw.bb12_crit_edge63:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb12

if.end.sw.bb12_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb12

if.end.sw.bb_crit_edge62:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge62
  %use_digital = getelementptr inbounds %struct.amdgpu_connector, ptr %connector.0, i32 0, i32 5
  %21 = ptrtoint ptr %use_digital to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %use_digital, align 1, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool2.not = icmp eq i8 %22, 0
  br i1 %tobool2.not, label %sw.bb.cleanup_crit_edge, label %if.then3

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %sw.bb
  %is_hdmi = getelementptr inbounds %struct.drm_connector, ptr %connector.0, i32 0, i32 20, i32 11
  %23 = ptrtoint ptr %is_hdmi to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_hdmi, align 1, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool4.not = icmp eq i8 %24, 0
  br i1 %tobool4.not, label %if.else7, label %if.then5

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000, i32 %pixel_clock)
  %cmp = icmp ugt i32 %pixel_clock, 340000
  br label %cleanup

if.else7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000, i32 %pixel_clock)
  %cmp8 = icmp ugt i32 %pixel_clock, 165000
  br label %cleanup

sw.bb12:                                          ; preds = %if.end.sw.bb12_crit_edge, %if.end.sw.bb12_crit_edge63, %if.end.sw.bb12_crit_edge64
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %connector.0, i32 0, i32 7
  %25 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %con_priv, align 4
  %dp_sink_type = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dp_sink_type to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dp_sink_type, align 1
  %.off = add i8 %28, -19
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %sw.bb12.cleanup_crit_edge, label %if.else20

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else20:                                        ; preds = %sw.bb12
  %is_hdmi22 = getelementptr inbounds %struct.drm_connector, ptr %connector.0, i32 0, i32 20, i32 11
  %29 = ptrtoint ptr %is_hdmi22 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %is_hdmi22, align 1, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool23.not = icmp eq i8 %30, 0
  br i1 %tobool23.not, label %if.else29, label %if.then24

if.then24:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000, i32 %pixel_clock)
  %cmp25 = icmp ugt i32 %pixel_clock, 340000
  br label %cleanup

if.else29:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000, i32 %pixel_clock)
  %cmp30 = icmp ugt i32 %pixel_clock, 165000
  br label %cleanup

cleanup:                                          ; preds = %if.else29, %if.then24, %sw.bb12.cleanup_crit_edge, %if.else7, %if.then5, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.then5 ], [ %cmp8, %if.else7 ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %sw.bb12.cleanup_crit_edge ], [ %cmp25, %if.then24 ], [ %cmp30, %if.else29 ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_encoders.c", i32 75, i32 4}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
!12 = !{i8 0, i8 2}
