; ModuleID = '/llk/IR_all_yes/drivers/usb/host/ehci-brcm.c_pt.bc'
source_filename = "../drivers/usb/host/ehci-brcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ehci_driver_overrides = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.ehci_regs = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, [6 x i32], i32, %union.anon.72, %union.anon.74, [2 x i32], i32 }
%union.anon.72 = type { [15 x i32] }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, [15 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ehci_hcd = type { i32, i32, [12 x i64], %struct.hrtimer, i32, i32, i32, ptr, ptr, ptr, i32, %struct.spinlock, i32, i8, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, ptr, i32, %struct.list_head, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, [15 x i32], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i32, i24, ptr, i8, i8, %struct.ehci_stats, ptr, [64 x i8], [64 x i8], %struct.list_head, [4 x i8], [0 x i32] }
%struct.ehci_stats = type { i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_ehci_brcm__240_270_ehci_brcm_init6 = internal global ptr @ehci_brcm_init, section ".initcall6.init", align 4
@ehci_brcm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ehci_brcm_probe, ptr @ehci_brcm_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcm_ehci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ehci_brcm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ehci_brcm_exit = internal global ptr @ehci_brcm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias241 = internal constant [35 x i8] c"ehci_brcm.alias=platform:ehci-brcm\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [47 x i8] c"ehci_brcm.description=EHCI Broadcom STB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [27 x i8] c"ehci_brcm.author=Al Cooper\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [42 x i8] c"ehci_brcm.file=drivers/usb/host/ehci-brcm\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [22 x i8] c"ehci_brcm.license=GPL\00", section ".modinfo", align 1
@ehci_brcm_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@brcm_overrides = internal constant %struct.ehci_driver_overrides { i32 4, ptr @ehci_brcm_reset, ptr null }, section ".init.rodata", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ehci-brcm\00", [22 x i8] zeroinitializer }, align 32
@brcm_ehci_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ehci-brcm-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7445-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ehci_brcm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ehci_brcm_suspend, ptr @ehci_brcm_resume, ptr @ehci_brcm_suspend, ptr @ehci_brcm_resume, ptr @ehci_brcm_suspend, ptr @ehci_brcm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ehci_brcm_hub_control.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ehci_brcm\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ehci_brcm_hub_control\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/host/ehci-brcm.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SOF alignment workaround\0A\00", [38 x i8] zeroinitializer }, align 32
@ehci_brcm_wait_for_sof._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 37, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error waiting for SOF\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ehci_brcm_wait_for_sof\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ehci_brcm_wait_for_sof._entry_ptr = internal global ptr @ehci_brcm_wait_for_sof._entry, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"ehci_brcm_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 251, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 256, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"brcm_ehci_of_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 245, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"ehci_brcm_pm_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 242, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 86, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [32 x i8] c"../drivers/usb/host/ehci-brcm.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 37, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_alias241, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_ehci_brcm_exit, ptr @__initcall__kmod_ehci_brcm__240_270_ehci_brcm_init6, ptr @ehci_brcm_exit, ptr @ehci_brcm_wait_for_sof._entry, ptr @ehci_brcm_wait_for_sof._entry_ptr, ptr @ehci_brcm_driver, ptr @.str, ptr @brcm_ehci_of_match, ptr @ehci_brcm_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_brcm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_ehci_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_brcm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_brcm_wait_for_sof._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_brcm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_disabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ehci_init_driver(ptr noundef nonnull @ehci_brcm_hc_driver, ptr noundef nonnull @brcm_overrides) #5
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ehci_brcm_driver, ptr noundef null) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ehci_brcm_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ehci_brcm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ehci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_brcm_reset(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %big_endian_mmio = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %0 = ptrtoint ptr %big_endian_mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %big_endian_mmio, align 4
  %bf.set = or i32 %bf.load, 134217728
  store i32 %bf.set, ptr %big_endian_mmio, align 4
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 16
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %caps = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 18
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %caps, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !47
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %5
  %regs4 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  %8 = ptrtoint ptr %regs4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %regs4, align 8
  %9 = ptrtoint ptr %big_endian_mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load.i = load i32, ptr %big_endian_mmio, align 4
  %10 = and i32 %bf.load.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %do.body.i, label %entry.ehci_writel.exit_crit_edge

entry.ehci_writel.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ehci_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #5, !srcloc !50
  br label %ehci_writel.exit

ehci_writel.exit:                                 ; preds = %do.body.i, %entry.ehci_writel.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #5
  %21 = ptrtoint ptr %big_endian_mmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load.i24 = load i32, ptr %big_endian_mmio, align 4
  %22 = and i32 %bf.load.i24, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i25 = icmp eq i32 %22, 0
  br i1 %tobool.not.i25, label %do.body.i26, label %ehci_writel.exit.ehci_writel.exit27_crit_edge

ehci_writel.exit.ehci_writel.exit27_crit_edge:    ; preds = %ehci_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ehci_writel.exit27

do.body.i26:                                      ; preds = %ehci_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs4, align 8
  %arrayidx = getelementptr %struct.ehci_regs, ptr %24, i32 0, i32 12, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 1073774592) #5, !srcloc !50
  br label %ehci_writel.exit27

ehci_writel.exit27:                               ; preds = %do.body.i26, %ehci_writel.exit.ehci_writel.exit27_crit_edge
  %25 = ptrtoint ptr %big_endian_mmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load.i29 = load i32, ptr %big_endian_mmio, align 4
  %26 = and i32 %bf.load.i29, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i30 = icmp eq i32 %26, 0
  br i1 %tobool.not.i30, label %do.body.i31, label %ehci_writel.exit27.ehci_writel.exit32_crit_edge

ehci_writel.exit27.ehci_writel.exit32_crit_edge:  ; preds = %ehci_writel.exit27
  call void @__sanitizer_cov_trace_pc() #7
  br label %ehci_writel.exit32

do.body.i31:                                      ; preds = %ehci_writel.exit27
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs4, align 8
  %arrayidx8 = getelementptr %struct.ehci_regs, ptr %28, i32 0, i32 12, i32 0, i32 1, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx8, i32 16777216) #5, !srcloc !50
  br label %ehci_writel.exit32

ehci_writel.exit32:                               ; preds = %do.body.i31, %ehci_writel.exit27.ehci_writel.exit32_crit_edge
  %call9 = tail call i32 @ehci_setup(ptr noundef %hcd) #5
  ret i32 %call9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_brcm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res_mem = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res_mem) #5
  %0 = ptrtoint ptr %res_mem to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res_mem, align 4, !annotation !51
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #5
  %call2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %tobool4.not, i32 -22, i32 %call2
  br label %cleanup

if.end5:                                          ; preds = %if.end
  store ptr @ehci_brcm_hub_control, ptr getelementptr inbounds (%struct.hc_driver, ptr @ehci_brcm_hc_driver, i32 0, i32 19), align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.dev_name.exit_crit_edge

if.end5.dev_name.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end5.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %2, %if.end5.dev_name.exit_crit_edge ]
  %call7 = tail call ptr @usb_create_hcd(ptr noundef nonnull @ehci_brcm_hc_driver, ptr noundef %dev1, ptr noundef %retval.0.i) #5
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %dev_name.exit.cleanup_crit_edge, label %if.end10

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %dev_name.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7, ptr %driver_data.i.i, align 4
  %priv12 = getelementptr inbounds %struct.usb_hcd, ptr %call7, i32 2, i32 0, i32 9, i32 3
  %call13 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef null) #5
  %6 = ptrtoint ptr %priv12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %priv12, align 4
  %cmp.i74 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call13 to i32
  br label %err_hcd

if.end19:                                         ; preds = %if.end10
  %call.i75 = tail call i32 @clk_prepare(ptr noundef %call13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not.i76 = icmp eq i32 %call.i75, 0
  br i1 %tobool.not.i76, label %if.end.i78, label %if.end19.err_hcd_crit_edge

if.end19.err_hcd_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_hcd

if.end.i78:                                       ; preds = %if.end19
  %call1.i77 = tail call i32 @clk_enable(ptr noundef %call13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77)
  %tobool2.not.i = icmp eq i32 %call1.i77, 0
  br i1 %tobool2.not.i, label %if.end24, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call13) #5
  br label %err_hcd

if.end24:                                         ; preds = %if.end.i78
  %call25 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res_mem) #5
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %call7, i32 0, i32 16
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call25, ptr %regs, align 4
  %cmp.i80 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call25 to i32
  br label %err_clk

if.end31:                                         ; preds = %if.end24
  %10 = ptrtoint ptr %res_mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %res_mem, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call7, i32 0, i32 17
  %14 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rsrc_start, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end.i, align 4
  %17 = load i32, ptr %11, align 4
  %sub.i = add i32 %16, 1
  %add.i = sub i32 %sub.i, %17
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call7, i32 0, i32 18
  %18 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i, ptr %rsrc_len, align 4
  %call33 = call i32 @usb_add_hcd(ptr noundef nonnull %call7, i32 noundef %call2, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end31.err_clk_crit_edge

if.end31.err_clk_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clk

if.end36:                                         ; preds = %if.end31
  %19 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call7, align 8
  %call37 = call i32 @device_wakeup_enable(ptr noundef %20) #5
  %21 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call7, align 8
  %is_prepared.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 12, i32 1
  %23 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i = load i16, ptr %is_prepared.i, align 4
  %24 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %bf.cast.not.i = icmp eq i16 %24, 0
  br i1 %bf.cast.not.i, label %if.then.i81, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i81:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %bf.set.i = or i16 %bf.load.i, 16384
  %25 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %bf.set.i, ptr %is_prepared.i, align 4
  br label %cleanup

err_clk:                                          ; preds = %if.end31.err_clk_crit_edge, %if.then28
  %err.0 = phi i32 [ %9, %if.then28 ], [ %call33, %if.end31.err_clk_crit_edge ]
  %26 = ptrtoint ptr %priv12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv12, align 4
  call void @clk_disable(ptr noundef %27) #5
  call void @clk_unprepare(ptr noundef %27) #5
  br label %err_hcd

err_hcd:                                          ; preds = %err_clk, %if.then3.i, %if.end19.err_hcd_crit_edge, %if.then16
  %err.1 = phi i32 [ %7, %if.then16 ], [ %err.0, %err_clk ], [ %call1.i77, %if.then3.i ], [ %call.i75, %if.end19.err_hcd_crit_edge ]
  call void @usb_put_hcd(ptr noundef nonnull %call7) #5
  br label %cleanup

cleanup:                                          ; preds = %err_hcd, %if.then.i81, %if.end36.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then3 ], [ %err.1, %err_hcd ], [ -12, %dev_name.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ], [ 0, %if.then.i81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res_mem) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_brcm_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv2 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3
  tail call void @usb_remove_hcd(ptr noundef %1) #5
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  tail call void @usb_put_hcd(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_brcm_hub_control(ptr noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr noundef %buf, i16 noundef zeroext %wLength) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hcs_params = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 3
  %0 = ptrtoint ptr %hcs_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hcs_params, align 8
  %and = and i32 %1, 15
  %conv = zext i16 %wIndex to i32
  %and2 = and i32 %conv, 255
  %sub = add nsw i32 %and2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub)
  %cmp = icmp ugt i32 %sub, 14
  %spec.store.select = select i1 %cmp, i32 0, i32 %sub
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %4 = getelementptr inbounds %struct.ehci_regs, ptr %3, i32 0, i32 11
  %arrayidx = getelementptr [15 x i32], ptr %4, i32 0, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23808, i16 %typeReq)
  %cmp5 = icmp ne i16 %typeReq, -23808
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wIndex)
  %tobool.not = icmp eq i16 %wIndex, 0
  %or.cond = or i1 %cmp5, %tobool.not
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp10.not = icmp ult i32 %and, %conv
  %or.cond114 = select i1 %or.cond, i1 true, i1 %cmp10.not
  br i1 %or.cond114, label %entry.if.end57.thread_crit_edge, label %land.lhs.true12

entry.if.end57.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57.thread

land.lhs.true12:                                  ; preds = %entry
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %sub14 = add nsw i32 %conv, -1
  %arrayidx15 = getelementptr %struct.ehci_hcd, ptr %hcd_priv.i, i32 0, i32 43, i32 %sub14
  %5 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool16.not = icmp eq i32 %6, 0
  br i1 %tobool16.not, label %land.lhs.true12.if.end57.thread_crit_edge, label %land.lhs.true17

land.lhs.true12.if.end57.thread_crit_edge:        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57.thread

land.lhs.true17:                                  ; preds = %land.lhs.true12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub22 = sub i32 %7, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub22)
  %cmp23 = icmp sgt i32 %sub22, -1
  br i1 %cmp23, label %land.lhs.true25, label %land.lhs.true17.if.end57.thread_crit_edge

land.lhs.true17.if.end57.thread_crit_edge:        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57.thread

land.lhs.true25:                                  ; preds = %land.lhs.true17
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  %9 = and i32 %8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool28.not = icmp eq i32 %9, 0
  br i1 %tobool28.not, label %land.lhs.true25.if.end57.thread_crit_edge, label %do.body

land.lhs.true25.if.end57.thread_crit_edge:        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57.thread

do.body:                                          ; preds = %land.lhs.true25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ehci_brcm_hub_control.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ehci_brcm_hub_control, %if.then34)) #5
          to label %do.end [label %if.then34], !srcloc !52

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ehci_brcm_hub_control.__UNIQUE_ID_ddebug239, ptr noundef %11, ptr noundef nonnull @.str.4) #5
  br label %do.end

do.end:                                           ; preds = %if.then34, %do.body
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !53
  %and.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool52.not = icmp eq i32 %and.i, 0
  br i1 %tobool52.not, label %if.then53, label %do.end.do.end56_crit_edge

do.end.do.end56_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end56

if.then53:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @trace_hardirqs_off() #5
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %do.end.do.end56_crit_edge
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %frame_index.i = getelementptr inbounds %struct.ehci_regs, ptr %14, i32 0, i32 3
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %frame_index.i) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  %call1.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call1.i, 130000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 35) #5
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 8
  %frame_index103.i = getelementptr inbounds %struct.ehci_regs, ptr %17, i32 0, i32 3
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %frame_index103.i) #5, !srcloc !47
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %15)
  %cmp12.not4.i = icmp eq i32 %18, %15
  br i1 %cmp12.not4.i, label %do.end56.land.lhs.true.i_crit_edge, label %do.end56.for.end.i_crit_edge

do.end56.for.end.i_crit_edge:                     ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

do.end56.land.lhs.true.i_crit_edge:               ; preds = %do.end56
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then26.i.land.lhs.true.i_crit_edge, %do.end56.land.lhs.true.i_crit_edge
  %call15.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call15.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call15.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then18.i, label %if.then26.i

if.then18.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 8
  %frame_index21.i = getelementptr inbounds %struct.ehci_regs, ptr %20, i32 0, i32 3
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %frame_index21.i) #5, !srcloc !47
  br label %for.end.i

if.then26.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #5
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %frame_index10.i = getelementptr inbounds %struct.ehci_regs, ptr %23, i32 0, i32 3
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %frame_index10.i) #5, !srcloc !47
  %cmp12.not.i = icmp eq i32 %24, %15
  br i1 %cmp12.not.i, label %if.then26.i.land.lhs.true.i_crit_edge, label %if.then26.i.for.end.i_crit_edge

if.then26.i.for.end.i_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.then26.i.land.lhs.true.i_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %if.then26.i.for.end.i_crit_edge, %if.then18.i, %do.end56.for.end.i_crit_edge
  %.lcssa2.sink.i = phi i32 [ %21, %if.then18.i ], [ %18, %do.end56.for.end.i_crit_edge ], [ %24, %if.then26.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa2.sink.i, i32 %15)
  %cmp29.not.i = icmp eq i32 %.lcssa2.sink.i, %15
  br i1 %cmp29.not.i, label %do.end34.i, label %for.end.i.do.body61_crit_edge

for.end.i.do.body61_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body61

do.end34.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.5) #8
  br label %do.body61

if.end57.thread:                                  ; preds = %land.lhs.true25.if.end57.thread_crit_edge, %land.lhs.true17.if.end57.thread_crit_edge, %land.lhs.true12.if.end57.thread_crit_edge, %entry.if.end57.thread_crit_edge
  %call58119 = tail call i32 @ehci_hub_control(ptr noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr noundef %buf, i16 noundef zeroext %wLength) #5
  br label %if.end97

do.body61:                                        ; preds = %do.end34.i, %for.end.i.do.body61_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 1073740) #5
  %call58 = tail call i32 @ehci_hub_control(ptr noundef %hcd, i16 noundef zeroext -23808, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr noundef %buf, i16 noundef zeroext %wLength) #5
  br i1 %tobool52.not, label %if.then70, label %do.body61.do.body72_crit_edge

do.body61.do.body72_crit_edge:                    ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body72

if.then70:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @trace_hardirqs_on() #5
  br label %do.body72

do.body72:                                        ; preds = %if.then70, %do.body61.do.body72_crit_edge
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !54
  %and.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool80.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool80.not, label %if.then89, label %do.body72.do.end92_crit_edge, !prof !55

do.body72.do.end92_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end92

if.then89:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @warn_bogus_irq_restore() #5
  br label %do.end92

do.end92:                                         ; preds = %if.then89, %do.body72.do.end92_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #5, !srcloc !56
  br label %if.end97

if.end97:                                         ; preds = %do.end92, %if.end57.thread
  %call58120 = phi i32 [ %call58119, %if.end57.thread ], [ %call58, %do.end92 ]
  ret i32 %call58120
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_hub_control(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_brcm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.device_may_wakeup.exit_crit_edge, label %land.rhs.i

entry.device_may_wakeup.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %4, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %entry.device_may_wakeup.exit_crit_edge
  %5 = phi i1 [ false, %entry.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  %call4 = tail call i32 @ehci_suspend(ptr noundef %1, i1 noundef zeroext %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end, label %device_may_wakeup.exit.cleanup_crit_edge

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %priv2 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3
  %6 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv2, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %device_may_wakeup.exit.cleanup_crit_edge
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_brcm_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv3 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv3, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 1
  %imx28_write_fix.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %4 = ptrtoint ptr %imx28_write_fix.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %imx28_write_fix.i, align 4
  %5 = and i32 %bf.load.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i22 = icmp eq i32 %5, 0
  br i1 %tobool.not.i22, label %do.body.i, label %if.end.ehci_writel.exit_crit_edge

if.end.ehci_writel.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ehci_writel.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %arrayidx = getelementptr %struct.ehci_regs, ptr %7, i32 0, i32 12, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 1073774592) #5, !srcloc !50
  br label %ehci_writel.exit

ehci_writel.exit:                                 ; preds = %do.body.i, %if.end.ehci_writel.exit_crit_edge
  %8 = ptrtoint ptr %imx28_write_fix.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i25 = load i32, ptr %imx28_write_fix.i, align 4
  %9 = and i32 %bf.load.i25, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i26 = icmp eq i32 %9, 0
  br i1 %tobool.not.i26, label %do.body.i27, label %ehci_writel.exit.ehci_writel.exit29_crit_edge

ehci_writel.exit.ehci_writel.exit29_crit_edge:    ; preds = %ehci_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ehci_writel.exit29

do.body.i27:                                      ; preds = %ehci_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %arrayidx6 = getelementptr %struct.ehci_regs, ptr %11, i32 0, i32 12, i32 0, i32 1, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx6, i32 16777216) #5, !srcloc !50
  br label %ehci_writel.exit29

ehci_writel.exit29:                               ; preds = %do.body.i27, %ehci_writel.exit.ehci_writel.exit29_crit_edge
  %call7 = tail call i32 @ehci_resume(ptr noundef %1, i1 noundef zeroext false) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  %call.i30 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #5
  tail call void @pm_runtime_enable(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %ehci_writel.exit29, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ehci_writel.exit29 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_ehci_brcm__240_270_ehci_brcm_init6, !1, !"__initcall__kmod_ehci_brcm__240_270_ehci_brcm_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/ehci-brcm.c", i32 270, i32 1}
!2 = !{ptr @__exitcall_ehci_brcm_exit, !3, !"__exitcall_ehci_brcm_exit", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/ehci-brcm.c", i32 276, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias241, !5, !"__UNIQUE_ID_alias241", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/ehci-brcm.c", i32 278, i32 1}
!6 = !{ptr @__UNIQUE_ID_description242, !7, !"__UNIQUE_ID_description242", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/ehci-brcm.c", i32 279, i32 1}
!8 = !{ptr @__UNIQUE_ID_author243, !9, !"__UNIQUE_ID_author243", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/ehci-brcm.c", i32 280, i32 1}
!10 = !{ptr @__UNIQUE_ID_file244, !11, !"__UNIQUE_ID_file244", i1 false, i1 false}
!11 = !{!"../drivers/usb/host/ehci-brcm.c", i32 281, i32 1}
!12 = !{ptr @__UNIQUE_ID_license245, !11, !"__UNIQUE_ID_license245", i1 false, i1 false}
!13 = !{ptr @ehci_brcm_hc_driver, !14, !"ehci_brcm_hc_driver", i1 false, i1 false}
!14 = !{!"../drivers/usb/host/ehci-brcm.c", i32 122, i32 39}
!15 = !{ptr @brcm_overrides, !16, !"brcm_overrides", i1 false, i1 false}
!16 = !{!"../drivers/usb/host/ehci-brcm.c", i32 124, i32 43}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/host/ehci-brcm.c", i32 256, i32 11}
!19 = !{ptr @ehci_brcm_driver, !20, !"ehci_brcm_driver", i1 false, i1 false}
!20 = !{!"../drivers/usb/host/ehci-brcm.c", i32 251, i32 31}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/host/ehci-brcm.c", i32 86, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ehci_brcm_hub_control.__UNIQUE_ID_ddebug239, !22, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/host/ehci-brcm.c", i32 37, i32 3}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ehci_brcm_wait_for_sof._entry, !28, !"_entry", i1 false, i1 false}
!33 = !{ptr @ehci_brcm_wait_for_sof._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @brcm_ehci_of_match, !35, !"brcm_ehci_of_match", i1 false, i1 false}
!35 = !{!"../drivers/usb/host/ehci-brcm.c", i32 245, i32 34}
!36 = !{ptr @ehci_brcm_pm_ops, !37, !"ehci_brcm_pm_ops", i1 false, i1 false}
!37 = !{!"../drivers/usb/host/ehci-brcm.c", i32 242, i32 8}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 6253700}
!48 = !{i64 2154430746}
!49 = !{i64 2154431285}
!50 = !{i64 6253282}
!51 = !{!"auto-init"}
!52 = !{i64 2148726882, i64 2148726887, i64 2148726900, i64 2148726944, i64 2148726978, i64 2148726999}
!53 = !{i64 637548, i64 637609}
!54 = !{i64 640280}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i64 640565}
