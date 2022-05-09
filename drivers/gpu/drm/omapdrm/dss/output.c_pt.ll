; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/dss/output.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/dss/output.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.omap_dss_device = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.dss_device = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, %struct.dispc_clock_info, [2 x i32], i32, [3 x i32], i8, [128 x i32], ptr, %struct.anon.78, [4 x ptr], ptr, ptr, ptr, ptr }
%struct.dispc_clock_info = type { i32, i32, i16, i16 }
%struct.anon.78 = type { ptr, ptr, ptr }

@omapdss_device_init_output.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 7, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"omapdrm\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omapdss_device_init_output\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/omapdrm/dss/output.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to find video sink\0A\00", [37 x i8] zeroinitializer }, align 32
@omapdss_device_init_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 47, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to create panel bridge (%ld)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omapdss_device_init_output._entry_ptr = internal global ptr @omapdss_device_init_output._entry, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 29, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [40 x i8] c"../drivers/gpu/drm/omapdrm/dss/output.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 45, i32 4 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @omapdss_device_init_output._entry, ptr @omapdss_device_init_output._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omapdss_device_init_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omapdss_device_init_output(ptr nocapture noundef %out, ptr noundef %local_bridge) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %out, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %of_port = getelementptr inbounds %struct.omap_dss_device, ptr %out, i32 0, i32 12
  %4 = ptrtoint ptr %of_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %of_port, align 4
  %call = tail call ptr @of_graph_get_remote_node(ptr noundef %3, i32 noundef %5, i32 noundef 0) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omapdss_device_init_output.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omapdss_device_init_output, %cleanup46)) #3
          to label %if.then6 [label %cleanup46], !srcloc !21

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omapdss_device_init_output.__UNIQUE_ID_ddebug307, ptr noundef %7, ptr noundef nonnull @.str.3) #3
  br label %cleanup46

if.end8:                                          ; preds = %entry
  %call9 = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %call) #3
  %bridge = getelementptr inbounds %struct.omap_dss_device, ptr %out, i32 0, i32 2
  %8 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9, ptr %bridge, align 4
  %call10 = tail call ptr @of_drm_find_panel(ptr noundef nonnull %call) #3
  %panel = getelementptr inbounds %struct.omap_dss_device, ptr %out, i32 0, i32 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i, ptr null, ptr %call10
  %9 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.store.select, ptr %panel, align 4
  tail call void @of_node_put(ptr noundef nonnull %call) #3
  %10 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %panel, align 4
  %tobool17.not = icmp eq ptr %11, null
  br i1 %tobool17.not, label %if.end8.if.end32_crit_edge, label %if.then18

if.end8.if.end32_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end32

if.then18:                                        ; preds = %if.end8
  %call21 = tail call ptr @drm_panel_bridge_add(ptr noundef nonnull %11) #3
  %cmp.i72 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72, label %error, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call21, ptr %bridge, align 4
  br label %if.end32

if.end32:                                         ; preds = %cleanup.thread, %if.end8.if.end32_crit_edge
  %tobool33.not = icmp eq ptr %local_bridge, null
  %13 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load ptr, ptr %bridge, align 4
  %tobool43.not = icmp eq ptr %.pr, null
  br i1 %tobool33.not, label %if.end41, label %if.then34

if.then34:                                        ; preds = %if.end32
  br i1 %tobool43.not, label %if.then34.error.thread_crit_edge, label %if.end41.thread

if.then34.error.thread_crit_edge:                 ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #5
  br label %error.thread

if.end41.thread:                                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #5
  %next_bridge = getelementptr inbounds %struct.omap_dss_device, ptr %out, i32 0, i32 3
  %14 = ptrtoint ptr %next_bridge to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %.pr, ptr %next_bridge, align 4
  %15 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %local_bridge, ptr %bridge, align 4
  br label %cleanup46

if.end41:                                         ; preds = %if.end32
  br i1 %tobool43.not, label %if.end41.error.thread_crit_edge, label %if.end41.cleanup46_crit_edge

if.end41.cleanup46_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup46

if.end41.error.thread_crit_edge:                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %error.thread

error.thread:                                     ; preds = %if.end41.error.thread_crit_edge, %if.then34.error.thread_crit_edge
  br label %cleanup46

error:                                            ; preds = %if.then18
  %16 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %out, align 4
  %18 = ptrtoint ptr %call21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.4, i32 noundef %18) #6
  %19 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr77 = load ptr, ptr %bridge, align 4
  %tobool.not.i = icmp eq ptr %.pr77, null
  br i1 %tobool.not.i, label %error.cleanup46_crit_edge, label %land.lhs.true.i

error.cleanup46_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup46

land.lhs.true.i:                                  ; preds = %error
  %20 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %panel, align 4
  %tobool1.not.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup46_crit_edge, label %if.then.i

land.lhs.true.i.cleanup46_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup46

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %next_bridge.i = getelementptr inbounds %struct.omap_dss_device, ptr %out, i32 0, i32 3
  %22 = ptrtoint ptr %next_bridge.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %next_bridge.i, align 4
  %tobool2.not.i = icmp eq ptr %23, null
  %..i = select i1 %tobool2.not.i, ptr %.pr77, ptr %23
  tail call void @drm_panel_bridge_remove(ptr noundef nonnull %..i) #3
  br label %cleanup46

cleanup46:                                        ; preds = %if.then.i, %land.lhs.true.i.cleanup46_crit_edge, %error.cleanup46_crit_edge, %error.thread, %if.end41.cleanup46_crit_edge, %if.end41.thread, %if.then6, %do.body
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.end41.cleanup46_crit_edge ], [ 0, %if.end41.thread ], [ -517, %error.thread ], [ %18, %error.cleanup46_crit_edge ], [ %18, %land.lhs.true.i.cleanup46_crit_edge ], [ %18, %if.then.i ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_panel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_panel_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omapdss_device_cleanup_output(ptr nocapture noundef readonly %out) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.omap_dss_device, ptr %out, i32 0, i32 2
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %panel = getelementptr inbounds %struct.omap_dss_device, ptr %out, i32 0, i32 4
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %next_bridge = getelementptr inbounds %struct.omap_dss_device, ptr %out, i32 0, i32 3
  %4 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next_bridge, align 4
  %tobool2.not = icmp eq ptr %5, null
  %. = select i1 %tobool2.not, ptr %1, ptr %5
  tail call void @drm_panel_bridge_remove(ptr noundef nonnull %.) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dss_mgr_set_timings(ptr nocapture noundef readonly %dssdev, ptr noundef %vm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dss = getelementptr inbounds %struct.omap_dss_device, ptr %dssdev, i32 0, i32 1
  %0 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dss, align 4
  %mgr_ops_priv = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %mgr_ops_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr_ops_priv, align 4
  %dispc_channel = getelementptr inbounds %struct.omap_dss_device, ptr %dssdev, i32 0, i32 10
  %4 = ptrtoint ptr %dispc_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dispc_channel, align 4
  tail call void @omap_crtc_dss_set_timings(ptr noundef %3, i32 noundef %5, ptr noundef %vm) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_crtc_dss_set_timings(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dss_mgr_set_lcd_config(ptr nocapture noundef readonly %dssdev, ptr noundef %config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dss = getelementptr inbounds %struct.omap_dss_device, ptr %dssdev, i32 0, i32 1
  %0 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dss, align 4
  %mgr_ops_priv = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %mgr_ops_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr_ops_priv, align 4
  %dispc_channel = getelementptr inbounds %struct.omap_dss_device, ptr %dssdev, i32 0, i32 10
  %4 = ptrtoint ptr %dispc_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dispc_channel, align 4
  tail call void @omap_crtc_dss_set_lcd_config(ptr noundef %3, i32 noundef %5, ptr noundef %config) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_crtc_dss_set_lcd_config(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dss_mgr_enable(ptr nocapture noundef readonly %dssdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dss = getelementptr inbounds %struct.omap_dss_device, ptr %dssdev, i32 0, i32 1
  %0 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dss, align 4
  %mgr_ops_priv = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %mgr_ops_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr_ops_priv, align 4
  %dispc_channel = getelementptr inbounds %struct.omap_dss_device, ptr %dssdev, i32 0, i32 10
  %4 = ptrtoint ptr %dispc_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dispc_channel, align 4
  %call = tail call i32 @omap_crtc_dss_enable(ptr noundef %3, i32 noundef %5) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_crtc_dss_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dss_mgr_disable(ptr nocapture noundef readonly %dssdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dss = getelementptr inbounds %struct.omap_dss_device, ptr %dssdev, i32 0, i32 1
  %0 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dss, align 4
  %mgr_ops_priv = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %mgr_ops_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr_ops_priv, align 4
  %dispc_channel = getelementptr inbounds %struct.omap_dss_device, ptr %dssdev, i32 0, i32 10
  %4 = ptrtoint ptr %dispc_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dispc_channel, align 4
  tail call void @omap_crtc_dss_disable(ptr noundef %3, i32 noundef %5) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_crtc_dss_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dss_mgr_start_update(ptr nocapture noundef readonly %dssdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dss = getelementptr inbounds %struct.omap_dss_device, ptr %dssdev, i32 0, i32 1
  %0 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dss, align 4
  %mgr_ops_priv = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %mgr_ops_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr_ops_priv, align 4
  %dispc_channel = getelementptr inbounds %struct.omap_dss_device, ptr %dssdev, i32 0, i32 10
  %4 = ptrtoint ptr %dispc_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dispc_channel, align 4
  tail call void @omap_crtc_dss_start_update(ptr noundef %3, i32 noundef %5) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_crtc_dss_start_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dss_mgr_register_framedone_handler(ptr nocapture noundef readonly %dssdev, ptr noundef %handler, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dss1 = getelementptr inbounds %struct.omap_dss_device, ptr %dssdev, i32 0, i32 1
  %0 = ptrtoint ptr %dss1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dss1, align 4
  %mgr_ops_priv = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %mgr_ops_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr_ops_priv, align 4
  %dispc_channel = getelementptr inbounds %struct.omap_dss_device, ptr %dssdev, i32 0, i32 10
  %4 = ptrtoint ptr %dispc_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dispc_channel, align 4
  %call = tail call i32 @omap_crtc_dss_register_framedone(ptr noundef %3, i32 noundef %5, ptr noundef %handler, ptr noundef %data) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_crtc_dss_register_framedone(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dss_mgr_unregister_framedone_handler(ptr nocapture noundef readonly %dssdev, ptr noundef %handler, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dss1 = getelementptr inbounds %struct.omap_dss_device, ptr %dssdev, i32 0, i32 1
  %0 = ptrtoint ptr %dss1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dss1, align 4
  %mgr_ops_priv = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %mgr_ops_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr_ops_priv, align 4
  %dispc_channel = getelementptr inbounds %struct.omap_dss_device, ptr %dssdev, i32 0, i32 10
  %4 = ptrtoint ptr %dispc_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dispc_channel, align 4
  tail call void @omap_crtc_dss_unregister_framedone(ptr noundef %3, i32 noundef %5, ptr noundef %handler, ptr noundef %data) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_crtc_dss_unregister_framedone(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/dss/output.c", i32 29, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @omapdss_device_init_output.__UNIQUE_ID_ddebug307, !1, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/omapdrm/dss/output.c", i32 45, i32 4}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @omapdss_device_init_output._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @omapdss_device_init_output._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2148692647, i64 2148692652, i64 2148692665, i64 2148692709, i64 2148692743, i64 2148692764}
