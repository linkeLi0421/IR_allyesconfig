; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/ti-tpd12s015.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/ti-tpd12s015.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.tpd12s015_device = type { %struct.drm_bridge, ptr, ptr, ptr, i32, ptr }

@__initcall__kmod_ti_tpd12s015__307_207_tpd12s015_driver_init6 = internal global ptr @tpd12s015_driver_init, section ".initcall6.init", align 4
@tpd12s015_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tpd12s015_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tpd12s015_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tpd12s015_driver_exit = internal global ptr @tpd12s015_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author308 = internal constant [59 x i8] c"ti_tpd12s015.author=Tomi Valkeinen <tomi.valkeinen@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [80 x i8] c"ti_tpd12s015.description=TPD12S015 HDMI level shifter and ESD protection driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [54 x i8] c"ti_tpd12s015.file=drivers/gpu/drm/bridge/ti-tpd12s015\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [25 x i8] c"ti_tpd12s015.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tpd12s015\00", [22 x i8] zeroinitializer }, align 32
@tpd12s015_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tpd12s015\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tpd12s015_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @tpd12s015_attach, ptr @tpd12s015_detach, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tpd12s015_detect, ptr null, ptr null, ptr null, ptr @tpd12s015_hpd_enable, ptr @tpd12s015_hpd_disable }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tpd12s015 hpd\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"tpd12s015_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 198, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 202, i32 11 }
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"tpd12s015_of_match\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 191, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [23 x i8] c"tpd12s015_bridge_funcs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 93, i32 38 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [41 x i8] c"../drivers/gpu/drm/bridge/ti-tpd12s015.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 169, i32 7 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_tpd12s015_driver_exit, ptr @__initcall__kmod_ti_tpd12s015__307_207_tpd12s015_driver_init6, ptr @tpd12s015_driver_exit, ptr @tpd12s015_remove, ptr @tpd12s015_driver, ptr @.str, ptr @tpd12s015_of_match, ptr @tpd12s015_bridge_funcs, ptr @.str.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpd12s015_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpd12s015_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpd12s015_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tpd12s015_remove(ptr nocapture noundef readonly %pdev) #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_bridge_remove(ptr noundef %1) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tpd12s015_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tpd12s015_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tpd12s015_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @tpd12s015_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpd12s015_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 300, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 7
  %1 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @tpd12s015_bridge_funcs, ptr %funcs, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %of_node3 = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %of_node3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %of_node3, align 4
  %type = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 10
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 11, ptr %type, align 4
  %ops = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 9
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ops, align 4
  %call8 = tail call ptr @of_graph_get_remote_node(ptr noundef %3, i32 noundef 1, i32 noundef -1) #3
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %call8) #3
  %next_bridge = getelementptr inbounds %struct.tpd12s015_device, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %next_bridge to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call12, ptr %next_bridge, align 4
  tail call void @of_node_put(ptr noundef nonnull %call8) #3
  %8 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %next_bridge, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %call18 = tail call ptr @devm_gpiod_get_index_optional(ptr noundef %dev, ptr noundef null, i32 noundef 0, i32 noundef 3) #3
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %ct_cp_hpd_gpio = getelementptr inbounds %struct.tpd12s015_device, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %ct_cp_hpd_gpio to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call18, ptr %ct_cp_hpd_gpio, align 4
  %call24 = tail call ptr @devm_gpiod_get_index_optional(ptr noundef %dev, ptr noundef null, i32 noundef 1, i32 noundef 3) #3
  %cmp.i87 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %ls_oe_gpio = getelementptr inbounds %struct.tpd12s015_device, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %ls_oe_gpio to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call24, ptr %ls_oe_gpio, align 4
  %call30 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef null, i32 noundef 2, i32 noundef 1) #3
  %cmp.i88 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %hpd_gpio = getelementptr inbounds %struct.tpd12s015_device, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call30, ptr %hpd_gpio, align 4
  %call36 = tail call i32 @gpiod_to_irq(ptr noundef %call30) #3
  %hpd_irq = getelementptr inbounds %struct.tpd12s015_device, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %hpd_irq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call36, ptr %hpd_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call36)
  %cmp = icmp sgt i32 %call36, -1
  br i1 %cmp, label %if.then38, label %if.end34.if.end47_crit_edge

if.end34.if.end47_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

if.then38:                                        ; preds = %if.end34
  %call41 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call36, ptr noundef null, ptr noundef nonnull @tpd12s015_hpd_isr, i32 noundef 8195, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end44:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ops, align 4
  %or = or i32 %18, 4
  store i32 %or, ptr %ops, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end44, %if.end34.if.end47_crit_edge
  tail call void @drm_bridge_add(ptr noundef nonnull %call.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then38.cleanup_crit_edge, %if.then32, %if.then26, %if.then20, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then20 ], [ %12, %if.then26 ], [ %14, %if.then32 ], [ 0, %if.end47 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -517, %if.end11.cleanup_crit_edge ], [ %call41, %if.then38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index_optional(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpd12s015_hpd_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd_gpio.i = getelementptr inbounds %struct.tpd12s015_device, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %hpd_gpio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpd_gpio.i, align 4
  %call1.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  %..i = select i1 %tobool.not.i, i32 2, i32 1
  tail call void @drm_bridge_hpd_notify(ptr noundef %data, i32 noundef %..i) #3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpd12s015_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %next_bridge = getelementptr inbounds %struct.tpd12s015_device, ptr %bridge, i32 0, i32 5
  %2 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_bridge, align 4
  %call1 = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %3, ptr noundef %bridge, i32 noundef %flags) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %ls_oe_gpio = getelementptr inbounds %struct.tpd12s015_device, ptr %bridge, i32 0, i32 2
  %4 = ptrtoint ptr %ls_oe_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ls_oe_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #3
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 1000, i32 noundef 2) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tpd12s015_detach(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_oe_gpio = getelementptr inbounds %struct.tpd12s015_device, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %ls_oe_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ls_oe_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpd12s015_detect(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd_gpio = getelementptr inbounds %struct.tpd12s015_device, ptr %bridge, i32 0, i32 3
  %0 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpd_gpio, align 4
  %call1 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tpd12s015_hpd_enable(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_cp_hpd_gpio = getelementptr inbounds %struct.tpd12s015_device, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %ct_cp_hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_cp_hpd_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 1) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tpd12s015_hpd_disable(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_cp_hpd_gpio = getelementptr inbounds %struct.tpd12s015_device, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %ct_cp_hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_cp_hpd_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_hpd_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_ti_tpd12s015__307_207_tpd12s015_driver_init6, !1, !"__initcall__kmod_ti_tpd12s015__307_207_tpd12s015_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/ti-tpd12s015.c", i32 207, i32 1}
!2 = !{ptr @__exitcall_tpd12s015_driver_exit, !1, !"__exitcall_tpd12s015_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author308, !4, !"__UNIQUE_ID_author308", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/ti-tpd12s015.c", i32 209, i32 1}
!5 = !{ptr @__UNIQUE_ID_description309, !6, !"__UNIQUE_ID_description309", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/ti-tpd12s015.c", i32 210, i32 1}
!7 = !{ptr @__UNIQUE_ID_file310, !8, !"__UNIQUE_ID_file310", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/ti-tpd12s015.c", i32 211, i32 1}
!9 = !{ptr @__UNIQUE_ID_license311, !8, !"__UNIQUE_ID_license311", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/ti-tpd12s015.c", i32 202, i32 11}
!12 = !{ptr @tpd12s015_driver, !13, !"tpd12s015_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/ti-tpd12s015.c", i32 198, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/ti-tpd12s015.c", i32 169, i32 7}
!16 = !{ptr @tpd12s015_bridge_funcs, !17, !"tpd12s015_bridge_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/ti-tpd12s015.c", i32 93, i32 38}
!18 = !{ptr @tpd12s015_of_match, !19, !"tpd12s015_of_match", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/bridge/ti-tpd12s015.c", i32 191, i32 34}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
