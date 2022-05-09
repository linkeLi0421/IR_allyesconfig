; ModuleID = '/llk/IR_all_yes/drivers/pci/pcie/portdrv_pci.c_pt.bc'
source_filename = "../drivers/pci/pcie/portdrv_pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }

@__setup_str_pcie_port_setup = internal constant [12 x i8] c"pcie_ports=\00", section ".init.rodata", align 1
@__setup_pcie_port_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_pcie_port_setup, ptr @pcie_port_setup, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_pcieportdrv__237_250_pcie_portdrv_init6 = internal global ptr @pcie_portdrv_init, section ".initcall6.init", align 4
@pcie_ports_disabled = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@pcie_ports_native = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@pcie_ports_dpc_native = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"compat\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"native\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dpc-native\00", [21 x i8] zeroinitializer }, align 32
@pcie_portdriver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.8, ptr @port_pci_ids, ptr @pcie_portdrv_probe, ptr @pcie_portdrv_remove, ptr null, ptr null, ptr @pcie_portdrv_remove, ptr null, ptr null, ptr null, ptr @pcie_portdrv_err_handler, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcie_portdrv_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcieportdrv\00", [20 x i8] zeroinitializer }, align 32
@dmi_pcie_pme_disable_msi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015%s detected: will not use MSI for PCIe PME signaling\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dmi_pcie_pme_disable_msi\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/pci/pcie/portdrv_pci.c\00", [33 x i8] zeroinitializer }, align 32
@dmi_pcie_pme_disable_msi._entry_ptr = internal global ptr @dmi_pcie_pme_disable_msi._entry, section ".printk_index", align 4
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcieport\00", [23 x i8] zeroinitializer }, align 32
@port_pci_ids = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 394240, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 394241, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 526080, i32 -1, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pcie_portdrv_err_handler = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @pcie_portdrv_error_detected, ptr @pcie_portdrv_mmio_enabled, ptr @pcie_portdrv_slot_reset, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcie_portdrv_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pcie_port_device_suspend, ptr @pcie_port_device_resume, ptr @pcie_port_device_suspend, ptr @pcie_port_device_resume, ptr @pcie_port_device_suspend, ptr @pcie_port_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcie_port_device_resume_noirq, ptr null, ptr null, ptr null, ptr @pcie_port_device_resume_noirq, ptr @pcie_port_runtime_suspend, ptr @pcie_port_device_runtime_resume, ptr @pcie_port_runtime_idle }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 5, i64 6, i64 10]
@___asan_gen_.9 = private unnamed_addr constant [20 x i8] c"pcie_ports_disabled\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 23, i32 6 }
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"pcie_ports_native\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 30, i32 6 }
@___asan_gen_.15 = private unnamed_addr constant [22 x i8] c"pcie_ports_dpc_native\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 36, i32 6 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 40, i32 20 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 42, i32 25 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 44, i32 25 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"pcie_portdriver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 195, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 248, i32 9 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 210, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 196, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"port_pci_ids\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 179, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant [25 x i8] c"pcie_portdrv_err_handler\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 189, i32 40 }
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c"pcie_portdrv_pm_ops\00", align 1
@___asan_gen_.55 = private constant [34 x i8] c"../drivers/pci/pcie/portdrv_pci.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 72, i32 32 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__initcall__kmod_pcieportdrv__237_250_pcie_portdrv_init6, ptr @__setup_pcie_port_setup, ptr @dmi_pcie_pme_disable_msi._entry, ptr @dmi_pcie_pme_disable_msi._entry_ptr, ptr @pcie_ports_disabled, ptr @pcie_ports_native, ptr @pcie_ports_dpc_native, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @pcie_portdriver, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @port_pci_ids, ptr @pcie_portdrv_err_handler, ptr @pcie_portdrv_pm_ops], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_ports_disabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_ports_native to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_ports_dpc_native to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_portdriver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmi_pcie_pme_disable_msi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pci_ids to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_portdrv_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_portdrv_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcie_port_setup(ptr nocapture noundef readonly %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull dereferenceable(7) @.str, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end9.sink.split_crit_edge, label %if.else

entry.if.end9.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.sink.split

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull dereferenceable(7) @.str.1, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else.if.end9.sink.split_crit_edge, label %if.else4

if.else.if.end9.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.sink.split

if.else4:                                         ; preds = %if.else
  %call5 = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull dereferenceable(11) @.str.2, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else4.if.end9.sink.split_crit_edge, label %if.else4.if.end9_crit_edge

if.else4.if.end9_crit_edge:                       ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.else4.if.end9.sink.split_crit_edge:            ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %if.else4.if.end9.sink.split_crit_edge, %if.else.if.end9.sink.split_crit_edge, %entry.if.end9.sink.split_crit_edge
  %pcie_ports_native.sink = phi ptr [ @pcie_ports_disabled, %entry.if.end9.sink.split_crit_edge ], [ @pcie_ports_native, %if.else.if.end9.sink.split_crit_edge ], [ @pcie_ports_dpc_native, %if.else4.if.end9.sink.split_crit_edge ]
  %0 = ptrtoint ptr %pcie_ports_native.sink to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %pcie_ports_native.sink, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.else4.if.end9_crit_edge
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcie_portdrv_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @pcie_ports_disabled, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pcie_init_services() #12
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @pcie_portdriver, ptr noundef null, ptr noundef nonnull @.str.3) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -13, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcie_init_services() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcie_aer_init() #9
  %call1 = tail call i32 @pcie_pme_init() #9
  %call2 = tail call i32 @pcie_dpc_init() #9
  %call3 = tail call i32 @pcie_hp_init() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_aer_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_pme_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_dpc_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_hp_init() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcie_portdrv_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pcie_flags_reg.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %2 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %4 = lshr i16 %3, 4
  %5 = and i16 %4, 15
  %6 = zext i16 %5 to i32
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %lor.lhs.false.cleanup_crit_edge [
    i32 10, label %if.then8
    i32 4, label %lor.lhs.false.if.end9_crit_edge
    i32 5, label %lor.lhs.false.if.end9_crit_edge42
    i32 6, label %lor.lhs.false.if.end9_crit_edge43
  ]

lor.lhs.false.if.end9_crit_edge43:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

lor.lhs.false.if.end9_crit_edge42:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pcie_link_rcec(ptr noundef %dev) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %lor.lhs.false.if.end9_crit_edge, %lor.lhs.false.if.end9_crit_edge42, %lor.lhs.false.if.end9_crit_edge43
  %call10 = tail call i32 @pcie_port_device_register(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %call13 = tail call i32 @pci_save_state(ptr noundef %dev) #9
  %driver_flags.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 12, i32 2
  %8 = ptrtoint ptr %driver_flags.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5, ptr %driver_flags.i, align 8
  %call15 = tail call zeroext i1 @pci_bridge_d3_possible(ptr noundef %dev) #9
  br i1 %call15, label %if.then16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev14, i32 noundef 100) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev14, i1 noundef zeroext true) #9
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 12, i32 22
  %9 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %call.i41 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev14, i32 noundef 13) #9
  tail call void @pm_runtime_allow(ptr noundef %dev14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcie_portdrv_remove(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @pci_bridge_d3_possible(ptr noundef %dev) #9
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void @pm_runtime_forbid(ptr noundef %dev1) #9
  %usage_count.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !49
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @pcie_port_device_remove(ptr noundef %dev) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_link_rcec(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_port_device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_bridge_d3_possible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_port_device_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcie_portdrv_error_detected(ptr nocapture noundef readnone %dev, i32 noundef %error) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %error)
  %cmp = icmp eq i32 %error, 2
  %. = select i1 %cmp, i32 3, i32 2
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcie_portdrv_mmio_enabled(ptr nocapture noundef readnone %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcie_portdrv_slot_reset(ptr noundef %dev) #4 align 64 {
entry:
  %off = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off) #9
  %0 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32, ptr %off, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call = call i32 @device_for_each_child(ptr noundef %dev1, ptr noundef nonnull %off, ptr noundef nonnull @pcie_port_device_iter) #9
  call void @pci_restore_state(ptr noundef %dev) #9
  %call2 = call i32 @pci_save_state(ptr noundef %dev) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off) #9
  ret i32 5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_port_device_iter(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_port_device_suspend(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_port_device_resume(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_port_device_resume_noirq(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcie_port_runtime_suspend(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge_d3 = getelementptr i8, ptr %dev, i32 -30
  %0 = ptrtoint ptr %bridge_d3 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %bf.load = load i32, ptr %bridge_d3, align 2
  %1 = and i32 %bf.load, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @pcie_port_device_runtime_suspend(ptr noundef %dev) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -16, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_port_device_runtime_resume(ptr noundef) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcie_port_runtime_idle(ptr nocapture noundef readonly %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge_d3 = getelementptr i8, ptr %dev, i32 -30
  %0 = ptrtoint ptr %bridge_d3 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %bf.load = load i32, ptr %bridge_d3, align 2
  %1 = and i32 %bf.load, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_port_device_runtime_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__setup_pcie_port_setup, !1, !"__setup_pcie_port_setup", i1 false, i1 false}
!1 = !{!"../drivers/pci/pcie/portdrv_pci.c", i32 49, i32 1}
!2 = !{ptr @__initcall__kmod_pcieportdrv__237_250_pcie_portdrv_init6, !3, !"__initcall__kmod_pcieportdrv__237_250_pcie_portdrv_init6", i1 false, i1 false}
!3 = !{!"../drivers/pci/pcie/portdrv_pci.c", i32 250, i32 1}
!4 = !{ptr @pcie_ports_disabled, !5, !"pcie_ports_disabled", i1 false, i1 false}
!5 = !{!"../drivers/pci/pcie/portdrv_pci.c", i32 23, i32 6}
!6 = !{ptr @pcie_ports_native, !7, !"pcie_ports_native", i1 false, i1 false}
!7 = !{!"../drivers/pci/pcie/portdrv_pci.c", i32 30, i32 6}
!8 = !{ptr @pcie_ports_dpc_native, !9, !"pcie_ports_dpc_native", i1 false, i1 false}
!9 = !{!"../drivers/pci/pcie/portdrv_pci.c", i32 36, i32 6}
!10 = !{ptr @__setup_str_pcie_port_setup, !1, !"__setup_str_pcie_port_setup", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/pci/pcie/portdrv_pci.c", i32 40, i32 20}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/pci/pcie/portdrv_pci.c", i32 42, i32 25}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pci/pcie/portdrv_pci.c", i32 44, i32 25}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pci/pcie/portdrv_pci.c", i32 248, i32 9}
!19 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pci/pcie/portdrv_pci.c", i32 222, i32 12}
!21 = distinct !{null, !22, !"pcie_portdrv_dmi_table", i1 false, i1 false}
!22 = !{!"../drivers/pci/pcie/portdrv_pci.c", i32 216, i32 35}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pci/pcie/portdrv_pci.c", i32 210, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dmi_pcie_pme_disable_msi._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @dmi_pcie_pme_disable_msi._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pci/pcie/portdrv_pci.c", i32 196, i32 11}
!31 = !{ptr @pcie_portdriver, !32, !"pcie_portdriver", i1 false, i1 false}
!32 = !{!"../drivers/pci/pcie/portdrv_pci.c", i32 195, i32 26}
!33 = !{ptr @port_pci_ids, !34, !"port_pci_ids", i1 false, i1 false}
!34 = !{!"../drivers/pci/pcie/portdrv_pci.c", i32 179, i32 35}
!35 = !{ptr @pcie_portdrv_err_handler, !36, !"pcie_portdrv_err_handler", i1 false, i1 false}
!36 = !{!"../drivers/pci/pcie/portdrv_pci.c", i32 189, i32 40}
!37 = !{ptr @pcie_portdrv_pm_ops, !38, !"pcie_portdrv_pm_ops", i1 false, i1 false}
!38 = !{!"../drivers/pci/pcie/portdrv_pci.c", i32 72, i32 32}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i8 0, i8 2}
!49 = !{i64 2148665837, i64 2148665863, i64 2148665892, i64 2148665926, i64 2148665957, i64 2148665980}
