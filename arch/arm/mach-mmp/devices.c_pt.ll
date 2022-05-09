; ModuleID = '/llk/IR_all_yes/arch/arm/mach-mmp/devices.c_pt.bc'
source_filename = "../arch/arm/mach-mmp/devices.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.pxa_device_desc = type { ptr, ptr, i32, i32, i32, i32, [2 x i32] }

@pxa168_usb_phy_resources = dso_local global { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 -736071680, i32 -736071425, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pxa-usb-phy\00", [20 x i8] zeroinitializer }, align 32
@usb_dma_mask = internal global { i64, [24 x i8] } { i64 4294967295, [24 x i8] zeroinitializer }, align 32
@pxa168_device_usb_phy = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr @usb_dma_mask, i64 4294967295, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 1, ptr @pxa168_usb_phy_resources, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"capregs\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phyregs\00", [24 x i8] zeroinitializer }, align 32
@pxa168_u2o_resources = dso_local global { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 -736067328, i32 -736067073, ptr @.str.1, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 -736071680, i32 -736071425, ptr @.str.2, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 44, i32 44, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mv-udc\00", [25 x i8] zeroinitializer }, align 32
@pxa168_device_u2o = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.3, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr @usb_dma_mask, i64 4294967295, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 3, ptr @pxa168_u2o_resources, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@pxa168_u2oehci_resources = dso_local global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 -736067584, i32 -736067073, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 44, i32 44, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pxa-u2oehci\00", [20 x i8] zeroinitializer }, align 32
@pxa168_device_u2oehci = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.4, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr @usb_dma_mask, i64 4294967295, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 2, ptr @pxa168_u2oehci_resources, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@pxa168_u2ootg_resources = dso_local global { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 -736067328, i32 -736067073, ptr @.str.1, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 -736071680, i32 -736071425, ptr @.str.2, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 44, i32 44, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mv-otg\00", [25 x i8] zeroinitializer }, align 32
@pxa168_device_u2ootg = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.5, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr @usb_dma_mask, i64 4294967295, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 3, ptr @pxa168_u2ootg_resources, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [25 x i8] c"pxa168_usb_phy_resources\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 241, i32 17 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 250, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [13 x i8] c"usb_dma_mask\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 238, i32 27 }
@___asan_gen_.15 = private unnamed_addr constant [22 x i8] c"pxa168_device_usb_phy\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 249, i32 24 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 268, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 275, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"pxa168_u2o_resources\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 262, i32 17 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 285, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"pxa168_device_u2o\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 284, i32 24 }
@___asan_gen_.33 = private unnamed_addr constant [25 x i8] c"pxa168_u2oehci_resources\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 297, i32 17 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 311, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"pxa168_device_u2oehci\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 310, i32 24 }
@___asan_gen_.42 = private unnamed_addr constant [24 x i8] c"pxa168_u2ootg_resources\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 324, i32 17 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 347, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"pxa168_device_u2ootg\00", align 1
@___asan_gen_.49 = private constant [31 x i8] c"../arch/arm/mach-mmp/devices.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 346, i32 24 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @pxa168_usb_phy_resources, ptr @.str, ptr @usb_dma_mask, ptr @pxa168_device_usb_phy, ptr @.str.1, ptr @.str.2, ptr @pxa168_u2o_resources, ptr @.str.3, ptr @pxa168_device_u2o, ptr @pxa168_u2oehci_resources, ptr @.str.4, ptr @pxa168_device_u2oehci, ptr @pxa168_u2ootg_resources, ptr @.str.5, ptr @pxa168_device_u2ootg], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168_usb_phy_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_dma_mask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168_device_usb_phy to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168_u2o_resources to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168_device_u2o to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168_u2oehci_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168_device_u2oehci to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168_u2ootg_resources to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168_device_u2ootg to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pxa_register_device(ptr nocapture noundef readonly %desc, ptr noundef %data, i32 noundef %size) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca [4 x %struct.resource], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %res) #3
  %drv_name = getelementptr inbounds %struct.pxa_device_desc, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %drv_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_name, align 4
  %id = getelementptr inbounds %struct.pxa_device_desc, ptr %desc, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %call = tail call ptr @platform_device_alloc(ptr noundef %1, i32 noundef %3) #3
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %coherent_dma_mask = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 19
  %4 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 4294967295, ptr %coherent_dma_mask, align 8
  %5 = call ptr @memset(ptr %res, i32 0, i32 128)
  %start = getelementptr inbounds %struct.pxa_device_desc, ptr %desc, i32 0, i32 4
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp1.not = icmp eq i32 %7, -1
  br i1 %cmp1.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %size2 = getelementptr inbounds %struct.pxa_device_desc, ptr %desc, i32 0, i32 5
  %8 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3.not = icmp eq i32 %9, 0
  br i1 %cmp3.not, label %land.lhs.true.if.end11_crit_edge, label %if.then4

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %res, align 4
  %add = add i32 %7, -1
  %sub = add i32 %add, %9
  %end = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %11 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %end, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 512, ptr %flags, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then4, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %nres.0 = phi i32 [ 1, %if.then4 ], [ 0, %land.lhs.true.if.end11_crit_edge ], [ 0, %if.end.if.end11_crit_edge ]
  %irq = getelementptr inbounds %struct.pxa_device_desc, ptr %desc, i32 0, i32 3
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp12.not = icmp eq i32 %14, -1
  br i1 %cmp12.not, label %if.end11.for.body.preheader_crit_edge, label %if.then13

if.end11.for.body.preheader_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.preheader

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx15 = getelementptr [4 x %struct.resource], ptr %res, i32 0, i32 %nres.0
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx15, align 4
  %end19 = getelementptr [4 x %struct.resource], ptr %res, i32 0, i32 %nres.0, i32 1
  %16 = ptrtoint ptr %end19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %end19, align 4
  %flags21 = getelementptr [4 x %struct.resource], ptr %res, i32 0, i32 %nres.0, i32 3
  %17 = ptrtoint ptr %flags21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1024, ptr %flags21, align 4
  %inc22 = add nuw nsw i32 %nres.0, 1
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then13, %if.end11.for.body.preheader_crit_edge
  %nres.2101.ph = phi i32 [ %nres.0, %if.end11.for.body.preheader_crit_edge ], [ %inc22, %if.then13 ]
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %for.body.preheader
  %nres.2101 = phi i32 [ %inc40, %if.end28.for.body_crit_edge ], [ %nres.2101.ph, %for.body.preheader ]
  %cmp24 = phi i1 [ false, %if.end28.for.body_crit_edge ], [ true, %for.body.preheader ]
  %i.0100 = phi i32 [ 1, %if.end28.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx25 = getelementptr %struct.pxa_device_desc, ptr %desc, i32 0, i32 6, i32 %i.0100
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp26 = icmp eq i32 %19, 0
  br i1 %cmp26, label %for.body.for.end_crit_edge, label %if.end28

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end28:                                         ; preds = %for.body
  %arrayidx31 = getelementptr [4 x %struct.resource], ptr %res, i32 0, i32 %nres.2101
  %20 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx31, align 4
  %end36 = getelementptr [4 x %struct.resource], ptr %res, i32 0, i32 %nres.2101, i32 1
  %21 = ptrtoint ptr %end36 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %end36, align 4
  %flags38 = getelementptr [4 x %struct.resource], ptr %res, i32 0, i32 %nres.2101, i32 3
  %22 = ptrtoint ptr %flags38 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2048, ptr %flags38, align 4
  %inc40 = add nuw nsw i32 %nres.2101, 1
  br i1 %cmp24, label %if.end28.for.body_crit_edge, label %if.end28.for.end_crit_edge

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %if.end28.for.end_crit_edge, %for.body.for.end_crit_edge
  %nres.2.lcssa = phi i32 [ %nres.2101, %for.body.for.end_crit_edge ], [ %inc40, %if.end28.for.end_crit_edge ]
  %call42 = call i32 @platform_device_add_resources(ptr noundef nonnull %call, ptr noundef nonnull %res, i32 noundef %nres.2.lcssa) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool.not = icmp eq i32 %call42, 0
  br i1 %tobool.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  call void @platform_device_put(ptr noundef nonnull %call) #3
  br label %cleanup

if.end44:                                         ; preds = %for.end
  %tobool45.not = icmp eq ptr %data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool47.not = icmp eq i32 %size, 0
  %or.cond = or i1 %tobool45.not, %tobool47.not
  br i1 %or.cond, label %if.end44.if.end53_crit_edge, label %if.then48

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end53

if.then48:                                        ; preds = %if.end44
  %call49 = call i32 @platform_device_add_data(ptr noundef nonnull %call, ptr noundef nonnull %data, i32 noundef %size) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then48.if.end53_crit_edge, label %if.then51

if.then48.if.end53_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end53

if.then51:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #5
  call void @platform_device_put(ptr noundef nonnull %call) #3
  br label %cleanup

if.end53:                                         ; preds = %if.then48.if.end53_crit_edge, %if.end44.if.end53_crit_edge
  %call54 = call i32 @platform_device_add(ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then51, %if.then43, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.then43 ], [ %call49, %if.then51 ], [ %call54, %if.end53 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %res) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @pxa168_usb_phy_resources, !1, !"pxa168_usb_phy_resources", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-mmp/devices.c", i32 241, i32 17}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-mmp/devices.c", i32 250, i32 11}
!4 = !{ptr @pxa168_device_usb_phy, !5, !"pxa168_device_usb_phy", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-mmp/devices.c", i32 249, i32 24}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-mmp/devices.c", i32 268, i32 11}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-mmp/devices.c", i32 275, i32 11}
!10 = !{ptr @pxa168_u2o_resources, !11, !"pxa168_u2o_resources", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-mmp/devices.c", i32 262, i32 17}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-mmp/devices.c", i32 285, i32 11}
!14 = !{ptr @pxa168_device_u2o, !15, !"pxa168_device_u2o", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-mmp/devices.c", i32 284, i32 24}
!16 = !{ptr @pxa168_u2oehci_resources, !17, !"pxa168_u2oehci_resources", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-mmp/devices.c", i32 297, i32 17}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-mmp/devices.c", i32 311, i32 11}
!20 = !{ptr @pxa168_device_u2oehci, !21, !"pxa168_device_u2oehci", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-mmp/devices.c", i32 310, i32 24}
!22 = !{ptr @pxa168_u2ootg_resources, !23, !"pxa168_u2ootg_resources", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-mmp/devices.c", i32 324, i32 17}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-mmp/devices.c", i32 347, i32 11}
!26 = !{ptr @pxa168_device_u2ootg, !27, !"pxa168_device_u2ootg", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-mmp/devices.c", i32 346, i32 24}
!28 = !{ptr @usb_dma_mask, !29, !"usb_dma_mask", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-mmp/devices.c", i32 238, i32 27}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
