; ModuleID = '/llk/IR_all_yes/drivers/mailbox/qcom-ipcc.c_pt.bc'
source_filename = "../drivers/mailbox/qcom-ipcc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.qcom_ipcc = type { ptr, ptr, ptr, ptr, ptr, %struct.mbox_controller, i32, i32 }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.qcom_ipcc_chan_info = type { i16, i16 }

@__initcall__kmod_qcom_ipcc__197_341_qcom_ipcc_init3 = internal global ptr @qcom_ipcc_init, section ".initcall3.init", align 4
@__UNIQUE_ID_author198 = internal constant [72 x i8] c"qcom_ipcc.author=Venkata Narendra Kumar Gutta <vnkgutta@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author199 = internal constant [74 x i8] c"qcom_ipcc.author=Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description200 = internal constant [62 x i8] c"qcom_ipcc.description=Qualcomm Technologies, Inc. IPCC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file201 = internal constant [41 x i8] c"qcom_ipcc.file=drivers/mailbox/qcom-ipcc\00", section ".modinfo", align 1
@__UNIQUE_ID_license202 = internal constant [25 x i8] c"qcom_ipcc.license=GPL v2\00", section ".modinfo", align 1
@qcom_ipcc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_ipcc_probe, ptr @qcom_ipcc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @qcom_ipcc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom-ipcc\00", [22 x i8] zeroinitializer }, align 32
@qcom_ipcc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@qcom_ipcc_probe.id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipcc_%d\00", [24 x i8] zeroinitializer }, align 32
@qcom_ipcc_irq_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @qcom_ipcc_domain_map, ptr null, ptr @qcom_ipcc_domain_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@qcom_ipcc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 294, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register the irq: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom_ipcc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mailbox/qcom-ipcc.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_ipcc_probe._entry_ptr = internal global ptr @qcom_ipcc_probe._entry, section ".printk_index", align 4
@qcom_ipcc_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_ipcc_mask_irq, ptr null, ptr @qcom_ipcc_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16 }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipcc\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mboxes\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#mbox-cells\00", [20 x i8] zeroinitializer }, align 32
@ipcc_mbox_chan_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @qcom_ipcc_mbox_send_data, ptr null, ptr null, ptr @qcom_ipcc_mbox_shutdown, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"qcom_ipcc_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 327, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 331, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"qcom_ipcc_of_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 321, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 260, i32 13 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 278, i32 48 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"qcom_ipcc_irq_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 140, i32 36 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 294, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"qcom_ipcc_irq_chip\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 106, i32 24 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 107, i32 10 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 220, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 224, i32 17 }
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c"ipcc_mbox_chan_ops\00", align 1
@___asan_gen_.59 = private constant [31 x i8] c"../drivers/mailbox/qcom-ipcc.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 201, i32 35 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author198, ptr @__UNIQUE_ID_author199, ptr @__UNIQUE_ID_description200, ptr @__UNIQUE_ID_file201, ptr @__UNIQUE_ID_license202, ptr @__initcall__kmod_qcom_ipcc__197_341_qcom_ipcc_init3, ptr @qcom_ipcc_probe._entry, ptr @qcom_ipcc_probe._entry_ptr, ptr @qcom_ipcc_driver, ptr @.str, ptr @qcom_ipcc_of_match, ptr @qcom_ipcc_probe.id, ptr @.str.1, ptr @qcom_ipcc_irq_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @qcom_ipcc_irq_chip, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ipcc_mbox_chan_ops], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ipcc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ipcc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ipcc_probe.id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ipcc_irq_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ipcc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ipcc_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipcc_mbox_chan_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_ipcc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_ipcc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_ipcc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %curr_ph.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 120, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 8
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %base = getelementptr inbounds %struct.qcom_ipcc, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.qcom_ipcc, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call10, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %4 = load i32, ptr @qcom_ipcc_probe.id, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr @qcom_ipcc_probe.id, align 4
  %call16 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.1, i32 noundef %4) #8
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef 0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull @qcom_ipcc_irq_ops, ptr noundef nonnull %call.i) #8
  %irq_domain = getelementptr inbounds %struct.qcom_ipcc, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1.i, ptr %irq_domain, align 8
  %tobool23.not = icmp eq ptr %call1.i, null
  br i1 %tobool23.not, label %if.end19.cleanup_crit_edge, label %if.end25

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %curr_ph.i) #8
  %10 = call ptr @memset(ptr %curr_ph.i, i32 255, i32 72)
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 8
  %num_chans.i = getelementptr inbounds %struct.qcom_ipcc, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %num_chans.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %num_chans.i, align 8
  %call.i75 = tail call ptr @of_find_node_with_property(ptr noundef null, ptr noundef nonnull @.str.8) #8
  %tobool.not69.i = icmp eq ptr %call.i75, null
  br i1 %tobool.not69.i, label %if.end25.for.end16.i_crit_edge, label %if.end25.for.body.i_crit_edge

if.end25.for.body.i_crit_edge:                    ; preds = %if.end25
  br label %for.body.i

if.end25.for.end16.i_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end16.i

for.body.i:                                       ; preds = %for.inc14.i.for.body.i_crit_edge, %if.end25.for.body.i_crit_edge
  %client_dn.070.i = phi ptr [ %call15.i, %for.inc14.i.for.body.i_crit_edge ], [ %call.i75, %if.end25.for.body.i_crit_edge ]
  %call2.i = call zeroext i1 @of_device_is_available(ptr noundef nonnull %client_dn.070.i) #8
  br i1 %call2.i, label %if.end.i, label %for.body.i.for.inc14.i_crit_edge

for.body.i.for.inc14.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc14.i

if.end.i:                                         ; preds = %for.body.i
  %call3.i = call i32 @of_count_phandle_with_args(ptr noundef nonnull %client_dn.070.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp67.i = icmp sgt i32 %call3.i, 0
  br i1 %cmp67.i, label %if.end.i.for.body5.i_crit_edge, label %if.end.i.for.inc14.i_crit_edge

if.end.i.for.inc14.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc14.i

if.end.i.for.body5.i_crit_edge:                   ; preds = %if.end.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.inc.i.for.body5.i_crit_edge, %if.end.i.for.body5.i_crit_edge
  %j.068.i = phi i32 [ %inc13.i, %for.inc.i.for.body5.i_crit_edge ], [ 0, %if.end.i.for.body5.i_crit_edge ]
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %client_dn.070.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef -1, i32 noundef %j.068.i, ptr noundef nonnull %curr_ph.i) #8
  %14 = ptrtoint ptr %curr_ph.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %curr_ph.i, align 4
  call void @of_node_put(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i, label %for.body5.i.for.inc.i_crit_edge

for.body5.i.for.inc.i_crit_edge:                  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body5.i
  %16 = ptrtoint ptr %curr_ph.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %curr_ph.i, align 4
  %cmp9.i = icmp eq ptr %17, %9
  br i1 %cmp9.i, label %if.then10.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %num_chans.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_chans.i, align 8
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %num_chans.i, align 8
  br label %for.inc14.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body5.i.for.inc.i_crit_edge
  %inc13.i = add nuw nsw i32 %j.068.i, 1
  %exitcond.not.i = icmp eq i32 %inc13.i, %call3.i
  br i1 %exitcond.not.i, label %for.inc.i.for.inc14.i_crit_edge, label %for.inc.i.for.body5.i_crit_edge

for.inc.i.for.body5.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5.i

for.inc.i.for.inc14.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc14.i

for.inc14.i:                                      ; preds = %for.inc.i.for.inc14.i_crit_edge, %if.then10.i, %if.end.i.for.inc14.i_crit_edge, %for.body.i.for.inc14.i_crit_edge
  %call15.i = call ptr @of_find_node_with_property(ptr noundef nonnull %client_dn.070.i, ptr noundef nonnull @.str.8) #8
  %tobool.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool.not.i, label %for.inc14.i.for.end16.i_crit_edge, label %for.inc14.i.for.body.i_crit_edge

for.inc14.i.for.body.i_crit_edge:                 ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc14.i.for.end16.i_crit_edge:                ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end16.i

for.end16.i:                                      ; preds = %for.inc14.i.for.end16.i_crit_edge, %if.end25.for.end16.i_crit_edge
  %20 = ptrtoint ptr %num_chans.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_chans.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool18.not.i = icmp eq i32 %21, 0
  br i1 %tobool18.not.i, label %qcom_ipcc_setup_mbox.exit.thread79, label %if.end20.i

qcom_ipcc_setup_mbox.exit.thread79:               ; preds = %for.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %curr_ph.i) #8
  br label %if.end31

if.end20.i:                                       ; preds = %for.end16.i
  %22 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 208) #8
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !50

devm_kcalloc.exit.thread.i:                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %chans65.i = getelementptr inbounds %struct.qcom_ipcc, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %chans65.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %chans65.i, align 4
  br label %qcom_ipcc_setup_mbox.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.end20.i
  %25 = extractvalue { i32, i1 } %22, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef %25, i32 noundef 3520) #8
  %chans.i = getelementptr inbounds %struct.qcom_ipcc, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %chans.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5.i.i.i, ptr %chans.i, align 4
  %tobool24.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool24.not.i, label %devm_kcalloc.exit.i.qcom_ipcc_setup_mbox.exit.thread_crit_edge, label %qcom_ipcc_setup_mbox.exit

devm_kcalloc.exit.i.qcom_ipcc_setup_mbox.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qcom_ipcc_setup_mbox.exit.thread

qcom_ipcc_setup_mbox.exit.thread:                 ; preds = %devm_kcalloc.exit.i.qcom_ipcc_setup_mbox.exit.thread_crit_edge, %devm_kcalloc.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %curr_ph.i) #8
  br label %err_mbox

qcom_ipcc_setup_mbox.exit:                        ; preds = %devm_kcalloc.exit.i
  %mbox27.i = getelementptr inbounds %struct.qcom_ipcc, ptr %call.i, i32 0, i32 5
  %27 = ptrtoint ptr %mbox27.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %12, ptr %mbox27.i, align 8
  %28 = ptrtoint ptr %num_chans.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_chans.i, align 8
  %num_chans30.i = getelementptr inbounds %struct.qcom_ipcc, ptr %call.i, i32 0, i32 5, i32 3
  %30 = ptrtoint ptr %num_chans30.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %num_chans30.i, align 4
  %chans32.i = getelementptr inbounds %struct.qcom_ipcc, ptr %call.i, i32 0, i32 5, i32 2
  %31 = ptrtoint ptr %chans32.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call5.i.i.i, ptr %chans32.i, align 8
  %ops.i = getelementptr inbounds %struct.qcom_ipcc, ptr %call.i, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ipcc_mbox_chan_ops, ptr %ops.i, align 4
  %of_xlate.i = getelementptr inbounds %struct.qcom_ipcc, ptr %call.i, i32 0, i32 5, i32 7
  %33 = ptrtoint ptr %of_xlate.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @qcom_ipcc_mbox_xlate, ptr %of_xlate.i, align 8
  %txdone_irq.i = getelementptr inbounds %struct.qcom_ipcc, ptr %call.i, i32 0, i32 5, i32 4
  %34 = ptrtoint ptr %txdone_irq.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %txdone_irq.i, align 8
  %txdone_poll.i = getelementptr inbounds %struct.qcom_ipcc, ptr %call.i, i32 0, i32 5, i32 5
  %35 = ptrtoint ptr %txdone_poll.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %txdone_poll.i, align 1
  %call33.i = call i32 @devm_mbox_controller_register(ptr noundef %12, ptr noundef %mbox27.i) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %curr_ph.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool29.not = icmp eq i32 %call33.i, 0
  br i1 %tobool29.not, label %qcom_ipcc_setup_mbox.exit.if.end31_crit_edge, label %qcom_ipcc_setup_mbox.exit.err_mbox_crit_edge

qcom_ipcc_setup_mbox.exit.err_mbox_crit_edge:     ; preds = %qcom_ipcc_setup_mbox.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mbox

qcom_ipcc_setup_mbox.exit.if.end31_crit_edge:     ; preds = %qcom_ipcc_setup_mbox.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.end31:                                         ; preds = %qcom_ipcc_setup_mbox.exit.if.end31_crit_edge, %qcom_ipcc_setup_mbox.exit.thread79
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 4
  %call.i76 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %37, ptr noundef nonnull @qcom_ipcc_irq_fn, ptr noundef null, i32 noundef 16388, ptr noundef nonnull %call16, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %cmp35 = icmp slt i32 %call.i76, 0
  br i1 %cmp35, label %do.end, label %if.end38

do.end:                                           ; preds = %if.end31
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call.i76) #11
  %38 = ptrtoint ptr %num_chans.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_chans.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool39.not = icmp eq i32 %39, 0
  br i1 %tobool39.not, label %do.end.err_mbox_crit_edge, label %if.then40

do.end.err_mbox_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mbox

if.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

if.then40:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %mbox = getelementptr inbounds %struct.qcom_ipcc, ptr %call.i, i32 0, i32 5
  call void @mbox_controller_unregister(ptr noundef %mbox) #8
  br label %err_mbox

err_mbox:                                         ; preds = %if.then40, %do.end.err_mbox_crit_edge, %qcom_ipcc_setup_mbox.exit.err_mbox_crit_edge, %qcom_ipcc_setup_mbox.exit.thread
  %ret.0 = phi i32 [ %call33.i, %qcom_ipcc_setup_mbox.exit.err_mbox_crit_edge ], [ %call.i76, %if.then40 ], [ %call.i76, %do.end.err_mbox_crit_edge ], [ -12, %qcom_ipcc_setup_mbox.exit.thread ]
  %41 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %irq_domain, align 8
  call void @irq_domain_remove(ptr noundef %42) #8
  br label %cleanup

cleanup:                                          ; preds = %err_mbox, %if.end38, %if.end19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %ret.0, %err_mbox ], [ 0, %if.end38 ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ -12, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_ipcc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.qcom_ipcc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef 0) #8
  %irq_domain = getelementptr inbounds %struct.qcom_ipcc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_domain, align 8
  tail call void @irq_domain_remove(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_ipcc_irq_fn(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.qcom_ipcc, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %1, i32 16
  %2 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #8, !srcloc !51
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp11 = icmp eq i32 %2, -1
  br i1 %cmp11, label %entry.for.end_crit_edge, label %if.end.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.lr.ph:                                     ; preds = %entry
  %irq_domain = getelementptr inbounds %struct.qcom_ipcc, ptr %data, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %irq_find_mapping.exit.if.end_crit_edge, %if.end.lr.ph
  %3 = phi i32 [ %2, %if.end.lr.ph ], [ %14, %irq_find_mapping.exit.if.end_crit_edge ]
  %4 = call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq_domain, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #8
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %irq.i, align 4, !annotation !53
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %6, i32 noundef %4, ptr noundef nonnull %irq.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.irq_find_mapping.exit_crit_edge, label %if.then.i

if.end.irq_find_mapping.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %if.end.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.then.i ], [ 0, %if.end.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %11, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %3) #8, !srcloc !55
  %call5 = call i32 @generic_handle_irq(i32 noundef %retval.0.i) #8
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 16
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !51
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  %cmp = icmp eq i32 %14, -1
  br i1 %cmp, label %irq_find_mapping.exit.for.end_crit_edge, label %irq_find_mapping.exit.if.end_crit_edge

irq_find_mapping.exit.if.end_crit_edge:           ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

irq_find_mapping.exit.for.end_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %irq_find_mapping.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_controller_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_ipcc_domain_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @qcom_ipcc_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #8
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #8
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 1024) #8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcom_ipcc_domain_xlate(ptr nocapture noundef readnone %d, ptr nocapture noundef readnone %node, ptr nocapture noundef readonly %intspec, i32 noundef %intsize, ptr nocapture noundef writeonly %out_hwirq, ptr nocapture noundef writeonly %out_type) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %intsize)
  %cmp.not = icmp eq i32 %intsize, 3
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %intspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intspec, align 4
  %arrayidx1 = getelementptr i32, ptr %intspec, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %conv9.i = shl i32 %1, 16
  %conv29.i = and i32 %3, 65535
  %or.i = or i32 %conv29.i, %conv9.i
  %4 = ptrtoint ptr %out_hwirq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or.i, ptr %out_hwirq, align 4
  %arrayidx3 = getelementptr i32, ptr %intspec, i32 2
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3, align 4
  %and = and i32 %6, 15
  %7 = ptrtoint ptr %out_type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %out_type, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_ipcc_mask_irq(ptr nocapture noundef readonly %irqd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !56
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %base = getelementptr inbounds %struct.qcom_ipcc, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_ipcc_unmask_irq(ptr nocapture noundef readonly %irqd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %base = getelementptr inbounds %struct.qcom_ipcc, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_with_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qcom_ipcc_mbox_xlate(ptr nocapture noundef readonly %mbox, ptr nocapture noundef readonly %ph) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %mbox, i32 -24
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %ph, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 3
  %4 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp363 = icmp sgt i32 %5, 0
  br i1 %cmp363, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %chans = getelementptr i8, ptr %mbox, i32 -12
  %6 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chans, align 4
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %ph, i32 0, i32 2
  %arrayidx10 = getelementptr %struct.of_phandle_args, ptr %ph, i32 0, i32 2, i32 1
  %con_priv70 = getelementptr %struct.mbox_chan, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %con_priv70 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %con_priv70, align 4
  %tobool.not71 = icmp eq ptr %9, null
  br i1 %tobool.not71, label %for.body.lr.ph.if.end22_crit_edge, label %if.else.preheader

for.body.lr.ph.if.end22_crit_edge:                ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.else.preheader:                                ; preds = %for.body.lr.ph
  %10 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %args, align 4
  br label %if.else

if.else:                                          ; preds = %for.body.backedge.if.else_crit_edge, %if.else.preheader
  %12 = phi ptr [ %20, %for.body.backedge.if.else_crit_edge ], [ %9, %if.else.preheader ]
  %chan_id.06472 = phi i32 [ %chan_id.064.be, %for.body.backedge.if.else_crit_edge ], [ 0, %if.else.preheader ]
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 2
  %conv = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp6 = icmp eq i32 %11, %conv
  br i1 %cmp6, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %if.else
  %signal_id = getelementptr inbounds %struct.qcom_ipcc_chan_info, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %signal_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %signal_id, align 2
  %conv8 = zext i16 %16 to i32
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv8)
  %cmp11 = icmp ne i32 %18, %conv8
  %inc = add nuw nsw i32 %chan_id.06472, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %5)
  %cmp3 = icmp slt i32 %inc, %5
  %or.cond = select i1 %cmp11, i1 %cmp3, i1 false
  br i1 %or.cond, label %land.lhs.true.for.body.backedge_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.for.body.backedge_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge

for.inc:                                          ; preds = %if.else
  %inc.old = add nuw nsw i32 %chan_id.06472, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.old, i32 %5)
  %cmp3.old = icmp slt i32 %inc.old, %5
  br i1 %cmp3.old, label %for.inc.for.body.backedge_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %land.lhs.true.for.body.backedge_crit_edge
  %chan_id.064.be = phi i32 [ %inc.old, %for.inc.for.body.backedge_crit_edge ], [ %inc, %land.lhs.true.for.body.backedge_crit_edge ]
  %con_priv = getelementptr %struct.mbox_chan, ptr %7, i32 %chan_id.064.be, i32 9
  %19 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %con_priv, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %for.body.backedge.if.end22_crit_edge, label %for.body.backedge.if.else_crit_edge

for.body.backedge.if.else_crit_edge:              ; preds = %for.body.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.body.backedge.if.end22_crit_edge:             ; preds = %for.body.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %for.body.backedge.if.end22_crit_edge, %for.body.lr.ph.if.end22_crit_edge
  %chan_id.064.lcssa = phi i32 [ 0, %for.body.lr.ph.if.end22_crit_edge ], [ %chan_id.064.be, %for.body.backedge.if.end22_crit_edge ]
  %con_priv.lcssa = phi ptr [ %con_priv70, %for.body.lr.ph.if.end22_crit_edge ], [ %con_priv, %for.body.backedge.if.end22_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 4, i32 noundef 3520) #8
  %tobool24.not = icmp eq ptr %call.i, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.le = getelementptr %struct.mbox_chan, ptr %7, i32 %chan_id.064.lcssa
  %21 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %args, align 4
  %conv30 = trunc i32 %22 to i16
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv30, ptr %call.i, align 2
  %24 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx10, align 4
  %conv34 = trunc i32 %25 to i16
  %signal_id35 = getelementptr inbounds %struct.qcom_ipcc_chan_info, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %signal_id35 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv34, ptr %signal_id35, align 2
  %27 = ptrtoint ptr %con_priv.lcssa to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %con_priv.lcssa, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end22.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx.le, %if.end27 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end22.cleanup_crit_edge ], [ inttoptr (i32 -16 to ptr), %for.cond.preheader.cleanup_crit_edge ], [ inttoptr (i32 -16 to ptr), %for.inc.cleanup_crit_edge ], [ inttoptr (i32 -16 to ptr), %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_ipcc_mbox_send_data(ptr nocapture noundef readonly %chan, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %2 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con_priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %signal_id = getelementptr inbounds %struct.qcom_ipcc_chan_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %signal_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %signal_id, align 2
  %conv9.i = zext i16 %5 to i32
  %shl.i = shl nuw i32 %conv9.i, 16
  %conv29.i = zext i16 %7 to i32
  %or.i = or i32 %shl.i, %conv29.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i)
  %base = getelementptr i8, ptr %1, i32 -20
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #8, !srcloc !55
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @qcom_ipcc_mbox_shutdown(ptr nocapture noundef writeonly %chan) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %con_priv, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_qcom_ipcc__197_341_qcom_ipcc_init3, !1, !"__initcall__kmod_qcom_ipcc__197_341_qcom_ipcc_init3", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/qcom-ipcc.c", i32 341, i32 1}
!2 = !{ptr @__UNIQUE_ID_author198, !3, !"__UNIQUE_ID_author198", i1 false, i1 false}
!3 = !{!"../drivers/mailbox/qcom-ipcc.c", i32 343, i32 1}
!4 = !{ptr @__UNIQUE_ID_author199, !5, !"__UNIQUE_ID_author199", i1 false, i1 false}
!5 = !{!"../drivers/mailbox/qcom-ipcc.c", i32 344, i32 1}
!6 = !{ptr @__UNIQUE_ID_description200, !7, !"__UNIQUE_ID_description200", i1 false, i1 false}
!7 = !{!"../drivers/mailbox/qcom-ipcc.c", i32 345, i32 1}
!8 = !{ptr @__UNIQUE_ID_file201, !9, !"__UNIQUE_ID_file201", i1 false, i1 false}
!9 = !{!"../drivers/mailbox/qcom-ipcc.c", i32 346, i32 1}
!10 = !{ptr @__UNIQUE_ID_license202, !9, !"__UNIQUE_ID_license202", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mailbox/qcom-ipcc.c", i32 331, i32 11}
!13 = !{ptr @qcom_ipcc_driver, !14, !"qcom_ipcc_driver", i1 false, i1 false}
!14 = !{!"../drivers/mailbox/qcom-ipcc.c", i32 327, i32 31}
!15 = !{ptr @qcom_ipcc_probe.id, !16, !"id", i1 false, i1 false}
!16 = !{!"../drivers/mailbox/qcom-ipcc.c", i32 260, i32 13}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mailbox/qcom-ipcc.c", i32 278, i32 48}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mailbox/qcom-ipcc.c", i32 294, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @qcom_ipcc_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @qcom_ipcc_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @qcom_ipcc_irq_ops, !28, !"qcom_ipcc_irq_ops", i1 false, i1 false}
!28 = !{!"../drivers/mailbox/qcom-ipcc.c", i32 140, i32 36}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mailbox/qcom-ipcc.c", i32 107, i32 10}
!31 = !{ptr @qcom_ipcc_irq_chip, !32, !"qcom_ipcc_irq_chip", i1 false, i1 false}
!32 = !{!"../drivers/mailbox/qcom-ipcc.c", i32 106, i32 24}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mailbox/qcom-ipcc.c", i32 220, i32 2}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mailbox/qcom-ipcc.c", i32 224, i32 17}
!37 = !{ptr @ipcc_mbox_chan_ops, !38, !"ipcc_mbox_chan_ops", i1 false, i1 false}
!38 = !{!"../drivers/mailbox/qcom-ipcc.c", i32 201, i32 35}
!39 = !{ptr @qcom_ipcc_of_match, !40, !"qcom_ipcc_of_match", i1 false, i1 false}
!40 = !{!"../drivers/mailbox/qcom-ipcc.c", i32 321, i32 34}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i64 4236387}
!52 = !{i64 2153230042}
!53 = !{!"auto-init"}
!54 = !{i64 2153230946}
!55 = !{i64 4235969}
!56 = !{i64 2153231348}
!57 = !{i64 2153231750}
!58 = !{i64 2153232155}
