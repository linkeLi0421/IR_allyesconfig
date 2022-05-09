; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pci-versatile.c_pt.bc'
source_filename = "../drivers/pci/controller/pci-versatile.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__setup_str_versatile_pci_slot_ignore = internal constant [17 x i8] c"pci_slot_ignore=\00", section ".init.rodata", align 1
@__setup_versatile_pci_slot_ignore = internal global %struct.obs_kernel_param { ptr @__setup_str_versatile_pci_slot_ignore, ptr @versatile_pci_slot_ignore, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_pci_versatile__236_170_versatile_pci_driver_init6 = internal global ptr @versatile_pci_driver_init, section ".initcall6.init", align 4
@versatile_pci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @versatile_pci_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @versatile_pci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_versatile_pci_driver_exit = internal global ptr @versatile_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description237 = internal constant [47 x i8] c"pci_versatile.description=Versatile PCI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [56 x i8] c"pci_versatile.file=drivers/pci/controller/pci-versatile\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [29 x i8] c"pci_versatile.license=GPL v2\00", section ".modinfo", align 1
@versatile_pci_slot_ignore._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Illegal slot value: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"versatile_pci_slot_ignore\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/pci/controller/pci-versatile.c\00", [57 x i8] zeroinitializer }, align 32
@versatile_pci_slot_ignore._entry_ptr = internal global ptr @versatile_pci_slot_ignore._entry, section ".printk_index", align 4
@pci_slot_ignore = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"versatile-pci\00", [18 x i8] zeroinitializer }, align 32
@versatile_pci_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,versatile-pci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@versatile_pci_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@versatile_cfg_base.0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@versatile_cfg_base.1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@versatile_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 112, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot find PCI core!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"versatile_pci_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@versatile_pci_probe._entry_ptr = internal global ptr @versatile_pci_probe._entry, section ".printk_index", align 4
@versatile_pci_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 120, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PCI core found (slot %d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@versatile_pci_probe._entry_ptr.11 = internal global ptr @versatile_pci_probe._entry.8, section ".printk_index", align 4
@pci_versatile_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr @versatile_map_bus, ptr @pci_generic_config_read32, ptr @pci_generic_config_write }, [44 x i8] zeroinitializer }, align 32
@pci_flags = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.12 = private unnamed_addr constant [21 x i8] c"versatile_pci_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 162, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 39, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"pci_slot_ignore\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 30, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 164, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"versatile_pci_of_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 156, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"versatile_pci_base\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 20, i32 22 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"versatile_cfg_base.0\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"versatile_cfg_base.1\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 112, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 120, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"pci_versatile_ops\00", align 1
@___asan_gen_.66 = private constant [42 x i8] c"../drivers/pci/controller/pci-versatile.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 59, i32 23 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_versatile_pci_driver_exit, ptr @__initcall__kmod_pci_versatile__236_170_versatile_pci_driver_init6, ptr @__setup_versatile_pci_slot_ignore, ptr @versatile_pci_driver_exit, ptr @versatile_pci_probe._entry, ptr @versatile_pci_probe._entry.8, ptr @versatile_pci_probe._entry_ptr, ptr @versatile_pci_probe._entry_ptr.11, ptr @versatile_pci_slot_ignore._entry, ptr @versatile_pci_slot_ignore._entry_ptr, ptr @versatile_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @pci_slot_ignore, ptr @.str.3, ptr @versatile_pci_of_match, ptr @versatile_pci_base, ptr @versatile_cfg_base.0, ptr @versatile_cfg_base.1, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @pci_versatile_ops], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versatile_pci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versatile_pci_slot_ignore._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_slot_ignore to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versatile_pci_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versatile_pci_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versatile_cfg_base.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versatile_cfg_base.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versatile_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versatile_pci_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_versatile_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @versatile_pci_slot_ignore(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  %str.addr = alloca ptr, align 4
  %slot = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %str, ptr %str.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slot) #7
  %1 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %slot, align 4, !annotation !52
  %call4 = call i32 @get_option(ptr noundef nonnull %str.addr, ptr noundef nonnull %slot) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not5 = icmp eq i32 %call4, 0
  br i1 %tobool.not5, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %3)
  %4 = icmp ugt i32 %3, 31
  br i1 %4, label %do.end, label %if.else

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %3) #10
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw i32 1, %3
  %5 = load i32, ptr @pci_slot_ignore, align 4
  %or = or i32 %5, %shl
  store i32 %or, ptr @pci_slot_ignore, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %call = call i32 @get_option(ptr noundef nonnull %str.addr, ptr noundef nonnull %slot) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slot) #7
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @versatile_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @versatile_pci_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @versatile_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @versatile_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @versatile_pci_probe(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  store ptr %call3, ptr @versatile_pci_base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #7
  store ptr %call8, ptr @versatile_cfg_base.0, align 4
  %cmp.i146 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i146, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %call13 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 2) #7
  %call14 = tail call ptr @devm_pci_remap_cfg_resource(ptr noundef %dev1, ptr noundef %call13) #7
  store ptr %call14, ptr @versatile_cfg_base.1, align 4
  %cmp.i147 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %windows = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %windows to i32
  call void @__asan_load4_noabort(i32 %3)
  %entry2.0151 = load ptr, ptr %windows, align 4
  %cmp.not152 = icmp eq ptr %entry2.0151, %windows
  br i1 %cmp.not152, label %if.end18.for.body42.preheader_crit_edge, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  br label %for.body

if.end18.for.body42.preheader_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42.preheader

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end18.for.body_crit_edge
  %entry2.0154 = phi ptr [ %entry2.0, %for.inc.for.body_crit_edge ], [ %entry2.0151, %if.end18.for.body_crit_edge ]
  %mem.0153 = phi i32 [ %mem.1, %for.inc.for.body_crit_edge ], [ 1, %if.end18.for.body_crit_edge ]
  %res20 = getelementptr inbounds %struct.resource_entry, ptr %entry2.0154, i32 0, i32 1
  %4 = ptrtoint ptr %res20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res20, align 4
  %flags.i = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i)
  %cmp22 = icmp eq i32 %and.i, 512
  br i1 %cmp22, label %do.body, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %res20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %res20, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = lshr i32 %11, 4
  %13 = and i32 %12, 251658240
  %14 = load ptr, ptr @versatile_pci_base, align 4
  %mul = shl i32 %mem.0153, 2
  %add.ptr25 = getelementptr i8, ptr %14, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %13) #7, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %call29 = tail call i32 @__virt_to_phys(i32 noundef -1073741824) #7
  %15 = lshr i32 %call29, 4
  %16 = and i32 %15, 251658240
  %17 = load ptr, ptr @versatile_pci_base, align 4
  %add.ptr31 = getelementptr i8, ptr %17, i32 20
  %add.ptr33 = getelementptr i8, ptr %add.ptr31, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %16) #7, !srcloc !54
  %inc = add i32 %mem.0153, 1
  br label %for.inc

for.inc:                                          ; preds = %do.body, %for.body.for.inc_crit_edge
  %mem.1 = phi i32 [ %inc, %do.body ], [ %mem.0153, %for.body.for.inc_crit_edge ]
  %18 = ptrtoint ptr %entry2.0154 to i32
  call void @__asan_load4_noabort(i32 %18)
  %entry2.0 = load ptr, ptr %entry2.0154, align 4
  %cmp.not = icmp eq ptr %entry2.0, %windows
  br i1 %cmp.not, label %for.inc.for.body42.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.body42.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42.preheader

for.body42.preheader:                             ; preds = %for.inc.for.body42.preheader_crit_edge, %if.end18.for.body42.preheader_crit_edge
  br label %for.body42

for.body42:                                       ; preds = %for.inc60.for.body42_crit_edge, %for.body42.preheader
  %i.0155 = phi i32 [ %inc61, %for.inc60.for.body42_crit_edge ], [ 0, %for.body42.preheader ]
  %19 = load ptr, ptr @versatile_cfg_base.0, align 4
  %shl = shl i32 %i.0155, 11
  %add.ptr43 = getelementptr i8, ptr %19, i32 %shl
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #7, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 -300941309, i32 %20)
  %cmp48 = icmp eq i32 %20, -300941309
  br i1 %cmp48, label %land.lhs.true, label %for.body42.for.inc60_crit_edge

for.body42.for.inc60_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc60

land.lhs.true:                                    ; preds = %for.body42
  %21 = load ptr, ptr @versatile_cfg_base.0, align 4
  %add.ptr52 = getelementptr i8, ptr %21, i32 8
  %add.ptr53 = getelementptr i8, ptr %add.ptr52, i32 %shl
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #7, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 16395, i32 %22)
  %cmp57 = icmp eq i32 %22, 16395
  br i1 %cmp57, label %if.end68, label %land.lhs.true.for.inc60_crit_edge

land.lhs.true.for.inc60_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc60

for.inc60:                                        ; preds = %land.lhs.true.for.inc60_crit_edge, %for.body42.for.inc60_crit_edge
  %inc61 = add nuw nsw i32 %i.0155, 1
  %exitcond.not = icmp eq i32 %inc61, 32
  br i1 %exitcond.not, label %do.end67, label %for.inc60.for.body42_crit_edge

for.inc60.for.body42_crit_edge:                   ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42

do.end67:                                         ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end68:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %shl69 = shl nuw i32 1, %i.0155
  %23 = load i32, ptr @pci_slot_ignore, align 4
  %or = or i32 %23, %shl69
  store i32 %or, ptr @pci_slot_ignore, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %i.0155) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %i.0155)
  %25 = load ptr, ptr @versatile_pci_base, align 4
  %add.ptr76 = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %24) #7, !srcloc !54
  %26 = load ptr, ptr @versatile_cfg_base.1, align 4
  %add.ptr78 = getelementptr i8, ptr %26, i32 %shl
  %add.ptr81 = getelementptr i8, ptr %add.ptr78, i32 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #7, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %28 = or i32 %27, 369098752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %28) #7, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %call93 = tail call i32 @__virt_to_phys(i32 noundef -1073741824) #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %call93)
  %add.ptr94 = getelementptr i8, ptr %add.ptr78, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %29) #7, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @arm_heavy_mb() #7
  %call98 = tail call i32 @__virt_to_phys(i32 noundef -1073741824) #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %call98)
  %add.ptr99 = getelementptr i8, ptr %add.ptr78, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 %30) #7, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %call103 = tail call i32 @__virt_to_phys(i32 noundef -1073741824) #7
  %31 = tail call i32 @llvm.bswap.i32(i32 %call103)
  %add.ptr104 = getelementptr i8, ptr %add.ptr78, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 %31) #7, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %32 = load ptr, ptr @versatile_cfg_base.0, align 4
  %add.ptr108 = getelementptr i8, ptr %32, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 0) #7, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_flags to i32))
  %33 = load i32, ptr @pci_flags, align 4
  %or.i = or i32 %33, 2
  store i32 %or.i, ptr @pci_flags, align 4
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 2
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @pci_versatile_ops, ptr %ops, align 4
  %call109 = tail call i32 @pci_host_probe(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %do.end67, %if.then16, %if.then10, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then5 ], [ %1, %if.then10 ], [ %2, %if.then16 ], [ -5, %do.end67 ], [ %call109, %if.end68 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_remap_cfg_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @versatile_map_bus(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %offset) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pci_slot_ignore, align 4
  %shr = lshr i32 %devfn, 3
  %and = and i32 %shr, 31
  %shl = shl nuw i32 1, %and
  %and1 = and i32 %0, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %1 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %number, align 4
  %conv = zext i8 %2 to i32
  %3 = load ptr, ptr @versatile_cfg_base.1, align 4
  %shl2 = shl nuw nsw i32 %conv, 16
  %shl3 = shl i32 %devfn, 8
  %or = or i32 %shl3, %offset
  %or4 = or i32 %or, %shl2
  %add.ptr = getelementptr i8, ptr %3, i32 %or4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read32(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__setup_versatile_pci_slot_ignore, !1, !"__setup_versatile_pci_slot_ignore", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pci-versatile.c", i32 45, i32 1}
!2 = !{ptr @__initcall__kmod_pci_versatile__236_170_versatile_pci_driver_init6, !3, !"__initcall__kmod_pci_versatile__236_170_versatile_pci_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/pci-versatile.c", i32 170, i32 1}
!4 = !{ptr @__exitcall_versatile_pci_driver_exit, !3, !"__exitcall_versatile_pci_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description237, !6, !"__UNIQUE_ID_description237", i1 false, i1 false}
!6 = !{!"../drivers/pci/controller/pci-versatile.c", i32 172, i32 1}
!7 = !{ptr @__UNIQUE_ID_file238, !8, !"__UNIQUE_ID_file238", i1 false, i1 false}
!8 = !{!"../drivers/pci/controller/pci-versatile.c", i32 173, i32 1}
!9 = !{ptr @__UNIQUE_ID_license239, !8, !"__UNIQUE_ID_license239", i1 false, i1 false}
!10 = !{ptr @__setup_str_versatile_pci_slot_ignore, !1, !"__setup_str_versatile_pci_slot_ignore", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/pci/controller/pci-versatile.c", i32 39, i32 4}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @versatile_pci_slot_ignore._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @versatile_pci_slot_ignore._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @pci_slot_ignore, !18, !"pci_slot_ignore", i1 false, i1 false}
!18 = !{!"../drivers/pci/controller/pci-versatile.c", i32 30, i32 12}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pci/controller/pci-versatile.c", i32 164, i32 11}
!21 = !{ptr @versatile_pci_driver, !22, !"versatile_pci_driver", i1 false, i1 false}
!22 = !{!"../drivers/pci/controller/pci-versatile.c", i32 162, i32 31}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pci/controller/pci-versatile.c", i32 112, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @versatile_pci_probe._entry, !24, !"_entry", i1 false, i1 false}
!29 = !{ptr @versatile_pci_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/pci-versatile.c", i32 120, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @versatile_pci_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @versatile_pci_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @versatile_pci_base, !36, !"versatile_pci_base", i1 false, i1 false}
!36 = !{!"../drivers/pci/controller/pci-versatile.c", i32 20, i32 22}
!37 = distinct !{null, !38, !"versatile_cfg_base", i1 false, i1 false}
!38 = !{!"../drivers/pci/controller/pci-versatile.c", i32 21, i32 22}
!39 = !{ptr @pci_versatile_ops, !40, !"pci_versatile_ops", i1 false, i1 false}
!40 = !{!"../drivers/pci/controller/pci-versatile.c", i32 59, i32 23}
!41 = !{ptr @versatile_pci_of_match, !42, !"versatile_pci_of_match", i1 false, i1 false}
!42 = !{!"../drivers/pci/controller/pci-versatile.c", i32 156, i32 34}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"auto-init"}
!53 = !{i64 2154600436}
!54 = !{i64 4176798}
!55 = !{i64 2154601232}
!56 = !{i64 4177216}
!57 = !{i64 2154602202}
!58 = !{i64 2154602796}
!59 = !{i64 2154606272}
!60 = !{i64 2154606988}
!61 = !{i64 2154607228}
!62 = !{i64 2154607890}
!63 = !{i64 2154608720}
!64 = !{i64 2154609550}
!65 = !{i64 2154610129}
