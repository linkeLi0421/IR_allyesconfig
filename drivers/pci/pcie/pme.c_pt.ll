; ModuleID = '/llk/IR_all_yes/drivers/pci/pcie/pme.c_pt.bc'
source_filename = "../drivers/pci/pcie/pme.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pcie_port_service_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pcie_device = type { i32, ptr, i32, ptr, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pcie_pme_service_data = type { %struct.spinlock, ptr, %struct.work_struct, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__setup_str_pcie_pme_setup = internal constant [10 x i8] c"pcie_pme=\00", section ".init.rodata", align 1
@__setup_pcie_pme_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_pcie_pme_setup, ptr @pcie_pme_setup, i32 0 }, section ".init.setup", align 4
@pcie_pme_driver = internal global { %struct.pcie_port_service_driver, [40 x i8] } { %struct.pcie_port_service_driver { ptr @.str.1, ptr @pcie_pme_probe, ptr @pcie_pme_remove, ptr @pcie_pme_suspend, ptr null, ptr @pcie_pme_resume, ptr null, ptr null, ptr null, i32 -1, i32 1, %struct.device_driver zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@pcie_pme_msi_disabled = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nomsi\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie_pme\00", [23 x i8] zeroinitializer }, align 32
@pcie_pme_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@pcie_pme_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&data->work)\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCIe PME\00", [23 x i8] zeroinitializer }, align 32
@pcie_pme_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 354, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PME: Signaling with IRQ %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcie_pme_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/pci/pcie/pme.c\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcie_pme_probe._entry_ptr = internal global ptr @pcie_pme_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pci_bus_sem = external dso_local global %struct.rw_semaphore, align 4
@pcie_pme_handle_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.8, i32 200, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"PME: interrupt generated for non-existent device %02x:%02x.%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pcie_pme_handle_request\00", [40 x i8] zeroinitializer }, align 32
@pcie_pme_handle_request._entry_ptr = internal global ptr @pcie_pme_handle_request._entry, section ".printk_index", align 4
@pcie_pme_handle_request._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.8, i32 206, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PME: Spurious native interrupt!\0A\00", [63 x i8] zeroinitializer }, align 32
@pcie_pme_handle_request._entry_ptr.15 = internal global ptr @pcie_pme_handle_request._entry.13, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 10]
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"pcie_pme_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 454, i32 40 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"pcie_pme_msi_disabled\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 30, i32 6 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 34, i32 20 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 455, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 340, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 341, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 348, i32 57 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 354, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 199, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [26 x i8] c"../drivers/pci/pcie/pme.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 206, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__setup_pcie_pme_setup, ptr @pcie_pme_handle_request._entry, ptr @pcie_pme_handle_request._entry.13, ptr @pcie_pme_handle_request._entry_ptr, ptr @pcie_pme_handle_request._entry_ptr.15, ptr @pcie_pme_probe._entry, ptr @pcie_pme_probe._entry_ptr, ptr @pcie_pme_driver, ptr @pcie_pme_msi_disabled, ptr @.str, ptr @.str.1, ptr @pcie_pme_probe.__key, ptr @.str.2, ptr @pcie_pme_probe.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_pme_driver to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_pme_msi_disabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_pme_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_pme_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_pme_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_pme_handle_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_pme_handle_request._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcie_pme_setup(ptr nocapture noundef readonly %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull dereferenceable(6) @.str, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i8 1, ptr @pcie_pme_msi_disabled, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcie_pme_interrupt_enable(ptr noundef %dev, i1 noundef zeroext %enable) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %dev, i32 noundef 28, i16 noundef zeroext 0, i16 noundef zeroext 8) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i3 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %dev, i32 noundef 28, i16 noundef zeroext 8, i16 noundef zeroext 0) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcie_pme_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcie_port_service_register(ptr noundef nonnull @pcie_pme_driver) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_port_service_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcie_pme_probe(ptr noundef %srv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.pcie_device, ptr %srv, i32 0, i32 1
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %pcie_flags_reg.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %4 = lshr i16 %3, 4
  %5 = and i16 %4, 15
  %6 = zext i16 %5 to i32
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %entry.cleanup_crit_edge [
    i32 10, label %entry.if.end_crit_edge
    i32 4, label %entry.if.end_crit_edge50
  ]

entry.if.end_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 96) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @pcie_pme_probe.__key, i16 noundef signext 3) #9
  %work = getelementptr inbounds %struct.pcie_pme_service_data, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %9 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.pcie_pme_service_data, ptr %call7.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @pcie_pme_probe.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry12 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %call7.i.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.pcie_pme_service_data, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry12, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.pcie_pme_service_data, ptr %call7.i.i, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @pcie_pme_work_fn, ptr %func, align 4
  %srv16 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %srv16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %srv, ptr %srv16, align 4
  %priv_data.i = getelementptr inbounds %struct.pcie_device, ptr %srv, i32 0, i32 3
  %14 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %priv_data.i, align 4
  %call.i3.i = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %1, i32 noundef 28, i16 noundef zeroext 8, i16 noundef zeroext 0) #9
  tail call void @pcie_clear_root_pme_status(ptr noundef %1) #9
  %15 = ptrtoint ptr %srv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %srv, align 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %16, ptr noundef nonnull @pcie_pme_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.5, ptr noundef %srv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %do.end23, label %if.then19

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

do.end23:                                         ; preds = %do.body
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %17 = ptrtoint ptr %srv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %srv, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %18) #13
  tail call void @device_set_wakeup_capable(ptr noundef %dev, i1 noundef zeroext true) #9
  %19 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %21 = and i16 %20, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 160, i16 %21)
  %cmp.i = icmp eq i16 %21, 160
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pcie_walk_rcec(ptr noundef %1, ptr noundef nonnull @pcie_pme_can_wakeup, ptr noundef null) #9
  br label %pcie_pme_mark_devices.exit

if.else.i:                                        ; preds = %do.end23
  %subordinate.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %subordinate.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %subordinate.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.else.i.pcie_pme_mark_devices.exit_crit_edge, label %if.then2.i

if.else.i.pcie_pme_mark_devices.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcie_pme_mark_devices.exit

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_walk_bus(ptr noundef nonnull %23, ptr noundef nonnull @pcie_pme_can_wakeup, ptr noundef null) #9
  br label %pcie_pme_mark_devices.exit

pcie_pme_mark_devices.exit:                       ; preds = %if.then2.i, %if.else.i.pcie_pme_mark_devices.exit_crit_edge, %if.then.i
  %call.i.i = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %1, i32 noundef 28, i16 noundef zeroext 0, i16 noundef zeroext 8) #9
  br label %cleanup

cleanup:                                          ; preds = %pcie_pme_mark_devices.exit, %if.then19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then19 ], [ 0, %pcie_pme_mark_devices.exit ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcie_pme_remove(ptr noundef %srv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data.i = getelementptr inbounds %struct.pcie_device, ptr %srv, i32 0, i32 3
  %0 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data.i, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %srv, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #9
  %call.i3.i.i = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %3, i32 noundef 28, i16 noundef zeroext 8, i16 noundef zeroext 0) #9
  tail call void @pcie_clear_root_pme_status(ptr noundef %3) #9
  %noirq.i = getelementptr inbounds %struct.pcie_pme_service_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %noirq.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %noirq.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #9
  %5 = ptrtoint ptr %srv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %srv, align 8
  %call1 = tail call ptr @free_irq(i32 noundef %6, ptr noundef %srv) #9
  %work = getelementptr inbounds %struct.pcie_pme_service_data, ptr %1, i32 0, i32 2
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcie_pme_suspend(ptr nocapture noundef readonly %srv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data.i = getelementptr inbounds %struct.pcie_device, ptr %srv, i32 0, i32 3
  %0 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data.i, align 4
  %port1 = getelementptr inbounds %struct.pcie_device, ptr %srv, i32 0, i32 1
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 4
  %can_wakeup.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %device_may_wakeup.exit.if.then4_crit_edge

device_may_wakeup.exit.if.then4_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #9
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %subordinate, align 4
  %call3 = tail call fastcc zeroext i1 @pcie_pme_check_wakeup(ptr noundef %8)
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #9
  br i1 %call3, label %if.else.if.then4_crit_edge, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.else.if.then4_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %if.else.if.then4_crit_edge, %device_may_wakeup.exit.if.then4_crit_edge
  %9 = ptrtoint ptr %srv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %srv, align 8
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %10, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %if.then4.if.end9_crit_edge

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %if.else.if.end9_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #9
  %call.i3.i.i = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %3, i32 noundef 28, i16 noundef zeroext 8, i16 noundef zeroext 0) #9
  tail call void @pcie_clear_root_pme_status(ptr noundef %3) #9
  %noirq.i = getelementptr inbounds %struct.pcie_pme_service_data, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %noirq.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %noirq.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #9
  %12 = ptrtoint ptr %srv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %srv, align 8
  tail call void @synchronize_irq(i32 noundef %13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then4.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcie_pme_resume(ptr nocapture noundef readonly %srv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data.i = getelementptr inbounds %struct.pcie_device, ptr %srv, i32 0, i32 3
  %0 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #9
  %noirq = getelementptr inbounds %struct.pcie_pme_service_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %noirq to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %noirq, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %port1 = getelementptr inbounds %struct.pcie_device, ptr %srv, i32 0, i32 1
  %4 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port1, align 4
  tail call void @pcie_clear_root_pme_status(ptr noundef %5) #9
  %call.i.i = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %5, i32 noundef 28, i16 noundef zeroext 0, i16 noundef zeroext 8) #9
  %6 = ptrtoint ptr %noirq to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %noirq, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %srv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %srv, align 8
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcie_pme_work_fn(ptr noundef %work) #1 align 64 {
entry:
  %rtsta = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -48
  %srv = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %srv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srv, align 4
  %port1 = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rtsta) #9
  %4 = ptrtoint ptr %rtsta to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rtsta, align 4, !annotation !46
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr) #9
  %noirq = getelementptr i8, ptr %work, i32 44
  %5 = ptrtoint ptr %noirq to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %noirq, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not51 = icmp eq i8 %6, 0
  br i1 %tobool.not51, label %if.end.lr.ph, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end.lr.ph:                                     ; preds = %entry
  %devfn4.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 6
  %bus7.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 1
  %dev72.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %pme_poll.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 33
  %subordinate.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %for.cond.backedge.if.end_crit_edge, %if.end.lr.ph
  %call = call i32 @pcie_capability_read_dword(ptr noundef %3, i32 noundef 32, ptr noundef nonnull %rtsta) #9
  %7 = ptrtoint ptr %rtsta to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rtsta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp = icmp eq i32 %8, -1
  br i1 %cmp, label %if.end.for.end_crit_edge, label %if.end3

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end3:                                          ; preds = %if.end
  %and = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @pcie_clear_root_pme_status(ptr noundef %3) #9
  call void @_raw_spin_unlock_irq(ptr noundef %add.ptr) #9
  %9 = ptrtoint ptr %rtsta to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rtsta, align 4
  %conv = trunc i32 %10 to i16
  %11 = lshr i16 %conv, 8
  %conv3.i = trunc i32 %10 to i8
  %12 = ptrtoint ptr %devfn4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devfn4.i, align 4
  %conv3.mask.i = and i32 %10, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv3.mask.i)
  %cmp.i = icmp eq i32 %13, %conv3.mask.i
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then5.if.end21.i_crit_edge

if.then5.if.end21.i_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

land.lhs.true.i:                                  ; preds = %if.then5
  %14 = ptrtoint ptr %bus7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus7.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %number.i, align 4
  %18 = zext i8 %17 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %18)
  %cmp10.i = icmp eq i16 %11, %18
  br i1 %cmp10.i, label %if.then.i, label %land.lhs.true.i.if.end21.i_crit_edge

land.lhs.true.i.if.end21.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %19 = ptrtoint ptr %pme_poll.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %bf.load.i = load i32, ptr %pme_poll.i, align 2
  %20 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then12.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear15.i = and i32 %bf.load.i, -67108865
  %21 = ptrtoint ptr %pme_poll.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %bf.clear15.i, ptr %pme_poll.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then12.i, %if.then.i.if.end.i_crit_edge
  %call.i = call zeroext i1 @pci_check_pme_status(ptr noundef %3) #9
  br i1 %call.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 @__pm_runtime_resume(ptr noundef %dev72.i, i32 noundef 1) #9
  br label %for.cond.backedge

if.else.i:                                        ; preds = %if.end.i
  call void @down_read(ptr noundef nonnull @pci_bus_sem) #9
  %22 = ptrtoint ptr %subordinate.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %subordinate.i, align 4
  %call19.i = call fastcc zeroext i1 @pcie_pme_walk_bus(ptr noundef %23) #9
  call void @up_read(ptr noundef nonnull @pci_bus_sem) #9
  br i1 %call19.i, label %if.else.i.for.cond.backedge_crit_edge, label %if.else.i.do.end87.i_crit_edge

if.else.i.do.end87.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end87.i

if.else.i.for.cond.backedge_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

if.end21.i:                                       ; preds = %land.lhs.true.i.if.end21.i_crit_edge, %if.then5.if.end21.i_crit_edge
  %24 = ptrtoint ptr %bus7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus7.i, align 8
  %domain_nr.i.i = getelementptr inbounds %struct.pci_bus, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %domain_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %domain_nr.i.i, align 8
  %conv24.i = zext i16 %11 to i32
  %call25.i = call ptr @pci_find_bus(i32 noundef %27, i32 noundef %conv24.i) #9
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %if.end21.i.do.end87.i_crit_edge, label %if.end28.i

if.end21.i.do.end87.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end87.i

if.end28.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv3.i)
  %tobool.not.i.i = icmp eq i8 %conv3.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end28.i.if.end33.i_crit_edge

if.end28.i.if.end33.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.end.i.i:                                       ; preds = %if.end28.i
  %self.i.i = getelementptr inbounds %struct.pci_bus, ptr %call25.i, i32 0, i32 4
  %28 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %self.i.i, align 4
  %call.i129.i = call ptr @pci_dev_get(ptr noundef %29) #9
  %tobool1.not.i.i = icmp eq ptr %call.i129.i, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end33.i_crit_edge, label %if.end3.i.i

if.end.i.i.if.end33.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %pcie_cap.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %call.i129.i, i32 0, i32 19
  %30 = ptrtoint ptr %pcie_cap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pcie_cap.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.i.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool.i.not.i.i, label %if.end3.i.i.pcie_pme_from_pci_bridge.exit.thread135.i_crit_edge, label %land.lhs.true.i.i

if.end3.i.i.pcie_pme_from_pci_bridge.exit.thread135.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcie_pme_from_pci_bridge.exit.thread135.i

land.lhs.true.i.i:                                ; preds = %if.end3.i.i
  %pcie_flags_reg.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %call.i129.i, i32 0, i32 25
  %32 = ptrtoint ptr %pcie_flags_reg.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pcie_flags_reg.i.i.i.i, align 2
  %34 = and i16 %33, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 112, i16 %34)
  %cmp.i.i = icmp eq i16 %34, 112
  br i1 %cmp.i.i, label %pcie_pme_from_pci_bridge.exit.i, label %land.lhs.true.i.i.pcie_pme_from_pci_bridge.exit.thread135.i_crit_edge

land.lhs.true.i.i.pcie_pme_from_pci_bridge.exit.thread135.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcie_pme_from_pci_bridge.exit.thread135.i

pcie_pme_from_pci_bridge.exit.thread135.i:        ; preds = %land.lhs.true.i.i.pcie_pme_from_pci_bridge.exit.thread135.i_crit_edge, %if.end3.i.i.pcie_pme_from_pci_bridge.exit.thread135.i_crit_edge
  call void @pci_dev_put(ptr noundef nonnull %call.i129.i) #9
  br label %if.end33.i

pcie_pme_from_pci_bridge.exit.i:                  ; preds = %land.lhs.true.i.i
  call void @down_read(ptr noundef nonnull @pci_bus_sem) #9
  %call7.i.i = call fastcc zeroext i1 @pcie_pme_walk_bus(ptr noundef nonnull %call25.i) #9
  call void @up_read(ptr noundef nonnull @pci_bus_sem) #9
  call void @pci_dev_put(ptr noundef nonnull %call.i129.i) #9
  br i1 %call7.i.i, label %pcie_pme_from_pci_bridge.exit.i.for.cond.backedge_crit_edge, label %pcie_pme_from_pci_bridge.exit.i.if.end33.i_crit_edge

pcie_pme_from_pci_bridge.exit.i.if.end33.i_crit_edge: ; preds = %pcie_pme_from_pci_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

pcie_pme_from_pci_bridge.exit.i.for.cond.backedge_crit_edge: ; preds = %pcie_pme_from_pci_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

if.end33.i:                                       ; preds = %pcie_pme_from_pci_bridge.exit.i.if.end33.i_crit_edge, %pcie_pme_from_pci_bridge.exit.thread135.i, %if.end.i.i.if.end33.i_crit_edge, %if.end28.i.if.end33.i_crit_edge
  call void @down_read(ptr noundef nonnull @pci_bus_sem) #9
  %devices.i = getelementptr inbounds %struct.pci_bus, ptr %call25.i, i32 0, i32 3
  %35 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %dev.0142.i = load ptr, ptr %devices.i, align 4
  %cmp35.not143.i = icmp eq ptr %dev.0142.i, %devices.i
  br i1 %cmp35.not143.i, label %if.end33.i.for.end.i_crit_edge, label %if.end33.i.for.body.i_crit_edge

if.end33.i.for.body.i_crit_edge:                  ; preds = %if.end33.i
  br label %for.body.i

if.end33.i.for.end.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %if.end43.i.for.body.i_crit_edge, %if.end33.i.for.body.i_crit_edge
  %dev.0144.i = phi ptr [ %dev.0.i, %if.end43.i.for.body.i_crit_edge ], [ %dev.0142.i, %if.end33.i.for.body.i_crit_edge ]
  %call37.i = call ptr @pci_dev_get(ptr noundef %dev.0144.i) #9
  %devfn38.i = getelementptr inbounds %struct.pci_dev, ptr %dev.0144.i, i32 0, i32 6
  %36 = ptrtoint ptr %devfn38.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %devfn38.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv3.mask.i)
  %cmp40.i = icmp eq i32 %37, %conv3.mask.i
  br i1 %cmp40.i, label %for.end.thread.i, label %if.end43.i

for.end.thread.i:                                 ; preds = %for.body.i
  call void @up_read(ptr noundef nonnull @pci_bus_sem) #9
  %call51.i = call zeroext i1 @pci_check_pme_status(ptr noundef %dev.0144.i) #9
  br i1 %call51.i, label %if.then54.i, label %if.end68.i

if.end43.i:                                       ; preds = %for.body.i
  call void @pci_dev_put(ptr noundef %dev.0144.i) #9
  %38 = ptrtoint ptr %dev.0144.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %dev.0.i = load ptr, ptr %dev.0144.i, align 4
  %cmp35.not.i = icmp eq ptr %dev.0.i, %devices.i
  br i1 %cmp35.not.i, label %if.end43.i.for.end.i_crit_edge, label %if.end43.i.for.body.i_crit_edge

if.end43.i.for.body.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end43.i.for.end.i_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %if.end43.i.for.end.i_crit_edge, %if.end33.i.for.end.i_crit_edge
  call void @up_read(ptr noundef nonnull @pci_bus_sem) #9
  br i1 %tobool.not.i.i, label %for.end.i.do.end87.i_crit_edge, label %out.i

for.end.i.do.end87.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end87.i

if.then54.i:                                      ; preds = %for.end.thread.i
  %pme_poll55.i = getelementptr inbounds %struct.pci_dev, ptr %dev.0144.i, i32 0, i32 33
  %39 = ptrtoint ptr %pme_poll55.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %bf.load56.i = load i32, ptr %pme_poll55.i, align 2
  %40 = and i32 %bf.load56.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool59.not.i = icmp eq i32 %40, 0
  br i1 %tobool59.not.i, label %if.then54.i.if.end68.thread.i_crit_edge, label %if.then60.i

if.then54.i.if.end68.thread.i_crit_edge:          ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.thread.i

if.then60.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear63.i = and i32 %bf.load56.i, -67108865
  %41 = ptrtoint ptr %pme_poll55.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %bf.clear63.i, ptr %pme_poll55.i, align 2
  br label %if.end68.thread.i

if.end68.thread.i:                                ; preds = %if.then60.i, %if.then54.i.if.end68.thread.i_crit_edge
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.0144.i, i32 0, i32 44
  call void @pm_wakeup_dev_event(ptr noundef %dev1.i.i, i32 noundef 100, i1 noundef zeroext false) #9
  %call.i130.i = call i32 @__pm_runtime_resume(ptr noundef %dev1.i.i, i32 noundef 1) #9
  call void @pci_dev_put(ptr noundef %dev.0144.i) #9
  br label %for.cond.backedge

if.end68.i:                                       ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @pci_dev_put(ptr noundef %dev.0144.i) #9
  br label %do.end87.i

out.i:                                            ; preds = %for.end.i
  %42 = lshr i32 %conv3.mask.i, 3
  %and78.i = and i32 %10, 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev72.i, ptr noundef nonnull @.str.11, i32 noundef %conv24.i, i32 noundef %42, i32 noundef %and78.i) #13
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %call25.i, i32 0, i32 4
  %43 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %self.i, align 4
  %call.i41 = call ptr @pci_dev_get(ptr noundef %44) #9
  %tobool1.not.i = icmp eq ptr %call.i41, null
  br i1 %tobool1.not.i, label %out.i.do.end87.i_crit_edge, label %if.end3.i

out.i.do.end87.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end87.i

if.end3.i:                                        ; preds = %out.i
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %call.i41, i32 0, i32 19
  %45 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.i.not.i = icmp eq i8 %46, 0
  br i1 %tobool.i.not.i, label %if.end3.i.pcie_pme_from_pci_bridge.exit.thread46_crit_edge, label %land.lhs.true.i44

if.end3.i.pcie_pme_from_pci_bridge.exit.thread46_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcie_pme_from_pci_bridge.exit.thread46

land.lhs.true.i44:                                ; preds = %if.end3.i
  %pcie_flags_reg.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %call.i41, i32 0, i32 25
  %47 = ptrtoint ptr %pcie_flags_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %pcie_flags_reg.i.i.i, align 2
  %49 = and i16 %48, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 112, i16 %49)
  %cmp.i43 = icmp eq i16 %49, 112
  br i1 %cmp.i43, label %pcie_pme_from_pci_bridge.exit, label %land.lhs.true.i44.pcie_pme_from_pci_bridge.exit.thread46_crit_edge

land.lhs.true.i44.pcie_pme_from_pci_bridge.exit.thread46_crit_edge: ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcie_pme_from_pci_bridge.exit.thread46

pcie_pme_from_pci_bridge.exit.thread46:           ; preds = %land.lhs.true.i44.pcie_pme_from_pci_bridge.exit.thread46_crit_edge, %if.end3.i.pcie_pme_from_pci_bridge.exit.thread46_crit_edge
  call void @pci_dev_put(ptr noundef nonnull %call.i41) #9
  br label %do.end87.i

pcie_pme_from_pci_bridge.exit:                    ; preds = %land.lhs.true.i44
  call void @down_read(ptr noundef nonnull @pci_bus_sem) #9
  %call7.i = call fastcc zeroext i1 @pcie_pme_walk_bus(ptr noundef nonnull %call25.i) #9
  call void @up_read(ptr noundef nonnull @pci_bus_sem) #9
  call void @pci_dev_put(ptr noundef nonnull %call.i41) #9
  br i1 %call7.i, label %pcie_pme_from_pci_bridge.exit.for.cond.backedge_crit_edge, label %pcie_pme_from_pci_bridge.exit.do.end87.i_crit_edge

pcie_pme_from_pci_bridge.exit.do.end87.i_crit_edge: ; preds = %pcie_pme_from_pci_bridge.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end87.i

pcie_pme_from_pci_bridge.exit.for.cond.backedge_crit_edge: ; preds = %pcie_pme_from_pci_bridge.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

do.end87.i:                                       ; preds = %pcie_pme_from_pci_bridge.exit.do.end87.i_crit_edge, %pcie_pme_from_pci_bridge.exit.thread46, %out.i.do.end87.i_crit_edge, %if.end68.i, %for.end.i.do.end87.i_crit_edge, %if.end21.i.do.end87.i_crit_edge, %if.else.i.do.end87.i_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev72.i, ptr noundef nonnull @.str.14) #13
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end13, %do.end87.i, %pcie_pme_from_pci_bridge.exit.for.cond.backedge_crit_edge, %if.end68.thread.i, %pcie_pme_from_pci_bridge.exit.i.for.cond.backedge_crit_edge, %if.else.i.for.cond.backedge_crit_edge, %if.then16.i
  call void @_raw_spin_lock_irq(ptr noundef %add.ptr) #9
  %50 = ptrtoint ptr %noirq to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %noirq, align 4, !range !45
  %tobool.not = icmp eq i8 %51, 0
  br i1 %tobool.not, label %for.cond.backedge.if.end_crit_edge, label %for.cond.backedge.if.end25_crit_edge

for.cond.backedge.if.end25_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

for.cond.backedge.if.end_crit_edge:               ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end9:                                          ; preds = %if.end3
  %and10 = and i32 %8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.for.end_crit_edge, label %if.end13

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irq(ptr noundef %add.ptr) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !48
  br label %for.cond.backedge

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %if.end.for.end_crit_edge
  %52 = ptrtoint ptr %noirq to i32
  call void @__asan_load1_noabort(i32 %52)
  %.pr = load i8, ptr %noirq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool23.not = icmp eq i8 %.pr, 0
  br i1 %tobool23.not, label %if.then24, label %for.end.if.end25_crit_edge

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then24:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i38 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %3, i32 noundef 28, i16 noundef zeroext 0, i16 noundef zeroext 8) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %for.end.if.end25_crit_edge, %for.cond.backedge.if.end25_crit_edge, %entry.if.end25_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %add.ptr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rtsta) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_clear_root_pme_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcie_pme_irq(i32 noundef %irq, ptr nocapture noundef readonly %context) #1 align 64 {
entry:
  %rtsta = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rtsta) #9
  %0 = ptrtoint ptr %rtsta to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rtsta, align 4, !annotation !46
  %port1 = getelementptr inbounds %struct.pcie_device, ptr %context, i32 0, i32 1
  %1 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port1, align 4
  %priv_data.i = getelementptr inbounds %struct.pcie_device, ptr %context, i32 0, i32 3
  %3 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv_data.i, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
  %call7 = call i32 @pcie_capability_read_dword(ptr noundef %2, i32 noundef 32, ptr noundef nonnull %rtsta) #9
  %5 = ptrtoint ptr %rtsta to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rtsta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp8 = icmp eq i32 %6, -1
  %and = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp8, %tobool.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %call4) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i3.i = call i32 @pcie_capability_clear_and_set_word(ptr noundef %2, i32 noundef 28, i16 noundef zeroext 8, i16 noundef zeroext 0) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %call4) #9
  %work = getelementptr inbounds %struct.pcie_pme_service_data, ptr %4, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rtsta) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_check_pme_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pcie_pme_walk_bus(ptr noundef readonly %bus) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %devices = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev.036 = load ptr, ptr %devices, align 4
  %cmp.not37 = icmp eq ptr %dev.036, %devices
  br i1 %cmp.not37, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %dev.039 = phi ptr [ %dev.0, %for.inc.for.body_crit_edge ], [ %dev.036, %entry.for.body_crit_edge ]
  %ret.0.off038 = phi i1 [ %ret.2.off0, %for.inc.for.body_crit_edge ], [ false, %entry.for.body_crit_edge ]
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.039, i32 0, i32 19
  %1 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not = icmp eq i8 %2, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %for.body.if.end9_crit_edge

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true:                                    ; preds = %for.body
  %call2 = tail call zeroext i1 @pci_check_pme_status(ptr noundef %dev.039) #9
  br i1 %call2, label %if.then, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %pme_poll = getelementptr inbounds %struct.pci_dev, ptr %dev.039, i32 0, i32 33
  %3 = ptrtoint ptr %pme_poll to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %bf.load = load i32, ptr %pme_poll, align 2
  %4 = and i32 %bf.load, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear6 = and i32 %bf.load, -67108865
  %5 = ptrtoint ptr %pme_poll to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %bf.clear6, ptr %pme_poll, align 2
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %dev.039, i32 0, i32 44
  tail call void @pm_wakeup_dev_event(ptr noundef %dev1.i, i32 noundef 100, i1 noundef zeroext false) #9
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1.i, i32 noundef 1) #9
  br label %if.end9

if.end9:                                          ; preds = %if.end, %land.lhs.true.if.end9_crit_edge, %for.body.if.end9_crit_edge
  %ret.1.off0 = phi i1 [ %ret.0.off038, %for.body.if.end9_crit_edge ], [ true, %if.end ], [ %ret.0.off038, %land.lhs.true.if.end9_crit_edge ]
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %dev.039, i32 0, i32 2
  %6 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %subordinate, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.end9.for.inc_crit_edge, label %land.lhs.true11

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true11:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call fastcc zeroext i1 @pcie_pme_walk_bus(ptr noundef nonnull %7)
  %spec.select = select i1 %call13, i1 true, i1 %ret.1.off0
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true11, %if.end9.for.inc_crit_edge
  %ret.2.off0 = phi i1 [ %ret.1.off0, %if.end9.for.inc_crit_edge ], [ %spec.select, %land.lhs.true11 ]
  %8 = ptrtoint ptr %dev.039 to i32
  call void @__asan_load4_noabort(i32 %8)
  %dev.0 = load ptr, ptr %dev.039, align 4
  %cmp.not = icmp eq ptr %dev.0, %devices
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.off0.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ %ret.2.off0, %for.inc.for.end_crit_edge ]
  ret i1 %ret.0.off0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_bus(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcie_pme_can_wakeup(ptr noundef %dev, ptr nocapture noundef readnone %ign) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void @device_set_wakeup_capable(ptr noundef %dev1, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_walk_rcec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_walk_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pcie_pme_check_wakeup(ptr noundef readonly %bus) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bus, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %devices = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %lor.lhs.false.for.cond_crit_edge, %if.end
  %dev.0.in = phi ptr [ %devices, %if.end ], [ %dev.0, %lor.lhs.false.for.cond_crit_edge ]
  %0 = ptrtoint ptr %dev.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev.0 = load ptr, ptr %dev.0.in, align 4
  %cmp.not = icmp eq ptr %dev.0, %devices
  br i1 %cmp.not, label %for.cond.cleanup.loopexit_crit_edge, label %for.body

for.cond.cleanup.loopexit_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.loopexit

for.body:                                         ; preds = %for.cond
  %can_wakeup.i = getelementptr inbounds %struct.pci_dev, ptr %dev.0, i32 0, i32 44, i32 12, i32 1
  %1 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %for.body.lor.lhs.false_crit_edge, label %device_may_wakeup.exit

for.body.lor.lhs.false_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

device_may_wakeup.exit:                           ; preds = %for.body
  %wakeup.i = getelementptr inbounds %struct.pci_dev, ptr %dev.0, i32 0, i32 44, i32 12, i32 6
  %2 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %3, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.lor.lhs.false_crit_edge, label %device_may_wakeup.exit.cleanup.loopexit_crit_edge

device_may_wakeup.exit.cleanup.loopexit_crit_edge: ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.loopexit

device_may_wakeup.exit.lor.lhs.false_crit_edge:   ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %device_may_wakeup.exit.lor.lhs.false_crit_edge, %for.body.lor.lhs.false_crit_edge
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %dev.0, i32 0, i32 2
  %4 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %subordinate, align 4
  %call3 = tail call fastcc zeroext i1 @pcie_pme_check_wakeup(ptr noundef %5)
  br i1 %call3, label %lor.lhs.false.cleanup.loopexit_crit_edge, label %lor.lhs.false.for.cond_crit_edge

lor.lhs.false.for.cond_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

lor.lhs.false.cleanup.loopexit_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %lor.lhs.false.cleanup.loopexit_crit_edge, %device_may_wakeup.exit.cleanup.loopexit_crit_edge, %for.cond.cleanup.loopexit_crit_edge
  %6 = xor i1 %cmp.not, true
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %6, %cleanup.loopexit ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__setup_pcie_pme_setup, !1, !"__setup_pcie_pme_setup", i1 false, i1 false}
!1 = !{!"../drivers/pci/pcie/pme.c", i32 39, i32 1}
!2 = !{ptr @pcie_pme_msi_disabled, !3, !"pcie_pme_msi_disabled", i1 false, i1 false}
!3 = !{!"../drivers/pci/pcie/pme.c", i32 30, i32 6}
!4 = !{ptr @__setup_str_pcie_pme_setup, !1, !"__setup_str_pcie_pme_setup", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/pci/pcie/pme.c", i32 34, i32 20}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/pci/pcie/pme.c", i32 455, i32 11}
!9 = !{ptr @pcie_pme_driver, !10, !"pcie_pme_driver", i1 false, i1 false}
!10 = !{!"../drivers/pci/pcie/pme.c", i32 454, i32 40}
!11 = !{ptr @pcie_pme_probe.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/pci/pcie/pme.c", i32 340, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @pcie_pme_probe.__key.3, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/pci/pcie/pme.c", i32 341, i32 2}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pci/pcie/pme.c", i32 348, i32 57}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pci/pcie/pme.c", i32 354, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pcie_pme_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @pcie_pme_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pci/pcie/pme.c", i32 199, i32 3}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @pcie_pme_handle_request._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @pcie_pme_handle_request._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pci/pcie/pme.c", i32 206, i32 3}
!34 = !{ptr @pcie_pme_handle_request._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @pcie_pme_handle_request._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i8 0, i8 2}
!46 = !{!"auto-init"}
!47 = !{i64 2154502091}
!48 = !{i64 2154501933}
