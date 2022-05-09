; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/dss/sdi.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/dss/sdi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sdi_device = type { ptr, ptr, i8, ptr, %struct.dss_lcd_mgr_config, i32, i32, %struct.omap_dss_device, %struct.drm_bridge }
%struct.dss_lcd_mgr_config = type { i32, i8, i8, %struct.dispc_clock_info, i32, i32 }
%struct.dispc_clock_info = type { i32, i32, i16, i16 }
%struct.omap_dss_device = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sdi_clk_calc_ctx = type { ptr, i32, i32, i32, %struct.dispc_clock_info }
%struct.dss_device = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, %struct.dispc_clock_info, [2 x i32], i32, [3 x i32], i8, [128 x i32], ptr, %struct.anon.78, [4 x ptr], ptr, ptr, ptr, ptr }
%struct.anon.78 = type { ptr, ptr, ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"datapairs\00", [22 x i8] zeroinitializer }, align 32
@sdi_init_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013SDI: omapdss SDI error: failed to parse datapairs\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdi_init_port\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/omapdrm/dss/sdi.c\00", [62 x i8] zeroinitializer }, align 32
@sdi_init_port._entry_ptr = internal global ptr @sdi_init_port._entry, section ".printk_index", align 4
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdds_sdi\00", [23 x i8] zeroinitializer }, align 32
@sdi_init_port._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013SDI: omapdss SDI error: can't get VDDS_SDI regulator\0A\00", [40 x i8] zeroinitializer }, align 32
@sdi_init_port._entry_ptr.7 = internal global ptr @sdi_init_port._entry.5, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdi.0\00", [26 x i8] zeroinitializer }, align 32
@sdi_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @sdi_bridge_attach, ptr null, ptr @sdi_bridge_mode_valid, ptr @sdi_bridge_mode_fixup, ptr @sdi_bridge_disable, ptr null, ptr @sdi_bridge_mode_set, ptr null, ptr @sdi_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sdi_bridge_mode_fixup.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 45, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"omapdrm\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sdi_bridge_mode_fixup\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"pixel clock adjusted from %lu Hz to %lu Hz\0A\00", [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 355, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 358, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 368, i32 53 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 372, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 311, i32 14 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"sdi_bridge_funcs\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 274, i32 38 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [37 x i8] c"../drivers/gpu/drm/omapdrm/dss/sdi.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 180, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @sdi_init_port._entry, ptr @sdi_init_port._entry.5, ptr @sdi_init_port._entry_ptr, ptr @sdi_init_port._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @sdi_bridge_funcs, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdi_init_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdi_init_port._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdi_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdi_init_port(ptr noundef %dss, ptr noundef %pdev, ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %datapairs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datapairs) #8
  %0 = ptrtoint ptr %datapairs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %datapairs, align 4, !annotation !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 388) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_get_next_child(ptr noundef %port, ptr noundef null) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.err_free_crit_edge, label %if.end4

if.end.err_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

if.end4:                                          ; preds = %if.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1, ptr noundef nonnull @.str, ptr noundef nonnull %datapairs, i32 noundef 1, i32 noundef 0) #8
  call void @of_node_put(ptr noundef nonnull %call1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool6.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool6.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %err_free

if.end9:                                          ; preds = %if.end4
  %2 = ptrtoint ptr %datapairs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %datapairs, align 4
  %datapairs10 = getelementptr inbounds %struct.sdi_device, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %datapairs10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %datapairs10, align 8
  %dss11 = getelementptr inbounds %struct.sdi_device, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %dss11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dss, ptr %dss11, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %call7.i.i, align 8
  %data = getelementptr inbounds %struct.device_node, ptr %port, i32 0, i32 11
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %data, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call13 = call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.4) #8
  %vdds_sdi_reg = getelementptr inbounds %struct.sdi_device, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %vdds_sdi_reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13, ptr %vdds_sdi_reg, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end26

if.then16:                                        ; preds = %if.end9
  %cmp.not = icmp eq ptr %call13, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then16.err_free_crit_edge, label %do.end22

if.then16.err_free_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

do.end22:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call13 to i32
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %err_free

if.end26:                                         ; preds = %if.end9
  %output.i = getelementptr inbounds %struct.sdi_device, ptr %call7.i.i, i32 0, i32 7
  %bridge.i.i = getelementptr inbounds %struct.sdi_device, ptr %call7.i.i, i32 0, i32 8
  %funcs.i.i = getelementptr inbounds %struct.sdi_device, ptr %call7.i.i, i32 0, i32 8, i32 7
  %10 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sdi_bridge_funcs, ptr %funcs.i.i, align 8
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 8
  %of_node.i.i = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3, i32 27
  %13 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node.i.i, align 8
  %of_node2.i.i = getelementptr inbounds %struct.sdi_device, ptr %call7.i.i, i32 0, i32 8, i32 4
  %15 = ptrtoint ptr %of_node2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %of_node2.i.i, align 8
  %type.i.i = getelementptr inbounds %struct.sdi_device, ptr %call7.i.i, i32 0, i32 8, i32 10
  %16 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 7, ptr %type.i.i, align 4
  call void @drm_bridge_add(ptr noundef %bridge.i.i) #8
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call7.i.i, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %output.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev.i, ptr %output.i, align 4
  %id.i = getelementptr inbounds %struct.sdi_device, ptr %call7.i.i, i32 0, i32 7, i32 11
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %id.i, align 4
  %type.i = getelementptr inbounds %struct.sdi_device, ptr %call7.i.i, i32 0, i32 7, i32 6
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %type.i, align 8
  %name.i = getelementptr inbounds %struct.sdi_device, ptr %call7.i.i, i32 0, i32 7, i32 7
  %22 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.8, ptr %name.i, align 4
  %dispc_channel.i = getelementptr inbounds %struct.sdi_device, ptr %call7.i.i, i32 0, i32 7, i32 10
  %23 = ptrtoint ptr %dispc_channel.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %dispc_channel.i, align 8
  %of_port.i = getelementptr inbounds %struct.sdi_device, ptr %call7.i.i, i32 0, i32 7, i32 12
  %24 = ptrtoint ptr %of_port.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %of_port.i, align 8
  %bus_flags.i = getelementptr inbounds %struct.sdi_device, ptr %call7.i.i, i32 0, i32 7, i32 9
  %25 = ptrtoint ptr %bus_flags.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 68, ptr %bus_flags.i, align 4
  %call.i = call i32 @omapdss_device_init_output(ptr noundef %output.i, ptr noundef %bridge.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i50 = icmp slt i32 %call.i, 0
  br i1 %cmp.i50, label %sdi_init_output.exit, label %sdi_init_output.exit.thread

sdi_init_output.exit.thread:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  call void @omapdss_device_register(ptr noundef %output.i) #8
  br label %cleanup

sdi_init_output.exit:                             ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  call void @drm_bridge_remove(ptr noundef %bridge.i.i) #8
  br label %err_free

err_free:                                         ; preds = %sdi_init_output.exit, %do.end22, %if.then16.err_free_crit_edge, %do.end, %if.end.err_free_crit_edge
  %r.0 = phi i32 [ %call.i.i, %do.end ], [ %9, %do.end22 ], [ -517, %if.then16.err_free_crit_edge ], [ %call.i, %sdi_init_output.exit ], [ 0, %if.end.err_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free, %sdi_init_output.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %err_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %sdi_init_output.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datapairs) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdi_uninit_port(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.device_node, ptr %port, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %output.i = getelementptr inbounds %struct.sdi_device, ptr %1, i32 0, i32 7
  tail call void @omapdss_device_unregister(ptr noundef %output.i) #8
  tail call void @omapdss_device_cleanup_output(ptr noundef %output.i) #8
  %bridge.i.i = getelementptr inbounds %struct.sdi_device, ptr %1, i32 0, i32 8
  tail call void @drm_bridge_remove(ptr noundef %bridge.i.i) #8
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omapdss_device_init_output(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omapdss_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdi_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %next_bridge = getelementptr i8, ptr %bridge, i32 -44
  %2 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_bridge, align 4
  %call = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %3, ptr noundef %bridge, i32 noundef %flags) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdi_bridge_mode_valid(ptr noundef %bridge, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  %ctx.i = alloca %struct.sdi_clk_calc_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %mul = mul i32 %1, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp = icmp eq i32 %mul, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %bridge, i32 -108
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ctx.i) #8
  %2 = getelementptr inbounds %struct.sdi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.sdi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 2
  %dss.i = getelementptr i8, ptr %bridge, i32 -104
  %4 = getelementptr inbounds i8, ptr %ctx.i, i32 12
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %12, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end
  %i.037.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %5 = call ptr @memset(ptr %4, i32 0, i32 16)
  %6 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %ctx.i, align 4
  %mul.i = mul nuw nsw i32 %i.037.i, 1000
  %mul2.i = mul i32 %mul.i, %i.037.i
  %mul3.i = mul i32 %mul2.i, %i.037.i
  %7 = call i32 @llvm.usub.sat.i32(i32 %mul, i32 %mul3.i) #8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %2, align 4
  %add.i = add i32 %mul3.i, %mul
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add.i, ptr %3, align 4
  %10 = ptrtoint ptr %dss.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dss.i, align 4
  %call.i = call zeroext i1 @dss_div_calc(ptr noundef %11, i32 noundef %mul, i32 noundef %7, ptr noundef nonnull @dpi_calc_dss_cb, ptr noundef nonnull %ctx.i) #8
  br i1 %call.i, label %sdi_calc_clock_div.exit, label %for.cond.i

sdi_calc_clock_div.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ctx.i) #8
  br label %cleanup

12:                                               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ctx.i) #8
  br label %cleanup

cleanup:                                          ; preds = %12, %sdi_calc_clock_div.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 14, %entry.cleanup_crit_edge ], [ 17, %12 ], [ 0, %sdi_calc_clock_div.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sdi_bridge_mode_fixup(ptr noundef %bridge, ptr nocapture noundef readonly %mode, ptr nocapture noundef writeonly %adjusted_mode) #0 align 64 {
entry:
  %ctx.i = alloca %struct.sdi_clk_calc_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -108
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %mul = mul i32 %1, 1000
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ctx.i) #8
  %2 = getelementptr inbounds %struct.sdi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.sdi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.sdi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 3
  %dss.i = getelementptr i8, ptr %bridge, i32 -104
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %sdi_calc_clock_div.exit.thread, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

sdi_calc_clock_div.exit.thread:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ctx.i) #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.037.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %5 = call ptr @memset(ptr %4, i32 0, i32 16)
  %6 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %ctx.i, align 4
  %mul.i = mul nuw nsw i32 %i.037.i, 1000
  %mul2.i = mul i32 %mul.i, %i.037.i
  %mul3.i = mul i32 %mul2.i, %i.037.i
  %7 = call i32 @llvm.usub.sat.i32(i32 %mul, i32 %mul3.i) #8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %2, align 4
  %add.i = add i32 %mul3.i, %mul
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add.i, ptr %3, align 4
  %10 = ptrtoint ptr %dss.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dss.i, align 4
  %call.i = call zeroext i1 @dss_div_calc(ptr noundef %11, i32 noundef %mul, i32 noundef %7, ptr noundef nonnull @dpi_calc_dss_cb, ptr noundef nonnull %ctx.i) #8
  br i1 %call.i, label %if.end, label %for.cond.i

if.end:                                           ; preds = %for.body.i
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %4, align 4
  %dispc_cinfo.sroa.5.0..sroa_idx = getelementptr inbounds %struct.sdi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %dispc_cinfo.sroa.5.0..sroa_idx to i32
  call void @__asan_load2_noabort(i32 %14)
  %dispc_cinfo.sroa.5.0.copyload = load i16, ptr %dispc_cinfo.sroa.5.0..sroa_idx, align 4
  %dispc_cinfo.sroa.7.0..sroa_idx = getelementptr inbounds %struct.sdi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %dispc_cinfo.sroa.7.0..sroa_idx to i32
  call void @__asan_load2_noabort(i32 %15)
  %dispc_cinfo.sroa.7.0.copyload = load i16, ptr %dispc_cinfo.sroa.7.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ctx.i) #8
  %conv = zext i16 %dispc_cinfo.sroa.5.0.copyload to i32
  %div = udiv i32 %13, %conv
  %conv1 = zext i16 %dispc_cinfo.sroa.7.0.copyload to i32
  %div2 = udiv i32 %div, %conv1
  call void @__sanitizer_cov_trace_cmp4(i32 %div2, i32 %mul)
  %cmp3.not = icmp eq i32 %div2, %mul
  br i1 %cmp3.not, label %if.end.if.end13_crit_edge, label %do.body

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdi_bridge_mode_fixup.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sdi_bridge_mode_fixup, %if.end13)) #8
          to label %if.then11 [label %if.end13], !srcloc !33

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdi_bridge_mode_fixup.__UNIQUE_ID_ddebug309, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %mul, i32 noundef %div2) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.body, %if.end.if.end13_crit_edge
  %div14 = udiv i32 %div2, 1000
  %18 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div14, ptr %adjusted_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %sdi_calc_clock_div.exit.thread
  ret i1 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdi_bridge_disable(ptr noundef %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %output = getelementptr i8, ptr %bridge, i32 -56
  tail call void @dss_mgr_disable(ptr noundef %output) #8
  %dss = getelementptr i8, ptr %bridge, i32 -104
  %0 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dss, align 4
  tail call void @dss_sdi_disable(ptr noundef %1) #8
  %2 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dss, align 4
  %dispc = getelementptr inbounds %struct.dss_device, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dispc, align 4
  tail call void @dispc_runtime_put(ptr noundef %5) #8
  %vdds_sdi_reg = getelementptr i8, ptr %bridge, i32 -96
  %6 = ptrtoint ptr %vdds_sdi_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdds_sdi_reg, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %7) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sdi_bridge_mode_set(ptr nocapture noundef writeonly %bridge, ptr nocapture noundef readnone %mode, ptr nocapture noundef readonly %adjusted_mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %adjusted_mode, align 4
  %mul = mul i32 %1, 1000
  %pixelclock = getelementptr i8, ptr %bridge, i32 -64
  %2 = ptrtoint ptr %pixelclock to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul, ptr %pixelclock, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdi_bridge_enable(ptr noundef %bridge) #0 align 64 {
entry:
  %ctx.i = alloca %struct.sdi_clk_calc_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -108
  %vdds_sdi_reg = getelementptr i8, ptr %bridge, i32 -96
  %0 = ptrtoint ptr %vdds_sdi_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdds_sdi_reg, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dss = getelementptr i8, ptr %bridge, i32 -104
  %2 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dss, align 4
  %dispc = getelementptr inbounds %struct.dss_device, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dispc, align 4
  %call1 = tail call i32 @dispc_runtime_get(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_get_dispc_crit_edge

if.end.err_get_dispc_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_get_dispc

if.end4:                                          ; preds = %if.end
  %pixelclock = getelementptr i8, ptr %bridge, i32 -64
  %6 = ptrtoint ptr %pixelclock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixelclock, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ctx.i) #8
  %8 = getelementptr inbounds %struct.sdi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.sdi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.sdi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 3
  %11 = getelementptr inbounds %struct.sdi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %sdi_calc_clock_div.exit, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end4
  %i.037.i = phi i32 [ 0, %if.end4 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %12 = call ptr @memset(ptr %10, i32 0, i32 16)
  %13 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %ctx.i, align 4
  %mul.i = mul nuw nsw i32 %i.037.i, 1000
  %mul2.i = mul i32 %mul.i, %i.037.i
  %mul3.i = mul i32 %mul2.i, %i.037.i
  %14 = call i32 @llvm.usub.sat.i32(i32 %7, i32 %mul3.i) #8
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %8, align 4
  %add.i = add i32 %mul3.i, %7
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %9, align 4
  %17 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dss, align 4
  %call.i = call zeroext i1 @dss_div_calc(ptr noundef %18, i32 noundef %7, i32 noundef %14, ptr noundef nonnull @dpi_calc_dss_cb, ptr noundef nonnull %ctx.i) #8
  br i1 %call.i, label %if.end8, label %for.cond.i

sdi_calc_clock_div.exit:                          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ctx.i) #8
  br label %err_calc_clock_div

if.end8:                                          ; preds = %for.body.i
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %10, align 4
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %dispc_cinfo.sroa.0.0.copyload58 = load i32, ptr %11, align 4
  %dispc_cinfo.sroa.5.0..sroa_idx = getelementptr inbounds %struct.sdi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %dispc_cinfo.sroa.5.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %dispc_cinfo.sroa.5.0.copyload59 = load i32, ptr %dispc_cinfo.sroa.5.0..sroa_idx, align 4
  %dispc_cinfo.sroa.6.0..sroa_idx = getelementptr inbounds %struct.sdi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 4, i32 2
  %23 = ptrtoint ptr %dispc_cinfo.sroa.6.0..sroa_idx to i32
  call void @__asan_load2_noabort(i32 %23)
  %dispc_cinfo.sroa.6.0.copyload60 = load i16, ptr %dispc_cinfo.sroa.6.0..sroa_idx, align 4
  %dispc_cinfo.sroa.7.0..sroa_idx = getelementptr inbounds %struct.sdi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 4, i32 3
  %24 = ptrtoint ptr %dispc_cinfo.sroa.7.0..sroa_idx to i32
  call void @__asan_load2_noabort(i32 %24)
  %dispc_cinfo.sroa.7.0.copyload61 = load i16, ptr %dispc_cinfo.sroa.7.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ctx.i) #8
  %clock_info = getelementptr i8, ptr %bridge, i32 -84
  %25 = ptrtoint ptr %clock_info to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %dispc_cinfo.sroa.0.0.copyload58, ptr %clock_info, align 4
  %dispc_cinfo.sroa.5.0.clock_info.sroa_idx = getelementptr i8, ptr %bridge, i32 -80
  %26 = ptrtoint ptr %dispc_cinfo.sroa.5.0.clock_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %dispc_cinfo.sroa.5.0.copyload59, ptr %dispc_cinfo.sroa.5.0.clock_info.sroa_idx, align 4
  %dispc_cinfo.sroa.6.0.clock_info.sroa_idx = getelementptr i8, ptr %bridge, i32 -76
  %27 = ptrtoint ptr %dispc_cinfo.sroa.6.0.clock_info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %dispc_cinfo.sroa.6.0.copyload60, ptr %dispc_cinfo.sroa.6.0.clock_info.sroa_idx, align 4
  %dispc_cinfo.sroa.7.0.clock_info.sroa_idx = getelementptr i8, ptr %bridge, i32 -74
  %28 = ptrtoint ptr %dispc_cinfo.sroa.7.0.clock_info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %dispc_cinfo.sroa.7.0.copyload61, ptr %dispc_cinfo.sroa.7.0.clock_info.sroa_idx, align 2
  %29 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dss, align 4
  %call10 = call i32 @dss_set_fck_rate(ptr noundef %30, i32 noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.err_calc_clock_div_crit_edge

if.end8.err_calc_clock_div_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_calc_clock_div

if.end13:                                         ; preds = %if.end8
  %mgr_config.i = getelementptr i8, ptr %bridge, i32 -92
  %31 = ptrtoint ptr %mgr_config.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %mgr_config.i, align 4
  %stallmode.i = getelementptr i8, ptr %bridge, i32 -88
  %32 = ptrtoint ptr %stallmode.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %stallmode.i, align 4
  %fifohandcheck.i = getelementptr i8, ptr %bridge, i32 -87
  %33 = ptrtoint ptr %fifohandcheck.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %fifohandcheck.i, align 1
  %video_port_width.i = getelementptr i8, ptr %bridge, i32 -72
  %34 = ptrtoint ptr %video_port_width.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 24, ptr %video_port_width.i, align 4
  %lcden_sig_polarity.i = getelementptr i8, ptr %bridge, i32 -68
  %35 = ptrtoint ptr %lcden_sig_polarity.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %lcden_sig_polarity.i, align 4
  %output.i = getelementptr i8, ptr %bridge, i32 -56
  call void @dss_mgr_set_lcd_config(ptr noundef %output.i, ptr noundef %mgr_config.i) #8
  %36 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dss, align 4
  %dispc15 = getelementptr inbounds %struct.dss_device, ptr %37, i32 0, i32 21
  %38 = ptrtoint ptr %dispc15 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dispc15, align 4
  %dispc_channel = getelementptr i8, ptr %bridge, i32 -12
  %40 = ptrtoint ptr %dispc_channel to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dispc_channel, align 4
  call void @dispc_mgr_set_clock_div(ptr noundef %39, i32 noundef %41, ptr noundef %clock_info) #8
  %42 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dss, align 4
  %datapairs = getelementptr i8, ptr %bridge, i32 -60
  %44 = ptrtoint ptr %datapairs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %datapairs, align 4
  call void @dss_sdi_init(ptr noundef %43, i32 noundef %45) #8
  %46 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dss, align 4
  %call20 = call i32 @dss_sdi_enable(ptr noundef %47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end13.err_calc_clock_div_crit_edge

if.end13.err_calc_clock_div_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_calc_clock_div

if.end23:                                         ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 429496000) #8
  %call25 = call i32 @dss_mgr_enable(ptr noundef %output.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %err_mgr_enable

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_mgr_enable:                                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dss, align 4
  call void @dss_sdi_disable(ptr noundef %50) #8
  br label %err_calc_clock_div

err_calc_clock_div:                               ; preds = %err_mgr_enable, %if.end13.err_calc_clock_div_crit_edge, %if.end8.err_calc_clock_div_crit_edge, %sdi_calc_clock_div.exit
  %51 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dss, align 4
  %dispc31 = getelementptr inbounds %struct.dss_device, ptr %52, i32 0, i32 21
  %53 = ptrtoint ptr %dispc31 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dispc31, align 4
  call void @dispc_runtime_put(ptr noundef %54) #8
  br label %err_get_dispc

err_get_dispc:                                    ; preds = %err_calc_clock_div, %if.end.err_get_dispc_crit_edge
  %55 = ptrtoint ptr %vdds_sdi_reg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vdds_sdi_reg, align 4
  %call33 = call i32 @regulator_disable(ptr noundef %56) #8
  br label %cleanup

cleanup:                                          ; preds = %err_get_dispc, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dss_div_calc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dpi_calc_dss_cb(i32 noundef %fck, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fck1 = getelementptr inbounds %struct.sdi_clk_calc_ctx, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %fck1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %fck, ptr %fck1, align 4
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %dss = getelementptr inbounds %struct.sdi_device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dss, align 4
  %dispc = getelementptr inbounds %struct.dss_device, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dispc, align 4
  %pck_min = getelementptr inbounds %struct.sdi_clk_calc_ctx, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %pck_min to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pck_min, align 4
  %pck_max = getelementptr inbounds %struct.sdi_clk_calc_ctx, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %pck_max to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pck_max, align 4
  %call = tail call zeroext i1 @dispc_div_calc(ptr noundef %6, i32 noundef %fck, i32 noundef %8, i32 noundef %10, ptr noundef nonnull @dpi_calc_dispc_cb, ptr noundef %data) #8
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dispc_div_calc(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal zeroext i1 @dpi_calc_dispc_cb(i32 noundef %lckd, i32 noundef %pckd, i32 noundef %lck, i32 noundef %pck, ptr nocapture noundef writeonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %lckd to i16
  %dispc_cinfo = getelementptr inbounds %struct.sdi_clk_calc_ctx, ptr %data, i32 0, i32 4
  %lck_div = getelementptr inbounds %struct.sdi_clk_calc_ctx, ptr %data, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %lck_div to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %lck_div, align 4
  %conv1 = trunc i32 %pckd to i16
  %pck_div = getelementptr inbounds %struct.sdi_clk_calc_ctx, ptr %data, i32 0, i32 4, i32 3
  %1 = ptrtoint ptr %pck_div to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv1, ptr %pck_div, align 2
  %2 = ptrtoint ptr %dispc_cinfo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %lck, ptr %dispc_cinfo, align 4
  %pck6 = getelementptr inbounds %struct.sdi_clk_calc_ctx, ptr %data, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %pck6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %pck, ptr %pck6, align 4
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dss_mgr_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dss_sdi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_runtime_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_runtime_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dss_set_fck_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_mgr_set_clock_div(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dss_sdi_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dss_sdi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dss_mgr_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dss_mgr_set_lcd_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omapdss_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omapdss_device_cleanup_output(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !18, !20, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/dss/sdi.c", i32 355, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/omapdrm/dss/sdi.c", i32 358, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sdi_init_port._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @sdi_init_port._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/omapdrm/dss/sdi.c", i32 368, i32 53}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/omapdrm/dss/sdi.c", i32 372, i32 4}
!12 = !{ptr @sdi_init_port._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @sdi_init_port._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/omapdrm/dss/sdi.c", i32 311, i32 14}
!16 = !{ptr @sdi_bridge_funcs, !17, !"sdi_bridge_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/omapdrm/dss/sdi.c", i32 274, i32 38}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/omapdrm/dss/sdi.c", i32 180, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sdi_bridge_mode_fixup.__UNIQUE_ID_ddebug309, !19, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"auto-init"}
!33 = !{i64 2148763686, i64 2148763691, i64 2148763704, i64 2148763748, i64 2148763782, i64 2148763803}
