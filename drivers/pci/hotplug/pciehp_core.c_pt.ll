; ModuleID = '/llk/IR_all_yes/drivers/pci/hotplug/pciehp_core.c_pt.bc'
source_filename = "../drivers/pci/hotplug/pciehp_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pcie_port_service_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pcie_device = type { i32, ptr, i32, ptr, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.hotplug_slot_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.controller = type { ptr, i32, i8, i16, %struct.mutex, i32, i8, %struct.wait_queue_head, %struct.atomic_t, i8, i32, ptr, i8, %struct.mutex, %struct.delayed_work, %struct.hotplug_slot, %struct.rw_semaphore, i32, i32, i32, %struct.wait_queue_head }
%struct.hotplug_slot = type { ptr, %struct.list_head, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }

@__param_str_pciehp_poll_mode = internal constant [24 x i8] c"pciehp.pciehp_poll_mode\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@pciehp_poll_mode = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_pciehp_poll_mode = internal constant %struct.kernel_param { ptr @__param_str_pciehp_poll_mode, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @pciehp_poll_mode } }, section "__param", align 4
@__UNIQUE_ID_pciehp_poll_modetype236 = internal constant [38 x i8] c"pciehp.parmtype=pciehp_poll_mode:bool\00", section ".modinfo", align 1
@__param_str_pciehp_poll_time = internal constant [24 x i8] c"pciehp.pciehp_poll_time\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@pciehp_poll_time = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pciehp_poll_time = internal constant %struct.kernel_param { ptr @__param_str_pciehp_poll_time, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @pciehp_poll_time } }, section "__param", align 4
@__UNIQUE_ID_pciehp_poll_timetype237 = internal constant [37 x i8] c"pciehp.parmtype=pciehp_poll_time:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pciehp_poll_mode238 = internal constant [80 x i8] c"pciehp.parm=pciehp_poll_mode:Using polling mechanism for hot-plug events or not\00", section ".modinfo", align 1
@__UNIQUE_ID_pciehp_poll_time239 = internal constant [69 x i8] c"pciehp.parm=pciehp_poll_time:Polling mechanism frequency, in seconds\00", section ".modinfo", align 1
@hpdriver_portdrv = internal global { %struct.pcie_port_service_driver, [40 x i8] } { %struct.pcie_port_service_driver { ptr @.str, ptr @pciehp_probe, ptr @pciehp_remove, ptr @pciehp_suspend, ptr @pciehp_resume_noirq, ptr @pciehp_resume, ptr @pciehp_runtime_suspend, ptr @pciehp_runtime_resume, ptr @pciehp_slot_reset, i32 -1, i32 4, %struct.device_driver zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@pcie_hp_init.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 90, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pciehp\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcie_hp_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/pci/hotplug/pciehp_core.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pcie_port_service_register = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pciehp: pcie_port_service_register = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@pcie_hp_init.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 91, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failure to register service\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pciehp: Failure to register service\0A\00", [59 x i8] zeroinitializer }, align 32
@pciehp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 195, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"pciehp: Hotplug bridge without secondary bus, ignoring\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pciehp_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pciehp_probe._entry_ptr = internal global ptr @pciehp_probe._entry, section ".printk_index", align 4
@pciehp_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.2, i32 201, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"pciehp: Controller initialization failed\0A\00", [54 x i8] zeroinitializer }, align 32
@pciehp_probe._entry_ptr.13 = internal global ptr @pciehp_probe._entry.11, section ".printk_index", align 4
@pciehp_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.2, i32 210, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"pciehp: Slot already registered by another hotplug driver\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pciehp_probe._entry_ptr.17 = internal global ptr @pciehp_probe._entry.14, section ".printk_index", align 4
@pciehp_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.2, i32 212, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pciehp: Slot initialization failed (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@pciehp_probe._entry_ptr.20 = internal global ptr @pciehp_probe._entry.18, section ".printk_index", align 4
@pciehp_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.8, ptr @.str.2, i32 219, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"pciehp: Notification initialization failed (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@pciehp_probe._entry_ptr.23 = internal global ptr @pciehp_probe._entry.21, section ".printk_index", align 4
@pciehp_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.8, ptr @.str.2, i32 226, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"pciehp: Publication to user space failed (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@pciehp_probe._entry_ptr.26 = internal global ptr @pciehp_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@init_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 83, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"pciehp: pci_hp_initialize failed: error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_slot\00", [22 x i8] zeroinitializer }, align 32
@init_slot._entry_ptr = internal global ptr @init_slot._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pcie_ports_native = external dso_local local_unnamed_addr global i8, align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"pciehp_poll_mode\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 33, i32 6 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"pciehp_poll_time\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 34, i32 5 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"hpdriver_portdrv\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 337, i32 40 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 363, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 365, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 194, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 201, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 210, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 212, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 219, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 226, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 78, i32 33 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [37 x i8] c"../drivers/pci/hotplug/pciehp_core.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 83, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_pciehp_poll_mode238, ptr @__UNIQUE_ID_pciehp_poll_modetype236, ptr @__UNIQUE_ID_pciehp_poll_time239, ptr @__UNIQUE_ID_pciehp_poll_timetype237, ptr @__param_pciehp_poll_mode, ptr @__param_pciehp_poll_time, ptr @init_slot._entry, ptr @init_slot._entry_ptr, ptr @pciehp_probe._entry, ptr @pciehp_probe._entry.11, ptr @pciehp_probe._entry.14, ptr @pciehp_probe._entry.18, ptr @pciehp_probe._entry.21, ptr @pciehp_probe._entry.24, ptr @pciehp_probe._entry_ptr, ptr @pciehp_probe._entry_ptr.13, ptr @pciehp_probe._entry_ptr.17, ptr @pciehp_probe._entry_ptr.20, ptr @pciehp_probe._entry_ptr.23, ptr @pciehp_probe._entry_ptr.26, ptr @pciehp_poll_mode, ptr @pciehp_poll_time, ptr @hpdriver_portdrv, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_poll_mode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_poll_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpdriver_portdrv to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcie_hp_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcie_port_service_register(ptr noundef nonnull @hpdriver_portdrv) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcie_hp_init.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcie_hp_init, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcie_hp_init.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.4, i32 noundef %call) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %do.end.if.end26_crit_edge, label %do.body8

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.body8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcie_hp_init.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcie_hp_init, %if.end26)) #7
          to label %if.then22 [label %if.end26], !srcloc !73

if.then22:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcie_hp_init.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.6) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %do.body8, %do.end.if.end26_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_port_service_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pciehp_probe(ptr noundef %dev) #3 align 64 {
entry:
  %name.i = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %service = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %service, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %port = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %subordinate, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call = tail call ptr @pcie_init(ptr noundef %dev) #7
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %priv_data.i = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %priv_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %name.i) #7
  %9 = call ptr @memset(ptr %name.i, i32 255, i32 10)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 36) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %init_slot.exit.thread, label %if.end.i

init_slot.exit.thread:                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %name.i) #7
  br label %do.end25

if.end.i:                                         ; preds = %if.end12
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @pciehp_sysfs_enable_slot, ptr %call7.i.i.i, align 8
  %disable_slot.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %disable_slot.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @pciehp_sysfs_disable_slot, ptr %disable_slot.i, align 4
  %get_power_status.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %call7.i.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %get_power_status.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @get_power_status, ptr %get_power_status.i, align 8
  %get_adapter_status.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %call7.i.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %get_adapter_status.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @get_adapter_status, ptr %get_adapter_status.i, align 4
  %reset_slot.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %call7.i.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %reset_slot.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @pciehp_reset_slot, ptr %reset_slot.i, align 8
  %slot_cap.i = getelementptr inbounds %struct.controller, ptr %call, i32 0, i32 1
  %16 = ptrtoint ptr %slot_cap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slot_cap.i, align 4
  %and.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %get_latch_status.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %call7.i.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %get_latch_status.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @get_latch_status, ptr %get_latch_status.i, align 8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %and6.i = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.end4.i.if.end14.sink.split.i_crit_edge

if.end4.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %if.end4.i
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port.i, align 4
  %hotplug_user_indicators.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %hotplug_user_indicators.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %bf.load.i = load i32, ptr %hotplug_user_indicators.i, align 2
  %24 = and i32 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool9.not.i = icmp eq i32 %24, 0
  br i1 %tobool9.not.i, label %if.else.i.if.end14.i_crit_edge, label %if.else.i.if.end14.sink.split.i_crit_edge

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.sink.split.i

if.else.i.if.end14.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %if.end4.i.if.end14.sink.split.i_crit_edge
  %pciehp_get_raw_indicator_status.sink.i = phi ptr [ @pciehp_get_attention_status, %if.end4.i.if.end14.sink.split.i_crit_edge ], [ @pciehp_get_raw_indicator_status, %if.else.i.if.end14.sink.split.i_crit_edge ]
  %pciehp_set_raw_indicator_status.sink.i = phi ptr [ @set_attention_status, %if.end4.i.if.end14.sink.split.i_crit_edge ], [ @pciehp_set_raw_indicator_status, %if.else.i.if.end14.sink.split.i_crit_edge ]
  %get_attention_status11.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %call7.i.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %get_attention_status11.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %pciehp_get_raw_indicator_status.sink.i, ptr %get_attention_status11.i, align 4
  %set_attention_status12.i = getelementptr inbounds %struct.hotplug_slot_ops, ptr %call7.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %set_attention_status12.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %pciehp_set_raw_indicator_status.sink.i, ptr %set_attention_status12.i, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end14.sink.split.i, %if.else.i.if.end14.i_crit_edge
  %hotplug_slot.i = getelementptr inbounds %struct.controller, ptr %call, i32 0, i32 15
  %27 = ptrtoint ptr %hotplug_slot.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.i, ptr %hotplug_slot.i, align 4
  %shr.i = lshr i32 %17, 19
  %call18.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 10, ptr noundef nonnull @.str.27, i32 noundef %shr.i) #7
  %28 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call, align 4
  %port21.i = getelementptr inbounds %struct.pcie_device, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %port21.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port21.i, align 4
  %subordinate.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %subordinate.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %subordinate.i, align 4
  %call23.i = call i32 @__pci_hp_initialize(ptr noundef %hotplug_slot.i, ptr noundef %33, i32 noundef 0, ptr noundef nonnull %name.i, ptr noundef null, ptr noundef nonnull @.str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %init_slot.exit.thread77, label %init_slot.exit

init_slot.exit.thread77:                          ; preds = %if.end14.i
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %name.i) #7
  %call31 = call i32 @pcie_init_notification(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end40, label %do.end36

init_slot.exit:                                   ; preds = %if.end14.i
  %34 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call, align 4
  %port27.i = getelementptr inbounds %struct.pcie_device, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %port27.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port27.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28, i32 noundef %call23.i) #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %name.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call23.i)
  %cond = icmp eq i32 %call23.i, -16
  br i1 %cond, label %do.end20, label %init_slot.exit.do.end25_crit_edge

init_slot.exit.do.end25_crit_edge:                ; preds = %init_slot.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

do.end20:                                         ; preds = %init_slot.exit
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call, align 4
  %port21 = getelementptr inbounds %struct.pcie_device, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %port21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port21, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev22, ptr noundef nonnull @.str.15) #10
  br label %err_out_release_ctlr

do.end25:                                         ; preds = %init_slot.exit.do.end25_crit_edge, %init_slot.exit.thread
  %retval.0.i76 = phi i32 [ -12, %init_slot.exit.thread ], [ %call23.i, %init_slot.exit.do.end25_crit_edge ]
  %42 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call, align 4
  %port27 = getelementptr inbounds %struct.pcie_device, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %port27 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %port27, align 4
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.19, i32 noundef %retval.0.i76) #10
  br label %err_out_release_ctlr

do.end36:                                         ; preds = %init_slot.exit.thread77
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call, align 4
  %port38 = getelementptr inbounds %struct.pcie_device, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %port38 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %port38, align 4
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.22, i32 noundef %call31) #10
  br label %err_out_free_ctrl_slot

if.end40:                                         ; preds = %init_slot.exit.thread77
  %call41 = call i32 @pci_hp_add(ptr noundef %hotplug_slot.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end50, label %do.end46

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call, align 4
  %port48 = getelementptr inbounds %struct.pcie_device, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %port48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %port48, align 4
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.25, i32 noundef %call41) #10
  call void @pcie_shutdown_notification(ptr noundef nonnull %call) #7
  br label %err_out_free_ctrl_slot

if.end50:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @pciehp_check_presence(ptr noundef nonnull %call)
  br label %cleanup

err_out_free_ctrl_slot:                           ; preds = %do.end46, %do.end36
  call void @pci_hp_destroy(ptr noundef %hotplug_slot.i) #7
  %54 = ptrtoint ptr %hotplug_slot.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hotplug_slot.i, align 4
  call void @kfree(ptr noundef %55) #7
  br label %err_out_release_ctlr

err_out_release_ctlr:                             ; preds = %err_out_free_ctrl_slot, %do.end25, %do.end20
  call void @pciehp_release_ctrl(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %err_out_release_ctlr, %if.end50, %do.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %err_out_release_ctlr ], [ 0, %if.end50 ], [ -19, %do.end9 ], [ -19, %do.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pciehp_remove(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data.i = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data.i, align 4
  %hotplug_slot = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 15
  tail call void @pci_hp_del(ptr noundef %hotplug_slot) #7
  tail call void @pcie_shutdown_notification(ptr noundef %1) #7
  tail call void @pci_hp_destroy(ptr noundef %hotplug_slot) #7
  %2 = ptrtoint ptr %hotplug_slot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hotplug_slot, align 4
  tail call void @kfree(ptr noundef %3) #7
  tail call void @pciehp_release_ctrl(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pciehp_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call = tail call zeroext i1 @dev_pm_skip_suspend(ptr noundef %dev1) #7
  br i1 %call, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %call.i.i = tail call ptr @pci_find_host_bridge(ptr noundef %5) #7
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_native to i32))
  %6 = load i8, ptr @pcie_ports_native, align 1, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i, label %pme_is_native.exit.i, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

pme_is_native.exit.i:                             ; preds = %if.end
  %native_pme.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i.i, i32 0, i32 13
  %7 = ptrtoint ptr %native_pme.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i.i = load i16, ptr %native_pme.i.i, align 8
  %8 = and i16 %bf.load.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool1.i.not.i = icmp eq i16 %8, 0
  br i1 %tobool1.i.not.i, label %pme_is_native.exit.i.return_crit_edge, label %pme_is_native.exit.i.if.then.i_crit_edge

pme_is_native.exit.i.if.then.i_crit_edge:         ; preds = %pme_is_native.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

pme_is_native.exit.i.return_crit_edge:            ; preds = %pme_is_native.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then.i:                                        ; preds = %pme_is_native.exit.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %priv_data.i.i = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %priv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv_data.i.i, align 4
  tail call void @pcie_disable_interrupt(ptr noundef %10) #7
  br label %return

return:                                           ; preds = %if.then.i, %pme_is_native.exit.i.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pciehp_resume_noirq(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data.i = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %cmd_started = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %cmd_started to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %cmd_started, align 4
  %cmd_busy = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %cmd_busy to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %cmd_busy, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %cmd_busy, align 4
  %state = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %state, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %entry.if.end_crit_edge [
    i8 5, label %entry.if.then_crit_edge
    i8 2, label %entry.if.then_crit_edge10
  ]

entry.if.then_crit_edge10:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge10
  tail call void @pcie_clear_hotplug_events(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pciehp_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data.i = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data.i, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %call.i = tail call ptr @pci_find_host_bridge(ptr noundef %5) #7
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_native to i32))
  %6 = load i8, ptr @pcie_ports_native, align 1, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %pme_is_native.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

pme_is_native.exit:                               ; preds = %entry
  %native_pme.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 0, i32 13
  %7 = ptrtoint ptr %native_pme.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %native_pme.i, align 8
  %8 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool1.i.not = icmp eq i16 %8, 0
  br i1 %tobool1.i.not, label %pme_is_native.exit.if.end_crit_edge, label %pme_is_native.exit.if.then_crit_edge

pme_is_native.exit.if.then_crit_edge:             ; preds = %pme_is_native.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

pme_is_native.exit.if.end_crit_edge:              ; preds = %pme_is_native.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %pme_is_native.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @pcie_enable_interrupt(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %pme_is_native.exit.if.end_crit_edge
  tail call fastcc void @pciehp_check_presence(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pciehp_runtime_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port.i.i = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port.i.i, align 4
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %call.i.i = tail call ptr @pci_find_host_bridge(ptr noundef %3) #7
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_native to i32))
  %4 = load i8, ptr @pcie_ports_native, align 1, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i.i, label %pme_is_native.exit.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

pme_is_native.exit.i:                             ; preds = %entry
  %native_pme.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i.i, i32 0, i32 13
  %5 = ptrtoint ptr %native_pme.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i.i = load i16, ptr %native_pme.i.i, align 8
  %6 = and i16 %bf.load.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool1.i.not.i = icmp eq i16 %6, 0
  br i1 %tobool1.i.not.i, label %pme_is_native.exit.i.pciehp_disable_interrupt.exit_crit_edge, label %pme_is_native.exit.i.if.then.i_crit_edge

pme_is_native.exit.i.if.then.i_crit_edge:         ; preds = %pme_is_native.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

pme_is_native.exit.i.pciehp_disable_interrupt.exit_crit_edge: ; preds = %pme_is_native.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pciehp_disable_interrupt.exit

if.then.i:                                        ; preds = %pme_is_native.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %priv_data.i.i = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 3
  %7 = ptrtoint ptr %priv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv_data.i.i, align 4
  tail call void @pcie_disable_interrupt(ptr noundef %8) #7
  br label %pciehp_disable_interrupt.exit

pciehp_disable_interrupt.exit:                    ; preds = %if.then.i, %pme_is_native.exit.i.pciehp_disable_interrupt.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pciehp_runtime_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data.i = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %cmd_started = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %cmd_started to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %cmd_started, align 4
  %cmd_busy = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %cmd_busy to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %cmd_busy, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %cmd_busy, align 4
  %state = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %state, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %6, label %entry.if.end_crit_edge [
    i8 5, label %entry.land.lhs.true_crit_edge
    i8 2, label %entry.land.lhs.true_crit_edge15
  ]

entry.land.lhs.true_crit_edge15:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge15
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port.i, align 4
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 8
  %call.i = tail call ptr @pci_find_host_bridge(ptr noundef %11) #7
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_native to i32))
  %12 = load i8, ptr @pcie_ports_native, align 1, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %pme_is_native.exit, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

pme_is_native.exit:                               ; preds = %land.lhs.true
  %native_pme.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 0, i32 13
  %13 = ptrtoint ptr %native_pme.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i = load i16, ptr %native_pme.i, align 8
  %14 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool1.i.not = icmp eq i16 %14, 0
  br i1 %tobool1.i.not, label %pme_is_native.exit.if.end_crit_edge, label %pme_is_native.exit.if.then_crit_edge

pme_is_native.exit.if.then_crit_edge:             ; preds = %pme_is_native.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

pme_is_native.exit.if.end_crit_edge:              ; preds = %pme_is_native.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %pme_is_native.exit.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  tail call void @pcie_clear_hotplug_events(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %pme_is_native.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv_data.i, align 4
  %port.i.i = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 1
  %17 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port.i.i, align 4
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i.i, align 8
  %call.i.i = tail call ptr @pci_find_host_bridge(ptr noundef %20) #7
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_native to i32))
  %21 = load i8, ptr @pcie_ports_native, align 1, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i, label %pme_is_native.exit.i, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

pme_is_native.exit.i:                             ; preds = %if.end
  %native_pme.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i.i, i32 0, i32 13
  %22 = ptrtoint ptr %native_pme.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i.i = load i16, ptr %native_pme.i.i, align 8
  %23 = and i16 %bf.load.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool1.i.not.i = icmp eq i16 %23, 0
  br i1 %tobool1.i.not.i, label %pme_is_native.exit.i.pciehp_resume.exit_crit_edge, label %pme_is_native.exit.i.if.then.i_crit_edge

pme_is_native.exit.i.if.then.i_crit_edge:         ; preds = %pme_is_native.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

pme_is_native.exit.i.pciehp_resume.exit_crit_edge: ; preds = %pme_is_native.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pciehp_resume.exit

if.then.i:                                        ; preds = %pme_is_native.exit.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  tail call void @pcie_enable_interrupt(ptr noundef %16) #7
  br label %pciehp_resume.exit

pciehp_resume.exit:                               ; preds = %if.then.i, %pme_is_native.exit.i.pciehp_resume.exit_crit_edge
  tail call fastcc void @pciehp_check_presence(ptr noundef %16) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pciehp_slot_reset(ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcie_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_init_notification(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_hp_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pciehp_check_presence(ptr noundef %ctrl) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_lock = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 16
  %depth = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 17
  %0 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %depth, align 4
  tail call void @down_read_nested(ptr noundef %reset_lock, i32 noundef %1) #7
  %state_lock = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #7
  %call = tail call i32 @pciehp_card_present_or_link_active(ptr noundef %ctrl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false7

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 12
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %switch = icmp ult i8 %3, 2
  br i1 %switch, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false7:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true8, label %lor.lhs.false7.if.end_crit_edge

lor.lhs.false7.if.end_crit_edge:                  ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true8:                                   ; preds = %lor.lhs.false7
  %state9 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 12
  %4 = ptrtoint ptr %state9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state9, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %5, label %land.lhs.true8.if.end_crit_edge [
    i8 5, label %land.lhs.true8.if.then_crit_edge
    i8 2, label %land.lhs.true8.if.then_crit_edge32
  ]

land.lhs.true8.if.then_crit_edge32:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true8.if.then_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true8.if.then_crit_edge, %land.lhs.true8.if.then_crit_edge32, %land.lhs.true.if.then_crit_edge
  tail call void @pciehp_request(ptr noundef %ctrl, i32 noundef 8) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true8.if.end_crit_edge, %lor.lhs.false7.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_lock) #7
  tail call void @up_read(ptr noundef %reset_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_shutdown_notification(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pciehp_release_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pciehp_sysfs_enable_slot(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pciehp_sysfs_disable_slot(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_power_status(ptr noundef %hotplug_slot, ptr noundef %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -376
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  tail call void @pci_config_pm_runtime_get(ptr noundef %3) #7
  tail call void @pciehp_get_power_status(ptr noundef %add.ptr.i, ptr noundef %value) #7
  tail call void @pci_config_pm_runtime_put(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_adapter_status(ptr noundef %hotplug_slot, ptr nocapture noundef writeonly %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -376
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  tail call void @pci_config_pm_runtime_get(ptr noundef %3) #7
  %call1 = tail call i32 @pciehp_card_present_or_link_active(ptr noundef %add.ptr.i) #7
  tail call void @pci_config_pm_runtime_put(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %call1 to i8
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %value, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pciehp_reset_slot(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_latch_status(ptr noundef %hotplug_slot, ptr noundef %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -376
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  tail call void @pci_config_pm_runtime_get(ptr noundef %3) #7
  tail call void @pciehp_get_latch_status(ptr noundef %add.ptr.i, ptr noundef %value) #7
  tail call void @pci_config_pm_runtime_put(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pciehp_get_attention_status(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_attention_status(ptr noundef %hotplug_slot, i8 noundef zeroext %status) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -376
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status)
  %tobool.not = icmp eq i8 %status, 0
  %conv = zext i8 %status to i32
  %shl = shl nuw nsw i32 %conv, 6
  %phi.cast = and i32 %shl, 192
  %status.addr.0 = select i1 %tobool.not, i32 192, i32 %phi.cast
  tail call void @pci_config_pm_runtime_get(ptr noundef %3) #7
  tail call void @pciehp_set_indicators(ptr noundef %add.ptr.i, i32 noundef -1, i32 noundef %status.addr.0) #7
  tail call void @pci_config_pm_runtime_put(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pciehp_get_raw_indicator_status(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pciehp_set_raw_indicator_status(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_hp_initialize(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_config_pm_runtime_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pciehp_get_power_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_config_pm_runtime_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pciehp_card_present_or_link_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pciehp_get_latch_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pciehp_set_indicators(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pciehp_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_hp_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_hp_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dev_pm_skip_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_disable_interrupt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_host_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_clear_hotplug_events(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_enable_interrupt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !25, !26, !27, !29, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__param_pciehp_poll_mode, !1, !"__param_pciehp_poll_mode", i1 false, i1 false}
!1 = !{!"../drivers/pci/hotplug/pciehp_core.c", i32 40, i32 1}
!2 = !{ptr @__UNIQUE_ID_pciehp_poll_modetype236, !1, !"__UNIQUE_ID_pciehp_poll_modetype236", i1 false, i1 false}
!3 = !{ptr @__param_pciehp_poll_time, !4, !"__param_pciehp_poll_time", i1 false, i1 false}
!4 = !{!"../drivers/pci/hotplug/pciehp_core.c", i32 41, i32 1}
!5 = !{ptr @__UNIQUE_ID_pciehp_poll_timetype237, !4, !"__UNIQUE_ID_pciehp_poll_timetype237", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_pciehp_poll_mode238, !7, !"__UNIQUE_ID_pciehp_poll_mode238", i1 false, i1 false}
!7 = !{!"../drivers/pci/hotplug/pciehp_core.c", i32 42, i32 1}
!8 = !{ptr @__UNIQUE_ID_pciehp_poll_time239, !9, !"__UNIQUE_ID_pciehp_poll_time239", i1 false, i1 false}
!9 = !{!"../drivers/pci/hotplug/pciehp_core.c", i32 43, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/hotplug/pciehp_core.c", i32 363, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @pcie_hp_init.__UNIQUE_ID_ddebug240, !11, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!16 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pci/hotplug/pciehp_core.c", i32 365, i32 3}
!19 = !{ptr @pcie_hp_init.__UNIQUE_ID_ddebug241, !18, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!20 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @pciehp_poll_mode, !22, !"pciehp_poll_mode", i1 false, i1 false}
!22 = !{!"../drivers/pci/hotplug/pciehp_core.c", i32 33, i32 6}
!23 = !{ptr @pciehp_poll_time, !24, !"pciehp_poll_time", i1 false, i1 false}
!24 = !{!"../drivers/pci/hotplug/pciehp_core.c", i32 34, i32 5}
!25 = !{ptr @__param_str_pciehp_poll_mode, !1, !"__param_str_pciehp_poll_mode", i1 false, i1 false}
!26 = !{ptr @__param_str_pciehp_poll_time, !4, !"__param_str_pciehp_poll_time", i1 false, i1 false}
!27 = !{ptr @hpdriver_portdrv, !28, !"hpdriver_portdrv", i1 false, i1 false}
!28 = !{!"../drivers/pci/hotplug/pciehp_core.c", i32 337, i32 40}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pci/hotplug/pciehp_core.c", i32 194, i32 3}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @pciehp_probe._entry, !30, !"_entry", i1 false, i1 false}
!35 = !{ptr @pciehp_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pci/hotplug/pciehp_core.c", i32 201, i32 3}
!38 = !{ptr @pciehp_probe._entry.11, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @pciehp_probe._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pci/hotplug/pciehp_core.c", i32 210, i32 4}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @pciehp_probe._entry.14, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @pciehp_probe._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pci/hotplug/pciehp_core.c", i32 212, i32 4}
!47 = !{ptr @pciehp_probe._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @pciehp_probe._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pci/hotplug/pciehp_core.c", i32 219, i32 3}
!51 = !{ptr @pciehp_probe._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @pciehp_probe._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pci/hotplug/pciehp_core.c", i32 226, i32 3}
!55 = !{ptr @pciehp_probe._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @pciehp_probe._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pci/hotplug/pciehp_core.c", i32 78, i32 33}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pci/hotplug/pciehp_core.c", i32 83, i32 3}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @init_slot._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @init_slot._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2148722132, i64 2148722137, i64 2148722150, i64 2148722194, i64 2148722228, i64 2148722249}
!74 = !{i8 0, i8 2}
