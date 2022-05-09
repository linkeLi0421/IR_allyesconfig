; ModuleID = '/llk/IR_all_yes/drivers/usb/dwc3/host.c_pt.bc'
source_filename = "../drivers/usb/dwc3/host.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.property_entry = type { ptr, i32, i8, i32, %union.anon.84 }
%union.anon.84 = type { %union.anon.85 }
%union.anon.85 = type { [1 x i64] }
%struct.dwc3 = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dwc3_request, %struct.completion, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, [2 x %struct.resource], ptr, [32 x ptr], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, ptr, i8, ptr, i32, i32, i32, i32, ptr, %struct.notifier_block, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, %struct.dwc3_hwparams, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, [6 x i8], i16, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dwc3_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, i8, ptr, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dwc3_hwparams = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xhci-hcd\00", [23 x i8] zeroinitializer }, align 32
@dwc3_host_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 81, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"couldn't allocate xHCI device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dwc3_host_init\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/usb/dwc3/host.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwc3_host_init._entry_ptr = internal global ptr @dwc3_host_init._entry, section ".printk_index", align 4
@dwc3_host_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 93, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"couldn't add resources to xHCI device\0A\00", [57 x i8] zeroinitializer }, align 32
@dwc3_host_init._entry_ptr.8 = internal global ptr @dwc3_host_init._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb3-lpm-capable\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb2-lpm-disable\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"quirk-broken-port-ped\00", [42 x i8] zeroinitializer }, align 32
@dwc3_host_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 120, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to add properties to xHCI\0A\00", [62 x i8] zeroinitializer }, align 32
@dwc3_host_init._entry_ptr.14 = internal global ptr @dwc3_host_init._entry.12, section ".printk_index", align 4
@dwc3_host_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register xHCI device\0A\00", [32 x i8] zeroinitializer }, align 32
@dwc3_host_init._entry_ptr.17 = internal global ptr @dwc3_host_init._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dwc_usb3\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 79, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 81, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 93, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 100, i32 23 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 103, i32 23 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 115, i32 23 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 120, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 127, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 37, i32 52 }
@___asan_gen_.73 = private constant [27 x i8] c"../drivers/usb/dwc3/host.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 46, i32 52 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 261, i32 30 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @dwc3_host_init._entry, ptr @dwc3_host_init._entry.12, ptr @dwc3_host_init._entry.15, ptr @dwc3_host_init._entry.6, ptr @dwc3_host_init._entry_ptr, ptr @dwc3_host_init._entry_ptr.14, ptr @dwc3_host_init._entry_ptr.17, ptr @dwc3_host_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_host_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_host_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_host_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_host_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc3_host_init(ptr noundef %dwc) local_unnamed_addr #0 align 64 {
entry:
  %props = alloca [4 x %struct.property_entry], align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %props) #4
  %0 = call ptr @memset(ptr %props, i32 255, i32 96)
  %dev.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 -16
  %call.i = tail call i32 @platform_get_irq_byname_optional(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 15, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call.i, ptr %arrayidx.i.i, align 4
  %end.i.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 15, i32 1, i32 1
  %4 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call.i, ptr %end.i.i, align 4
  %call.i.i.i = tail call ptr @irq_get_irq_data(i32 noundef %call.i) #4
  %tobool.not.i25.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i25.i.i, label %if.then.i.dwc3_host_fill_xhci_irq_res.exit.i_crit_edge, label %cond.true.i.i.i

if.then.i.dwc3_host_fill_xhci_irq_res.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dwc3_host_fill_xhci_irq_res.exit.i

cond.true.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %common.i.i.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %common.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %common.i.i.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %and.i.i.i.i = and i32 %8, 15
  %phi.bo.i.i = or i32 %and.i.i.i.i, 1024
  br label %dwc3_host_fill_xhci_irq_res.exit.i

dwc3_host_fill_xhci_irq_res.exit.i:               ; preds = %cond.true.i.i.i, %if.then.i.dwc3_host_fill_xhci_irq_res.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %phi.bo.i.i, %cond.true.i.i.i ], [ 1024, %if.then.i.dwc3_host_fill_xhci_irq_res.exit.i_crit_edge ]
  %flags.i.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 15, i32 1, i32 3
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond.i.i.i, ptr %flags.i.i, align 4
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, -517
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call i32 @platform_get_irq_byname_optional(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp sgt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.end3.i
  %arrayidx.i36.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 15, i32 1
  %10 = ptrtoint ptr %arrayidx.i36.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call4.i, ptr %arrayidx.i36.i, align 4
  %end.i37.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 15, i32 1, i32 1
  %11 = ptrtoint ptr %end.i37.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call4.i, ptr %end.i37.i, align 4
  %call.i.i38.i = tail call ptr @irq_get_irq_data(i32 noundef %call4.i) #4
  %tobool.not.i25.i39.i = icmp eq ptr %call.i.i38.i, null
  br i1 %tobool.not.i25.i39.i, label %if.then6.i.dwc3_host_fill_xhci_irq_res.exit49.i_crit_edge, label %cond.true.i.i44.i

if.then6.i.dwc3_host_fill_xhci_irq_res.exit49.i_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dwc3_host_fill_xhci_irq_res.exit49.i

cond.true.i.i44.i:                                ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  %common.i.i.i41.i = getelementptr inbounds %struct.irq_data, ptr %call.i.i38.i, i32 0, i32 3
  %12 = ptrtoint ptr %common.i.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %common.i.i.i41.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %and.i.i.i42.i = and i32 %15, 15
  %phi.bo.i43.i = or i32 %and.i.i.i42.i, 1024
  br label %dwc3_host_fill_xhci_irq_res.exit49.i

dwc3_host_fill_xhci_irq_res.exit49.i:             ; preds = %cond.true.i.i44.i, %if.then6.i.dwc3_host_fill_xhci_irq_res.exit49.i_crit_edge
  %cond.i.i45.i = phi i32 [ %phi.bo.i43.i, %cond.true.i.i44.i ], [ 1024, %if.then6.i.dwc3_host_fill_xhci_irq_res.exit49.i_crit_edge ]
  %flags.i46.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 15, i32 1, i32 3
  %16 = ptrtoint ptr %flags.i46.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond.i.i45.i, ptr %flags.i46.i, align 4
  br label %if.end

if.end7.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call4.i)
  %cmp8.i = icmp eq i32 %call4.i, -517
  br i1 %cmp8.i, label %if.end7.i.cleanup_crit_edge, label %if.end10.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10.i:                                       ; preds = %if.end7.i
  %call11.i = tail call i32 @platform_get_irq(ptr noundef %add.ptr.i, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp sgt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.then13.i, label %if.end14.i

if.then13.i:                                      ; preds = %if.end10.i
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %tobool.not.i.i51.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i51.i, label %if.then13.i.dev_of_node.exit.i59.i_crit_edge, label %if.end.i.i53.i

if.then13.i.dev_of_node.exit.i59.i_crit_edge:     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_of_node.exit.i59.i

if.end.i.i53.i:                                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #6
  %of_node.i.i52.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %of_node.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i.i52.i, align 8
  br label %dev_of_node.exit.i59.i

dev_of_node.exit.i59.i:                           ; preds = %if.end.i.i53.i, %if.then13.i.dev_of_node.exit.i59.i_crit_edge
  %retval.0.i.i54.i = phi ptr [ %20, %if.end.i.i53.i ], [ null, %if.then13.i.dev_of_node.exit.i59.i_crit_edge ]
  %arrayidx.i55.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 15, i32 1
  %21 = ptrtoint ptr %arrayidx.i55.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call11.i, ptr %arrayidx.i55.i, align 4
  %end.i56.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 15, i32 1, i32 1
  %22 = ptrtoint ptr %end.i56.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call11.i, ptr %end.i56.i, align 4
  %call.i.i57.i = tail call ptr @irq_get_irq_data(i32 noundef %call11.i) #4
  %tobool.not.i25.i58.i = icmp eq ptr %call.i.i57.i, null
  br i1 %tobool.not.i25.i58.i, label %dev_of_node.exit.i59.i.irq_get_trigger_type.exit.i.i_crit_edge, label %cond.true.i.i63.i

dev_of_node.exit.i59.i.irq_get_trigger_type.exit.i.i_crit_edge: ; preds = %dev_of_node.exit.i59.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %irq_get_trigger_type.exit.i.i

cond.true.i.i63.i:                                ; preds = %dev_of_node.exit.i59.i
  call void @__sanitizer_cov_trace_pc() #6
  %common.i.i.i60.i = getelementptr inbounds %struct.irq_data, ptr %call.i.i57.i, i32 0, i32 3
  %23 = ptrtoint ptr %common.i.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %common.i.i.i60.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %and.i.i.i61.i = and i32 %26, 15
  %phi.bo.i62.i = or i32 %and.i.i.i61.i, 1024
  br label %irq_get_trigger_type.exit.i.i

irq_get_trigger_type.exit.i.i:                    ; preds = %cond.true.i.i63.i, %dev_of_node.exit.i59.i.irq_get_trigger_type.exit.i.i_crit_edge
  %cond.i.i64.i = phi i32 [ %phi.bo.i62.i, %cond.true.i.i63.i ], [ 1024, %dev_of_node.exit.i59.i.irq_get_trigger_type.exit.i.i_crit_edge ]
  %flags.i65.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 15, i32 1, i32 3
  %27 = ptrtoint ptr %flags.i65.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond.i.i64.i, ptr %flags.i65.i, align 4
  %tobool7.not.i66.i = icmp eq ptr %retval.0.i.i54.i, null
  br i1 %tobool7.not.i66.i, label %irq_get_trigger_type.exit.i.i.if.end_crit_edge, label %if.then.i.i

irq_get_trigger_type.exit.i.i.if.end_crit_edge:   ; preds = %irq_get_trigger_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i.i:                                      ; preds = %irq_get_trigger_type.exit.i.i
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 27
  %28 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node.i.i, align 8
  %tobool.not.i26.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i26.i.i, label %if.then.i.i.if.end_crit_edge, label %cond.true.i27.i.i

if.then.i.i.if.end_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.true.i27.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %full_name.i.i.i = getelementptr inbounds %struct.device_node, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %full_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %full_name.i.i.i, align 4
  br label %if.end

if.end14.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  %spec.select = select i1 %tobool.not.i, i32 -22, i32 %call11.i
  br label %cleanup

if.end:                                           ; preds = %cond.true.i27.i.i, %if.then.i.i.if.end_crit_edge, %irq_get_trigger_type.exit.i.i.if.end_crit_edge, %dwc3_host_fill_xhci_irq_res.exit49.i, %dwc3_host_fill_xhci_irq_res.exit.i
  %name.sink.i.i.sink = phi ptr [ @.str.19, %dwc3_host_fill_xhci_irq_res.exit49.i ], [ @.str.18, %dwc3_host_fill_xhci_irq_res.exit.i ], [ %31, %cond.true.i27.i.i ], [ @.str.20, %if.then.i.i.if.end_crit_edge ], [ null, %irq_get_trigger_type.exit.i.i.if.end_crit_edge ]
  %name15.i67.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 15, i32 1, i32 2
  %32 = ptrtoint ptr %name15.i67.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %name.sink.i.i.sink, ptr %name15.i67.i, align 4
  %call1 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef -2) #4
  %tobool.not = icmp eq ptr %call1, null
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br i1 %tobool.not, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %call1, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %call1, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %parent, align 8
  %xhci9 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 14
  %36 = ptrtoint ptr %xhci9 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call1, ptr %xhci9, align 4
  %xhci_resources = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 15
  %call10 = tail call i32 @platform_device_add_resources(ptr noundef nonnull %call1, ptr noundef %xhci_resources, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.7) #7
  br label %err

if.end17:                                         ; preds = %if.end3
  %39 = call ptr @memset(ptr %props, i32 0, i32 96)
  %usb3_lpm_capable = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %40 = ptrtoint ptr %usb3_lpm_capable to i32
  call void @__asan_loadN_noabort(i32 %40, i32 6)
  %bf.load = load i48, ptr %usb3_lpm_capable, align 4
  %41 = and i48 %bf.load, 2147483648
  %tobool19.not = icmp eq i48 %41, 0
  br i1 %tobool19.not, label %if.end17.if.end21_crit_edge, label %if.then20

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %.compoundliteral.sroa.4.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %props, i32 9
  %42 = call ptr @memset(ptr %.compoundliteral.sroa.4.0.arrayidx.sroa_idx, i32 0, i32 15)
  %43 = ptrtoint ptr %props to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.9, ptr %props, align 8
  %.compoundliteral.sroa.373.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %props, i32 8
  %44 = ptrtoint ptr %.compoundliteral.sroa.373.0.arrayidx.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %.compoundliteral.sroa.373.0.arrayidx.sroa_idx, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  %prop_idx.0 = phi i32 [ 1, %if.then20 ], [ 0, %if.end17.if.end21_crit_edge ]
  %45 = and i48 %bf.load, 1073741824
  %tobool26.not = icmp eq i48 %45, 0
  br i1 %tobool26.not, label %if.end21.if.end33_crit_edge, label %if.then27

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %inc28 = add nuw nsw i32 %prop_idx.0, 1
  %arrayidx29 = getelementptr [4 x %struct.property_entry], ptr %props, i32 0, i32 %prop_idx.0
  %46 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.10, ptr %arrayidx29, align 8
  %.compoundliteral30.sroa.3.0.arrayidx29.sroa_idx = getelementptr inbounds i8, ptr %arrayidx29, i32 4
  %47 = ptrtoint ptr %.compoundliteral30.sroa.3.0.arrayidx29.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %.compoundliteral30.sroa.3.0.arrayidx29.sroa_idx, align 4
  %.compoundliteral30.sroa.372.0.arrayidx29.sroa_idx = getelementptr inbounds i8, ptr %arrayidx29, i32 8
  %48 = ptrtoint ptr %.compoundliteral30.sroa.372.0.arrayidx29.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %.compoundliteral30.sroa.372.0.arrayidx29.sroa_idx, align 8
  %.compoundliteral30.sroa.4.0.arrayidx29.sroa_idx = getelementptr inbounds i8, ptr %arrayidx29, i32 9
  %49 = call ptr @memset(ptr %.compoundliteral30.sroa.4.0.arrayidx29.sroa_idx, i32 0, i32 15)
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.end21.if.end33_crit_edge
  %prop_idx.1 = phi i32 [ %inc28, %if.then27 ], [ %prop_idx.0, %if.end21.if.end33_crit_edge ]
  %ip = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 54
  %50 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %51)
  %cmp34 = icmp eq i32 %51, 21811
  br i1 %cmp34, label %land.lhs.true36, label %if.end33.if.end45_crit_edge

if.end33.if.end45_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

land.lhs.true36:                                  ; preds = %if.end33
  %revision = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %52 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429417995, i32 %53)
  %cmp38 = icmp ult i32 %53, 1429417995
  br i1 %cmp38, label %if.end45.thread, label %land.lhs.true36.if.end45_crit_edge

land.lhs.true36.if.end45_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.end45.thread:                                  ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx41 = getelementptr [4 x %struct.property_entry], ptr %props, i32 0, i32 %prop_idx.1
  %54 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.11, ptr %arrayidx41, align 8
  %.compoundliteral42.sroa.3.0.arrayidx41.sroa_idx = getelementptr inbounds i8, ptr %arrayidx41, i32 4
  %55 = ptrtoint ptr %.compoundliteral42.sroa.3.0.arrayidx41.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %.compoundliteral42.sroa.3.0.arrayidx41.sroa_idx, align 4
  %.compoundliteral42.sroa.371.0.arrayidx41.sroa_idx = getelementptr inbounds i8, ptr %arrayidx41, i32 8
  %56 = ptrtoint ptr %.compoundliteral42.sroa.371.0.arrayidx41.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %.compoundliteral42.sroa.371.0.arrayidx41.sroa_idx, align 8
  %.compoundliteral42.sroa.4.0.arrayidx41.sroa_idx = getelementptr inbounds i8, ptr %arrayidx41, i32 9
  %57 = call ptr @memset(ptr %.compoundliteral42.sroa.4.0.arrayidx41.sroa_idx, i32 0, i32 15)
  br label %if.then47

if.end45:                                         ; preds = %land.lhs.true36.if.end45_crit_edge, %if.end33.if.end45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prop_idx.1)
  %tobool46.not = icmp eq i32 %prop_idx.1, 0
  br i1 %tobool46.not, label %if.end45.if.end58_crit_edge, label %if.end45.if.then47_crit_edge

if.end45.if.then47_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then47

if.end45.if.end58_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.then47:                                        ; preds = %if.end45.if.then47_crit_edge, %if.end45.thread
  %call50 = call i32 @device_create_managed_software_node(ptr noundef %dev5, ptr noundef nonnull %props, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then47.if.end58_crit_edge, label %do.end55

if.then47.if.end58_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

do.end55:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.13) #7
  br label %err

if.end58:                                         ; preds = %if.then47.if.end58_crit_edge, %if.end45.if.end58_crit_edge
  %call59 = call i32 @platform_device_add(ptr noundef nonnull %call1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end58.cleanup_crit_edge, label %do.end64

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.16) #7
  br label %err

err:                                              ; preds = %do.end64, %do.end55, %do.end15
  %ret.0 = phi i32 [ %call10, %do.end15 ], [ %call50, %do.end55 ], [ %call59, %do.end64 ]
  call void @platform_device_put(ptr noundef nonnull %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end58.cleanup_crit_edge, %do.end, %if.end14.i, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -12, %do.end ], [ 0, %if.end58.cleanup_crit_edge ], [ -517, %if.end7.i.cleanup_crit_edge ], [ -517, %if.end.i.cleanup_crit_edge ], [ %spec.select, %if.end14.i ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %props) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_managed_software_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc3_host_exit(ptr nocapture noundef readonly %dwc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %xhci = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 14
  %0 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xhci, align 4
  tail call void @platform_device_unregister(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !23, !24, !26, !27, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/dwc3/host.c", i32 79, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/dwc3/host.c", i32 81, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @dwc3_host_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @dwc3_host_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/dwc3/host.c", i32 93, i32 3}
!12 = !{ptr @dwc3_host_init._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @dwc3_host_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/dwc3/host.c", i32 100, i32 23}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/dwc3/host.c", i32 103, i32 23}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/dwc3/host.c", i32 115, i32 23}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/dwc3/host.c", i32 120, i32 4}
!22 = !{ptr @dwc3_host_init._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @dwc3_host_init._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/dwc3/host.c", i32 127, i32 3}
!26 = !{ptr @dwc3_host_init._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @dwc3_host_init._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/dwc3/host.c", i32 37, i32 52}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/dwc3/host.c", i32 46, i32 52}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/of.h", i32 261, i32 30}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
