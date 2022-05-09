; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_mdss_funcs = type { ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.mdp5_mdss = type { %struct.msm_mdss, ptr, ptr, ptr, ptr, ptr, %struct.anon.96 }
%struct.msm_mdss = type { ptr, ptr }
%struct.anon.96 = type { i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.95, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.95 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom,mdss\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mdss_phys\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MDSS\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vbif_phys\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VBIF\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mdss_isr\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* failed to init irq: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* failed to init sub-block irqs: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@mdss_funcs = internal constant { %struct.msm_mdss_funcs, [20 x i8] } { %struct.msm_mdss_funcs { ptr @mdp5_mdss_enable, ptr @mdp5_mdss_disable, ptr @mdp5_mdss_destroy }, [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vsync\00", [26 x i8] zeroinitializer }, align 32
@mdss_hw_irqdomain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @mdss_hw_irqdomain_map, ptr null, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* mdss irq domain add failed\0A\00", [60 x i8] zeroinitializer }, align 32
@mdss_hw_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdss_hw_mask_irq, ptr null, ptr @mdss_hw_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdss\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 200, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 202, i32 50 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 213, i32 38 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 213, i32 51 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 219, i32 38 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 219, i32 51 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 227, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 232, i32 24 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 234, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 240, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [11 x i8] c"mdss_funcs\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 188, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 160, i32 41 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 164, i32 41 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 168, i32 43 }
@___asan_gen_.58 = private unnamed_addr constant [22 x i8] c"mdss_hw_irqdomain_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 107, i32 36 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 121, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"mdss_hw_irq_chip\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 87, i32 24 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [45 x i8] c"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 88, i32 11 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @mdss_funcs, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @mdss_hw_irqdomain_ops, ptr @.str.14, ptr @mdss_hw_irq_chip, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdss_funcs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdss_hw_irqdomain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdss_hw_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp5_mdss_init(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #3
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call1 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #3
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i, align 4
  %call9 = tail call ptr @msm_ioremap(ptr noundef %pdev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #3
  %mmio = getelementptr inbounds %struct.mdp5_mdss, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9, ptr %mmio, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %call16 = tail call ptr @msm_ioremap(ptr noundef %pdev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #3
  %vbif = getelementptr inbounds %struct.mdp5_mdss, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %vbif to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call16, ptr %vbif, align 4
  %cmp.i74 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 -16
  %call.i75 = tail call ptr @msm_clk_get(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.11) #3
  %ahb_clk.i = getelementptr inbounds %struct.mdp5_mdss, ptr %call.i, i32 0, i32 3
  %cmp.i.i = icmp ugt ptr %call.i75, inttoptr (i32 -4096 to ptr)
  %spec.store.select.i = select i1 %cmp.i.i, ptr null, ptr %call.i75
  %11 = ptrtoint ptr %ahb_clk.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.store.select.i, ptr %ahb_clk.i, align 4
  %call4.i = tail call ptr @msm_clk_get(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.12) #3
  %axi_clk.i = getelementptr inbounds %struct.mdp5_mdss, ptr %call.i, i32 0, i32 4
  %cmp.i1.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  %spec.store.select4.i = select i1 %cmp.i1.i, ptr null, ptr %call4.i
  %12 = ptrtoint ptr %axi_clk.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %spec.store.select4.i, ptr %axi_clk.i, align 4
  %call10.i = tail call ptr @msm_clk_get(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.13) #3
  %vsync_clk.i = getelementptr inbounds %struct.mdp5_mdss, ptr %call.i, i32 0, i32 5
  %cmp.i2.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  %spec.store.select3.i = select i1 %cmp.i2.i, ptr null, ptr %call10.i
  %13 = ptrtoint ptr %vsync_clk.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %spec.store.select3.i, ptr %vsync_clk.i, align 4
  %call29 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #3
  %call.i76 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call29, ptr noundef nonnull @mdss_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull %call.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool31.not = icmp eq i32 %call.i76, 0
  br i1 %tobool31.not, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, i32 noundef %call.i76) #3
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %17, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %17, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  %call1.i.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i.i, i32 noundef 32, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @mdss_hw_irqdomain_ops, ptr noundef nonnull %call.i) #3
  %tobool.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.14) #3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10, i32 noundef -6) #3
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  %irqcontroller.i = getelementptr inbounds %struct.mdp5_mdss, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %irqcontroller.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 0, ptr %irqcontroller.i, align 4
  %domain.i = getelementptr inbounds %struct.mdp5_mdss, ptr %call.i, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call1.i.i, ptr %domain.i, align 4
  %funcs = getelementptr inbounds %struct.msm_mdss, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mdss_funcs, ptr %funcs, align 4
  %mdss = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %mdss to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %mdss, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then37, %if.then32, %if.then19, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ 0, %entry.cleanup_crit_edge ], [ %6, %if.then12 ], [ %8, %if.then19 ], [ %call.i76, %if.then32 ], [ -6, %if.then37 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdss_irq(i32 noundef %irq, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.mdp5_mdss, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not7 = icmp eq i32 %call.i, 0
  br i1 %tobool.not7, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %domain = getelementptr inbounds %struct.mdp5_mdss, ptr %arg, i32 0, i32 6, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %intr.08 = phi i32 [ %call.i, %while.body.lr.ph ], [ %and, %while.body.while.body_crit_edge ]
  %2 = tail call i32 @llvm.ctlz.i32(i32 %intr.08, i1 true) #3, !range !46
  %sub = xor i32 %2, 31
  %3 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %domain, align 4
  %call2 = tail call i32 @generic_handle_domain_irq(ptr noundef %4, i32 noundef %sub) #3
  %shl = shl nuw i32 1, %sub
  %neg = xor i32 %shl, -1
  %and = and i32 %intr.08, %neg
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdss_hw_irqdomain_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hwirq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %hwirq
  %and = and i32 %shl, 4401
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @mdss_hw_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #3
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdss_hw_mask_irq(ptr nocapture noundef readonly %irqd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !47
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %irqcontroller = getelementptr inbounds %struct.mdp5_mdss, ptr %1, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %irqcontroller) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !48
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdss_hw_unmask_irq(ptr nocapture noundef readonly %irqd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !49
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %irqcontroller = getelementptr inbounds %struct.mdp5_mdss, ptr %1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef %3, ptr noundef %irqcontroller) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !50
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp5_mdss_enable(ptr nocapture noundef readonly %mdss) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #3
  %ahb_clk = getelementptr inbounds %struct.mdp5_mdss, ptr %mdss, i32 0, i32 3
  %0 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ahb_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %1) #3
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %axi_clk = getelementptr inbounds %struct.mdp5_mdss, ptr %mdss, i32 0, i32 4
  %2 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %axi_clk, align 4
  %call.i5 = tail call i32 @clk_prepare(ptr noundef %3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool.not.i6 = icmp eq i32 %call.i5, 0
  br i1 %tobool.not.i6, label %if.end.i9, label %clk_prepare_enable.exit.clk_prepare_enable.exit11_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit11_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit11

if.end.i9:                                        ; preds = %clk_prepare_enable.exit
  %call1.i7 = tail call i32 @clk_enable(ptr noundef %3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool2.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool2.not.i8, label %if.end.i9.clk_prepare_enable.exit11_crit_edge, label %if.then3.i10

if.end.i9.clk_prepare_enable.exit11_crit_edge:    ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit11

if.then3.i10:                                     ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %3) #3
  br label %clk_prepare_enable.exit11

clk_prepare_enable.exit11:                        ; preds = %if.then3.i10, %if.end.i9.clk_prepare_enable.exit11_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit11_crit_edge
  %vsync_clk = getelementptr inbounds %struct.mdp5_mdss, ptr %mdss, i32 0, i32 5
  %4 = ptrtoint ptr %vsync_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vsync_clk, align 4
  %call.i12 = tail call i32 @clk_prepare(ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool.not.i13 = icmp eq i32 %call.i12, 0
  br i1 %tobool.not.i13, label %if.end.i16, label %clk_prepare_enable.exit11.clk_prepare_enable.exit18_crit_edge

clk_prepare_enable.exit11.clk_prepare_enable.exit18_crit_edge: ; preds = %clk_prepare_enable.exit11
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit18

if.end.i16:                                       ; preds = %clk_prepare_enable.exit11
  %call1.i14 = tail call i32 @clk_enable(ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool2.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool2.not.i15, label %if.end.i16.clk_prepare_enable.exit18_crit_edge, label %if.then3.i17

if.end.i16.clk_prepare_enable.exit18_crit_edge:   ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit18

if.then3.i17:                                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %5) #3
  br label %clk_prepare_enable.exit18

clk_prepare_enable.exit18:                        ; preds = %if.then3.i17, %if.end.i16.clk_prepare_enable.exit18_crit_edge, %clk_prepare_enable.exit11.clk_prepare_enable.exit18_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp5_mdss_disable(ptr nocapture noundef readonly %mdss) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #3
  %vsync_clk = getelementptr inbounds %struct.mdp5_mdss, ptr %mdss, i32 0, i32 5
  %0 = ptrtoint ptr %vsync_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsync_clk, align 4
  tail call void @clk_disable(ptr noundef %1) #3
  tail call void @clk_unprepare(ptr noundef %1) #3
  %axi_clk = getelementptr inbounds %struct.mdp5_mdss, ptr %mdss, i32 0, i32 4
  %2 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %axi_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #3
  tail call void @clk_unprepare(ptr noundef %3) #3
  %ahb_clk = getelementptr inbounds %struct.mdp5_mdss, ptr %mdss, i32 0, i32 3
  %4 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ahb_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #3
  tail call void @clk_unprepare(ptr noundef %5) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_mdss_destroy(ptr noundef %mdss) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mdss, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %domain = getelementptr inbounds %struct.mdp5_mdss, ptr %mdss, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  tail call void @irq_domain_remove(ptr noundef %1) #3
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %domain, align 4
  %3 = ptrtoint ptr %mdss to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdss, align 4
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c", i32 200, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c", i32 202, i32 50}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c", i32 213, i32 38}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c", i32 213, i32 51}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c", i32 219, i32 38}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c", i32 219, i32 51}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c", i32 227, i32 3}
!14 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c", i32 232, i32 24}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c", i32 234, i32 3}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c", i32 240, i32 3}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c", i32 160, i32 41}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c", i32 164, i32 41}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c", i32 168, i32 43}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c", i32 121, i32 3}
!29 = !{ptr @mdss_hw_irqdomain_ops, !30, !"mdss_hw_irqdomain_ops", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c", i32 107, i32 36}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c", i32 88, i32 11}
!33 = !{ptr @mdss_hw_irq_chip, !34, !"mdss_hw_irq_chip", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c", i32 87, i32 24}
!35 = !{ptr @mdss_funcs, !36, !"mdss_funcs", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c", i32 188, i32 36}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i32 0, i32 33}
!47 = !{i64 2157273849}
!48 = !{i64 2157274192}
!49 = !{i64 2157274370}
!50 = !{i64 2157274707}
