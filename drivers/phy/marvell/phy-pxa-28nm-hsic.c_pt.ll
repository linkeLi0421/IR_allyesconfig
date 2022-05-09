; ModuleID = '/llk/IR_all_yes/drivers/phy/marvell/phy-pxa-28nm-hsic.c_pt.bc'
source_filename = "../drivers/phy/marvell/phy-pxa-28nm-hsic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mv_hsic_phy = type { ptr, ptr, ptr, ptr }

@__initcall__kmod_phy_pxa_28nm_hsic__289_205_mv_hsic_phy_driver_init6 = internal global ptr @mv_hsic_phy_driver_init, section ".initcall6.init", align 4
@mv_hsic_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mv_hsic_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mv_hsic_phy_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mv_hsic_phy_driver_exit = internal global ptr @mv_hsic_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [55 x i8] c"phy_pxa_28nm_hsic.author=Rob Herring <robh@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [54 x i8] c"phy_pxa_28nm_hsic.description=Marvell HSIC phy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [61 x i8] c"phy_pxa_28nm_hsic.file=drivers/phy/marvell/phy-pxa-28nm-hsic\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [33 x i8] c"phy_pxa_28nm_hsic.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mv-hsic-phy\00", [20 x i8] zeroinitializer }, align 32
@mv_hsic_phy_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa1928-hsic-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mv_hsic_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 174, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get clock.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mv_hsic_phy_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/phy/marvell/phy-pxa-28nm-hsic.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv_hsic_phy_probe._entry_ptr = internal global ptr @mv_hsic_phy_probe._entry, section ".printk_index", align 4
@hsic_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @mv_hsic_phy_init, ptr @mv_hsic_phy_exit, ptr @mv_hsic_phy_power_on, ptr @mv_hsic_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@mv_hsic_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 80, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HSIC PHY PLL not locked after 100mS.\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mv_hsic_phy_init\00", [47 x i8] zeroinitializer }, align 32
@mv_hsic_phy_init._entry_ptr = internal global ptr @mv_hsic_phy_init._entry, section ".printk_index", align 4
@mv_hsic_phy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 114, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"HSIC PHY READY not set after 100mS.\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mv_hsic_phy_power_on\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mv_hsic_phy_power_on._entry_ptr = internal global ptr @mv_hsic_phy_power_on._entry, section ".printk_index", align 4
@mv_hsic_phy_power_on._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.3, i32 122, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HSIC wait for connect interrupt timeout.\00", [55 x i8] zeroinitializer }, align 32
@mv_hsic_phy_power_on._entry_ptr.13 = internal global ptr @mv_hsic_phy_power_on._entry.11, section ".printk_index", align 4
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"mv_hsic_phy_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 198, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 201, i32 13 }
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"mv_hsic_phy_dt_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 192, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 174, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"hsic_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 153, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 80, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 114, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [43 x i8] c"../drivers/phy/marvell/phy-pxa-28nm-hsic.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 122, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_mv_hsic_phy_driver_exit, ptr @__initcall__kmod_phy_pxa_28nm_hsic__289_205_mv_hsic_phy_driver_init6, ptr @mv_hsic_phy_driver_exit, ptr @mv_hsic_phy_init._entry, ptr @mv_hsic_phy_init._entry_ptr, ptr @mv_hsic_phy_power_on._entry, ptr @mv_hsic_phy_power_on._entry.11, ptr @mv_hsic_phy_power_on._entry_ptr, ptr @mv_hsic_phy_power_on._entry_ptr.13, ptr @mv_hsic_phy_probe._entry, ptr @mv_hsic_phy_probe._entry_ptr, ptr @mv_hsic_phy_driver, ptr @.str, ptr @mv_hsic_phy_dt_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @hsic_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_hsic_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_hsic_phy_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_hsic_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsic_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_hsic_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_hsic_phy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_hsic_phy_power_on._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_hsic_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mv_hsic_phy_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mv_hsic_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mv_hsic_phy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_hsic_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev1 = getelementptr inbounds %struct.mv_hsic_phy, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %pdev1, align 4
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.mv_hsic_phy, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %4 = ptrtoint ptr %3 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.mv_hsic_phy, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %base, align 4
  %cmp.i51 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i51, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call20 = tail call ptr @devm_phy_create(ptr noundef %dev, ptr noundef %8, ptr noundef nonnull @hsic_ops) #5
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call20, ptr %call.i, align 4
  %cmp.i52 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i52, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call20, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call29 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #5
  %cmp.i.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  %12 = ptrtoint ptr %call29 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then23, %if.then14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %do.end ], [ %6, %if.then14 ], [ %10, %if.then23 ], [ %spec.select.i, %if.end26 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_hsic_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdev1 = getelementptr inbounds %struct.mv_hsic_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %base2 = getelementptr inbounds %struct.mv_hsic_phy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base2, align 4
  %clk = getelementptr inbounds %struct.mv_hsic_phy, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %add.ptr = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -266731516) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %add.ptr7 = getelementptr i8, ptr %5, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  %9 = or i32 %8, 262144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %9) #5, !srcloc !51
  %call12 = tail call fastcc i32 @wait_for_reg(ptr noundef %add.ptr7, i32 noundef 32768, i32 noundef 100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %clk_prepare_enable.exit.if.end_crit_edge, label %do.end15

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end15:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #8
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %11) #5
  tail call void @clk_unprepare(ptr noundef %11) #5
  br label %if.end

if.end:                                           ; preds = %do.end15, %clk_prepare_enable.exit.if.end_crit_edge
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_hsic_phy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base1 = getelementptr inbounds %struct.mv_hsic_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  %5 = and i32 %4, -262145
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #5, !srcloc !51
  %clk = getelementptr inbounds %struct.mv_hsic_phy, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_hsic_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdev1 = getelementptr inbounds %struct.mv_hsic_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %base2 = getelementptr inbounds %struct.mv_hsic_phy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base2, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %7 = and i32 %6, 2143289343
  %8 = or i32 %7, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #5, !srcloc !51
  %add.ptr6 = getelementptr i8, ptr %5, i32 24
  %call7 = tail call fastcc i32 @wait_for_reg(ptr noundef %add.ptr6, i32 noundef 134217728, i32 noundef 100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %add.ptr11 = getelementptr i8, ptr %5, i32 40
  %call12 = tail call fastcc i32 @wait_for_reg(ptr noundef %add.ptr11, i32 noundef 2, i32 noundef 200)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.12.sink = phi ptr [ @.str.8, %entry.cleanup.sink.split_crit_edge ], [ @.str.12, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call7, %entry.cleanup.sink.split_crit_edge ], [ %call12, %if.end.cleanup.sink.split_crit_edge ]
  %dev18 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev18, ptr noundef nonnull %.str.12.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_hsic_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base1 = getelementptr inbounds %struct.mv_hsic_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %5 = and i32 %4, 2147483647
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #5, !srcloc !51
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_reg(ptr noundef %reg, i32 noundef %mask, i32 noundef %ms) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %ms, 1000
  %conv = zext i32 %mul to i64
  %call = tail call i64 @ktime_get() #5
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %call, %mul.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 53) #5
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #5, !srcloc !53
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %and43 = and i32 %1, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and43, i32 %mask)
  %cmp1144 = icmp eq i32 %and43, %mask
  br i1 %cmp1144, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true:                                    ; preds = %if.then27.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call15 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call15, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call15, %add.i
  br i1 %cmp3.i, label %if.then19, label %if.then27

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #5, !srcloc !53
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  %.pre = and i32 %3, %mask
  br label %for.end

if.then27:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #5
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #5, !srcloc !53
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %and = and i32 %5, %mask
  %cmp11 = icmp eq i32 %and, %mask
  br i1 %cmp11, label %if.then27.for.end_crit_edge, label %if.then27.land.lhs.true_crit_edge

if.then27.land.lhs.true_crit_edge:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.then27.for.end_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.then27.for.end_crit_edge, %if.then19, %entry.for.end_crit_edge
  %and30.pre-phi = phi i32 [ %and43, %entry.for.end_crit_edge ], [ %.pre, %if.then19 ], [ %and, %if.then27.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and30.pre-phi, i32 %mask)
  %cmp31 = icmp eq i32 %and30.pre-phi, %mask
  %cond = select i1 %cmp31, i32 0, i32 -110
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_phy_pxa_28nm_hsic__289_205_mv_hsic_phy_driver_init6, !1, !"__initcall__kmod_phy_pxa_28nm_hsic__289_205_mv_hsic_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/marvell/phy-pxa-28nm-hsic.c", i32 205, i32 1}
!2 = !{ptr @__exitcall_mv_hsic_phy_driver_exit, !1, !"__exitcall_mv_hsic_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/phy/marvell/phy-pxa-28nm-hsic.c", i32 207, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/phy/marvell/phy-pxa-28nm-hsic.c", i32 208, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/phy/marvell/phy-pxa-28nm-hsic.c", i32 209, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/marvell/phy-pxa-28nm-hsic.c", i32 201, i32 13}
!12 = !{ptr @mv_hsic_phy_driver, !13, !"mv_hsic_phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/marvell/phy-pxa-28nm-hsic.c", i32 198, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/marvell/phy-pxa-28nm-hsic.c", i32 174, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mv_hsic_phy_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mv_hsic_phy_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @hsic_ops, !23, !"hsic_ops", i1 false, i1 false}
!23 = !{!"../drivers/phy/marvell/phy-pxa-28nm-hsic.c", i32 153, i32 29}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/marvell/phy-pxa-28nm-hsic.c", i32 80, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mv_hsic_phy_init._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @mv_hsic_phy_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/phy/marvell/phy-pxa-28nm-hsic.c", i32 114, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mv_hsic_phy_power_on._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @mv_hsic_phy_power_on._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/phy/marvell/phy-pxa-28nm-hsic.c", i32 122, i32 3}
!37 = !{ptr @mv_hsic_phy_power_on._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mv_hsic_phy_power_on._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @mv_hsic_phy_dt_match, !40, !"mv_hsic_phy_dt_match", i1 false, i1 false}
!40 = !{!"../drivers/phy/marvell/phy-pxa-28nm-hsic.c", i32 192, i32 34}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 2155064742}
!51 = !{i64 4897917}
!52 = !{i64 2155066043}
!53 = !{i64 4898335}
!54 = !{i64 2155066976}
!55 = !{i64 2155076530}
!56 = !{i64 2155077471}
!57 = !{i64 2155069289}
!58 = !{i64 2155069668}
!59 = !{i64 2155074514}
!60 = !{i64 2155075449}
!61 = !{i64 2155064055}
!62 = !{i64 2155064485}
