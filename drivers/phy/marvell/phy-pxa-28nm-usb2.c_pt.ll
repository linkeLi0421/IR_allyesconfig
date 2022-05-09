; ModuleID = '/llk/IR_all_yes/drivers/phy/marvell/phy-pxa-28nm-usb2.c_pt.bc'
source_filename = "../drivers/phy/marvell/phy-pxa-28nm-usb2.c"
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
%struct.mv_usb2_phy = type { ptr, ptr, ptr, ptr }

@__initcall__kmod_phy_pxa_28nm_usb2__289_337_mv_usb2_phy_driver_init6 = internal global ptr @mv_usb2_phy_driver_init, section ".initcall6.init", align 4
@mv_usb2_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mv_usb2_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mv_usbphy_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mv_usb2_phy_driver_exit = internal global ptr @mv_usb2_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [55 x i8] c"phy_pxa_28nm_usb2.author=Rob Herring <robh@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [54 x i8] c"phy_pxa_28nm_usb2.description=Marvell USB2 phy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [61 x i8] c"phy_pxa_28nm_usb2.file=drivers/phy/marvell/phy-pxa-28nm-usb2\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [33 x i8] c"phy_pxa_28nm_usb2.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mv-usb2-phy\00", [20 x i8] zeroinitializer }, align 32
@mv_usbphy_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa1928-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mv_usb2_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 306, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get clock.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mv_usb2_phy_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/phy/marvell/phy-pxa-28nm-usb2.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv_usb2_phy_probe._entry_ptr = internal global ptr @mv_usb2_phy_probe._entry, section ".printk_index", align 4
@usb_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @mv_usb2_phy_28nm_init, ptr @mv_usb2_phy_28nm_exit, ptr @mv_usb2_phy_28nm_power_on, ptr @mv_usb2_phy_28nm_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@mv_usb2_phy_28nm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 213, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"USB PHY PLL calibrate not done after 100mS.\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mv_usb2_phy_28nm_init\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mv_usb2_phy_28nm_init._entry_ptr = internal global ptr @mv_usb2_phy_28nm_init._entry, section ".printk_index", align 4
@mv_usb2_phy_28nm_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 219, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"USB PHY RX SQ calibrate not done after 100mS.\00", [50 x i8] zeroinitializer }, align 32
@mv_usb2_phy_28nm_init._entry_ptr.11 = internal global ptr @mv_usb2_phy_28nm_init._entry.9, section ".printk_index", align 4
@mv_usb2_phy_28nm_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.3, i32 225, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PLL_READY not set after 100mS.\00", [33 x i8] zeroinitializer }, align 32
@mv_usb2_phy_28nm_init._entry_ptr.14 = internal global ptr @mv_usb2_phy_28nm_init._entry.12, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"mv_usb2_phy_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 330, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 333, i32 13 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"mv_usbphy_dt_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 324, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 306, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [8 x i8] c"usb_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 285, i32 29 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 213, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 219, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [43 x i8] c"../drivers/phy/marvell/phy-pxa-28nm-usb2.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 225, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_mv_usb2_phy_driver_exit, ptr @__initcall__kmod_phy_pxa_28nm_usb2__289_337_mv_usb2_phy_driver_init6, ptr @mv_usb2_phy_28nm_init._entry, ptr @mv_usb2_phy_28nm_init._entry.12, ptr @mv_usb2_phy_28nm_init._entry.9, ptr @mv_usb2_phy_28nm_init._entry_ptr, ptr @mv_usb2_phy_28nm_init._entry_ptr.11, ptr @mv_usb2_phy_28nm_init._entry_ptr.14, ptr @mv_usb2_phy_driver_exit, ptr @mv_usb2_phy_probe._entry, ptr @mv_usb2_phy_probe._entry_ptr, ptr @mv_usb2_phy_driver, ptr @.str, ptr @mv_usbphy_dt_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @usb_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_usb2_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_usbphy_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_usb2_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_usb2_phy_28nm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_usb2_phy_28nm_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_usb2_phy_28nm_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_usb2_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mv_usb2_phy_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mv_usb2_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mv_usb2_phy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_usb2_phy_probe(ptr noundef %pdev) #2 align 64 {
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
  %pdev1 = getelementptr inbounds %struct.mv_usb2_phy, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %pdev1, align 4
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.mv_usb2_phy, ptr %call.i, i32 0, i32 3
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
  %base = getelementptr inbounds %struct.mv_usb2_phy, ptr %call.i, i32 0, i32 2
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
  %call20 = tail call ptr @devm_phy_create(ptr noundef %dev, ptr noundef %8, ptr noundef nonnull @usb_ops) #5
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
define internal i32 @mv_usb2_phy_28nm_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdev1 = getelementptr inbounds %struct.mv_usb2_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %base2 = getelementptr inbounds %struct.mv_usb2_phy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base2, align 4
  %clk = getelementptr inbounds %struct.mv_usb2_phy, ptr %1, i32 0, i32 3
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
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  %9 = and i32 %8, -2131230514
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %10 = or i32 %9, 218361872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %10) #5, !srcloc !52
  %add.ptr9 = getelementptr i8, ptr %5, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %12 = or i32 %11, 50331648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %12) #5, !srcloc !52
  %add.ptr21 = getelementptr i8, ptr %5, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  %14 = and i32 %13, -28676
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %15 = or i32 %14, 12291
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %15) #5, !srcloc !52
  %add.ptr35 = getelementptr i8, ptr %5, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %17 = and i32 %16, -251658241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %18 = or i32 %17, 167772160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %18) #5, !srcloc !52
  %add.ptr47 = getelementptr i8, ptr %5, i32 28
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %20 = and i32 %19, 2089809983
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %21 = or i32 %20, -2130706432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %21) #5, !srcloc !52
  %add.ptr59 = getelementptr i8, ptr %5, i32 52
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %23 = and i32 %22, -805306369
  %24 = or i32 %23, 268435456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %24) #5, !srcloc !52
  %add.ptr69 = getelementptr i8, ptr %5, i32 8
  %call70 = tail call fastcc i32 @wait_for_reg(ptr noundef %add.ptr69, i32 noundef -2139095040)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool.not = icmp eq i32 %call70, 0
  br i1 %tobool.not, label %if.end, label %clk_prepare_enable.exit.err_clk_crit_edge

clk_prepare_enable.exit.err_clk_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clk

if.end:                                           ; preds = %clk_prepare_enable.exit
  %add.ptr74 = getelementptr i8, ptr %5, i32 24
  %call75 = tail call fastcc i32 @wait_for_reg(ptr noundef %add.ptr74, i32 noundef -2147483648)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end82, label %if.end.err_clk_crit_edge

if.end.err_clk_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clk

if.end82:                                         ; preds = %if.end
  %call84 = tail call fastcc i32 @wait_for_reg(ptr noundef %5, i32 noundef -2147483648)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end82.cleanup_crit_edge, label %if.end82.err_clk_crit_edge

if.end82.err_clk_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clk

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_clk:                                          ; preds = %if.end82.err_clk_crit_edge, %if.end.err_clk_crit_edge, %clk_prepare_enable.exit.err_clk_crit_edge
  %.str.13.sink = phi ptr [ @.str.6, %clk_prepare_enable.exit.err_clk_crit_edge ], [ @.str.10, %if.end.err_clk_crit_edge ], [ @.str.13, %if.end82.err_clk_crit_edge ]
  %ret.0 = phi i32 [ %call70, %clk_prepare_enable.exit.err_clk_crit_edge ], [ %call75, %if.end.err_clk_crit_edge ], [ %call84, %if.end82.err_clk_crit_edge ]
  %dev90 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev90, ptr noundef nonnull %.str.13.sink) #8
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %26) #5
  tail call void @clk_unprepare(ptr noundef %26) #5
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %if.end82.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_clk ], [ 0, %if.end82.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_usb2_phy_28nm_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base1 = getelementptr inbounds %struct.mv_usb2_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  %5 = and i16 %4, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %5) #5, !srcloc !66
  %add.ptr8 = getelementptr i8, ptr %3, i32 12
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 %6) #5, !srcloc !66
  %add.ptr21 = getelementptr i8, ptr %3, i32 52
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  %8 = and i16 %7, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21, i16 %8) #5, !srcloc !66
  %clk = getelementptr inbounds %struct.mv_usb2_phy, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %10) #5
  tail call void @clk_unprepare(ptr noundef %10) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_usb2_phy_28nm_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base1 = getelementptr inbounds %struct.mv_usb2_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %add.ptr = getelementptr i8, ptr %3, i32 220
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %5 = or i32 %4, 1895825408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #5, !srcloc !52
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_usb2_phy_28nm_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base1 = getelementptr inbounds %struct.mv_usb2_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %add.ptr = getelementptr i8, ptr %3, i32 220
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !49
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  %or = or i32 %5, -114
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #5, !srcloc !52
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_reg(ptr noundef %reg, i32 noundef %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 147) #5
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #5, !srcloc !49
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  %and2 = and i32 %1, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and2, i32 %mask)
  %cmp113 = icmp eq i32 %and2, %mask
  br i1 %cmp113, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

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
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #5, !srcloc !49
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  %.pre = and i32 %3, %mask
  br label %for.end

if.then27:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #5
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #5, !srcloc !49
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
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
  %and30.pre-phi = phi i32 [ %and2, %entry.for.end_crit_edge ], [ %.pre, %if.then19 ], [ %and, %if.then27.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and30.pre-phi, i32 %mask)
  %cmp31 = icmp eq i32 %and30.pre-phi, %mask
  %cond = select i1 %cmp31, i32 0, i32 -110
  ret i32 %cond
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_phy_pxa_28nm_usb2__289_337_mv_usb2_phy_driver_init6, !1, !"__initcall__kmod_phy_pxa_28nm_usb2__289_337_mv_usb2_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/marvell/phy-pxa-28nm-usb2.c", i32 337, i32 1}
!2 = !{ptr @__exitcall_mv_usb2_phy_driver_exit, !1, !"__exitcall_mv_usb2_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/phy/marvell/phy-pxa-28nm-usb2.c", i32 339, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/phy/marvell/phy-pxa-28nm-usb2.c", i32 340, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/phy/marvell/phy-pxa-28nm-usb2.c", i32 341, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/marvell/phy-pxa-28nm-usb2.c", i32 333, i32 13}
!12 = !{ptr @mv_usb2_phy_driver, !13, !"mv_usb2_phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/marvell/phy-pxa-28nm-usb2.c", i32 330, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/marvell/phy-pxa-28nm-usb2.c", i32 306, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mv_usb2_phy_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mv_usb2_phy_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @usb_ops, !23, !"usb_ops", i1 false, i1 false}
!23 = !{!"../drivers/phy/marvell/phy-pxa-28nm-usb2.c", i32 285, i32 29}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/marvell/phy-pxa-28nm-usb2.c", i32 213, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mv_usb2_phy_28nm_init._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @mv_usb2_phy_28nm_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/marvell/phy-pxa-28nm-usb2.c", i32 219, i32 3}
!32 = !{ptr @mv_usb2_phy_28nm_init._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mv_usb2_phy_28nm_init._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/phy/marvell/phy-pxa-28nm-usb2.c", i32 225, i32 3}
!36 = !{ptr @mv_usb2_phy_28nm_init._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mv_usb2_phy_28nm_init._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @mv_usbphy_dt_match, !39, !"mv_usbphy_dt_match", i1 false, i1 false}
!39 = !{!"../drivers/phy/marvell/phy-pxa-28nm-usb2.c", i32 324, i32 34}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 5352536}
!50 = !{i64 2155108624}
!51 = !{i64 2155108937}
!52 = !{i64 5352118}
!53 = !{i64 2155109717}
!54 = !{i64 2155110152}
!55 = !{i64 2155110967}
!56 = !{i64 2155111437}
!57 = !{i64 2155112295}
!58 = !{i64 2155112532}
!59 = !{i64 2155113201}
!60 = !{i64 2155113745}
!61 = !{i64 2155114513}
!62 = !{i64 2155114922}
!63 = !{i64 5351698}
!64 = !{i64 2155126521}
!65 = !{i64 2155126814}
!66 = !{i64 5351498}
!67 = !{i64 2155127449}
!68 = !{i64 2155127746}
!69 = !{i64 2155128382}
!70 = !{i64 2155128677}
!71 = !{i64 2155122161}
!72 = !{i64 2155123284}
!73 = !{i64 2155124795}
!74 = !{i64 2155125920}
!75 = !{i64 2155107728}
!76 = !{i64 2155108158}
