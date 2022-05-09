; ModuleID = '/llk/IR_all_yes/drivers/net/can/sja1000/f81601.c_pt.bc'
source_filename = "../drivers/net/can/sja1000/f81601.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.145, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%union.anon.145 = type { ptr }
%struct.f81601_pci_card = type { ptr, %struct.spinlock, ptr, [2 x ptr] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.144 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sja1000_priv = type { %struct.can_priv, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i16, i8, i8 }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }

@__param_str_internal_clk = internal constant [20 x i8] c"f81601.internal_clk\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@internal_clk = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_internal_clk = internal constant %struct.kernel_param { ptr @__param_str_internal_clk, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @internal_clk } }, section "__param", align 4
@__UNIQUE_ID_internal_clktype461 = internal constant [34 x i8] c"f81601.parmtype=internal_clk:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_internal_clk462 = internal constant [66 x i8] c"f81601.parm=internal_clk:Use internal clock, default true (24MHz)\00", section ".modinfo", align 1
@__param_str_external_clk = internal constant [20 x i8] c"f81601.external_clk\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@external_clk = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_external_clk = internal constant %struct.kernel_param { ptr @__param_str_external_clk, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @external_clk } }, section "__param", align 4
@__UNIQUE_ID_external_clktype463 = internal constant [34 x i8] c"f81601.parmtype=external_clk:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_external_clk464 = internal constant [67 x i8] c"f81601.parm=external_clk:External clock when internal_clk disabled\00", section ".modinfo", align 1
@__UNIQUE_ID_description465 = internal constant [65 x i8] c"f81601.description=Fintek F81601 PCIE to 2 CANBUS adaptor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author466 = internal constant [52 x i8] c"f81601.author=Peter Hong <peter_hong@fintek.com.tw>\00", section ".modinfo", align 1
@__UNIQUE_ID_file467 = internal constant [43 x i8] c"f81601.file=drivers/net/can/sja1000/f81601\00", section ".modinfo", align 1
@__UNIQUE_ID_license468 = internal constant [22 x i8] c"f81601.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_f81601__469_211_f81601_pci_driver_init6 = internal global ptr @f81601_pci_driver_init, section ".initcall6.init", align 4
@f81601_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @f81601_pci_tbl, ptr @f81601_pci_probe, ptr @f81601_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_f81601_pci_driver_exit = internal global ptr @f81601_pci_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"f81601\00", [25 x i8] zeroinitializer }, align 32
@f81601_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 7209, i32 5891, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@f81601_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 104, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable PCI device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"f81601_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/net/can/sja1000/f81601.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@f81601_pci_probe._entry_ptr = internal global ptr @f81601_pci_probe._entry, section ".printk_index", align 4
@f81601_pci_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 109, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Detected card at slot #%i\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@f81601_pci_probe._entry_ptr.9 = internal global ptr @f81601_pci_probe._entry.6, section ".printk_index", align 4
@f81601_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&card->lock\00", [20 x i8] zeroinitializer }, align 32
@f81601_pci_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 127, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"F81601 running with internal clock: 24Mhz\0A\00", [53 x i8] zeroinitializer }, align 32
@f81601_pci_probe._entry_ptr.13 = internal global ptr @f81601_pci_probe._entry.11, section ".printk_index", align 4
@f81601_pci_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 131, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"F81601 running with external clock: %dMhz\0A\00", [53 x i8] zeroinitializer }, align 32
@f81601_pci_probe._entry_ptr.16 = internal global ptr @f81601_pci_probe._entry.14, section ".printk_index", align 4
@f81601_pci_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 140, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Failed to remap BAR\0A\00", [39 x i8] zeroinitializer }, align 32
@f81601_pci_probe._entry_ptr.19 = internal global ptr @f81601_pci_probe._entry.17, section ".printk_index", align 4
@f81601_pci_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 181, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Registering device failed: %x\0A\00", [61 x i8] zeroinitializer }, align 32
@f81601_pci_probe._entry_ptr.22 = internal global ptr @f81601_pci_probe._entry.20, section ".printk_index", align 4
@f81601_pci_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 188, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Channel #%d, %s at 0x%p, irq %d\0A\00", [63 x i8] zeroinitializer }, align 32
@f81601_pci_probe._entry_ptr.25 = internal global ptr @f81601_pci_probe._entry.23, section ".printk_index", align 4
@f81601_pci_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 194, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: failed: %d. Cleaning Up.\0A\00", [34 x i8] zeroinitializer }, align 32
@f81601_pci_probe._entry_ptr.28 = internal global ptr @f81601_pci_probe._entry.26, section ".printk_index", align 4
@f81601_pci_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 84, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: Removing %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"f81601_pci_remove\00", [46 x i8] zeroinitializer }, align 32
@f81601_pci_remove._entry_ptr = internal global ptr @f81601_pci_remove._entry, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"internal_clk\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 48, i32 13 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"external_clk\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 52, i32 21 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"f81601_pci_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 200, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 211, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"f81601_pci_tbl\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 41, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 104, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 108, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 116, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 126, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 129, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 140, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 179, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 187, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 194, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [36 x i8] c"../drivers/net/can/sja1000/f81601.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 84, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author466, ptr @__UNIQUE_ID_description465, ptr @__UNIQUE_ID_external_clk464, ptr @__UNIQUE_ID_external_clktype463, ptr @__UNIQUE_ID_file467, ptr @__UNIQUE_ID_internal_clk462, ptr @__UNIQUE_ID_internal_clktype461, ptr @__UNIQUE_ID_license468, ptr @__exitcall_f81601_pci_driver_exit, ptr @__initcall__kmod_f81601__469_211_f81601_pci_driver_init6, ptr @__param_external_clk, ptr @__param_internal_clk, ptr @f81601_pci_driver_exit, ptr @f81601_pci_probe._entry, ptr @f81601_pci_probe._entry.11, ptr @f81601_pci_probe._entry.14, ptr @f81601_pci_probe._entry.17, ptr @f81601_pci_probe._entry.20, ptr @f81601_pci_probe._entry.23, ptr @f81601_pci_probe._entry.26, ptr @f81601_pci_probe._entry.6, ptr @f81601_pci_probe._entry_ptr, ptr @f81601_pci_probe._entry_ptr.13, ptr @f81601_pci_probe._entry_ptr.16, ptr @f81601_pci_probe._entry_ptr.19, ptr @f81601_pci_probe._entry_ptr.22, ptr @f81601_pci_probe._entry_ptr.25, ptr @f81601_pci_probe._entry_ptr.28, ptr @f81601_pci_probe._entry_ptr.9, ptr @f81601_pci_remove._entry, ptr @f81601_pci_remove._entry_ptr, ptr @internal_clk, ptr @external_clk, ptr @f81601_pci_driver, ptr @.str, ptr @f81601_pci_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @f81601_pci_probe.__key, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @internal_clk to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @external_clk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81601_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81601_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81601_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81601_pci_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81601_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81601_pci_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81601_pci_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81601_pci_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81601_pci_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81601_pci_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81601_pci_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81601_pci_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @f81601_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @f81601_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @f81601_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @f81601_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f81601_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #5
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %cmp, label %do.end, label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

do.end4:                                          ; preds = %entry
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %0 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %1, 3
  %and = and i32 %shr, 31
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %and) #8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 60, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end4.cleanup_crit_edge, label %if.end9

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %do.end4
  %dev10 = getelementptr inbounds %struct.f81601_pci_card, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %dev10, align 4
  %lock = getelementptr inbounds %struct.f81601_pci_card, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @f81601_pci_probe.__key, i16 noundef signext 3) #5
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -29, ptr %tmp, align 1
  %5 = load i8, ptr @internal_clk, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool15.not = icmp eq i8 %5, 0
  br i1 %tobool15.not, label %do.end24, label %if.then16

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -17, ptr %tmp, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.12) #8
  br label %if.end26

do.end24:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %7 = load i32, ptr @external_clk, align 4
  %div = udiv i32 %7, 1000000
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %div) #8
  br label %if.end26

if.end26:                                         ; preds = %do.end24, %if.then16
  %8 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tmp, align 1
  %call27 = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 521, i8 noundef zeroext %9) #5
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %10 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp28 = icmp eq i32 %11, 0
  br i1 %cmp28, label %if.end26.cond.end_crit_edge, label %cond.false

if.end26.cond.end_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %12 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resource, align 8
  %sub = add i32 %11, 1
  %add = sub i32 %sub, %13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end26.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end26.cond.end_crit_edge ]
  %call35 = tail call ptr @pcim_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef %cond) #5
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call35, ptr %call.i, align 4
  %tobool37.not = icmp eq ptr %call35, null
  br i1 %tobool37.not, label %if.then38, label %if.end43

if.then38:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2) #8
  br label %do.end88

if.end43:                                         ; preds = %cond.end
  %call44 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 522, ptr noundef nonnull %tmp) #5
  %15 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tmp, align 1
  %17 = and i8 %16, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool47.not = icmp eq i8 %17, 0
  %spec.select = select i1 %tobool47.not, i32 1, i32 2
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  br label %for.body

for.body:                                         ; preds = %if.end78.for.body_crit_edge, %if.end43
  %i.0153 = phi i32 [ 0, %if.end43 ], [ %inc, %if.end78.for.body_crit_edge ]
  %call52 = call ptr @alloc_sja1000dev(i32 noundef 0) #5
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %for.body.do.end88_crit_edge, label %if.end55

for.body.do.end88_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end88

if.end55:                                         ; preds = %for.body
  %priv57 = getelementptr i8, ptr %call52, i32 2636
  %18 = ptrtoint ptr %priv57 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %priv57, align 4
  %irq_flags = getelementptr i8, ptr %call52, i32 2648
  %19 = ptrtoint ptr %irq_flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 128, ptr %irq_flags, align 4
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %mul = shl i32 %i.0153, 7
  %add.ptr = getelementptr i8, ptr %21, i32 %mul
  %reg_base = getelementptr i8, ptr %call52, i32 2644
  %22 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr, ptr %reg_base, align 4
  %read_reg = getelementptr i8, ptr %call52, i32 2620
  %23 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @f81601_pci_read_reg, ptr %read_reg, align 4
  %write_reg = getelementptr i8, ptr %call52, i32 2624
  %24 = ptrtoint ptr %write_reg to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @f81601_pci_write_reg, ptr %write_reg, align 4
  %25 = load i8, ptr @internal_clk, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool59.not = icmp eq i8 %25, 0
  br i1 %tobool59.not, label %if.else61, label %if.end55.if.end66_crit_edge

if.end55.if.end66_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.else61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %26 = load i32, ptr @external_clk, align 4
  %div62151 = lshr i32 %26, 1
  br label %if.end66

if.end66:                                         ; preds = %if.else61, %if.end55.if.end66_crit_edge
  %.sink = phi i32 [ %div62151, %if.else61 ], [ 12000000, %if.end55.if.end66_crit_edge ]
  %27 = getelementptr i8, ptr %call52, i32 2440
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %27, align 4
  %ocr = getelementptr i8, ptr %call52, i32 2698
  %29 = ptrtoint ptr %ocr to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -40, ptr %ocr, align 2
  %cdr = getelementptr i8, ptr %call52, i32 2699
  %30 = ptrtoint ptr %cdr to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 64, ptr %cdr, align 1
  %parent = getelementptr inbounds %struct.net_device, ptr %call52, i32 0, i32 133, i32 1
  %31 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev1, ptr %parent, align 8
  %conv69 = trunc i32 %i.0153 to i16
  %dev_id = getelementptr inbounds %struct.net_device, ptr %call52, i32 0, i32 60
  %32 = ptrtoint ptr %dev_id to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv69, ptr %dev_id, align 2
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  %irq70 = getelementptr inbounds %struct.net_device, ptr %call52, i32 0, i32 64
  %35 = ptrtoint ptr %irq70 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %irq70, align 4
  %call71 = call i32 @register_sja1000dev(ptr noundef nonnull %call52) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end78, label %do.end76

do.end76:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef %call71) #8
  call void @free_sja1000dev(ptr noundef nonnull %call52) #5
  br label %do.end88

if.end78:                                         ; preds = %if.end66
  %arrayidx79 = getelementptr %struct.f81601_pci_card, ptr %call.i, i32 0, i32 3, i32 %i.0153
  %36 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call52, ptr %arrayidx79, align 4
  %37 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_base, align 4
  %39 = ptrtoint ptr %irq70 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq70, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %i.0153, ptr noundef nonnull %call52, ptr noundef %38, i32 noundef %40) #8
  %inc = add nuw nsw i32 %i.0153, 1
  %exitcond.not = icmp eq i32 %inc, %spec.select
  br i1 %exitcond.not, label %if.end78.cleanup_crit_edge, label %if.end78.for.body_crit_edge

if.end78.for.body_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end88:                                         ; preds = %do.end76, %for.body.do.end88_crit_edge, %if.then38
  %err.0 = phi i32 [ %call71, %do.end76 ], [ -12, %if.then38 ], [ -12, %for.body.do.end88_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.2, i32 noundef %err.0) #8
  call void @f81601_pci_remove(ptr noundef %pdev)
  br label %cleanup

cleanup:                                          ; preds = %do.end88, %if.end78.cleanup_crit_edge, %do.end4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %err.0, %do.end88 ], [ -12, %do.end4.cleanup_crit_edge ], [ 0, %if.end78.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f81601_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %arrayidx = getelementptr %struct.f81601_pci_card, ptr %1, i32 0, i32 3, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %do.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull %3) #8
  tail call void @unregister_sja1000dev(ptr noundef nonnull %3) #5
  tail call void @free_sja1000dev(ptr noundef nonnull %3) #5
  br label %for.inc

for.inc:                                          ; preds = %do.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.f81601_pci_card, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %do.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

do.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull %5) #8
  tail call void @unregister_sja1000dev(ptr noundef nonnull %5) #5
  tail call void @free_sja1000dev(ptr noundef nonnull %5) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end.1, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_sja1000dev(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @f81601_pci_read_reg(ptr nocapture noundef readonly %priv, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %port
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f81601_pci_write_reg(ptr nocapture noundef readonly %priv, i32 noundef %port, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %lock = getelementptr inbounds %struct.f81601_pci_card, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %port
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #5, !srcloc !89
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_sja1000dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_sja1000dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sja1000dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !22, !23, !25, !26, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__param_internal_clk, !1, !"__param_internal_clk", i1 false, i1 false}
!1 = !{!"../drivers/net/can/sja1000/f81601.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_internal_clktype461, !1, !"__UNIQUE_ID_internal_clktype461", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_internal_clk462, !4, !"__UNIQUE_ID_internal_clk462", i1 false, i1 false}
!4 = !{!"../drivers/net/can/sja1000/f81601.c", i32 50, i32 1}
!5 = !{ptr @__param_external_clk, !6, !"__param_external_clk", i1 false, i1 false}
!6 = !{!"../drivers/net/can/sja1000/f81601.c", i32 53, i32 1}
!7 = !{ptr @__UNIQUE_ID_external_clktype463, !6, !"__UNIQUE_ID_external_clktype463", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_external_clk464, !9, !"__UNIQUE_ID_external_clk464", i1 false, i1 false}
!9 = !{!"../drivers/net/can/sja1000/f81601.c", i32 54, i32 1}
!10 = !{ptr @__UNIQUE_ID_description465, !11, !"__UNIQUE_ID_description465", i1 false, i1 false}
!11 = !{!"../drivers/net/can/sja1000/f81601.c", i32 207, i32 1}
!12 = !{ptr @__UNIQUE_ID_author466, !13, !"__UNIQUE_ID_author466", i1 false, i1 false}
!13 = !{!"../drivers/net/can/sja1000/f81601.c", i32 208, i32 1}
!14 = !{ptr @__UNIQUE_ID_file467, !15, !"__UNIQUE_ID_file467", i1 false, i1 false}
!15 = !{!"../drivers/net/can/sja1000/f81601.c", i32 209, i32 1}
!16 = !{ptr @__UNIQUE_ID_license468, !15, !"__UNIQUE_ID_license468", i1 false, i1 false}
!17 = !{ptr @__initcall__kmod_f81601__469_211_f81601_pci_driver_init6, !18, !"__initcall__kmod_f81601__469_211_f81601_pci_driver_init6", i1 false, i1 false}
!18 = !{!"../drivers/net/can/sja1000/f81601.c", i32 211, i32 1}
!19 = !{ptr @__exitcall_f81601_pci_driver_exit, !18, !"__exitcall_f81601_pci_driver_exit", i1 false, i1 false}
!20 = !{ptr @external_clk, !21, !"external_clk", i1 false, i1 false}
!21 = !{!"../drivers/net/can/sja1000/f81601.c", i32 52, i32 21}
!22 = !{ptr @__param_str_internal_clk, !1, !"__param_str_internal_clk", i1 false, i1 false}
!23 = !{ptr @internal_clk, !24, !"internal_clk", i1 false, i1 false}
!24 = !{!"../drivers/net/can/sja1000/f81601.c", i32 48, i32 13}
!25 = !{ptr @__param_str_external_clk, !6, !"__param_str_external_clk", i1 false, i1 false}
!26 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @f81601_pci_driver, !28, !"f81601_pci_driver", i1 false, i1 false}
!28 = !{!"../drivers/net/can/sja1000/f81601.c", i32 200, i32 26}
!29 = !{ptr @f81601_pci_tbl, !30, !"f81601_pci_tbl", i1 false, i1 false}
!30 = !{!"../drivers/net/can/sja1000/f81601.c", i32 41, i32 35}
!31 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/can/sja1000/f81601.c", i32 104, i32 3}
!33 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @f81601_pci_probe._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @f81601_pci_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/can/sja1000/f81601.c", i32 108, i32 2}
!41 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @f81601_pci_probe._entry.6, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @f81601_pci_probe._entry_ptr.9, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @f81601_pci_probe.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/net/can/sja1000/f81601.c", i32 116, i32 2}
!46 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/can/sja1000/f81601.c", i32 126, i32 3}
!49 = !{ptr @f81601_pci_probe._entry.11, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @f81601_pci_probe._entry_ptr.13, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/can/sja1000/f81601.c", i32 129, i32 3}
!53 = !{ptr @f81601_pci_probe._entry.14, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @f81601_pci_probe._entry_ptr.16, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/can/sja1000/f81601.c", i32 140, i32 3}
!57 = !{ptr @f81601_pci_probe._entry.17, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @f81601_pci_probe._entry_ptr.19, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/can/sja1000/f81601.c", i32 179, i32 4}
!61 = !{ptr @f81601_pci_probe._entry.20, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @f81601_pci_probe._entry_ptr.22, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/can/sja1000/f81601.c", i32 187, i32 3}
!65 = !{ptr @f81601_pci_probe._entry.23, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @f81601_pci_probe._entry_ptr.25, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/can/sja1000/f81601.c", i32 194, i32 2}
!69 = !{ptr @f81601_pci_probe._entry.26, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @f81601_pci_probe._entry_ptr.28, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/can/sja1000/f81601.c", i32 84, i32 3}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @f81601_pci_remove._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @f81601_pci_remove._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i8 0, i8 2}
!86 = !{i64 4619415}
!87 = !{i64 2157237025}
!88 = !{i64 2157237597}
!89 = !{i64 4619020}
!90 = !{i64 2157237880}
