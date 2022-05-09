; ModuleID = '/llk/IR_all_yes/drivers/phy/socionext/phy-uniphier-pcie.c_pt.bc'
source_filename = "../drivers/phy/socionext/phy-uniphier-pcie.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uniphier_pciephy_soc_data = type { i8, i8, ptr }
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
%struct.uniphier_pciephy_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_phy_uniphier_pcie__339_345_uniphier_pciephy_driver_init6 = internal global ptr @uniphier_pciephy_driver_init, section ".initcall6.init", align 4
@uniphier_pciephy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uniphier_pciephy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_pciephy_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uniphier_pciephy_driver_exit = internal global ptr @uniphier_pciephy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author340 = internal constant [75 x i8] c"phy_uniphier_pcie.author=Kunihiko Hayashi <hayashi.kunihiko@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description341 = internal constant [70 x i8] c"phy_uniphier_pcie.description=UniPhier PHY driver for PCIe controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file342 = internal constant [63 x i8] c"phy_uniphier_pcie.file=drivers/phy/socionext/phy-uniphier-pcie\00", section ".modinfo", align 1
@__UNIQUE_ID_license343 = internal constant [33 x i8] c"phy_uniphier_pcie.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uniphier-pcie-phy\00", [46 x i8] zeroinitializer }, align 32
@uniphier_pciephy_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro5-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro5_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld20_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-nx1-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_nx1_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/phy/socionext/phy-uniphier-pcie.c\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gio\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@uniphier_pciephy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @uniphier_pciephy_init, ptr @uniphier_pciephy_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"socionext,syscon\00", [47 x i8] zeroinitializer }, align 32
@uniphier_pro5_data = internal constant { %struct.uniphier_pciephy_soc_data, [24 x i8] } { %struct.uniphier_pciephy_soc_data { i8 1, i8 0, ptr null }, [24 x i8] zeroinitializer }, align 32
@uniphier_ld20_data = internal constant { %struct.uniphier_pciephy_soc_data, [24 x i8] } { %struct.uniphier_pciephy_soc_data { i8 0, i8 0, ptr @uniphier_pciephy_ld20_setmode }, [24 x i8] zeroinitializer }, align 32
@uniphier_pxs3_data = internal constant { %struct.uniphier_pciephy_soc_data, [24 x i8] } zeroinitializer, align 32
@uniphier_nx1_data = internal constant { %struct.uniphier_pciephy_soc_data, [24 x i8] } { %struct.uniphier_pciephy_soc_data { i8 0, i8 1, ptr @uniphier_pciephy_nx1_setmode }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [24 x i8] c"uniphier_pciephy_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 338, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 341, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [23 x i8] c"uniphier_pciephy_match\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 317, i32 34 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 233, i32 6 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 243, i32 37 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 252, i32 33 }
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"uniphier_pciephy_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 214, i32 29 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 274, i32 8 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"uniphier_pro5_data\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 296, i32 47 }
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"uniphier_ld20_data\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 300, i32 47 }
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c"uniphier_pxs3_data\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 306, i32 47 }
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"uniphier_nx1_data\00", align 1
@___asan_gen_.39 = private constant [45 x i8] c"../drivers/phy/socionext/phy-uniphier-pcie.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 311, i32 47 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author340, ptr @__UNIQUE_ID_description341, ptr @__UNIQUE_ID_file342, ptr @__UNIQUE_ID_license343, ptr @__exitcall_uniphier_pciephy_driver_exit, ptr @__initcall__kmod_phy_uniphier_pcie__339_345_uniphier_pciephy_driver_init6, ptr @uniphier_pciephy_driver_exit, ptr @uniphier_pciephy_driver, ptr @.str, ptr @uniphier_pciephy_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @uniphier_pciephy_ops, ptr @.str.4, ptr @uniphier_pro5_data, ptr @uniphier_ld20_data, ptr @uniphier_pxs3_data, ptr @uniphier_nx1_data], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pciephy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pciephy_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pciephy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pro5_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ld20_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pxs3_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_nx1_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pciephy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_pciephy_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_pciephy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_pciephy_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pciephy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #4
  %data = getelementptr inbounds %struct.uniphier_pciephy_priv, ptr %call.i, i32 0, i32 6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %data, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %do.end, label %if.end29, !prof !43

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 233, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %dev30 = getelementptr inbounds %struct.uniphier_pciephy_priv, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev30 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev30, align 4
  %call31 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call31, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool39.not = icmp eq i8 %7, 0
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.end37
  %call41 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #4
  %clk_gio = getelementptr inbounds %struct.uniphier_pciephy_priv, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %clk_gio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call41, ptr %clk_gio, align 4
  %cmp.i151 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %call41 to i32
  br label %cleanup

if.end47:                                         ; preds = %if.then40
  %call.i152 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %rst_gio = getelementptr inbounds %struct.uniphier_pciephy_priv, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %rst_gio to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i152, ptr %rst_gio, align 4
  %cmp.i153 = icmp ugt ptr %call.i152, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %call.i152 to i32
  br label %cleanup

if.end54:                                         ; preds = %if.end47
  %call55 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #4
  %clk = getelementptr inbounds %struct.uniphier_pciephy_priv, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call55, ptr %clk, align 4
  %cmp.i154 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %call55 to i32
  br label %cleanup

if.end61:                                         ; preds = %if.end54
  %call.i155 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %rst = getelementptr inbounds %struct.uniphier_pciephy_priv, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i155, ptr %rst, align 4
  %cmp.i156 = icmp ugt ptr %call.i155, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %if.then65, label %if.end61.if.end85_crit_edge

if.end61.if.end85_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %call.i155 to i32
  br label %cleanup

if.else:                                          ; preds = %if.end37
  %call69 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #4
  %clk70 = getelementptr inbounds %struct.uniphier_pciephy_priv, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %clk70 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call69, ptr %clk70, align 4
  %cmp.i157 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i157, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %call69 to i32
  br label %cleanup

if.end76:                                         ; preds = %if.else
  %call.i158 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %rst78 = getelementptr inbounds %struct.uniphier_pciephy_priv, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %rst78 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i158, ptr %rst78, align 4
  %cmp.i159 = icmp ugt ptr %call.i158, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %if.then81, label %if.end76.if.end85_crit_edge

if.end76.if.end85_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85

if.then81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %call.i158 to i32
  br label %cleanup

if.end85:                                         ; preds = %if.end76.if.end85_crit_edge, %if.end61.if.end85_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %call86 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef %21, ptr noundef nonnull @uniphier_pciephy_ops) #4
  %cmp.i160 = icmp ugt ptr %call86, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %call86 to i32
  br label %cleanup

if.end90:                                         ; preds = %if.end85
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %call92 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %24, ptr noundef nonnull @.str.4) #4
  %cmp.i161 = icmp ugt ptr %call92, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %if.end90.if.end99_crit_edge, label %land.lhs.true

if.end90.if.end99_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end99

land.lhs.true:                                    ; preds = %if.end90
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %set_phymode = getelementptr inbounds %struct.uniphier_pciephy_soc_data, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %set_phymode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_phymode, align 4
  %tobool95.not = icmp eq ptr %28, null
  br i1 %tobool95.not, label %land.lhs.true.if.end99_crit_edge, label %if.then96

land.lhs.true.if.end99_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end99

if.then96:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %28(ptr noundef %call92) #4
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %land.lhs.true.if.end99_crit_edge, %if.end90.if.end99_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call86, i32 0, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call100 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #4
  %cmp.i.i = icmp ugt ptr %call100, inttoptr (i32 -4096 to ptr)
  %30 = ptrtoint ptr %call100 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %30, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %if.then88, %if.then81, %if.then73, %if.then65, %if.then58, %if.then51, %if.then44, %if.then34, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %3, %if.then34 ], [ %9, %if.then44 ], [ %11, %if.then51 ], [ %13, %if.then58 ], [ %15, %if.then65 ], [ %22, %if.then88 ], [ %spec.select.i, %if.end99 ], [ %17, %if.then73 ], [ %19, %if.then81 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pciephy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.uniphier_pciephy_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %3) #4
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %clk_gio = getelementptr inbounds %struct.uniphier_pciephy_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %clk_gio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_gio, align 4
  %call.i121 = tail call i32 @clk_prepare(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool.not.i122 = icmp eq i32 %call.i121, 0
  br i1 %tobool.not.i122, label %if.end.i125, label %if.end.out_clk_disable_crit_edge

if.end.out_clk_disable_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_clk_disable

if.end.i125:                                      ; preds = %if.end
  %call1.i123 = tail call i32 @clk_enable(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i123)
  %tobool2.not.i124 = icmp eq i32 %call1.i123, 0
  br i1 %tobool2.not.i124, label %if.end5, label %if.end.i125.out_clk_disable.sink.split_crit_edge

if.end.i125.out_clk_disable.sink.split_crit_edge: ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_clk_disable.sink.split

if.end5:                                          ; preds = %if.end.i125
  %rst = getelementptr inbounds %struct.uniphier_pciephy_priv, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rst, align 4
  %call6 = tail call i32 @reset_control_deassert(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_clk_gio_disable_crit_edge

if.end5.out_clk_gio_disable_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_clk_gio_disable

if.end9:                                          ; preds = %if.end5
  %rst_gio = getelementptr inbounds %struct.uniphier_pciephy_priv, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %rst_gio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rst_gio, align 4
  %call10 = tail call i32 @reset_control_deassert(ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %out_rst_assert

if.end13:                                         ; preds = %if.end9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %13 = and i32 %12, -917505
  %14 = or i32 %13, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #4, !srcloc !48
  %data = getelementptr inbounds %struct.uniphier_pciephy_priv, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool34.not = icmp eq i8 %20, 0
  br i1 %tobool34.not, label %for.body, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %if.end13
  tail call fastcc void @uniphier_pciephy_set_param(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 8, i32 noundef 8)
  tail call fastcc void @uniphier_pciephy_set_param(ptr noundef %1, i32 noundef 0, i32 noundef 6, i32 noundef 63, i32 noundef 0)
  tail call fastcc void @uniphier_pciephy_set_param(ptr noundef %1, i32 noundef 0, i32 noundef 26, i32 noundef 240, i32 noundef 80)
  tail call fastcc void @uniphier_pciephy_set_param(ptr noundef %1, i32 noundef 0, i32 noundef 28, i32 noundef 12, i32 noundef 0)
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %is_dual_phy = getelementptr inbounds %struct.uniphier_pciephy_soc_data, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %is_dual_phy to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_dual_phy, align 1, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool38.not.not = icmp eq i8 %24, 0
  br i1 %tobool38.not.not, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.1:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @uniphier_pciephy_set_param(ptr noundef %1, i32 noundef 1, i32 noundef 0, i32 noundef 8, i32 noundef 8)
  tail call fastcc void @uniphier_pciephy_set_param(ptr noundef %1, i32 noundef 1, i32 noundef 6, i32 noundef 63, i32 noundef 0)
  tail call fastcc void @uniphier_pciephy_set_param(ptr noundef %1, i32 noundef 1, i32 noundef 26, i32 noundef 240, i32 noundef 80)
  tail call fastcc void @uniphier_pciephy_set_param(ptr noundef %1, i32 noundef 1, i32 noundef 28, i32 noundef 12, i32 noundef 0)
  br label %for.end

for.end:                                          ; preds = %for.body.1, %for.body.for.end_crit_edge
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 10, i32 noundef 2) #4
  tail call fastcc void @uniphier_pciephy_deassert(ptr noundef %1)
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 10, i32 noundef 2) #4
  br label %cleanup

out_rst_assert:                                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rst, align 4
  %call88 = tail call i32 @reset_control_assert(ptr noundef %26) #4
  br label %out_clk_gio_disable

out_clk_gio_disable:                              ; preds = %out_rst_assert, %if.end5.out_clk_gio_disable_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end5.out_clk_gio_disable_crit_edge ], [ %call10, %out_rst_assert ]
  %27 = ptrtoint ptr %clk_gio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk_gio, align 4
  tail call void @clk_disable(ptr noundef %28) #4
  br label %out_clk_disable.sink.split

out_clk_disable.sink.split:                       ; preds = %out_clk_gio_disable, %if.end.i125.out_clk_disable.sink.split_crit_edge
  %.sink = phi ptr [ %28, %out_clk_gio_disable ], [ %5, %if.end.i125.out_clk_disable.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %ret.0, %out_clk_gio_disable ], [ %call1.i123, %if.end.i125.out_clk_disable.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #4
  br label %out_clk_disable

out_clk_disable:                                  ; preds = %out_clk_disable.sink.split, %if.end.out_clk_disable_crit_edge
  %ret.1 = phi i32 [ %call.i121, %if.end.out_clk_disable_crit_edge ], [ %ret.1.ph, %out_clk_disable.sink.split ]
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %30) #4
  tail call void @clk_unprepare(ptr noundef %30) #4
  br label %cleanup

cleanup:                                          ; preds = %out_clk_disable, %for.end, %if.end13.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_clk_disable ], [ 0, %for.end ], [ 0, %if.end13.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pciephy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.uniphier_pciephy_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8204
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  %9 = and i32 %8, -16842753
  %10 = or i32 %9, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  tail call void @arm_heavy_mb() #4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr3.i = getelementptr i8, ptr %12, i32 8204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %10) #4, !srcloc !48
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rst_gio = getelementptr inbounds %struct.uniphier_pciephy_priv, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %rst_gio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rst_gio, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %14) #4
  %rst = getelementptr inbounds %struct.uniphier_pciephy_priv, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rst, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %16) #4
  %clk_gio = getelementptr inbounds %struct.uniphier_pciephy_priv, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %clk_gio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_gio, align 4
  tail call void @clk_disable(ptr noundef %18) #4
  tail call void @clk_unprepare(ptr noundef %18) #4
  %clk = getelementptr inbounds %struct.uniphier_pciephy_priv, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %20) #4
  tail call void @clk_unprepare(ptr noundef %20) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uniphier_pciephy_set_param(ptr nocapture noundef readonly %priv, i32 noundef %id, i32 noundef %reg, i32 noundef %mask, i32 noundef %param) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %reg, 1
  %and29 = and i32 %shl, 62
  %or = or i32 %and29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %tobool.not.i = icmp eq i32 %id, 0
  %shl.i = shl nuw nsw i32 %or, 16
  %spec.select.i = select i1 %tobool.not.i, i32 %or, i32 %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %0 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #4
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #4, !srcloc !48
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %add.ptr2.i = getelementptr i8, ptr %4, i32 8196
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %add.ptr7.i = getelementptr i8, ptr %7, i32 8196
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %add.ptr.i164 = getelementptr i8, ptr %10, i32 8196
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i164) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  %and.i = xor i32 %mask, -1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  %shr.i = lshr i32 %12, 16
  %spec.select.i166 = select i1 %tobool.not.i, i32 %12, i32 %shr.i
  %and30 = and i32 %spec.select.i166, %and.i
  %and31 = and i32 %param, %mask
  %or32 = or i32 %and30, %and31
  %shl55 = shl i32 %or32, 6
  %and56 = and i32 %shl55, 16320
  %or81 = or i32 %and56, %and29
  %shl.i168 = shl nuw nsw i32 %or81, 16
  %spec.select.i169 = select i1 %tobool.not.i, i32 %or81, i32 %shl.i168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %13 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i169) #4
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %add.ptr.i170 = getelementptr i8, ptr %15, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 %13) #4, !srcloc !48
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 4
  %add.ptr2.i171 = getelementptr i8, ptr %17, i32 8196
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i171) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %add.ptr7.i172 = getelementptr i8, ptr %20, i32 8196
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i172) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  %or82 = or i32 %or81, 1
  %shl.i174 = shl nuw nsw i32 %or82, 16
  %spec.select.i175 = select i1 %tobool.not.i, i32 %or82, i32 %shl.i174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %22 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i175) #4
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 4
  %add.ptr.i176 = getelementptr i8, ptr %24, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176, i32 %22) #4, !srcloc !48
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 4
  %add.ptr2.i177 = getelementptr i8, ptr %26, i32 8196
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i177) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 4
  %add.ptr7.i178 = getelementptr i8, ptr %29, i32 8196
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i178) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 4
  %add.ptr.i182 = getelementptr i8, ptr %32, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182, i32 %13) #4, !srcloc !48
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 4
  %add.ptr2.i183 = getelementptr i8, ptr %34, i32 8196
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i183) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 4
  %add.ptr7.i184 = getelementptr i8, ptr %37, i32 8196
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i184) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv, align 4
  %add.ptr.i188 = getelementptr i8, ptr %40, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188, i32 %0) #4, !srcloc !48
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 4
  %add.ptr2.i189 = getelementptr i8, ptr %42, i32 8196
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i189) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 4
  %add.ptr7.i190 = getelementptr i8, ptr %45, i32 8196
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i190) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 4
  %add.ptr.i191 = getelementptr i8, ptr %48, i32 8196
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i191) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uniphier_pciephy_deassert(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8204
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  %3 = or i32 %2, 16842752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 8204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #4, !srcloc !48
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_pciephy_ld20_setmode(ptr noundef %regmap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 1424, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_pciephy_nx1_setmode(ptr noundef %regmap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 8772, i32 noundef 768, i32 noundef 768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_phy_uniphier_pcie__339_345_uniphier_pciephy_driver_init6, !1, !"__initcall__kmod_phy_uniphier_pcie__339_345_uniphier_pciephy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/socionext/phy-uniphier-pcie.c", i32 345, i32 1}
!2 = !{ptr @__exitcall_uniphier_pciephy_driver_exit, !1, !"__exitcall_uniphier_pciephy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author340, !4, !"__UNIQUE_ID_author340", i1 false, i1 false}
!4 = !{!"../drivers/phy/socionext/phy-uniphier-pcie.c", i32 347, i32 1}
!5 = !{ptr @__UNIQUE_ID_description341, !6, !"__UNIQUE_ID_description341", i1 false, i1 false}
!6 = !{!"../drivers/phy/socionext/phy-uniphier-pcie.c", i32 348, i32 1}
!7 = !{ptr @__UNIQUE_ID_file342, !8, !"__UNIQUE_ID_file342", i1 false, i1 false}
!8 = !{!"../drivers/phy/socionext/phy-uniphier-pcie.c", i32 349, i32 1}
!9 = !{ptr @__UNIQUE_ID_license343, !8, !"__UNIQUE_ID_license343", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/socionext/phy-uniphier-pcie.c", i32 341, i32 11}
!12 = !{ptr @uniphier_pciephy_driver, !13, !"uniphier_pciephy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/socionext/phy-uniphier-pcie.c", i32 338, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/socionext/phy-uniphier-pcie.c", i32 233, i32 6}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/socionext/phy-uniphier-pcie.c", i32 243, i32 37}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/socionext/phy-uniphier-pcie.c", i32 252, i32 33}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/phy/socionext/phy-uniphier-pcie.c", i32 274, i32 8}
!22 = !{ptr @uniphier_pciephy_ops, !23, !"uniphier_pciephy_ops", i1 false, i1 false}
!23 = !{!"../drivers/phy/socionext/phy-uniphier-pcie.c", i32 214, i32 29}
!24 = !{ptr @uniphier_pciephy_match, !25, !"uniphier_pciephy_match", i1 false, i1 false}
!25 = !{!"../drivers/phy/socionext/phy-uniphier-pcie.c", i32 317, i32 34}
!26 = !{ptr @uniphier_pro5_data, !27, !"uniphier_pro5_data", i1 false, i1 false}
!27 = !{!"../drivers/phy/socionext/phy-uniphier-pcie.c", i32 296, i32 47}
!28 = !{ptr @uniphier_ld20_data, !29, !"uniphier_ld20_data", i1 false, i1 false}
!29 = !{!"../drivers/phy/socionext/phy-uniphier-pcie.c", i32 300, i32 47}
!30 = !{ptr @uniphier_pxs3_data, !31, !"uniphier_pxs3_data", i1 false, i1 false}
!31 = !{!"../drivers/phy/socionext/phy-uniphier-pcie.c", i32 306, i32 47}
!32 = !{ptr @uniphier_nx1_data, !33, !"uniphier_nx1_data", i1 false, i1 false}
!33 = !{!"../drivers/phy/socionext/phy-uniphier-pcie.c", i32 311, i32 47}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i8 0, i8 2}
!45 = !{i64 3116126}
!46 = !{i64 2155494756}
!47 = !{i64 2155535532}
!48 = !{i64 3115708}
!49 = !{i64 2155492626}
!50 = !{i64 2155493013}
!51 = !{i64 2155243301}
!52 = !{i64 2155243982}
!53 = !{i64 2155244483}
!54 = !{i64 2155244984}
!55 = !{i64 2155493691}
!56 = !{i64 2155494078}
