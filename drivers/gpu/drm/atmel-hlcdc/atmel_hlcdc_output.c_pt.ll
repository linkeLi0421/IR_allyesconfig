; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c_pt.bc'
source_filename = "../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atmel_hlcdc_rgb_output = type { %struct.drm_encoder, i32 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.85 = type { i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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

@atmel_hlcdc_attach_endpoint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 94, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"endpoint %d: invalid bus width\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"atmel_hlcdc_attach_endpoint\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_hlcdc_attach_endpoint._entry_ptr = internal global ptr @atmel_hlcdc_attach_endpoint._entry, section ".printk_index", align 4
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bus-width\00", [22 x i8] zeroinitializer }, align 32
@switch.table.atmel_hlcdc_create_outputs = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 4118, i32 4118, i32 4119, i32 4105, i32 4118, i32 4118, i32 4106], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 94, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [52 x i8] c"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 46, i32 33 }
@___asan_gen_.28 = private unnamed_addr constant [40 x i8] c"switch.table.atmel_hlcdc_create_outputs\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @atmel_hlcdc_attach_endpoint._entry, ptr @atmel_hlcdc_attach_endpoint._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @switch.table.atmel_hlcdc_create_outputs], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_attach_endpoint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atmel_hlcdc_create_outputs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @atmel_hlcdc_encoder_get_bus_fmt(ptr nocapture noundef readonly %encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_fmt = getelementptr inbounds %struct.atmel_hlcdc_rgb_output, ptr %encoder, i32 0, i32 1
  %0 = ptrtoint ptr %bus_fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bus_fmt, align 4
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atmel_hlcdc_create_outputs(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  %bus_width.i.i = alloca i32, align 4
  %panel.i = alloca ptr, align 4
  %bridge.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %attached.041 = phi i32 [ 0, %entry ], [ %attached.1, %for.inc.for.body_crit_edge ]
  %endpoint.036 = phi i32 [ 0, %entry ], [ %inc5, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel.i) #6
  %0 = ptrtoint ptr %panel.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel.i, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bridge.i) #6
  %1 = ptrtoint ptr %bridge.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bridge.i, align 4, !annotation !19
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %call.i = call ptr @of_graph_get_endpoint_by_regs(ptr noundef %5, i32 noundef 0, i32 noundef %endpoint.036) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %atmel_hlcdc_attach_endpoint.exit.thread21, label %if.end.i

atmel_hlcdc_attach_endpoint.exit.thread21:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #6
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 4
  %of_node3.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node3.i, align 8
  %call4.i = call i32 @drm_of_find_panel_or_bridge(ptr noundef %9, i32 noundef 0, i32 noundef %endpoint.036, ptr noundef nonnull %panel.i, ptr noundef nonnull %bridge.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %call.i) #6
  br label %atmel_hlcdc_attach_endpoint.exit

if.end7.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i, align 4
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 76, i32 noundef 3520) #6
  %tobool10.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %call.i) #6
  br label %atmel_hlcdc_attach_endpoint.exit.thread

if.end12.i:                                       ; preds = %if.end7.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_width.i.i) #6
  %12 = ptrtoint ptr %bus_width.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %bus_width.i.i, align 4, !annotation !19
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.5, ptr noundef nonnull %bus_width.i.i, i32 noundef 1, i32 noundef 0) #6
  %13 = call i32 @llvm.smin.i32(i32 %call.i.i.i.i, i32 0) #6
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.end12.i.do.end.i_crit_edge [
    i32 -22, label %if.end12.i.if.end17.i_crit_edge
    i32 0, label %if.end2.i.i
  ]

if.end12.i.if.end17.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.end12.i.do.end.i_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end2.i.i:                                      ; preds = %if.end12.i
  %15 = ptrtoint ptr %bus_width.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bus_width.i.i, align 4
  %17 = add i32 %16, -12
  %18 = call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %18)
  %19 = icmp ult i32 %18, 7
  br i1 %19, label %switch.hole_check, label %if.end2.i.i.do.end.i_crit_edge

if.end2.i.i.do.end.i_crit_edge:                   ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %switch.hole_check.do.end.i_crit_edge, %if.end2.i.i.do.end.i_crit_edge, %if.end12.i.do.end.i_crit_edge
  %retval.0.i.i = phi i32 [ %13, %if.end12.i.do.end.i_crit_edge ], [ -22, %if.end2.i.i.do.end.i_crit_edge ], [ -22, %switch.hole_check.do.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_width.i.i) #6
  %bus_fmt.i = getelementptr inbounds %struct.atmel_hlcdc_rgb_output, ptr %call.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %bus_fmt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i.i, ptr %bus_fmt.i, align 4
  call void @of_node_put(ptr noundef nonnull %call.i) #6
  %21 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str, i32 noundef %endpoint.036) #9
  br label %atmel_hlcdc_attach_endpoint.exit.thread

switch.hole_check:                                ; preds = %if.end2.i.i
  %switch.maskindex = trunc i32 %18 to i8
  %switch.shifted = lshr i8 77, %switch.maskindex
  %23 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %switch.lobit.not = icmp eq i8 %23, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i_crit_edge, label %switch.lookup

switch.hole_check.do.end.i_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.atmel_hlcdc_create_outputs, i32 0, i32 %18
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %switch.lookup, %if.end12.i.if.end17.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ 0, %if.end12.i.if.end17.i_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_width.i.i) #6
  %bus_fmt70.i = getelementptr inbounds %struct.atmel_hlcdc_rgb_output, ptr %call.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %bus_fmt70.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i.ph.i, ptr %bus_fmt70.i, align 4
  call void @of_node_put(ptr noundef nonnull %call.i) #6
  %call18.i = call i32 @drm_simple_encoder_init(ptr noundef %dev, ptr noundef nonnull %call.i.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end17.i.atmel_hlcdc_attach_endpoint.exit_crit_edge

if.end17.i.atmel_hlcdc_attach_endpoint.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_hlcdc_attach_endpoint.exit

if.end21.i:                                       ; preds = %if.end17.i
  %possible_crtcs.i = getelementptr inbounds %struct.drm_encoder, ptr %call.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %possible_crtcs.i, align 4
  %27 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %panel.i, align 4
  %tobool23.not.i = icmp eq ptr %28, null
  br i1 %tobool23.not.i, label %if.end30thread-pre-split.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.end21.i
  %call25.i = call ptr @drm_panel_bridge_add_typed(ptr noundef nonnull %28, i32 noundef 0) #6
  %29 = ptrtoint ptr %bridge.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call25.i, ptr %bridge.i, align 4
  %cmp.i.i = icmp ugt ptr %call25.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then27.i, label %if.then24.i.if.end30.i_crit_edge

if.then24.i.if.end30.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

if.then27.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %call25.i to i32
  br label %atmel_hlcdc_attach_endpoint.exit

if.end30thread-pre-split.i:                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr.i = load ptr, ptr %bridge.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end30thread-pre-split.i, %if.then24.i.if.end30.i_crit_edge
  %32 = phi ptr [ %.pr.i, %if.end30thread-pre-split.i ], [ %call25.i, %if.then24.i.if.end30.i_crit_edge ]
  %tobool31.not.i = icmp eq ptr %32, null
  br i1 %tobool31.not.i, label %if.end30.i.if.end41.i_crit_edge, label %if.then32.i

if.end30.i.if.end41.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.then32.i:                                      ; preds = %if.end30.i
  %call34.i = call i32 @drm_bridge_attach(ptr noundef nonnull %call.i.i, ptr noundef nonnull %32, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %atmel_hlcdc_attach_endpoint.exit.thread24, label %if.end37.i

atmel_hlcdc_attach_endpoint.exit.thread24:        ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #6
  br label %if.end4

if.end37.i:                                       ; preds = %if.then32.i
  %33 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %panel.i, align 4
  %tobool38.not.i = icmp eq ptr %34, null
  br i1 %tobool38.not.i, label %if.end37.i.if.end41.i_crit_edge, label %if.then39.i

if.end37.i.if.end41.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.then39.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bridge.i, align 4
  call void @drm_panel_bridge_remove(ptr noundef %36) #6
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then39.i, %if.end37.i.if.end41.i_crit_edge, %if.end30.i.if.end41.i_crit_edge
  %ret.0.i = phi i32 [ %call34.i, %if.then39.i ], [ %call34.i, %if.end37.i.if.end41.i_crit_edge ], [ 0, %if.end30.i.if.end41.i_crit_edge ]
  call void @drm_encoder_cleanup(ptr noundef nonnull %call.i.i) #6
  br label %atmel_hlcdc_attach_endpoint.exit

atmel_hlcdc_attach_endpoint.exit.thread:          ; preds = %do.end.i, %if.then11.i
  %retval.0.i.ph = phi i32 [ -12, %if.then11.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #6
  br label %for.end

atmel_hlcdc_attach_endpoint.exit:                 ; preds = %if.end41.i, %if.then27.i, %if.end17.i.atmel_hlcdc_attach_endpoint.exit_crit_edge, %if.then6.i
  %retval.0.i = phi i32 [ %call4.i, %if.then6.i ], [ %30, %if.then27.i ], [ %ret.0.i, %if.end41.i ], [ %call18.i, %if.end17.i.atmel_hlcdc_attach_endpoint.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #6
  %37 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %retval.0.i, label %atmel_hlcdc_attach_endpoint.exit.for.end_crit_edge [
    i32 -19, label %atmel_hlcdc_attach_endpoint.exit.for.inc_crit_edge
    i32 0, label %atmel_hlcdc_attach_endpoint.exit.if.end4_crit_edge
  ]

atmel_hlcdc_attach_endpoint.exit.if.end4_crit_edge: ; preds = %atmel_hlcdc_attach_endpoint.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

atmel_hlcdc_attach_endpoint.exit.for.inc_crit_edge: ; preds = %atmel_hlcdc_attach_endpoint.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

atmel_hlcdc_attach_endpoint.exit.for.end_crit_edge: ; preds = %atmel_hlcdc_attach_endpoint.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end4:                                          ; preds = %atmel_hlcdc_attach_endpoint.exit.if.end4_crit_edge, %atmel_hlcdc_attach_endpoint.exit.thread24
  %inc = add i32 %attached.041, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end4, %atmel_hlcdc_attach_endpoint.exit.for.inc_crit_edge, %atmel_hlcdc_attach_endpoint.exit.thread21
  %tobool.not = phi i1 [ false, %atmel_hlcdc_attach_endpoint.exit.for.inc_crit_edge ], [ true, %if.end4 ], [ false, %atmel_hlcdc_attach_endpoint.exit.thread21 ]
  %retval.0.i23 = phi i32 [ %retval.0.i, %atmel_hlcdc_attach_endpoint.exit.for.inc_crit_edge ], [ 0, %if.end4 ], [ -19, %atmel_hlcdc_attach_endpoint.exit.thread21 ]
  %attached.1 = phi i32 [ %attached.041, %atmel_hlcdc_attach_endpoint.exit.for.inc_crit_edge ], [ %inc, %if.end4 ], [ %attached.041, %atmel_hlcdc_attach_endpoint.exit.thread21 ]
  %inc5 = add i32 %endpoint.036, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc5)
  %cmp = icmp slt i32 %inc5, 4
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %atmel_hlcdc_attach_endpoint.exit.for.end_crit_edge, %atmel_hlcdc_attach_endpoint.exit.thread
  %attached.032 = phi i32 [ %attached.041, %atmel_hlcdc_attach_endpoint.exit.thread ], [ %attached.1, %for.inc.for.end_crit_edge ], [ %attached.041, %atmel_hlcdc_attach_endpoint.exit.for.end_crit_edge ]
  %ret.1 = phi i32 [ %retval.0.i.ph, %atmel_hlcdc_attach_endpoint.exit.thread ], [ %retval.0.i23, %for.inc.for.end_crit_edge ], [ %retval.0.i, %atmel_hlcdc_attach_endpoint.exit.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %ret.1)
  %cmp6 = icmp ne i32 %ret.1, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attached.032)
  %tobool7.not = icmp eq i32 %attached.032, 0
  %or.cond19 = select i1 %cmp6, i1 true, i1 %tobool7.not
  %retval.0 = select i1 %or.cond19, i32 %ret.1, i32 0
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_panel_bridge_add_typed(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_bridge_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c", i32 94, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @atmel_hlcdc_attach_endpoint._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @atmel_hlcdc_attach_endpoint._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c", i32 46, i32 33}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"auto-init"}
