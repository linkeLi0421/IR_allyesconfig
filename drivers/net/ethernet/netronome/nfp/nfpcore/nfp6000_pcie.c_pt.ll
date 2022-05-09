; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nfp_cpp_operations = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.nfp6000_pcie = type { ptr, ptr, %struct.spinlock, i32, [24 x %struct.nfp_bar], %struct.wait_queue_head, %struct.anon.72, %struct.anon.73 }
%struct.nfp_bar = type { ptr, i32, i64, i64, i32, i32, %struct.atomic_t, ptr, ptr }
%struct.anon.72 = type { ptr, ptr, [4 x ptr] }
%struct.anon.73 = type { %struct.mutex, i8, i8, ptr, [4 x %struct.anon.74] }
%struct.anon.74 = type { ptr, i32, [4 x i32] }
%struct.nfp6000_area_priv = type { %struct.atomic_t, ptr, i32, i32, i32, i32, i64, %struct.anon.77, i32, ptr, i32, %struct.resource }
%struct.anon.77 = type { i32, i32, i32 }
%struct.nfp6000_explicit_priv = type { ptr, %struct.anon.78, i32, ptr, ptr }
%struct.anon.78 = type { i32, i32 }
%struct.nfp_cpp_explicit_command = type { i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@nfp_cpp_from_nfp6000_pcie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1320, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Netronome Flow Processor NFP4000/NFP5000/NFP6000 PCIe Card Probe\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nfp_cpp_from_nfp6000_pcie\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_cpp_from_nfp6000_pcie._entry_ptr = internal global ptr @nfp_cpp_from_nfp6000_pcie._entry, section ".printk_index", align 4
@nfp_cpp_from_nfp6000_pcie.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&nfp->bar_waiters\00", [46 x i8] zeroinitializer }, align 32
@nfp_cpp_from_nfp6000_pcie.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&nfp->bar_lock\00", [17 x i8] zeroinitializer }, align 32
@nfp_cpp_from_nfp6000_pcie._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1341, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Interface type %d is not the expected %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nfp_cpp_from_nfp6000_pcie._entry_ptr.11 = internal global ptr @nfp_cpp_from_nfp6000_pcie._entry.8, section ".printk_index", align 4
@nfp_cpp_from_nfp6000_pcie._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 1350, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Interface channel %d is not the expected %d\0A\00", [51 x i8] zeroinitializer }, align 32
@nfp_cpp_from_nfp6000_pcie._entry_ptr.14 = internal global ptr @nfp_cpp_from_nfp6000_pcie._entry.12, section ".printk_index", align 4
@nfp6000_pcie_ops = internal constant { %struct.nfp_cpp_operations, [44 x i8] } { %struct.nfp_cpp_operations { i32 88, ptr null, ptr @nfp6000_init, ptr @nfp6000_free, ptr @nfp6000_read_serial, ptr @nfp6000_get_interface, ptr @nfp6000_area_init, ptr @nfp6000_area_cleanup, ptr @nfp6000_area_acquire, ptr @nfp6000_area_release, ptr @nfp6000_area_resource, ptr @nfp6000_area_phys, ptr @nfp6000_area_iomem, ptr @nfp6000_area_read, ptr @nfp6000_area_write, i32 24, ptr @nfp6000_explicit_acquire, ptr @nfp6000_explicit_release, ptr @nfp6000_explicit_put, ptr @nfp6000_explicit_get, ptr @nfp6000_explicit_do }, [44 x i8] zeroinitializer }, align 32
@nfp_cpp_from_nfp6000_pcie._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 1365, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"NFP6000 PCI setup failed\0A\00", [38 x i8] zeroinitializer }, align 32
@nfp_cpp_from_nfp6000_pcie._entry_ptr.17 = internal global ptr @nfp_cpp_from_nfp6000_pcie._entry.15, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfp6000_get_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 1271, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"can't find PCIe Serial Number Capability\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfp6000_get_interface\00", [42 x i8] zeroinitializer }, align 32
@nfp6000_get_interface._entry_ptr = internal global ptr @nfp6000_get_interface._entry, section ".printk_index", align 4
@__const.enable_bars.barcfg_explicit = private unnamed_addr constant [4 x i32] [i32 -2147483648, i32 -1610612736, i32 -1073741824, i32 -536870912], align 4
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RESERVED BARs: \00", [16 x i8] zeroinitializer }, align 32
@enable_bars._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 597, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No usable BARs found!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable_bars\00", [20 x i8] zeroinitializer }, align 32
@enable_bars._entry_ptr = internal global ptr @enable_bars._entry, section ".printk_index", align 4
@enable_bars.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&nfp->expl.mutex\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"0.0: General/MSI-X SRAM, \00", [38 x i8] zeroinitializer }, align 32
@enable_bars._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.2, i32 639, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported device ID: %04hx!\0A\00", [33 x i8] zeroinitializer }, align 32
@enable_bars._entry_ptr.27 = internal global ptr @enable_bars._entry.25, section ".printk_index", align 4
@enable_bars._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.2, i32 657, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@enable_bars._entry_ptr.29 = internal global ptr @enable_bars._entry.28, section ".printk_index", align 4
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"0.1: PCIe XPB/MSI-X PBA, \00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0.%d: Explicit%d, \00", [45 x i8] zeroinitializer }, align 32
@enable_bars._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.2, i32 702, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%sfree: %d/%d\0A\00", [17 x i8] zeroinitializer }, align 32
@enable_bars._entry_ptr.34 = internal global ptr @enable_bars._entry.32, section ".printk_index", align 4
@nfp6000_read_serial._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.35, ptr @.str.2, i32 1254, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfp6000_read_serial\00", [44 x i8] zeroinitializer }, align 32
@nfp6000_read_serial._entry_ptr = internal global ptr @nfp6000_read_serial._entry, section ".printk_index", align 4
@nfp6000_area_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 865, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Can't ioremap() a %d byte region of BAR %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfp6000_area_acquire\00", [43 x i8] zeroinitializer }, align 32
@nfp6000_area_acquire._entry_ptr = internal global ptr @nfp6000_area_acquire._entry, section ".printk_index", align 4
@.str.38 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"No suitable BAR found for request tgt:0x%x act:0x%x tok:0x%x off:0x%llx size:%zd width:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@switch.table.nfp_cpp_from_nfp6000_pcie = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 4, i32 1, i32 4, i32 1, i32 4], [40 x i8] zeroinitializer }, align 32
@switch.table.nfp6000_area_acquire = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -1, i32 0], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 8]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 8]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32]
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1319, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1331, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1332, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1338, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1348, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"nfp6000_pcie_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1278, i32 40 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1365, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1271, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 569, i32 48 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 597, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 605, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 619, i32 36 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 638, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 656, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 664, i32 35 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 684, i32 7 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 702, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1254, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 864, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.165 = private constant [61 x i8] c"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 414, i32 6 }
@___asan_gen_.167 = private unnamed_addr constant [39 x i8] c"switch.table.nfp_cpp_from_nfp6000_pcie\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [34 x i8] c"switch.table.nfp6000_area_acquire\00", align 1
@llvm.compiler.used = appending global [54 x ptr] [ptr @enable_bars._entry, ptr @enable_bars._entry.25, ptr @enable_bars._entry.28, ptr @enable_bars._entry.32, ptr @enable_bars._entry_ptr, ptr @enable_bars._entry_ptr.27, ptr @enable_bars._entry_ptr.29, ptr @enable_bars._entry_ptr.34, ptr @nfp6000_area_acquire._entry, ptr @nfp6000_area_acquire._entry_ptr, ptr @nfp6000_get_interface._entry, ptr @nfp6000_get_interface._entry_ptr, ptr @nfp6000_read_serial._entry, ptr @nfp6000_read_serial._entry_ptr, ptr @nfp_cpp_from_nfp6000_pcie._entry, ptr @nfp_cpp_from_nfp6000_pcie._entry.12, ptr @nfp_cpp_from_nfp6000_pcie._entry.15, ptr @nfp_cpp_from_nfp6000_pcie._entry.8, ptr @nfp_cpp_from_nfp6000_pcie._entry_ptr, ptr @nfp_cpp_from_nfp6000_pcie._entry_ptr.11, ptr @nfp_cpp_from_nfp6000_pcie._entry_ptr.14, ptr @nfp_cpp_from_nfp6000_pcie._entry_ptr.17, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nfp_cpp_from_nfp6000_pcie.__key, ptr @.str.5, ptr @nfp_cpp_from_nfp6000_pcie.__key.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @nfp6000_pcie_ops, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @enable_bars.__key, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @switch.table.nfp_cpp_from_nfp6000_pcie, ptr @switch.table.nfp6000_area_acquire], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_from_nfp6000_pcie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_from_nfp6000_pcie.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_from_nfp6000_pcie.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_from_nfp6000_pcie._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_from_nfp6000_pcie._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp6000_pcie_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_from_nfp6000_pcie._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp6000_get_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_bars._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_bars.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_bars._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_bars._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_bars._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp6000_read_serial._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp6000_area_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nfp_cpp_from_nfp6000_pcie to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nfp6000_area_acquire to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_cpp_from_nfp6000_pcie(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  %status_msg.i = alloca [196 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str) #12
  tail call void @pcie_print_link_status(ptr noundef %pdev) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1480) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.do.end46_crit_edge, label %if.end

entry.do.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev2, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %call7.i.i, align 8
  %bar_waiters = getelementptr inbounds %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %bar_waiters, ptr noundef nonnull @.str.5, ptr noundef nonnull @nfp_cpp_from_nfp6000_pcie.__key) #9
  %bar_lock = getelementptr inbounds %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %bar_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @nfp_cpp_from_nfp6000_pcie.__key.6, i16 noundef signext 3) #9
  %call.i = tail call i64 @pci_get_dsn(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %tobool.not.i = icmp eq i64 %call.i, 0
  br i1 %tobool.not.i, label %nfp6000_get_interface.exit.thread, label %nfp6000_get_interface.exit

nfp6000_get_interface.exit.thread:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #12
  br label %do.end18

nfp6000_get_interface.exit:                       ; preds = %if.end
  %3 = trunc i64 %call.i to i32
  %conv.i = lshr i32 %3, 12
  %4 = and i32 %conv.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %if.end23, label %nfp6000_get_interface.exit.do.end18_crit_edge

nfp6000_get_interface.exit.do.end18_crit_edge:    ; preds = %nfp6000_get_interface.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

do.end18:                                         ; preds = %nfp6000_get_interface.exit.do.end18_crit_edge, %nfp6000_get_interface.exit.thread
  %and81 = phi i32 [ 15, %nfp6000_get_interface.exit.thread ], [ %4, %nfp6000_get_interface.exit.do.end18_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %and81, i32 noundef 1) #12
  br label %err_free_nfp

if.end23:                                         ; preds = %nfp6000_get_interface.exit
  %and26 = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and26)
  %cmp27.not = icmp eq i32 %and26, 255
  br i1 %cmp27.not, label %if.end37, label %do.end32

do.end32:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %and26, i32 noundef 255) #12
  br label %err_free_nfp

if.end37:                                         ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 196, ptr nonnull %status_msg.i) #9
  %5 = getelementptr inbounds i8, ptr %status_msg.i, i32 16
  %6 = call ptr @memset(ptr %5, i32 0, i32 180)
  %7 = call ptr @memcpy(ptr %status_msg.i, ptr @.str.20, i32 16)
  %bar5.i = getelementptr inbounds %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end37
  %bar.0404.i = phi ptr [ %bar5.i, %if.end37 ], [ %incdec.ptr14.i, %cleanup.i.for.body.i_crit_edge ]
  %i.0402.i = phi i32 [ 0, %if.end37 ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call7.i.i, align 8
  %10 = lshr i32 %i.0402.i, 2
  %mul.i = and i32 %10, 536870910
  %flags.i.i = getelementptr %struct.pci_dev, ptr %9, i32 0, i32 47, i32 %mul.i, i32 3
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i.i, align 4
  %and.i = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i72 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i72, label %if.then.i, label %if.end.i73

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.i = getelementptr %struct.nfp_bar, ptr %bar.0404.i, i32 -1
  br label %cleanup.i

if.end.i73:                                       ; preds = %for.body.i
  %arrayidx6.i = getelementptr %struct.pci_dev, ptr %9, i32 0, i32 47, i32 %mul.i
  %resource8.i = getelementptr inbounds %struct.nfp_bar, ptr %bar.0404.i, i32 0, i32 8
  %13 = ptrtoint ptr %resource8.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx6.i, ptr %resource8.i, align 8
  %barcfg.i = getelementptr inbounds %struct.nfp_bar, ptr %bar.0404.i, i32 0, i32 1
  %14 = ptrtoint ptr %barcfg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %barcfg.i, align 4
  %15 = ptrtoint ptr %bar.0404.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %bar.0404.i, align 8
  %index.i = getelementptr inbounds %struct.nfp_bar, ptr %bar.0404.i, i32 0, i32 5
  %16 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %i.0402.i, ptr %index.i, align 4
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call7.i.i, align 8
  %mul.i.i = and i32 %10, 62
  %end.i.i = getelementptr %struct.pci_dev, ptr %18, i32 0, i32 47, i32 %mul.i.i, i32 1
  %19 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i = icmp eq i32 %20, 0
  br i1 %cmp.i.i, label %if.end.i73.nfp_bar_resource_len.exit.i_crit_edge, label %cond.false.i.i

if.end.i73.nfp_bar_resource_len.exit.i_crit_edge: ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_bar_resource_len.exit.i

cond.false.i.i:                                   ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr %struct.pci_dev, ptr %18, i32 0, i32 47, i32 %mul.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 8
  %sub.i309.i = add i32 %20, 1
  %add.i.i = sub i32 %sub.i309.i, %22
  %phi.bo22.i.i = lshr i32 %add.i.i, 3
  br label %nfp_bar_resource_len.exit.i

nfp_bar_resource_len.exit.i:                      ; preds = %cond.false.i.i, %if.end.i73.nfp_bar_resource_len.exit.i_crit_edge
  %cond.i310.i = phi i32 [ %phi.bo22.i.i, %cond.false.i.i ], [ 0, %if.end.i73.nfp_bar_resource_len.exit.i_crit_edge ]
  %sub.i = add nsw i32 %cond.i310.i, -1
  %conv.i74 = zext i32 %sub.i to i64
  %mask.i = getelementptr inbounds %struct.nfp_bar, ptr %bar.0404.i, i32 0, i32 3
  %23 = ptrtoint ptr %mask.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv.i74, ptr %mask.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i.i = icmp eq i32 %sub.i, 0
  %24 = tail call i32 @llvm.ctlz.i32(i32 %sub.i, i1 true) #9, !range !81
  %sub.i.i = sub nuw nsw i32 32, %24
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %bitsize.i = getelementptr inbounds %struct.nfp_bar, ptr %bar.0404.i, i32 0, i32 4
  %25 = ptrtoint ptr %bitsize.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond.i.i, ptr %bitsize.i, align 8
  %base.i = getelementptr inbounds %struct.nfp_bar, ptr %bar.0404.i, i32 0, i32 2
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %base.i, align 8
  %iomem.i = getelementptr inbounds %struct.nfp_bar, ptr %bar.0404.i, i32 0, i32 7
  %27 = ptrtoint ptr %iomem.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %iomem.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %nfp_bar_resource_len.exit.i, %if.then.i
  %bar.1.i = phi ptr [ %bar.0404.i, %nfp_bar_resource_len.exit.i ], [ %incdec.ptr.i, %if.then.i ]
  %inc.i = add nuw nsw i32 %i.0402.i, 1
  %incdec.ptr14.i = getelementptr %struct.nfp_bar, ptr %bar.1.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %for.end.i, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i
  %add.ptr.i71 = getelementptr inbounds i8, ptr %status_msg.i, i32 15
  %add.ptr4.i = getelementptr inbounds i8, ptr %status_msg.i, i32 195
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr14.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %bar5.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 48
  %bars.i = getelementptr inbounds %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %bars.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub.ptr.div.i, ptr %bars.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %sub.ptr.sub.i)
  %cmp18.i = icmp slt i32 %sub.ptr.sub.i, 384
  br i1 %cmp18.i, label %do.end.i75, label %if.end21.i

do.end.i75:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.21) #12
  br label %enable_bars.exit.thread

if.end21.i:                                       ; preds = %for.end.i
  %expl.i = getelementptr inbounds %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %expl.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @enable_bars.__key) #9
  %31 = lshr i64 %call.i, 4
  %32 = trunc i64 %31 to i8
  %33 = and i8 %32, 48
  %conv30.i = or i8 %33, 64
  %master_id.i = getelementptr inbounds %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %master_id.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv30.i, ptr %master_id.i, align 8
  %signal_ref.i = getelementptr inbounds %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 7, i32 2
  %35 = ptrtoint ptr %signal_ref.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 16, ptr %signal_ref.i, align 1
  %36 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bar5.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %index.i311.i = getelementptr inbounds %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 5
  %40 = ptrtoint ptr %index.i311.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index.i311.i, align 4
  %div.i312.i = sdiv i32 %41, 8
  %mul.i313.i = shl nsw i32 %div.i312.i, 1
  %end.i314.i = getelementptr %struct.pci_dev, ptr %39, i32 0, i32 47, i32 %mul.i313.i, i32 1
  %42 = ptrtoint ptr %end.i314.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %end.i314.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i315.i = icmp eq i32 %43, 0
  br i1 %cmp.i315.i, label %if.end21.i.if.end43.i_crit_edge, label %nfp_bar_resource_len.exit322.i

if.end21.i.if.end43.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

nfp_bar_resource_len.exit322.i:                   ; preds = %if.end21.i
  %arrayidx.i316.i = getelementptr %struct.pci_dev, ptr %39, i32 0, i32 47, i32 %mul.i313.i
  %44 = ptrtoint ptr %arrayidx.i316.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i316.i, align 8
  %sub.i317.i = add i32 %43, 1
  %add.i318.i = sub i32 %sub.i317.i, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %add.i318.i)
  %cmp36.i = icmp ugt i32 %add.i318.i, 4194303
  br i1 %cmp36.i, label %nfp_bar_resource_len.exit340.i, label %nfp_bar_resource_len.exit322.i.if.end43.i_crit_edge

nfp_bar_resource_len.exit322.i.if.end43.i_crit_edge: ; preds = %nfp_bar_resource_len.exit322.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

nfp_bar_resource_len.exit340.i:                   ; preds = %nfp_bar_resource_len.exit322.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo22.i.i.i = lshr i32 %add.i318.i, 3
  %and.i327.i = and i32 %41, 7
  %mul2.i.i = mul nuw i32 %phi.bo22.i.i.i, %and.i327.i
  %add.i328.i = add i32 %mul2.i.i, %45
  %call41.i = tail call ptr @ioremap(i32 noundef %add.i328.i, i32 noundef %phi.bo22.i.i.i) #9
  %iomem42.i = getelementptr inbounds %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 7
  %46 = ptrtoint ptr %iomem42.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call41.i, ptr %iomem42.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %nfp_bar_resource_len.exit340.i, %nfp_bar_resource_len.exit322.i.if.end43.i_crit_edge, %if.end21.i.if.end43.i_crit_edge
  %iomem44.i = getelementptr inbounds %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 7
  %47 = ptrtoint ptr %iomem44.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iomem44.i, align 4
  %tobool45.not.i = icmp eq ptr %48, null
  br i1 %tobool45.not.i, label %if.end43.i.if.end85.i_crit_edge, label %if.then46.i

if.end43.i.if.end85.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i

if.then46.i:                                      ; preds = %if.end43.i
  %call50.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i71, i32 noundef 180, ptr noundef nonnull @.str.24) #9
  %add.ptr51.i = getelementptr i8, ptr %add.ptr.i71, i32 %call50.i
  %refcnt.i = getelementptr inbounds %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 6
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #9
  %49 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #9, !srcloc !82
  %dec.i = add nsw i32 %sub.ptr.div.i, -1
  %50 = ptrtoint ptr %index.i311.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %index.i311.i, align 4
  %iomem.i.i = getelementptr inbounds %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 6
  %52 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iomem.i.i, align 4
  %tobool.not.i342.i = icmp eq ptr %53, null
  %mul11.i.i = shl i32 %51, 2
  br i1 %tobool.not.i342.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  call void @arm_heavy_mb() #9
  %54 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 %mul11.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 96) #9, !srcloc !84
  %56 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %57, i32 %mul11.i.i
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #9, !srcloc !85
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !86
  br label %nfp6000_bar_write.exit.i

if.else.i.i:                                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #11
  %add12.i.i = add i32 %mul11.i.i, 1024
  %59 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call7.i.i, align 8
  %call13.i.i = call i32 @pci_write_config_dword(ptr noundef %60, i32 noundef %add12.i.i, i32 noundef 1610612736) #9
  br label %nfp6000_bar_write.exit.i

nfp6000_bar_write.exit.i:                         ; preds = %if.else.i.i, %if.then.i.i
  %barcfg.i.i = getelementptr inbounds %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %61 = ptrtoint ptr %barcfg.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1610612736, ptr %barcfg.i.i, align 4
  %62 = ptrtoint ptr %iomem44.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %iomem44.i, align 4
  %add.ptr55.i = getelementptr i8, ptr %63, i32 4096
  %data.i = getelementptr inbounds %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 7, i32 3
  %64 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr55.i, ptr %data.i, align 4
  %65 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call7.i.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %device.i, align 2
  %conv58.i = zext i16 %68 to i32
  %69 = add nsw i32 %conv58.i, -14336
  %70 = call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 21) #9
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values)
  switch i32 %70, label %nfp6000_bar_write.exit.i.err_unmap_bar0.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %nfp6000_bar_write.exit.i.cleanup82.thread.i_crit_edge
    i32 3, label %nfp6000_bar_write.exit.i.cleanup82.thread.i_crit_edge86
    i32 5, label %nfp6000_bar_write.exit.i.cleanup82.thread.i_crit_edge87
  ]

nfp6000_bar_write.exit.i.cleanup82.thread.i_crit_edge87: ; preds = %nfp6000_bar_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup82.thread.i

nfp6000_bar_write.exit.i.cleanup82.thread.i_crit_edge86: ; preds = %nfp6000_bar_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup82.thread.i

nfp6000_bar_write.exit.i.cleanup82.thread.i_crit_edge: ; preds = %nfp6000_bar_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup82.thread.i

nfp6000_bar_write.exit.i.err_unmap_bar0.i_crit_edge: ; preds = %nfp6000_bar_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unmap_bar0.i

sw.bb.i:                                          ; preds = %nfp6000_bar_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 6
  %72 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %devfn.i, align 4
  %and60.i = and i32 %73, 7
  %mul63.i = mul nuw nsw i32 %and60.i, 192
  %add64.i = or i32 %mul63.i, 196608
  br label %cleanup82.thread.i

cleanup82.thread.i:                               ; preds = %sw.bb.i, %nfp6000_bar_write.exit.i.cleanup82.thread.i_crit_edge, %nfp6000_bar_write.exit.i.cleanup82.thread.i_crit_edge86, %nfp6000_bar_write.exit.i.cleanup82.thread.i_crit_edge87
  %add64.sink.i = phi i32 [ %add64.i, %sw.bb.i ], [ 196608, %nfp6000_bar_write.exit.i.cleanup82.thread.i_crit_edge ], [ 196608, %nfp6000_bar_write.exit.i.cleanup82.thread.i_crit_edge86 ], [ 196608, %nfp6000_bar_write.exit.i.cleanup82.thread.i_crit_edge87 ]
  %add.ptr65.i = getelementptr i8, ptr %63, i32 %add64.sink.i
  %74 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr65.i, ptr %iomem.i.i, align 4
  %add.ptr80.i = getelementptr i8, ptr %63, i32 131072
  %em.i = getelementptr inbounds %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 6, i32 1
  %75 = ptrtoint ptr %em.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr80.i, ptr %em.i, align 8
  br label %if.end85.i

if.end85.i:                                       ; preds = %cleanup82.thread.i, %if.end43.i.if.end85.i_crit_edge
  %bars_free.0.i = phi i32 [ %sub.ptr.div.i, %if.end43.i.if.end85.i_crit_edge ], [ %dec.i, %cleanup82.thread.i ]
  %msg.0.i = phi ptr [ %add.ptr.i71, %if.end43.i.if.end85.i_crit_edge ], [ %add.ptr51.i, %cleanup82.thread.i ]
  %76 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call7.i.i, align 8
  %device87.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 8
  %78 = ptrtoint ptr %device87.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %device87.i, align 2
  %conv88.i = zext i16 %79 to i32
  %80 = add nsw i32 %conv88.i, -14336
  %81 = call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %81)
  %82 = icmp ult i32 %81, 6
  br i1 %82, label %switch.hole_check, label %if.end85.i.err_unmap_bar0.i_crit_edge

if.end85.i.err_unmap_bar0.i_crit_edge:            ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unmap_bar0.i

switch.hole_check:                                ; preds = %if.end85.i
  %switch.maskindex = trunc i32 %81 to i8
  %switch.shifted = lshr i8 43, %switch.maskindex
  %83 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %switch.lobit.not = icmp eq i8 %83, 0
  br i1 %switch.lobit.not, label %switch.hole_check.err_unmap_bar0.i_crit_edge, label %switch.lookup

switch.hole_check.err_unmap_bar0.i_crit_edge:     ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unmap_bar0.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.nfp_cpp_from_nfp6000_pcie, i32 0, i32 %81
  %84 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %84)
  %switch.load = load i32, ptr %switch.gep, align 4
  %sub.ptr.lhs.cast102.i = ptrtoint ptr %add.ptr4.i to i32
  %sub.ptr.rhs.cast103.i = ptrtoint ptr %msg.0.i to i32
  %sub.ptr.sub104.i = sub i32 %sub.ptr.lhs.cast102.i, %sub.ptr.rhs.cast103.i
  %call105.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %msg.0.i, i32 noundef %sub.ptr.sub104.i, ptr noundef nonnull @.str.30) #9
  %add.ptr106.i = getelementptr i8, ptr %msg.0.i, i32 %call105.i
  %refcnt107.i = getelementptr %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 6
  %call.i.i307.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt107.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %refcnt107.i, i32 1, i32 3, i32 1) #9
  %85 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt107.i, ptr %refcnt107.i, i32 1, ptr elementtype(i32) %refcnt107.i) #9, !srcloc !82
  %dec108.i = add nsw i32 %bars_free.0.i, -1
  %index.i343.i = getelementptr %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 5
  %86 = ptrtoint ptr %index.i343.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %index.i343.i, align 4
  %iomem.i344.i = getelementptr inbounds %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 6
  %88 = ptrtoint ptr %iomem.i344.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %iomem.i344.i, align 4
  %tobool.not.i345.i = icmp eq ptr %89, null
  %mul11.i346.i = shl i32 %87, 2
  br i1 %tobool.not.i345.i, label %if.else.i352.i, label %if.then.i349.i

if.then.i349.i:                                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  call void @arm_heavy_mb() #9
  %90 = ptrtoint ptr %iomem.i344.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %iomem.i344.i, align 4
  %add.ptr.i347.i = getelementptr i8, ptr %91, i32 %mul11.i346.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i347.i, i32 39) #9, !srcloc !84
  %92 = ptrtoint ptr %iomem.i344.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %iomem.i344.i, align 4
  %add.ptr7.i348.i = getelementptr i8, ptr %93, i32 %mul11.i346.i
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i348.i) #9, !srcloc !85
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !86
  br label %nfp6000_bar_write.exit354.i

if.else.i352.i:                                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %add12.i350.i = add i32 %mul11.i346.i, 1024
  %95 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call7.i.i, align 8
  %call13.i351.i = call i32 @pci_write_config_dword(ptr noundef %96, i32 noundef %add12.i350.i, i32 noundef 654311424) #9
  br label %nfp6000_bar_write.exit354.i

nfp6000_bar_write.exit354.i:                      ; preds = %if.else.i352.i, %if.then.i349.i
  %barcfg.i353.i = getelementptr %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 1
  %97 = ptrtoint ptr %barcfg.i353.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 654311424, ptr %barcfg.i353.i, align 4
  br label %for.body113.i

for.body113.i:                                    ; preds = %cleanup168.i.for.body113.i_crit_edge, %nfp6000_bar_write.exit354.i
  %msg.1410.i = phi ptr [ %add.ptr106.i, %nfp6000_bar_write.exit354.i ], [ %msg.3.i, %cleanup168.i.for.body113.i_crit_edge ]
  %bars_free.1409.i = phi i32 [ %dec108.i, %nfp6000_bar_write.exit354.i ], [ %bars_free.3.i, %cleanup168.i.for.body113.i_crit_edge ]
  %i.1406.i = phi i32 [ 0, %nfp6000_bar_write.exit354.i ], [ %inc172.i, %cleanup168.i.for.body113.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1406.i)
  %cmp114.i = icmp ult i32 %i.1406.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1406.i, i32 %switch.load)
  %cmp116.not.i = icmp ult i32 %i.1406.i, %switch.load
  %or.cond.i = and i1 %cmp114.i, %cmp116.not.i
  br i1 %or.cond.i, label %if.end122.i, label %if.then118.i

if.then118.i:                                     ; preds = %for.body113.i
  call void @__sanitizer_cov_trace_pc() #11
  %bitsize121.i = getelementptr %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 7, i32 4, i32 %i.1406.i, i32 1
  %98 = ptrtoint ptr %bitsize121.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %bitsize121.i, align 4
  br label %cleanup168.i

if.end122.i:                                      ; preds = %for.body113.i
  %add124.i = add nuw nsw i32 %i.1406.i, 4
  %arrayidx125.i = getelementptr %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 4, i32 %add124.i
  %99 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx125.i, align 8
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 8
  %index.i355.i = getelementptr %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 4, i32 %add124.i, i32 5
  %103 = ptrtoint ptr %index.i355.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %index.i355.i, align 4
  %div.i356.i = sdiv i32 %104, 8
  %mul.i357.i = shl nsw i32 %div.i356.i, 1
  %arrayidx.i358.i = getelementptr %struct.pci_dev, ptr %102, i32 0, i32 47, i32 %mul.i357.i
  %105 = ptrtoint ptr %arrayidx.i358.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.i358.i, align 8
  %end.i.i359.i = getelementptr %struct.pci_dev, ptr %102, i32 0, i32 47, i32 %mul.i357.i, i32 1
  %107 = ptrtoint ptr %end.i.i359.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %end.i.i359.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp.i.i360.i = icmp eq i32 %108, 0
  %sub.i.i361.i = sub i32 1, %106
  %add.i.i362.i = add i32 %sub.i.i361.i, %108
  %phi.bo22.i.i363.i = lshr i32 %add.i.i362.i, 3
  %cond.i.i364.i = select i1 %cmp.i.i360.i, i32 0, i32 %phi.bo22.i.i363.i
  %and.i365.i = and i32 %104, 7
  %mul2.i366.i = mul nuw i32 %cond.i.i364.i, %and.i365.i
  %add.i367.i = add i32 %mul2.i366.i, %106
  %call128.i = call ptr @ioremap(i32 noundef %add.i367.i, i32 noundef %cond.i.i364.i) #9
  %iomem129.i = getelementptr %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 4, i32 %add124.i, i32 7
  %109 = ptrtoint ptr %iomem129.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call128.i, ptr %iomem129.i, align 4
  %tobool131.not.i = icmp eq ptr %call128.i, null
  br i1 %tobool131.not.i, label %if.end122.i.if.end163.i_crit_edge, label %if.then132.i

if.end122.i.if.end163.i_crit_edge:                ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end163.i

if.then132.i:                                     ; preds = %if.end122.i
  %sub.ptr.rhs.cast134.i = ptrtoint ptr %msg.1410.i to i32
  %sub.ptr.sub135.i = sub i32 %sub.ptr.lhs.cast102.i, %sub.ptr.rhs.cast134.i
  %call137.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %msg.1410.i, i32 noundef %sub.ptr.sub135.i, ptr noundef nonnull @.str.31, i32 noundef %add124.i, i32 noundef %i.1406.i) #9
  %add.ptr138.i = getelementptr i8, ptr %msg.1410.i, i32 %call137.i
  %refcnt139.i = getelementptr %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 4, i32 %add124.i, i32 6
  %call.i.i308.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt139.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %refcnt139.i, i32 1, i32 3, i32 1) #9
  %110 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt139.i, ptr %refcnt139.i, i32 1, ptr elementtype(i32) %refcnt139.i) #9, !srcloc !82
  %dec140.i = add i32 %bars_free.1409.i, -1
  %bitsize141.i = getelementptr %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 4, i32 %add124.i, i32 4
  %111 = ptrtoint ptr %bitsize141.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bitsize141.i, align 8
  %arrayidx144.i = getelementptr %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 7, i32 4, i32 %i.1406.i
  %bitsize145.i = getelementptr %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 7, i32 4, i32 %i.1406.i, i32 1
  %113 = ptrtoint ptr %bitsize145.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %bitsize145.i, align 4
  %114 = ptrtoint ptr %iomem129.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %iomem129.i, align 4
  %116 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %115, ptr %arrayidx144.i, align 8
  %arrayidx150.i = getelementptr [4 x i32], ptr @__const.enable_bars.barcfg_explicit, i32 0, i32 %i.1406.i
  %117 = ptrtoint ptr %arrayidx150.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx150.i, align 4
  %119 = ptrtoint ptr %index.i355.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %index.i355.i, align 4
  %121 = ptrtoint ptr %iomem.i344.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %iomem.i344.i, align 4
  %tobool.not.i382.i = icmp eq ptr %122, null
  %mul11.i383.i = shl i32 %120, 2
  br i1 %tobool.not.i382.i, label %if.else.i389.i, label %if.then.i386.i

if.then.i386.i:                                   ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  call void @arm_heavy_mb() #9
  %123 = call i32 @llvm.bswap.i32(i32 %118) #9
  %124 = ptrtoint ptr %iomem.i344.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %iomem.i344.i, align 4
  %add.ptr.i384.i = getelementptr i8, ptr %125, i32 %mul11.i383.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i384.i, i32 %123) #9, !srcloc !84
  %126 = ptrtoint ptr %iomem.i344.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %iomem.i344.i, align 4
  %add.ptr7.i385.i = getelementptr i8, ptr %127, i32 %mul11.i383.i
  %128 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i385.i) #9, !srcloc !85
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !86
  br label %nfp6000_bar_write.exit391.i

if.else.i389.i:                                   ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #11
  %add12.i387.i = add i32 %mul11.i383.i, 1024
  %129 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %call7.i.i, align 8
  %call13.i388.i = call i32 @pci_write_config_dword(ptr noundef %130, i32 noundef %add12.i387.i, i32 noundef %118) #9
  br label %nfp6000_bar_write.exit391.i

nfp6000_bar_write.exit391.i:                      ; preds = %if.else.i389.i, %if.then.i386.i
  %barcfg.i390.i = getelementptr %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 4, i32 %add124.i, i32 1
  %131 = ptrtoint ptr %barcfg.i390.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %118, ptr %barcfg.i390.i, align 4
  %arrayidx159.i = getelementptr %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 7, i32 4, i32 %i.1406.i, i32 2, i32 0
  %132 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1, ptr %arrayidx159.i, align 8
  %arrayidx159.1.i = getelementptr %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 7, i32 4, i32 %i.1406.i, i32 2, i32 1
  %133 = ptrtoint ptr %arrayidx159.1.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 1, ptr %arrayidx159.1.i, align 4
  %arrayidx159.2.i = getelementptr %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 7, i32 4, i32 %i.1406.i, i32 2, i32 2
  %134 = ptrtoint ptr %arrayidx159.2.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %arrayidx159.2.i, align 8
  %arrayidx159.3.i = getelementptr %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 7, i32 4, i32 %i.1406.i, i32 2, i32 3
  %135 = ptrtoint ptr %arrayidx159.3.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 1, ptr %arrayidx159.3.i, align 4
  br label %if.end163.i

if.end163.i:                                      ; preds = %nfp6000_bar_write.exit391.i, %if.end122.i.if.end163.i_crit_edge
  %bars_free.2.i = phi i32 [ %bars_free.1409.i, %if.end122.i.if.end163.i_crit_edge ], [ %dec140.i, %nfp6000_bar_write.exit391.i ]
  %msg.2.i = phi ptr [ %msg.1410.i, %if.end122.i.if.end163.i_crit_edge ], [ %add.ptr138.i, %nfp6000_bar_write.exit391.i ]
  %136 = ptrtoint ptr %iomem129.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %iomem129.i, align 4
  %arrayidx167.i = getelementptr %struct.nfp6000_pcie, ptr %call7.i.i, i32 0, i32 6, i32 2, i32 %i.1406.i
  %138 = ptrtoint ptr %arrayidx167.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %137, ptr %arrayidx167.i, align 4
  br label %cleanup168.i

cleanup168.i:                                     ; preds = %if.end163.i, %if.then118.i
  %bars_free.3.i = phi i32 [ %bars_free.1409.i, %if.then118.i ], [ %bars_free.2.i, %if.end163.i ]
  %msg.3.i = phi ptr [ %msg.1410.i, %if.then118.i ], [ %msg.2.i, %if.end163.i ]
  %inc172.i = add nuw nsw i32 %i.1406.i, 1
  %exitcond412.not.i = icmp eq i32 %inc172.i, 4
  br i1 %exitcond412.not.i, label %if.end41, label %cleanup168.i.for.body113.i_crit_edge

cleanup168.i.for.body113.i_crit_edge:             ; preds = %cleanup168.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body113.i

err_unmap_bar0.i:                                 ; preds = %switch.hole_check.err_unmap_bar0.i_crit_edge, %if.end85.i.err_unmap_bar0.i_crit_edge, %nfp6000_bar_write.exit.i.err_unmap_bar0.i_crit_edge
  %conv58.sink.i = phi i32 [ %conv58.i, %nfp6000_bar_write.exit.i.err_unmap_bar0.i_crit_edge ], [ %conv88.i, %if.end85.i.err_unmap_bar0.i_crit_edge ], [ %conv88.i, %switch.hole_check.err_unmap_bar0.i_crit_edge ]
  %139 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull @.str.26, i32 noundef %conv58.sink.i) #12
  %141 = ptrtoint ptr %iomem44.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %iomem44.i, align 4
  %tobool186.not.i = icmp eq ptr %142, null
  br i1 %tobool186.not.i, label %err_unmap_bar0.i.enable_bars.exit.thread_crit_edge, label %if.then187.i

err_unmap_bar0.i.enable_bars.exit.thread_crit_edge: ; preds = %err_unmap_bar0.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %enable_bars.exit.thread

if.then187.i:                                     ; preds = %err_unmap_bar0.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @iounmap(ptr noundef nonnull %142) #9
  br label %enable_bars.exit.thread

enable_bars.exit.thread:                          ; preds = %if.then187.i, %err_unmap_bar0.i.enable_bars.exit.thread_crit_edge, %do.end.i75
  call void @llvm.lifetime.end.p0(i64 196, ptr nonnull %status_msg.i) #9
  br label %err_free_nfp

if.end41:                                         ; preds = %cleanup168.i
  call void @__sanitizer_cov_trace_pc() #11
  %143 = ptrtoint ptr %bars.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %bars.i, align 4
  call void @sort(ptr noundef %bar5.i, i32 noundef %144, i32 noundef 48, ptr noundef nonnull @bar_cmp, ptr noundef null) #9
  %145 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev2, align 4
  %147 = ptrtoint ptr %bars.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %bars.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %146, ptr noundef nonnull @.str.33, ptr noundef nonnull %status_msg.i, i32 noundef %bars_free.3.i, i32 noundef %148) #12
  call void @llvm.lifetime.end.p0(i64 196, ptr nonnull %status_msg.i) #9
  %call43 = call ptr @nfp_cpp_from_operations(ptr noundef nonnull @nfp6000_pcie_ops, ptr noundef %dev, ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

err_free_nfp:                                     ; preds = %enable_bars.exit.thread, %do.end32, %do.end18
  %err.0 = phi i32 [ -19, %do.end18 ], [ -19, %do.end32 ], [ -22, %enable_bars.exit.thread ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %do.end46

do.end46:                                         ; preds = %err_free_nfp, %entry.do.end46_crit_edge
  %err.1 = phi i32 [ %err.0, %err_free_nfp ], [ -12, %entry.do.end46_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #12
  %149 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %if.end41
  %retval.0 = phi ptr [ %149, %do.end46 ], [ %call43, %if.end41 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_print_link_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp6000_get_interface(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %call = tail call i64 @pci_get_dsn(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = trunc i64 %call to i32
  %conv = and i32 %0, 65535
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_from_operations(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @pci_get_dsn(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bar_cmp(ptr nocapture noundef readonly %aptr, ptr nocapture noundef readonly %bptr) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bitsize = getelementptr inbounds %struct.nfp_bar, ptr %aptr, i32 0, i32 4
  %0 = ptrtoint ptr %bitsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bitsize, align 8
  %bitsize1 = getelementptr inbounds %struct.nfp_bar, ptr %bptr, i32 0, i32 4
  %2 = ptrtoint ptr %bitsize1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bitsize1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.nfp_bar, ptr %aptr, i32 0, i32 5
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %index2 = getelementptr inbounds %struct.nfp_bar, ptr %bptr, i32 0, i32 5
  %6 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index2, align 4
  %sub = sub i32 %5, %7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub5 = sub i32 %1, %3
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %sub5, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp6000_init(ptr noundef %cpp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfp_cpp_area_cache_add(ptr noundef %cpp, i32 noundef 65536) #9
  %call1 = tail call i32 @nfp_cpp_area_cache_add(ptr noundef %cpp, i32 noundef 65536) #9
  %call2 = tail call i32 @nfp_cpp_area_cache_add(ptr noundef %cpp, i32 noundef 262144) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp6000_free(ptr noundef %cpp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_cpp_priv(ptr noundef %cpp) #9
  %bars.i = getelementptr inbounds %struct.nfp6000_pcie, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %bars.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bars.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9.i = icmp sgt i32 %1, 0
  br i1 %cmp9.i, label %for.body.preheader.i, label %entry.disable_bars.exit_crit_edge

entry.disable_bars.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_bars.exit

for.body.preheader.i:                             ; preds = %entry
  %bar1.i = getelementptr inbounds %struct.nfp6000_pcie, ptr %call, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %n.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %bar.010.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %bar1.i, %for.body.preheader.i ]
  %iomem.i = getelementptr inbounds %struct.nfp_bar, ptr %bar.010.i, i32 0, i32 7
  %2 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %3) #9
  %4 = ptrtoint ptr %iomem.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %iomem.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %n.011.i, 1
  %incdec.ptr.i = getelementptr %struct.nfp_bar, ptr %bar.010.i, i32 1
  %5 = ptrtoint ptr %bars.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bars.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %6
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.disable_bars.exit_crit_edge

for.inc.i.disable_bars.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_bars.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

disable_bars.exit:                                ; preds = %for.inc.i.disable_bars.exit_crit_edge, %entry.disable_bars.exit_crit_edge
  tail call void @kfree(ptr noundef %call) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp6000_read_serial(ptr noundef %dev, ptr nocapture noundef writeonly %serial) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %call = tail call i64 @pci_get_dsn(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i64 %call, 32
  %conv = trunc i64 %shr to i32
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %conv, ptr %serial, align 1
  %shr1 = lshr i64 %call, 16
  %conv2 = trunc i64 %shr1 to i16
  %add.ptr3 = getelementptr i8, ptr %serial, i32 4
  %1 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 %conv2, ptr %add.ptr3, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp6000_area_init(ptr noundef %area, i32 noundef %dest, i64 noundef %address, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_cpp_area_priv(ptr noundef %area) #9
  %shr.i = lshr i32 %dest, 24
  %conv.i = and i32 %shr.i, 31
  %shr.i85 = lshr i32 %dest, 8
  %conv3 = and i32 %shr.i85, 255
  %shr.i87 = lshr i32 %dest, 16
  %conv5 = and i32 %shr.i87, 255
  %and = shl nuw nsw i32 %conv.i, 24
  %shl7 = shl nuw nsw i32 %conv5, 16
  %or = or i32 %and, %shl7
  %shl9 = shl nuw nsw i32 %conv3, 8
  %or10 = or i32 %or, %shl9
  %call11 = tail call i32 @nfp_target_pushpull(i32 noundef %or10, i64 noundef %address) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i = and i32 %call11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  %shl.i = shl nuw nsw i32 2, %and.i
  %retval.0.i = select i1 %cmp.i, i32 -22, i32 %shl.i
  %width = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %retval.0.i, ptr %width, align 8
  %shr1493 = lshr i32 %call11, 4
  %and.i89 = and i32 %shr1493, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89)
  %cmp.i90 = icmp eq i32 %and.i89, 0
  %shl.i91 = shl nuw nsw i32 2, %and.i89
  %retval.0.i92 = select i1 %cmp.i90, i32 -22, i32 %shl.i91
  %write = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %retval.0.i92, ptr %write, align 4
  %2 = select i1 %cmp.i, i1 true, i1 %cmp.i90
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i92)
  %cmp30.not = icmp eq i32 %retval.0.i, %retval.0.i92
  %or.cond84 = select i1 %2, i1 true, i1 %cmp30.not
  br i1 %or.cond84, label %if.end33, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select = select i1 %cmp.i, i32 %retval.0.i92, i32 %shl.i
  %3 = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %3, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call, i32 noundef 4) #9
  %5 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %call, align 4
  %bar47 = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %bar47 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bar47, align 4
  %target48 = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %target48 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv.i, ptr %target48, align 4
  %action49 = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %action49 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv3, ptr %action49, align 8
  %token50 = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %token50 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv5, ptr %token50, align 4
  %offset = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %address, ptr %offset, align 8
  %size51 = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 8
  %11 = ptrtoint ptr %size51 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %size, ptr %size51, align 4
  %resource = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 11
  %12 = call ptr @memset(ptr %resource, i32 0, i32 32)
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ %call11, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nfp6000_area_cleanup(ptr nocapture noundef %area) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp6000_area_acquire(ptr noundef %area) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_cpp_area_cpp(ptr noundef %area) #9
  %call1 = tail call ptr @nfp_cpp_priv(ptr noundef %call) #9
  %call2 = tail call ptr @nfp_cpp_area_priv(ptr noundef %area) #9
  %bar = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call2, i32 0, i32 1
  %0 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call ptr @nfp_cpp_area_priv(ptr noundef %area) #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %call.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call.i, ptr %call.i, i32 1, ptr elementtype(i32) %call.i) #9, !srcloc !82
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call2, i32 0, i32 3
  %3 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %target, align 4
  %action = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call2, i32 0, i32 4
  %5 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %action, align 8
  %token = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call2, i32 0, i32 5
  %7 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %token, align 4
  %offset = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call2, i32 0, i32 6
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %offset, align 8
  %size = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call2, i32 0, i32 8
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  %bar3 = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call2, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %bar3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bar3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %12)
  %cmp.i = icmp ugt i32 %12, 16777216
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %do.body2.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body2.i:                                       ; preds = %if.end
  %bar_lock.i = getelementptr inbounds %struct.nfp6000_pcie, ptr %call1, i32 0, i32 2
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bar_lock.i) #9
  %bars.i.i = getelementptr inbounds %struct.nfp6000_pcie, ptr %call1, i32 0, i32 3
  %15 = ptrtoint ptr %bars.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bars.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp11.i.i = icmp sgt i32 %16, 0
  br i1 %cmp11.i.i, label %for.body.lr.ph.i.i, label %do.body2.i.do.end.i.i_crit_edge

do.body2.i.do.end.i.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

for.body.lr.ph.i.i:                               ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, i32 32, i32 %6
  %conv33.i.i.i = zext i32 %12 to i64
  %add34.i.i.i = add i64 %10, %conv33.i.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %n.012.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %barcfg.i.i.i = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 4, i32 %n.012.i.i, i32 1
  %17 = ptrtoint ptr %barcfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %barcfg.i.i.i, align 4
  %shr.i.i.i = lshr i32 %18, 29
  %shr2.i.i.i = lshr i32 %18, 23
  %and3.i.i.i = and i32 %shr2.i.i.i, 15
  %shr5.i.i.i = lshr i32 %18, 21
  %and6.i.i.i = and i32 %shr5.i.i.i, 3
  %shr8.i.i.i = lshr i32 %18, 16
  %and9.i.i.i = and i32 %shr8.i.i.i, 31
  %shr11.i.i.i = lshr i32 %18, 27
  %and12.i.i.i = and i32 %shr11.i.i.i, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.nfp6000_area_acquire, i32 0, i32 %and12.i.i.i
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  %20 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %shr.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge [
    i32 2, label %sw.bb15.i.i.i
    i32 1, label %for.body.i.i.sw.bb16.i.i.i_crit_edge
    i32 0, label %for.body.i.i.sw.epilog18.i.i.i_crit_edge
  ]

for.body.i.i.sw.epilog18.i.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog18.i.i.i

for.body.i.i.sw.bb16.i.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb16.i.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

sw.bb15.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb16.i.i.i

sw.bb16.i.i.i:                                    ; preds = %sw.bb15.i.i.i, %for.body.i.i.sw.bb16.i.i.i_crit_edge
  %bartok.0.i.i.i = phi i32 [ %and6.i.i.i, %for.body.i.i.sw.bb16.i.i.i_crit_edge ], [ -1, %sw.bb15.i.i.i ]
  br label %sw.epilog18.i.i.i

sw.epilog18.i.i.i:                                ; preds = %sw.bb16.i.i.i, %for.body.i.i.sw.epilog18.i.i.i_crit_edge
  %act.addr.0.i.i.i = phi i32 [ %6, %for.body.i.i.sw.epilog18.i.i.i_crit_edge ], [ %spec.store.select.i.i.i, %sw.bb16.i.i.i ]
  %baract.0.i.i.i = phi i32 [ %and9.i.i.i, %for.body.i.i.sw.epilog18.i.i.i_crit_edge ], [ 32, %sw.bb16.i.i.i ]
  %bartok.1.i.i.i = phi i32 [ %and6.i.i.i, %for.body.i.i.sw.epilog18.i.i.i_crit_edge ], [ %bartok.0.i.i.i, %sw.bb16.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load, i32 %14)
  %cmp19.not.i.i.i = icmp eq i32 %switch.load, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i.i.i, i32 %4)
  %cmp23.i.i.i = icmp eq i32 %and3.i.i.i, %4
  %or.cond.i.i = select i1 %cmp19.not.i.i.i, i1 %cmp23.i.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.i, label %sw.epilog18.i.i.i.for.inc.i.i_crit_edge

sw.epilog18.i.i.i.for.inc.i.i_crit_edge:          ; preds = %sw.epilog18.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.epilog18.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bartok.1.i.i.i)
  %cmp24.i.i.i = icmp slt i32 %bartok.1.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %bartok.1.i.i.i, i32 %8)
  %cmp26.i.i.i = icmp eq i32 %bartok.1.i.i.i, %8
  %or.cond.i.i.i = or i1 %cmp24.i.i.i, %cmp26.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %baract.0.i.i.i, i32 %act.addr.0.i.i.i)
  %cmp28.i.i.i = icmp eq i32 %baract.0.i.i.i, %act.addr.0.i.i.i
  %or.cond55.i.i.i = select i1 %or.cond.i.i.i, i1 %cmp28.i.i.i, i1 false
  br i1 %or.cond55.i.i.i, label %land.lhs.true29.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true29.i.i.i:                            ; preds = %land.lhs.true.i.i.i
  %base.i.i.i = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 4, i32 %n.012.i.i, i32 2
  %21 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %base.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %10)
  %cmp30.not.i.i.i = icmp ugt i64 %22, %10
  br i1 %cmp30.not.i.i.i, label %land.lhs.true29.i.i.i.for.inc.i.i_crit_edge, label %land.lhs.true31.i.i.i

land.lhs.true29.i.i.i.for.inc.i.i_crit_edge:      ; preds = %land.lhs.true29.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true31.i.i.i:                            ; preds = %land.lhs.true29.i.i.i
  %bitsize.i.i.i = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 4, i32 %n.012.i.i, i32 4
  %23 = ptrtoint ptr %bitsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bitsize.i.i.i, align 8
  %shl.i.i.i = shl nuw i32 1, %24
  %conv.i.i.i = sext i32 %shl.i.i.i to i64
  %add.i.i.i = add i64 %22, %conv.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %add34.i.i.i)
  %cmp35.not.i.i.i = icmp ult i64 %add.i.i.i, %add34.i.i.i
  br i1 %cmp35.not.i.i.i, label %land.lhs.true31.i.i.i.for.inc.i.i_crit_edge, label %if.then10.i

land.lhs.true31.i.i.i.for.inc.i.i_crit_edge:      ; preds = %land.lhs.true31.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true31.i.i.i.for.inc.i.i_crit_edge, %land.lhs.true29.i.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.i.for.inc.i.i_crit_edge, %sw.epilog18.i.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %n.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %16
  br i1 %exitcond.not.i.i, label %for.body.lr.ph.i3.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.then10.i:                                      ; preds = %land.lhs.true31.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %refcnt.i.i = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 4, i32 %n.012.i.i, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #9
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #9, !srcloc !82
  br label %if.end6

for.body.lr.ph.i3.i:                              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %4)
  %cmp.i.i2.i = icmp sgt i32 %4, 15
  %sub40.i.i.i = add i64 %add34.i.i.i, -1
  %26 = xor i64 %sub40.i.i.i, %10
  br label %for.body.i5.i

for.body.i5.i:                                    ; preds = %for.inc.i12.i.for.body.i5.i_crit_edge, %for.body.lr.ph.i3.i
  %busy.066.i.i = phi i32 [ 0, %for.body.lr.ph.i3.i ], [ %busy.1.ph.i.i, %for.inc.i12.i.for.body.i5.i_crit_edge ]
  %n.064.i.i = phi i32 [ 0, %for.body.lr.ph.i3.i ], [ %inc10.i.i, %for.inc.i12.i.for.body.i5.i_crit_edge ]
  %bitsize.i.i = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 4, i32 %n.064.i.i, i32 4
  %27 = ptrtoint ptr %bitsize.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bitsize.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp eq i32 %28, 0
  %or.cond.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i.i
  br i1 %or.cond.i4.i, label %for.body.i5.i.for.inc.i12.i_crit_edge, label %if.end.i.i.i

for.body.i5.i.for.inc.i12.i_crit_edge:            ; preds = %for.body.i5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i12.i

if.end.i.i.i:                                     ; preds = %for.body.i5.i
  %29 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %14, label %if.end.i.i.i.for.inc.i12.i_crit_edge [
    i32 8, label %if.end.i.i.i.sw.epilog.i.i6.i_crit_edge
    i32 4, label %if.end.i.i.i.sw.epilog.i.i6.i_crit_edge163
    i32 0, label %if.end.i.i.i.sw.epilog.i.i6.i_crit_edge164
  ]

if.end.i.i.i.sw.epilog.i.i6.i_crit_edge164:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i6.i

if.end.i.i.i.sw.epilog.i.i6.i_crit_edge163:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i6.i

if.end.i.i.i.sw.epilog.i.i6.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i6.i

if.end.i.i.i.for.inc.i12.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i12.i

sw.epilog.i.i6.i:                                 ; preds = %if.end.i.i.i.sw.epilog.i.i6.i_crit_edge, %if.end.i.i.i.sw.epilog.i.i6.i_crit_edge163, %if.end.i.i.i.sw.epilog.i.i6.i_crit_edge164
  %30 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %6, label %if.then5.i.i.i [
    i32 32, label %sw.epilog.i.i6.i.if.else.i.i.i_crit_edge
    i32 0, label %sw.epilog.i.i6.i.if.else.i.i.i_crit_edge165
  ]

sw.epilog.i.i6.i.if.else.i.i.i_crit_edge165:      ; preds = %sw.epilog.i.i6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i.i

sw.epilog.i.i6.i.if.else.i.i.i_crit_edge:         ; preds = %sw.epilog.i.i6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i.i

if.then5.i.i.i:                                   ; preds = %sw.epilog.i.i6.i
  %notmask1.i.i.i = shl nsw i32 -1, %28
  %conv.i.i7.i = sext i32 %notmask1.i.i.i to i64
  %31 = and i64 %26, %conv.i.i7.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %cmp19.not.i.i8.i = icmp eq i64 %31, 0
  br i1 %cmp19.not.i.i8.i, label %if.then5.i.i.i.if.end50.i.i.i_crit_edge, label %if.then5.i.i.i.for.inc.i12.i_crit_edge

if.then5.i.i.i.for.inc.i12.i_crit_edge:           ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i12.i

if.then5.i.i.i.if.end50.i.i.i_crit_edge:          ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i.i.i

if.else.i.i.i:                                    ; preds = %sw.epilog.i.i6.i.if.else.i.i.i_crit_edge, %sw.epilog.i.i6.i.if.else.i.i.i_crit_edge165
  %notmask.i.i.i = shl nsw i32 -1, %28
  %conv29.i.i.i = sext i32 %notmask.i.i.i to i64
  %32 = and i64 %26, %conv29.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %cmp42.not.i.i.i = icmp eq i64 %32, 0
  br i1 %cmp42.not.i.i.i, label %if.else.i.i.i.if.end50.i.i.i_crit_edge, label %if.else.i.i.i.for.inc.i12.i_crit_edge

if.else.i.i.i.for.inc.i12.i_crit_edge:            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i12.i

if.else.i.i.i.if.end50.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i.i.i

if.end50.i.i.i:                                   ; preds = %if.else.i.i.i.if.end50.i.i.i_crit_edge, %if.then5.i.i.i.if.end50.i.i.i_crit_edge
  %bitsize.2.i.i.i = phi i32 [ 24, %if.then5.i.i.i.if.end50.i.i.i_crit_edge ], [ 19, %if.else.i.i.i.if.end50.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %bitsize.2.i.i.i)
  %cmp52.i.i.i = icmp ult i32 %28, %bitsize.2.i.i.i
  br i1 %cmp52.i.i.i, label %if.end50.i.i.i.for.inc.i12.i_crit_edge, label %if.end4.i.i

if.end50.i.i.i.for.inc.i12.i_crit_edge:           ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i12.i

if.end4.i.i:                                      ; preds = %if.end50.i.i.i
  %refcnt.i9.i = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 4, i32 %n.064.i.i, i32 6
  %call.i.i.i10.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i9.i, i32 noundef 4) #9
  %33 = ptrtoint ptr %refcnt.i9.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %refcnt.i9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool6.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i17.i, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i11.i = add i32 %busy.066.i.i, 1
  br label %for.inc.i12.i

for.inc.i12.i:                                    ; preds = %if.end8.i.i, %if.end50.i.i.i.for.inc.i12.i_crit_edge, %if.else.i.i.i.for.inc.i12.i_crit_edge, %if.then5.i.i.i.for.inc.i12.i_crit_edge, %if.end.i.i.i.for.inc.i12.i_crit_edge, %for.body.i5.i.for.inc.i12.i_crit_edge
  %busy.1.ph.i.i = phi i32 [ %busy.066.i.i, %for.body.i5.i.for.inc.i12.i_crit_edge ], [ %inc.i11.i, %if.end8.i.i ], [ %busy.066.i.i, %if.then5.i.i.i.for.inc.i12.i_crit_edge ], [ %busy.066.i.i, %if.else.i.i.i.for.inc.i12.i_crit_edge ], [ %busy.066.i.i, %if.end.i.i.i.for.inc.i12.i_crit_edge ], [ %busy.066.i.i, %if.end50.i.i.i.for.inc.i12.i_crit_edge ]
  %inc10.i.i = add nuw nsw i32 %n.064.i.i, 1
  %35 = ptrtoint ptr %bars.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bars.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc10.i.i, %36
  br i1 %cmp.i.i, label %for.inc.i12.i.for.body.i5.i_crit_edge, label %for.end.i.i

for.inc.i12.i.for.body.i5.i_crit_edge:            ; preds = %for.inc.i12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i5.i

for.end.i.i:                                      ; preds = %for.inc.i12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %busy.1.ph.i.i)
  %tobool11.not.i.i = icmp eq i32 %busy.1.ph.i.i, 0
  br i1 %tobool11.not.i.i, label %for.end.i.i.do.end.i.i_crit_edge, label %for.end.i.i.nfp_alloc_bar.exit.thread141_crit_edge, !prof !87

for.end.i.i.nfp_alloc_bar.exit.thread141_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_alloc_bar.exit.thread141

for.end.i.i.do.end.i.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %for.end.i.i.do.end.i.i_crit_edge, %do.body2.i.do.end.i.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 415, i32 noundef 9, ptr noundef nonnull @.str.38, i32 noundef %4, i32 noundef %6, i32 noundef %8, i64 noundef %10, i32 noundef %12, i32 noundef %14) #9
  br label %nfp_alloc_bar.exit.thread141

if.end.i.i17.i:                                   ; preds = %if.end4.i.i
  %call.i.i.i15.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i9.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcnt.i9.i, i32 1, i32 3, i32 1) #9
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i9.i, ptr %refcnt.i9.i, i32 1, ptr elementtype(i32) %refcnt.i9.i) #9, !srcloc !82
  %38 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %14, label %if.end.i.i17.i.if.then32.i_crit_edge [
    i32 8, label %if.end.i.i17.i.sw.epilog.i.i18.i_crit_edge
    i32 4, label %sw.bb1.i.i.i
    i32 0, label %sw.bb2.i.i.i
  ]

if.end.i.i17.i.sw.epilog.i.i18.i_crit_edge:       ; preds = %if.end.i.i17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i18.i

if.end.i.i17.i.if.then32.i_crit_edge:             ; preds = %if.end.i.i17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32.i

sw.bb1.i.i.i:                                     ; preds = %if.end.i.i17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i18.i

sw.bb2.i.i.i:                                     ; preds = %if.end.i.i17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i18.i

sw.epilog.i.i18.i:                                ; preds = %sw.bb2.i.i.i, %sw.bb1.i.i.i, %if.end.i.i17.i.sw.epilog.i.i18.i_crit_edge
  %newcfg.0.i.i.i = phi i32 [ 402653184, %sw.bb2.i.i.i ], [ 0, %sw.bb1.i.i.i ], [ 134217728, %if.end.i.i17.i.sw.epilog.i.i18.i_crit_edge ]
  %39 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %6, label %if.then5.i.i25.i [
    i32 32, label %sw.epilog.i.i18.i.if.else.i.i32.i_crit_edge
    i32 0, label %sw.epilog.i.i18.i.if.else.i.i32.i_crit_edge166
  ]

sw.epilog.i.i18.i.if.else.i.i32.i_crit_edge166:   ; preds = %sw.epilog.i.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i32.i

sw.epilog.i.i18.i.if.else.i.i32.i_crit_edge:      ; preds = %sw.epilog.i.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i32.i

if.then5.i.i25.i:                                 ; preds = %sw.epilog.i.i18.i
  %40 = ptrtoint ptr %bitsize.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bitsize.i.i, align 8
  %notmask1.i.i19.i = shl nsw i32 -1, %41
  %conv.i.i20.i = sext i32 %notmask1.i.i19.i to i64
  %and.i.i.i = shl i32 %4, 23
  %shl7.i.i.i = and i32 %and.i.i.i, 125829120
  %and9.i.i21.i = shl i32 %6, 16
  %shl10.i.i.i = and i32 %and9.i.i21.i, 2031616
  %and12.i.i22.i = shl i32 %8, 21
  %shl13.i.i.i = and i32 %and12.i.i22.i, 6291456
  %or8.i.i.i = or i32 %shl10.i.i.i, %shl7.i.i.i
  %or11.i.i.i = or i32 %or8.i.i.i, %shl13.i.i.i
  %or14.i.i.i = or i32 %or11.i.i.i, %newcfg.0.i.i.i
  %and15.i.i.i = and i64 %10, %conv.i.i20.i
  %and18.i.i.i = and i64 %sub40.i.i.i, %conv.i.i20.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and15.i.i.i, i64 %and18.i.i.i)
  %cmp19.not.i.i24.i = icmp eq i64 %and15.i.i.i, %and18.i.i.i
  br i1 %cmp19.not.i.i24.i, label %if.then5.i.i25.i.if.end50.i.i35.i_crit_edge, label %if.then5.i.i25.i.if.then32.i_crit_edge

if.then5.i.i25.i.if.then32.i_crit_edge:           ; preds = %if.then5.i.i25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32.i

if.then5.i.i25.i.if.end50.i.i35.i_crit_edge:      ; preds = %if.then5.i.i25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i.i35.i

if.else.i.i32.i:                                  ; preds = %sw.epilog.i.i18.i.if.else.i.i32.i_crit_edge, %sw.epilog.i.i18.i.if.else.i.i32.i_crit_edge166
  %42 = ptrtoint ptr %bitsize.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bitsize.i.i, align 8
  %notmask.i.i26.i = shl nsw i32 -1, %43
  %conv29.i.i27.i = sext i32 %notmask.i.i26.i to i64
  %and31.i.i.i = shl i32 %4, 23
  %shl32.i.i.i = and i32 %and31.i.i.i, 125829120
  %and34.i.i.i = shl i32 %8, 21
  %shl35.i.i.i = and i32 %and34.i.i.i, 6291456
  %or30.i.i.i = or i32 %shl32.i.i.i, %shl35.i.i.i
  %or33.i.i.i = or i32 %or30.i.i.i, %newcfg.0.i.i.i
  %or36.i.i.i = or i32 %or33.i.i.i, 536870912
  %and37.i.i.i = and i64 %10, %conv29.i.i27.i
  %and41.i.i.i = and i64 %sub40.i.i.i, %conv29.i.i27.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and37.i.i.i, i64 %and41.i.i.i)
  %cmp42.not.i.i31.i = icmp eq i64 %and37.i.i.i, %and41.i.i.i
  br i1 %cmp42.not.i.i31.i, label %if.else.i.i32.i.if.end50.i.i35.i_crit_edge, label %if.else.i.i32.i.if.then32.i_crit_edge

if.else.i.i32.i.if.then32.i_crit_edge:            ; preds = %if.else.i.i32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32.i

if.else.i.i32.i.if.end50.i.i35.i_crit_edge:       ; preds = %if.else.i.i32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i.i35.i

if.end50.i.i35.i:                                 ; preds = %if.else.i.i32.i.if.end50.i.i35.i_crit_edge, %if.then5.i.i25.i.if.end50.i.i35.i_crit_edge
  %offset.addr.2.i.i.i = phi i64 [ %and15.i.i.i, %if.then5.i.i25.i.if.end50.i.i35.i_crit_edge ], [ %and37.i.i.i, %if.else.i.i32.i.if.end50.i.i35.i_crit_edge ]
  %bitsize.2.i.i33.i = phi i32 [ 24, %if.then5.i.i25.i.if.end50.i.i35.i_crit_edge ], [ 19, %if.else.i.i32.i.if.end50.i.i35.i_crit_edge ]
  %newcfg.1.i.i.i = phi i32 [ %or14.i.i.i, %if.then5.i.i25.i.if.end50.i.i35.i_crit_edge ], [ %or36.i.i.i, %if.else.i.i32.i.if.end50.i.i35.i_crit_edge ]
  %44 = ptrtoint ptr %bitsize.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bitsize.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %bitsize.2.i.i33.i)
  %cmp52.i.i34.i = icmp ult i32 %45, %bitsize.2.i.i33.i
  br i1 %cmp52.i.i34.i, label %if.end50.i.i35.i.if.then32.i_crit_edge, label %if.end.i.i

if.end50.i.i35.i.if.then32.i_crit_edge:           ; preds = %if.end50.i.i35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32.i

if.end.i.i:                                       ; preds = %if.end50.i.i35.i
  %sh_prom.i.i.i = zext i32 %bitsize.2.i.i33.i to i64
  %shr.i.i36.i = lshr i64 %offset.addr.2.i.i.i, %sh_prom.i.i.i
  %46 = trunc i64 %shr.i.i36.i to i32
  %conv58.i.i.i = or i32 %newcfg.1.i.i.i, %46
  %base.i.i = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 4, i32 %n.064.i.i, i32 2
  %47 = ptrtoint ptr %base.i.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %offset.addr.2.i.i.i, ptr %base.i.i, align 8
  %index.i.i.i = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 4, i32 %n.064.i.i, i32 5
  %48 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %index.i.i.i, align 4
  %iomem.i.i.i = getelementptr inbounds %struct.nfp6000_pcie, ptr %call1, i32 0, i32 6
  %50 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iomem.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %51, null
  %mul11.i.i.i = shl i32 %49, 2
  br i1 %tobool.not.i.i.i, label %if.else.i8.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %52 = tail call i32 @llvm.bswap.i32(i32 %conv58.i.i.i) #9
  %53 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %54, i32 %mul11.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %52) #9, !srcloc !84
  %55 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr7.i.i.i = getelementptr i8, ptr %56, i32 %mul11.i.i.i
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i) #9, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !86
  br label %reconfigure_bar.exit.i

if.else.i8.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add12.i.i.i = add i32 %mul11.i.i.i, 1024
  %58 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call1, align 8
  %call13.i.i.i = tail call i32 @pci_write_config_dword(ptr noundef %59, i32 noundef %add12.i.i.i, i32 noundef %conv58.i.i.i) #9
  br label %reconfigure_bar.exit.i

reconfigure_bar.exit.i:                           ; preds = %if.else.i8.i.i, %if.then.i.i.i
  %barcfg.i.i37.i = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 4, i32 %n.064.i.i, i32 1
  %60 = ptrtoint ptr %barcfg.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv58.i.i.i, ptr %barcfg.i.i37.i, align 4
  br label %if.end6

if.then32.i:                                      ; preds = %if.end50.i.i35.i.if.then32.i_crit_edge, %if.else.i.i32.i.if.then32.i_crit_edge, %if.then5.i.i25.i.if.then32.i_crit_edge, %if.end.i.i17.i.if.then32.i_crit_edge
  %call.i.i.i39.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i9.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr %refcnt.i9.i, i32 1, i32 3, i32 1) #9
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i9.i, ptr %refcnt.i9.i, i32 1, ptr elementtype(i32) %refcnt.i9.i) #9, !srcloc !89
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %61, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i, label %if.then32.i.nfp_alloc_bar.exit.thread141_crit_edge

if.then32.i.nfp_alloc_bar.exit.thread141_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_alloc_bar.exit.thread141

if.then.i.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  %bar_waiters.i.i = getelementptr inbounds %struct.nfp6000_pcie, ptr %call1, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %bar_waiters.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %nfp_alloc_bar.exit.thread141

nfp_alloc_bar.exit.thread141:                     ; preds = %if.then.i.i, %if.then32.i.nfp_alloc_bar.exit.thread141_crit_edge, %do.end.i.i, %for.end.i.i.nfp_alloc_bar.exit.thread141_crit_edge
  %retval.0.ph.i.ph = phi i32 [ -22, %do.end.i.i ], [ -11, %for.end.i.i.nfp_alloc_bar.exit.thread141_crit_edge ], [ -22, %if.then.i.i ], [ -22, %if.then32.i.nfp_alloc_bar.exit.thread141_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bar_lock.i, i32 noundef %call4.i) #9
  br label %cleanup

if.end6:                                          ; preds = %reconfigure_bar.exit.i, %if.then10.i
  %retval.0.ph.i = phi i32 [ %n.012.i.i, %if.then10.i ], [ %n.064.i.i, %reconfigure_bar.exit.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bar_lock.i, i32 noundef %call4.i) #9
  %arrayidx = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 4, i32 %retval.0.ph.i
  %62 = ptrtoint ptr %bar to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %arrayidx, ptr %bar, align 4
  %barcfg.i = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 4, i32 %retval.0.ph.i, i32 1
  %63 = ptrtoint ptr %barcfg.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %barcfg.i, align 4
  %shr.i.mask = and i32 %64, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %shr.i.mask)
  %cmp11 = icmp eq i32 %shr.i.mask, 1610612736
  %65 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %offset, align 8
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %bitsize = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 4, i32 %retval.0.ph.i, i32 4
  %67 = ptrtoint ptr %bitsize to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bitsize, align 8
  %sub = add i32 %68, -4
  %notmask = shl nsw i32 -1, %sub
  %sub15 = xor i32 %notmask, -1
  %69 = trunc i64 %66 to i32
  %conv16 = and i32 %sub15, %69
  %bar_offset = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call2, i32 0, i32 2
  %70 = ptrtoint ptr %bar_offset to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv16, ptr %bar_offset, align 8
  %71 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %target, align 4
  %73 = load i32, ptr %bitsize, align 8
  %sub20 = add i32 %73, -2
  %shl21 = shl i32 %72, %sub20
  %add = add i32 %shl21, %conv16
  store i32 %add, ptr %bar_offset, align 8
  %74 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %token, align 4
  %76 = load i32, ptr %bitsize, align 8
  %sub26 = add i32 %76, -4
  %shl27 = shl i32 %75, %sub26
  %add29 = add i32 %shl27, %add
  store i32 %add29, ptr %bar_offset, align 8
  br label %if.end35

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %mask = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 4, i32 %retval.0.ph.i, i32 3
  %77 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %mask, align 8
  %and32 = and i64 %78, %66
  %conv33 = trunc i64 %and32 to i32
  %bar_offset34 = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call2, i32 0, i32 2
  %79 = ptrtoint ptr %bar_offset34 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv33, ptr %bar_offset34, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then12
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 8
  %index.i = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 4, i32 %retval.0.ph.i, i32 5
  %84 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %index.i, align 4
  %div.i = sdiv i32 %85, 8
  %mul.i = shl nsw i32 %div.i, 1
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %83, i32 0, i32 47, i32 %mul.i
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i, align 8
  %end.i.i = getelementptr %struct.pci_dev, ptr %83, i32 0, i32 47, i32 %mul.i, i32 1
  %88 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp.i.i135 = icmp eq i32 %89, 0
  %sub.i.i = sub i32 1, %87
  %add.i.i = add i32 %sub.i.i, %89
  %phi.bo22.i.i = lshr i32 %add.i.i, 3
  %cond.i.i = select i1 %cmp.i.i135, i32 0, i32 %phi.bo22.i.i
  %and.i = and i32 %85, 7
  %mul2.i = mul nuw i32 %cond.i.i, %and.i
  %bar_offset38 = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call2, i32 0, i32 2
  %90 = ptrtoint ptr %bar_offset38 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bar_offset38, align 8
  %add.i = add i32 %91, %87
  %add39 = add i32 %add.i, %mul2.i
  %phys = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call2, i32 0, i32 10
  %92 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add39, ptr %phys, align 4
  %call40 = tail call ptr @nfp_cpp_area_name(ptr noundef %area) #9
  %resource = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call2, i32 0, i32 11
  %name = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call2, i32 0, i32 11, i32 2
  %93 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call40, ptr %name, align 8
  %94 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %phys, align 4
  %96 = ptrtoint ptr %resource to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %resource, align 8
  %97 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %size, align 4
  %add46 = add i32 %95, -1
  %sub47 = add i32 %add46, %98
  %end = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call2, i32 0, i32 11, i32 1
  %99 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %sub47, ptr %end, align 4
  %flags = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call2, i32 0, i32 11, i32 3
  %100 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 512, ptr %flags, align 4
  %101 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bar, align 4
  %iomem = getelementptr inbounds %struct.nfp_bar, ptr %102, i32 0, i32 7
  %103 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %iomem, align 4
  %tobool51.not = icmp eq ptr %104, null
  br i1 %tobool51.not, label %if.else57, label %if.then52

if.then52:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %bar_offset38 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bar_offset38, align 8
  %add.ptr = getelementptr i8, ptr %104, i32 %106
  br label %if.end62

if.else57:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %call60 = tail call ptr @ioremap(i32 noundef %95, i32 noundef %98) #9
  br label %if.end62

if.end62:                                         ; preds = %if.else57, %if.then52
  %add.ptr.sink = phi ptr [ %call60, %if.else57 ], [ %add.ptr, %if.then52 ]
  %107 = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call2, i32 0, i32 9
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %add.ptr.sink, ptr %107, align 8
  %tobool.not.i = icmp eq ptr %add.ptr.sink, null
  %cmp.i136 = icmp ugt ptr %add.ptr.sink, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i136
  br i1 %spec.select.i, label %do.end, label %if.end73

do.end:                                           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.nfp6000_pcie, ptr %call1, i32 0, i32 1
  %109 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev, align 4
  %111 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %size, align 4
  %113 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bar, align 4
  %index = getelementptr inbounds %struct.nfp_bar, ptr %114, i32 0, i32 5
  %115 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.36, i32 noundef %112, i32 noundef %116) #12
  %117 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %107, align 8
  %tobool69.not = icmp eq ptr %118, null
  %119 = ptrtoint ptr %118 to i32
  %spec.select = select i1 %tobool69.not, i32 -12, i32 %119
  store ptr null, ptr %107, align 8
  %120 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bar, align 4
  tail call fastcc void @nfp_bar_put(ptr noundef %call1, ptr noundef %121)
  %122 = ptrtoint ptr %bar to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %bar, align 4
  br label %cleanup

if.end73:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %call.i137 = tail call ptr @nfp_cpp_area_priv(ptr noundef %area) #9
  %call.i.i.i138 = tail call zeroext i1 @__kasan_check_write(ptr noundef %call.i137, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %call.i137, i32 1, i32 3, i32 1) #9
  %123 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call.i137, ptr %call.i137, i32 1, ptr elementtype(i32) %call.i137) #9, !srcloc !82
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %do.end, %nfp_alloc_bar.exit.thread141, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end73 ], [ %spec.select, %do.end ], [ %retval.0.ph.i.ph, %nfp_alloc_bar.exit.thread141 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp6000_area_release(ptr noundef %area) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_cpp_area_cpp(ptr noundef %area) #9
  %call1 = tail call ptr @nfp_cpp_priv(ptr noundef %call) #9
  %call2 = tail call ptr @nfp_cpp_area_priv(ptr noundef %area) #9
  %call.i = tail call ptr @nfp_cpp_area_priv(ptr noundef %area) #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %call.i, i32 noundef 4) #9
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %priv_area_put.exit.thread, label %priv_area_put.exit, !prof !87

priv_area_put.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 805, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

priv_area_put.exit:                               ; preds = %entry
  %call.i.i29.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr %call.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call.i, ptr %call.i, i32 1, ptr elementtype(i32) %call.i) #9, !srcloc !89
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i.not = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.not, label %if.end, label %priv_area_put.exit.cleanup_crit_edge

priv_area_put.exit.cleanup_crit_edge:             ; preds = %priv_area_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %priv_area_put.exit
  %bar = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call2, i32 0, i32 1
  %3 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bar, align 4
  %iomem = getelementptr inbounds %struct.nfp_bar, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iomem, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %iomem6 = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call2, i32 0, i32 9
  %7 = ptrtoint ptr %iomem6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iomem6, align 8
  tail call void @iounmap(ptr noundef %8) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %9 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bar, align 4
  %refcnt.i = getelementptr inbounds %struct.nfp_bar, ptr %10, i32 0, i32 6
  %call.i.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #9, !srcloc !89
  %asmresult.i.i.i.i.i.i19 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i19)
  %cmp.i.i.i20 = icmp eq i32 %asmresult.i.i.i.i.i.i19, 0
  br i1 %cmp.i.i.i20, label %if.then.i, label %if.end7.nfp_bar_put.exit_crit_edge

if.end7.nfp_bar_put.exit_crit_edge:               ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_bar_put.exit

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %bar_waiters.i = getelementptr inbounds %struct.nfp6000_pcie, ptr %call1, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %bar_waiters.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %nfp_bar_put.exit

nfp_bar_put.exit:                                 ; preds = %if.then.i, %if.end7.nfp_bar_put.exit_crit_edge
  %12 = ptrtoint ptr %bar to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %bar, align 4
  %iomem10 = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call2, i32 0, i32 9
  %13 = ptrtoint ptr %iomem10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %iomem10, align 8
  br label %cleanup

cleanup:                                          ; preds = %nfp_bar_put.exit, %priv_area_put.exit.cleanup_crit_edge, %priv_area_put.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nfp6000_area_resource(ptr noundef %area) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_cpp_area_priv(ptr noundef %area) #9
  %bar = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar, align 4
  %resource = getelementptr inbounds %struct.nfp_bar, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 8
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp6000_area_phys(ptr noundef %area) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_cpp_area_priv(ptr noundef %area) #9
  %phys = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phys, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nfp6000_area_iomem(ptr noundef %area) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_cpp_area_priv(ptr noundef %area) #9
  %iomem = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 8
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp6000_area_read(ptr noundef %area, ptr noundef %kernel_vaddr, i32 noundef %offset, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_cpp_area_priv(ptr noundef %area) #9
  %iomem = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 8
  %add.ptr2 = getelementptr i8, ptr %1, i32 %offset
  %add = add i32 %length, %offset
  %size = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp = icmp ugt i32 %add, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %width3 = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %width3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp4 = icmp slt i32 %5, 1
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %target = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp7 = icmp eq i32 %7, 7
  br i1 %cmp7, label %land.lhs.true, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end6
  %action = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %9)
  %cmp8 = icmp eq i32 %9, 32
  br i1 %cmp8, label %land.lhs.true9, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true9:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %rem = and i32 %offset, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem)
  %cmp10 = icmp eq i32 %rem, 4
  %rem11 = and i32 %length, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem11)
  %cmp12 = icmp eq i32 %rem11, 4
  %or.cond = or i1 %cmp10, %cmp12
  %spec.select = select i1 %or.cond, i32 4, i32 %5
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true9, %land.lhs.true.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %width.0 = phi i32 [ %5, %land.lhs.true.if.end14_crit_edge ], [ %5, %if.end6.if.end14_crit_edge ], [ %spec.select, %land.lhs.true9 ]
  %offset15 = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %offset15 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %offset15, align 8
  %conv = zext i32 %offset to i64
  %add16 = add i64 %11, %conv
  %sub = add nsw i32 %width.0, -1
  %12 = zext i32 %sub to i64
  %and = and i64 %add16, %12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end32, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call ptr @nfp_cpp_area_cpp(ptr noundef %area) #9
  %13 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %target, align 4
  %and21 = shl i32 %14, 24
  %shl = and i32 %and21, 2130706432
  %token = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 5
  %15 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %token, align 4
  %and22 = shl i32 %16, 16
  %shl23 = and i32 %and22, 16711680
  %or = or i32 %shl23, %shl
  %action24 = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 4
  %17 = ptrtoint ptr %action24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %action24, align 8
  %and25 = shl i32 %18, 8
  %shl26 = and i32 %and25, 65280
  %or27 = or i32 %or, %shl26
  %19 = ptrtoint ptr %offset15 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %offset15, align 8
  %add30 = add i64 %20, %conv
  %call31 = tail call i32 @nfp_cpp_explicit_read(ptr noundef %call19, i32 noundef %or27, i64 noundef %add30, ptr noundef %kernel_vaddr, i32 noundef %length, i32 noundef %width.0) #9
  br label %cleanup

if.end32:                                         ; preds = %if.end14
  %bar = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 1
  %21 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bar, align 4
  %tobool33.not = icmp eq ptr %22, null
  br i1 %tobool33.not, label %do.end, label %if.end58, !prof !87

do.end:                                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 959, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end58:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %width.0)
  %cond = icmp eq i32 %width.0, 4
  br i1 %cond, label %sw.bb, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end58
  %23 = or i32 %length, %offset
  %24 = and i32 %23, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %for.cond.preheader, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp68110.not = icmp eq i32 %length, 0
  br i1 %cmp68110.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %n.0113 = phi i32 [ %add72, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %rdptr32.0112 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %add.ptr2, %for.cond.preheader.for.body_crit_edge ]
  %wrptr32.0111 = phi ptr [ %incdec.ptr71, %for.body.for.body_crit_edge ], [ %kernel_vaddr, %for.cond.preheader.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %rdptr32.0112, i32 1
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rdptr32.0112) #9, !srcloc !85
  %incdec.ptr71 = getelementptr i32, ptr %wrptr32.0111, i32 1
  %27 = ptrtoint ptr %wrptr32.0111 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %wrptr32.0111, align 4
  %add72 = add i32 %n.0113, 4
  %cmp68 = icmp ult i32 %add72, %length
  br i1 %cmp68, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %do.end, %if.then18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.then18 ], [ -14, %do.end ], [ -14, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end58.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %add72, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp6000_area_write(ptr noundef %area, ptr noundef %kernel_vaddr, i32 noundef %offset, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_cpp_area_priv(ptr noundef %area) #9
  %iomem = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 8
  %add.ptr2 = getelementptr i8, ptr %1, i32 %offset
  %add = add i32 %length, %offset
  %size = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp = icmp ugt i32 %add, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %write = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp4 = icmp slt i32 %5, 1
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %target = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp7 = icmp eq i32 %7, 7
  br i1 %cmp7, label %land.lhs.true, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end6
  %action = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %9)
  %cmp8 = icmp eq i32 %9, 32
  br i1 %cmp8, label %land.lhs.true9, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true9:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %rem = and i32 %offset, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem)
  %cmp10 = icmp eq i32 %rem, 4
  %rem11 = and i32 %length, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem11)
  %cmp12 = icmp eq i32 %rem11, 4
  %or.cond = or i1 %cmp10, %cmp12
  %spec.select = select i1 %or.cond, i32 4, i32 %5
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true9, %land.lhs.true.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %width.0 = phi i32 [ %5, %land.lhs.true.if.end14_crit_edge ], [ %5, %if.end6.if.end14_crit_edge ], [ %spec.select, %land.lhs.true9 ]
  %offset15 = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %offset15 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %offset15, align 8
  %conv = zext i32 %offset to i64
  %add16 = add i64 %11, %conv
  %sub = add nsw i32 %width.0, -1
  %12 = zext i32 %sub to i64
  %and = and i64 %add16, %12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end32, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call ptr @nfp_cpp_area_cpp(ptr noundef %area) #9
  %13 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %target, align 4
  %and21 = shl i32 %14, 24
  %shl = and i32 %and21, 2130706432
  %token = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 5
  %15 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %token, align 4
  %and22 = shl i32 %16, 16
  %shl23 = and i32 %and22, 16711680
  %or = or i32 %shl23, %shl
  %action24 = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 4
  %17 = ptrtoint ptr %action24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %action24, align 8
  %and25 = shl i32 %18, 8
  %shl26 = and i32 %and25, 65280
  %or27 = or i32 %or, %shl26
  %19 = ptrtoint ptr %offset15 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %offset15, align 8
  %add30 = add i64 %20, %conv
  %call31 = tail call i32 @nfp_cpp_explicit_write(ptr noundef %call19, i32 noundef %or27, i64 noundef %add30, ptr noundef %kernel_vaddr, i32 noundef %length, i32 noundef %width.0) #9
  br label %cleanup

if.end32:                                         ; preds = %if.end14
  %bar = getelementptr inbounds %struct.nfp6000_area_priv, ptr %call, i32 0, i32 1
  %21 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bar, align 4
  %tobool33.not = icmp eq ptr %22, null
  br i1 %tobool33.not, label %do.end, label %if.end58, !prof !87

do.end:                                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1022, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end58:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %width.0)
  %cond = icmp eq i32 %width.0, 4
  br i1 %cond, label %sw.bb, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end58
  %23 = or i32 %length, %offset
  %24 = and i32 %23, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %for.cond.preheader, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp68112.not = icmp eq i32 %length, 0
  br i1 %cmp68112.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %n.0115 = phi i32 [ %add74, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %wrptr32.0114 = phi ptr [ %incdec.ptr70, %for.body.for.body_crit_edge ], [ %add.ptr2, %for.cond.preheader.for.body_crit_edge ]
  %rdptr32.0113 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %kernel_vaddr, %for.cond.preheader.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %rdptr32.0113, i32 1
  %26 = ptrtoint ptr %rdptr32.0113 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rdptr32.0113, align 4
  %incdec.ptr70 = getelementptr i32, ptr %wrptr32.0114, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wrptr32.0114, i32 %27) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  tail call void @arm_heavy_mb() #9
  %add74 = add i32 %n.0115, 4
  %cmp68 = icmp ult i32 %add74, %length
  br i1 %cmp68, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %do.end, %if.then18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.then18 ], [ -14, %do.end ], [ -14, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end58.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %add74, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp6000_explicit_acquire(ptr noundef %expl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_cpp_explicit_cpp(ptr noundef %expl) #9
  %call1 = tail call ptr @nfp_cpp_priv(ptr noundef %call) #9
  %call2 = tail call ptr @nfp_cpp_explicit_priv(ptr noundef %expl) #9
  %expl3 = getelementptr inbounds %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %expl3, i32 noundef 0) #9
  %bitsize = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 4, i32 0, i32 1
  %0 = ptrtoint ptr %bitsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bitsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.for.inc47_crit_edge, label %for.body7.preheader

entry.for.inc47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc47

for.body7.preheader:                              ; preds = %entry
  %arrayidx11 = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 4, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool12.not = icmp eq i32 %3, 0
  br i1 %tobool12.not, label %for.inc.critedge, label %for.body7.preheader.if.end14_crit_edge

for.body7.preheader.if.end14_crit_edge:           ; preds = %for.body7.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %for.inc.critedge.2.3.if.end14_crit_edge, %for.inc.critedge.1.3.if.end14_crit_edge, %for.inc.critedge.3103.if.end14_crit_edge, %for.body7.preheader.3.if.end14_crit_edge, %for.inc.critedge.2.2.if.end14_crit_edge, %for.inc.critedge.1.2.if.end14_crit_edge, %for.inc.critedge.2100.if.end14_crit_edge, %for.body7.preheader.2.if.end14_crit_edge, %for.inc.critedge.2.1.if.end14_crit_edge, %for.inc.critedge.1.1.if.end14_crit_edge, %for.inc.critedge.197.if.end14_crit_edge, %for.body7.preheader.1.if.end14_crit_edge, %for.inc.critedge.2.if.end14_crit_edge, %for.inc.critedge.1.if.end14_crit_edge, %for.inc.critedge.if.end14_crit_edge, %for.body7.preheader.if.end14_crit_edge
  %i.089.lcssa = phi i32 [ 0, %for.body7.preheader.if.end14_crit_edge ], [ 0, %for.inc.critedge.if.end14_crit_edge ], [ 0, %for.inc.critedge.1.if.end14_crit_edge ], [ 0, %for.inc.critedge.2.if.end14_crit_edge ], [ 1, %for.body7.preheader.1.if.end14_crit_edge ], [ 1, %for.inc.critedge.197.if.end14_crit_edge ], [ 1, %for.inc.critedge.1.1.if.end14_crit_edge ], [ 1, %for.inc.critedge.2.1.if.end14_crit_edge ], [ 2, %for.body7.preheader.2.if.end14_crit_edge ], [ 2, %for.inc.critedge.2100.if.end14_crit_edge ], [ 2, %for.inc.critedge.1.2.if.end14_crit_edge ], [ 2, %for.inc.critedge.2.2.if.end14_crit_edge ], [ 3, %for.body7.preheader.3.if.end14_crit_edge ], [ 3, %for.inc.critedge.3103.if.end14_crit_edge ], [ 3, %for.inc.critedge.1.3.if.end14_crit_edge ], [ 3, %for.inc.critedge.2.3.if.end14_crit_edge ]
  %bitsize.lcssa = phi ptr [ %bitsize, %for.body7.preheader.if.end14_crit_edge ], [ %bitsize, %for.inc.critedge.if.end14_crit_edge ], [ %bitsize, %for.inc.critedge.1.if.end14_crit_edge ], [ %bitsize, %for.inc.critedge.2.if.end14_crit_edge ], [ %bitsize.1, %for.body7.preheader.1.if.end14_crit_edge ], [ %bitsize.1, %for.inc.critedge.197.if.end14_crit_edge ], [ %bitsize.1, %for.inc.critedge.1.1.if.end14_crit_edge ], [ %bitsize.1, %for.inc.critedge.2.1.if.end14_crit_edge ], [ %bitsize.2, %for.body7.preheader.2.if.end14_crit_edge ], [ %bitsize.2, %for.inc.critedge.2100.if.end14_crit_edge ], [ %bitsize.2, %for.inc.critedge.1.2.if.end14_crit_edge ], [ %bitsize.2, %for.inc.critedge.2.2.if.end14_crit_edge ], [ %bitsize.3, %for.body7.preheader.3.if.end14_crit_edge ], [ %bitsize.3, %for.inc.critedge.3103.if.end14_crit_edge ], [ %bitsize.3, %for.inc.critedge.1.3.if.end14_crit_edge ], [ %bitsize.3, %for.inc.critedge.2.3.if.end14_crit_edge ]
  %j.088.lcssa = phi i32 [ 0, %for.body7.preheader.if.end14_crit_edge ], [ 1, %for.inc.critedge.if.end14_crit_edge ], [ 2, %for.inc.critedge.1.if.end14_crit_edge ], [ 3, %for.inc.critedge.2.if.end14_crit_edge ], [ 0, %for.body7.preheader.1.if.end14_crit_edge ], [ 1, %for.inc.critedge.197.if.end14_crit_edge ], [ 2, %for.inc.critedge.1.1.if.end14_crit_edge ], [ 3, %for.inc.critedge.2.1.if.end14_crit_edge ], [ 0, %for.body7.preheader.2.if.end14_crit_edge ], [ 1, %for.inc.critedge.2100.if.end14_crit_edge ], [ 2, %for.inc.critedge.1.2.if.end14_crit_edge ], [ 3, %for.inc.critedge.2.2.if.end14_crit_edge ], [ 0, %for.body7.preheader.3.if.end14_crit_edge ], [ 1, %for.inc.critedge.3103.if.end14_crit_edge ], [ 2, %for.inc.critedge.1.3.if.end14_crit_edge ], [ 3, %for.inc.critedge.2.3.if.end14_crit_edge ]
  %arrayidx11.lcssa = phi ptr [ %arrayidx11, %for.body7.preheader.if.end14_crit_edge ], [ %arrayidx11.1, %for.inc.critedge.if.end14_crit_edge ], [ %arrayidx11.2, %for.inc.critedge.1.if.end14_crit_edge ], [ %arrayidx11.3, %for.inc.critedge.2.if.end14_crit_edge ], [ %arrayidx11.195, %for.body7.preheader.1.if.end14_crit_edge ], [ %arrayidx11.1.1, %for.inc.critedge.197.if.end14_crit_edge ], [ %arrayidx11.2.1, %for.inc.critedge.1.1.if.end14_crit_edge ], [ %arrayidx11.3.1, %for.inc.critedge.2.1.if.end14_crit_edge ], [ %arrayidx11.298, %for.body7.preheader.2.if.end14_crit_edge ], [ %arrayidx11.1.2, %for.inc.critedge.2100.if.end14_crit_edge ], [ %arrayidx11.2.2, %for.inc.critedge.1.2.if.end14_crit_edge ], [ %arrayidx11.3.2, %for.inc.critedge.2.2.if.end14_crit_edge ], [ %arrayidx11.3101, %for.body7.preheader.3.if.end14_crit_edge ], [ %arrayidx11.1.3, %for.inc.critedge.3103.if.end14_crit_edge ], [ %arrayidx11.2.3, %for.inc.critedge.1.3.if.end14_crit_edge ], [ %arrayidx11.3.3, %for.inc.critedge.2.3.if.end14_crit_edge ]
  %arrayidx.le = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 4, i32 %i.089.lcssa
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %call2, align 4
  %bar = getelementptr inbounds %struct.nfp6000_explicit_priv, ptr %call2, i32 0, i32 1
  %5 = ptrtoint ptr %bar to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %i.089.lcssa, ptr %bar, align 4
  %area = getelementptr inbounds %struct.nfp6000_explicit_priv, ptr %call2, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %j.088.lcssa, ptr %area, align 4
  %7 = ptrtoint ptr %bitsize.lcssa to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bitsize.lcssa, align 4
  %sub = add i32 %8, -2
  %bitsize22 = getelementptr inbounds %struct.nfp6000_explicit_priv, ptr %call2, i32 0, i32 2
  %9 = ptrtoint ptr %bitsize22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %bitsize22, align 4
  %shl = shl nuw nsw i32 %i.089.lcssa, 9
  %shl27 = shl nuw nsw i32 %j.088.lcssa, 7
  %add = or i32 %shl27, %shl
  %data = getelementptr inbounds %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 3
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %add
  %data30 = getelementptr inbounds %struct.nfp6000_explicit_priv, ptr %call2, i32 0, i32 3
  %12 = ptrtoint ptr %data30 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %data30, align 4
  %13 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.le, align 4
  %shl37 = shl i32 %j.088.lcssa, %sub
  %add.ptr38 = getelementptr i8, ptr %14, i32 %shl37
  %addr39 = getelementptr inbounds %struct.nfp6000_explicit_priv, ptr %call2, i32 0, i32 4
  %15 = ptrtoint ptr %addr39 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr38, ptr %addr39, align 4
  %16 = ptrtoint ptr %arrayidx11.lcssa to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx11.lcssa, align 4
  br label %cleanup52

for.inc.critedge:                                 ; preds = %for.body7.preheader
  %arrayidx11.1 = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 4, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx11.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.not.1 = icmp eq i32 %18, 0
  br i1 %tobool12.not.1, label %for.inc.critedge.1, label %for.inc.critedge.if.end14_crit_edge

for.inc.critedge.if.end14_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.inc.critedge.1:                               ; preds = %for.inc.critedge
  %arrayidx11.2 = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 4, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx11.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.not.2 = icmp eq i32 %20, 0
  br i1 %tobool12.not.2, label %for.inc.critedge.2, label %for.inc.critedge.1.if.end14_crit_edge

for.inc.critedge.1.if.end14_crit_edge:            ; preds = %for.inc.critedge.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.inc.critedge.2:                               ; preds = %for.inc.critedge.1
  %arrayidx11.3 = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 4, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx11.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool12.not.3 = icmp eq i32 %22, 0
  br i1 %tobool12.not.3, label %for.inc.critedge.2.for.inc47_crit_edge, label %for.inc.critedge.2.if.end14_crit_edge

for.inc.critedge.2.if.end14_crit_edge:            ; preds = %for.inc.critedge.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.inc.critedge.2.for.inc47_crit_edge:           ; preds = %for.inc.critedge.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc47

for.inc47:                                        ; preds = %for.inc.critedge.2.for.inc47_crit_edge, %entry.for.inc47_crit_edge
  %bitsize.1 = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 4, i32 1, i32 1
  %23 = ptrtoint ptr %bitsize.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bitsize.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.1 = icmp eq i32 %24, 0
  br i1 %tobool.not.1, label %for.inc47.for.inc47.1_crit_edge, label %for.body7.preheader.1

for.inc47.for.inc47.1_crit_edge:                  ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc47.1

for.body7.preheader.1:                            ; preds = %for.inc47
  %arrayidx11.195 = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 4, i32 1, i32 2, i32 0
  %25 = ptrtoint ptr %arrayidx11.195 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx11.195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool12.not.196 = icmp eq i32 %26, 0
  br i1 %tobool12.not.196, label %for.inc.critedge.197, label %for.body7.preheader.1.if.end14_crit_edge

for.body7.preheader.1.if.end14_crit_edge:         ; preds = %for.body7.preheader.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.inc.critedge.197:                             ; preds = %for.body7.preheader.1
  %arrayidx11.1.1 = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 4, i32 1, i32 2, i32 1
  %27 = ptrtoint ptr %arrayidx11.1.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx11.1.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool12.not.1.1 = icmp eq i32 %28, 0
  br i1 %tobool12.not.1.1, label %for.inc.critedge.1.1, label %for.inc.critedge.197.if.end14_crit_edge

for.inc.critedge.197.if.end14_crit_edge:          ; preds = %for.inc.critedge.197
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.inc.critedge.1.1:                             ; preds = %for.inc.critedge.197
  %arrayidx11.2.1 = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 4, i32 1, i32 2, i32 2
  %29 = ptrtoint ptr %arrayidx11.2.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx11.2.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool12.not.2.1 = icmp eq i32 %30, 0
  br i1 %tobool12.not.2.1, label %for.inc.critedge.2.1, label %for.inc.critedge.1.1.if.end14_crit_edge

for.inc.critedge.1.1.if.end14_crit_edge:          ; preds = %for.inc.critedge.1.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.inc.critedge.2.1:                             ; preds = %for.inc.critedge.1.1
  %arrayidx11.3.1 = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 4, i32 1, i32 2, i32 3
  %31 = ptrtoint ptr %arrayidx11.3.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx11.3.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool12.not.3.1 = icmp eq i32 %32, 0
  br i1 %tobool12.not.3.1, label %for.inc.critedge.2.1.for.inc47.1_crit_edge, label %for.inc.critedge.2.1.if.end14_crit_edge

for.inc.critedge.2.1.if.end14_crit_edge:          ; preds = %for.inc.critedge.2.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.inc.critedge.2.1.for.inc47.1_crit_edge:       ; preds = %for.inc.critedge.2.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc47.1

for.inc47.1:                                      ; preds = %for.inc.critedge.2.1.for.inc47.1_crit_edge, %for.inc47.for.inc47.1_crit_edge
  %bitsize.2 = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 4, i32 2, i32 1
  %33 = ptrtoint ptr %bitsize.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bitsize.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.2 = icmp eq i32 %34, 0
  br i1 %tobool.not.2, label %for.inc47.1.for.inc47.2_crit_edge, label %for.body7.preheader.2

for.inc47.1.for.inc47.2_crit_edge:                ; preds = %for.inc47.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc47.2

for.body7.preheader.2:                            ; preds = %for.inc47.1
  %arrayidx11.298 = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 4, i32 2, i32 2, i32 0
  %35 = ptrtoint ptr %arrayidx11.298 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx11.298, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool12.not.299 = icmp eq i32 %36, 0
  br i1 %tobool12.not.299, label %for.inc.critedge.2100, label %for.body7.preheader.2.if.end14_crit_edge

for.body7.preheader.2.if.end14_crit_edge:         ; preds = %for.body7.preheader.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.inc.critedge.2100:                            ; preds = %for.body7.preheader.2
  %arrayidx11.1.2 = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 4, i32 2, i32 2, i32 1
  %37 = ptrtoint ptr %arrayidx11.1.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx11.1.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool12.not.1.2 = icmp eq i32 %38, 0
  br i1 %tobool12.not.1.2, label %for.inc.critedge.1.2, label %for.inc.critedge.2100.if.end14_crit_edge

for.inc.critedge.2100.if.end14_crit_edge:         ; preds = %for.inc.critedge.2100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.inc.critedge.1.2:                             ; preds = %for.inc.critedge.2100
  %arrayidx11.2.2 = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 4, i32 2, i32 2, i32 2
  %39 = ptrtoint ptr %arrayidx11.2.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx11.2.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool12.not.2.2 = icmp eq i32 %40, 0
  br i1 %tobool12.not.2.2, label %for.inc.critedge.2.2, label %for.inc.critedge.1.2.if.end14_crit_edge

for.inc.critedge.1.2.if.end14_crit_edge:          ; preds = %for.inc.critedge.1.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.inc.critedge.2.2:                             ; preds = %for.inc.critedge.1.2
  %arrayidx11.3.2 = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 4, i32 2, i32 2, i32 3
  %41 = ptrtoint ptr %arrayidx11.3.2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx11.3.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool12.not.3.2 = icmp eq i32 %42, 0
  br i1 %tobool12.not.3.2, label %for.inc.critedge.2.2.for.inc47.2_crit_edge, label %for.inc.critedge.2.2.if.end14_crit_edge

for.inc.critedge.2.2.if.end14_crit_edge:          ; preds = %for.inc.critedge.2.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.inc.critedge.2.2.for.inc47.2_crit_edge:       ; preds = %for.inc.critedge.2.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc47.2

for.inc47.2:                                      ; preds = %for.inc.critedge.2.2.for.inc47.2_crit_edge, %for.inc47.1.for.inc47.2_crit_edge
  %bitsize.3 = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 4, i32 3, i32 1
  %43 = ptrtoint ptr %bitsize.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bitsize.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.3 = icmp eq i32 %44, 0
  br i1 %tobool.not.3, label %for.inc47.2.cleanup52_crit_edge, label %for.body7.preheader.3

for.inc47.2.cleanup52_crit_edge:                  ; preds = %for.inc47.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

for.body7.preheader.3:                            ; preds = %for.inc47.2
  %arrayidx11.3101 = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 4, i32 3, i32 2, i32 0
  %45 = ptrtoint ptr %arrayidx11.3101 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx11.3101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool12.not.3102 = icmp eq i32 %46, 0
  br i1 %tobool12.not.3102, label %for.inc.critedge.3103, label %for.body7.preheader.3.if.end14_crit_edge

for.body7.preheader.3.if.end14_crit_edge:         ; preds = %for.body7.preheader.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.inc.critedge.3103:                            ; preds = %for.body7.preheader.3
  %arrayidx11.1.3 = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 4, i32 3, i32 2, i32 1
  %47 = ptrtoint ptr %arrayidx11.1.3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx11.1.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool12.not.1.3 = icmp eq i32 %48, 0
  br i1 %tobool12.not.1.3, label %for.inc.critedge.1.3, label %for.inc.critedge.3103.if.end14_crit_edge

for.inc.critedge.3103.if.end14_crit_edge:         ; preds = %for.inc.critedge.3103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.inc.critedge.1.3:                             ; preds = %for.inc.critedge.3103
  %arrayidx11.2.3 = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 4, i32 3, i32 2, i32 2
  %49 = ptrtoint ptr %arrayidx11.2.3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx11.2.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool12.not.2.3 = icmp eq i32 %50, 0
  br i1 %tobool12.not.2.3, label %for.inc.critedge.2.3, label %for.inc.critedge.1.3.if.end14_crit_edge

for.inc.critedge.1.3.if.end14_crit_edge:          ; preds = %for.inc.critedge.1.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.inc.critedge.2.3:                             ; preds = %for.inc.critedge.1.3
  %arrayidx11.3.3 = getelementptr %struct.nfp6000_pcie, ptr %call1, i32 0, i32 7, i32 4, i32 3, i32 2, i32 3
  %51 = ptrtoint ptr %arrayidx11.3.3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx11.3.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool12.not.3.3 = icmp eq i32 %52, 0
  br i1 %tobool12.not.3.3, label %for.inc.critedge.2.3.cleanup52_crit_edge, label %for.inc.critedge.2.3.if.end14_crit_edge

for.inc.critedge.2.3.if.end14_crit_edge:          ; preds = %for.inc.critedge.2.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.inc.critedge.2.3.cleanup52_crit_edge:         ; preds = %for.inc.critedge.2.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

cleanup52:                                        ; preds = %for.inc.critedge.2.3.cleanup52_crit_edge, %for.inc47.2.cleanup52_crit_edge, %if.end14
  %retval.4 = phi i32 [ 0, %if.end14 ], [ -11, %for.inc.critedge.2.3.cleanup52_crit_edge ], [ -11, %for.inc47.2.cleanup52_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %expl3) #9
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp6000_explicit_release(ptr noundef %expl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_cpp_explicit_priv(ptr noundef %expl) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %expl2 = getelementptr inbounds %struct.nfp6000_pcie, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %expl2, i32 noundef 0) #9
  %bar = getelementptr inbounds %struct.nfp6000_explicit_priv, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bar, align 4
  %area = getelementptr inbounds %struct.nfp6000_explicit_priv, ptr %call, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %area, align 4
  %arrayidx6 = getelementptr %struct.nfp6000_pcie, ptr %1, i32 0, i32 7, i32 4, i32 %3, i32 2, i32 %5
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %arrayidx6, align 4
  tail call void @mutex_unlock(ptr noundef %expl2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp6000_explicit_put(ptr noundef %expl, ptr nocapture noundef readonly %buff, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_cpp_explicit_priv(ptr noundef %expl) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp4.not = icmp eq i32 %len, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.nfp6000_explicit_priv, ptr %call, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.06 = phi i32 [ 0, %do.body.lr.ph ], [ %add, %do.body.do.body_crit_edge ]
  %src.05 = phi ptr [ %buff, %do.body.lr.ph ], [ %incdec.ptr, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %incdec.ptr = getelementptr i32, ptr %src.05, i32 1
  %0 = ptrtoint ptr %src.05 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src.05, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %i.06
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !84
  %add = add i32 %i.06, 4
  %cmp = icmp ult i32 %add, %len
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %do.body.for.end_crit_edge ]
  ret i32 %i.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp6000_explicit_get(ptr noundef %expl, ptr nocapture noundef writeonly %buff, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_cpp_explicit_priv(ptr noundef %expl) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp6.not = icmp eq i32 %len, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.nfp6000_explicit_priv, ptr %call, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %dst.08 = phi ptr [ %buff, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %i.07
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !85
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  %incdec.ptr = getelementptr i32, ptr %dst.08, i32 1
  %4 = ptrtoint ptr %dst.08 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %dst.08, align 4
  %add = add i32 %i.07, 4
  %cmp = icmp ult i32 %add, %len
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  ret i32 %i.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp6000_explicit_do(ptr noundef %expl, ptr nocapture noundef readonly %cmd, i64 noundef %address) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_cpp_explicit_priv(ptr noundef %expl) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %siga_mode = getelementptr inbounds %struct.nfp_cpp_explicit_command, ptr %cmd, i32 0, i32 10
  %2 = ptrtoint ptr %siga_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %siga_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %siga = getelementptr inbounds %struct.nfp_cpp_explicit_command, ptr %cmd, i32 0, i32 8
  %4 = ptrtoint ptr %siga to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %siga, align 4
  %conv = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sigmask.0 = phi i32 [ %shl, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sigb_mode = getelementptr inbounds %struct.nfp_cpp_explicit_command, ptr %cmd, i32 0, i32 11
  %6 = ptrtoint ptr %sigb_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sigb_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sigb = getelementptr inbounds %struct.nfp_cpp_explicit_command, ptr %cmd, i32 0, i32 9
  %8 = ptrtoint ptr %sigb to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sigb, align 1
  %conv4 = zext i8 %9 to i32
  %shl5 = shl nuw i32 1, %conv4
  %or6 = or i32 %shl5, %sigmask.0
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %sigmask.1 = phi i32 [ %or6, %if.then3 ], [ %sigmask.0, %if.end.if.end7_crit_edge ]
  %signal_master8 = getelementptr inbounds %struct.nfp_cpp_explicit_command, ptr %cmd, i32 0, i32 5
  %10 = ptrtoint ptr %signal_master8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %signal_master8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %master_id = getelementptr inbounds %struct.nfp6000_pcie, ptr %1, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %master_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %master_id, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  %signal_master.0 = phi i8 [ %11, %if.end7.if.end12_crit_edge ], [ %13, %if.then10 ]
  %signal_ref13 = getelementptr inbounds %struct.nfp_cpp_explicit_command, ptr %cmd, i32 0, i32 6
  %14 = ptrtoint ptr %signal_ref13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %signal_ref13, align 2
  %conv14 = zext i8 %signal_master.0 to i32
  %master_id16 = getelementptr inbounds %struct.nfp6000_pcie, ptr %1, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %master_id16 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %master_id16, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %signal_master.0, i8 %17)
  %cmp = icmp eq i8 %signal_master.0, %17
  br i1 %cmp, label %if.then19, label %if.end12.if.end27_crit_edge

if.end12.if.end27_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %signal_ref21 = getelementptr inbounds %struct.nfp6000_pcie, ptr %1, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %signal_ref21 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %signal_ref21, align 1
  %bar = getelementptr inbounds %struct.nfp6000_explicit_priv, ptr %call, i32 0, i32 1
  %20 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bar, align 4
  %mul = shl i32 %21, 2
  %area = getelementptr inbounds %struct.nfp6000_explicit_priv, ptr %call, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %area, align 4
  %add = add i32 %mul, %23
  %add.tr = trunc i32 %add to i8
  %24 = shl i8 %add.tr, 1
  %conv26 = add i8 %24, %19
  br label %if.end27

if.end27:                                         ; preds = %if.then19, %if.end12.if.end27_crit_edge
  %signal_ref.0 = phi i8 [ %conv26, %if.then19 ], [ %15, %if.end12.if.end27_crit_edge ]
  %data_master28 = getelementptr inbounds %struct.nfp_cpp_explicit_command, ptr %cmd, i32 0, i32 2
  %25 = ptrtoint ptr %data_master28 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %data_master28, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool29.not = icmp eq i8 %26, 0
  br i1 %tobool29.not, label %if.end33.thread, label %if.end33

if.end33.thread:                                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %conv35321 = zext i8 %17 to i32
  br label %if.then41

if.end33:                                         ; preds = %if.end27
  %data_ref34 = getelementptr inbounds %struct.nfp_cpp_explicit_command, ptr %cmd, i32 0, i32 1
  %27 = ptrtoint ptr %data_ref34 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %data_ref34, align 4
  %conv35 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %17)
  %cmp39 = icmp eq i8 %26, %17
  br i1 %cmp39, label %if.end33.if.then41_crit_edge, label %if.end33.if.end51_crit_edge

if.end33.if.end51_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.end33.if.then41_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

if.then41:                                        ; preds = %if.end33.if.then41_crit_edge, %if.end33.thread
  %conv35324 = phi i32 [ %conv35321, %if.end33.thread ], [ %conv35, %if.end33.if.then41_crit_edge ]
  %bar42 = getelementptr inbounds %struct.nfp6000_explicit_priv, ptr %call, i32 0, i32 1
  %29 = ptrtoint ptr %bar42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bar42, align 4
  %shl44 = shl i32 %30, 9
  %add45 = add i32 %shl44, 4096
  %area47 = getelementptr inbounds %struct.nfp6000_explicit_priv, ptr %call, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %area47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %area47, align 4
  %shl48 = shl i32 %32, 7
  %add49 = add i32 %add45, %shl48
  %conv50 = trunc i32 %add49 to i16
  br label %if.end51

if.end51:                                         ; preds = %if.then41, %if.end33.if.end51_crit_edge
  %conv35323 = phi i32 [ %conv35324, %if.then41 ], [ %conv35, %if.end33.if.end51_crit_edge ]
  %data_ref.0 = phi i16 [ %conv50, %if.then41 ], [ %28, %if.end33.if.end51_crit_edge ]
  %shl52 = shl i32 %sigmask.1, 30
  %33 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cmd, align 4
  %35 = shl i32 %34, 12
  %shl56 = and i32 %35, 805306368
  %or57 = or i32 %shl56, %shl52
  %shr = lshr i64 %address, 16
  %36 = trunc i64 %shr to i32
  %37 = and i32 %36, 16777215
  %conv62 = or i32 %or57, %37
  %38 = and i8 %signal_ref.0, 127
  %and64 = zext i8 %38 to i32
  %shl65 = shl nuw nsw i32 %and64, 24
  %shl68 = shl nuw nsw i32 %conv35323, 14
  %or69 = or i32 %shl68, %shl65
  %39 = and i16 %data_ref.0, 16383
  %and71 = zext i16 %39 to i32
  %or73 = or i32 %or69, %and71
  %40 = shl i32 %34, 4
  %shl79 = and i32 %40, -268435456
  %41 = shl i32 %34, 15
  %shl84 = and i32 %41, 260046848
  %or85 = or i32 %shl79, %shl84
  %len = getelementptr inbounds %struct.nfp_cpp_explicit_command, ptr %cmd, i32 0, i32 3
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %len, align 1
  %44 = and i8 %43, 31
  %and87 = zext i8 %44 to i32
  %shl88 = shl nuw nsw i32 %and87, 18
  %or89 = or i32 %shl88, %or85
  %byte_mask = getelementptr inbounds %struct.nfp_cpp_explicit_command, ptr %cmd, i32 0, i32 4
  %45 = ptrtoint ptr %byte_mask to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %byte_mask, align 4
  %conv90 = zext i8 %46 to i32
  %shl92 = shl nuw nsw i32 %conv90, 10
  %or93 = or i32 %or89, %shl92
  %or97 = or i32 %or93, %conv14
  %iomem = getelementptr inbounds %struct.nfp6000_pcie, ptr %1, i32 0, i32 6
  %47 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iomem, align 4
  %tobool100.not = icmp eq ptr %48, null
  br i1 %tobool100.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @arm_heavy_mb() #9
  %49 = tail call i32 @llvm.bswap.i32(i32 %conv62)
  %50 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iomem, align 4
  %bar105 = getelementptr inbounds %struct.nfp6000_explicit_priv, ptr %call, i32 0, i32 1
  %52 = ptrtoint ptr %bar105 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bar105, align 4
  %and107 = shl i32 %53, 6
  %mul108 = and i32 %and107, 192
  %add109 = add nuw nsw i32 %mul108, 128
  %area111 = getelementptr inbounds %struct.nfp6000_explicit_priv, ptr %call, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %area111 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %area111, align 4
  %and112 = shl i32 %55, 4
  %mul113 = and i32 %and112, 48
  %add114 = or i32 %add109, %mul113
  %add.ptr = getelementptr i8, ptr %51, i32 %add114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %49) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @arm_heavy_mb() #9
  %56 = tail call i32 @llvm.bswap.i32(i32 %or73)
  %57 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %iomem, align 4
  %59 = ptrtoint ptr %bar105 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bar105, align 4
  %and123 = shl i32 %60, 6
  %mul124 = and i32 %and123, 192
  %add125 = add nuw nsw i32 %mul124, 132
  %61 = ptrtoint ptr %area111 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %area111, align 4
  %and128 = shl i32 %62, 4
  %mul129 = and i32 %and128, 48
  %add130 = or i32 %add125, %mul129
  %add.ptr131 = getelementptr i8, ptr %58, i32 %add130
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 %56) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %63 = tail call i32 @llvm.bswap.i32(i32 %or97)
  %64 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %iomem, align 4
  %66 = ptrtoint ptr %bar105 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bar105, align 4
  %and140 = shl i32 %67, 6
  %mul141 = and i32 %and140, 192
  %add142 = add nuw nsw i32 %mul141, 136
  %68 = ptrtoint ptr %area111 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %area111, align 4
  %and145 = shl i32 %69, 4
  %mul146 = and i32 %and145, 48
  %add147 = or i32 %add142, %mul146
  %add.ptr148 = getelementptr i8, ptr %65, i32 %add147
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %63) #9, !srcloc !84
  %70 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %iomem, align 4
  %72 = ptrtoint ptr %bar105 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bar105, align 4
  %and153 = shl i32 %73, 6
  %mul154 = and i32 %and153, 192
  %add155 = add nuw nsw i32 %mul154, 128
  %74 = ptrtoint ptr %area111 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %area111, align 4
  %and158 = shl i32 %75, 4
  %mul159 = and i32 %and158, 48
  %add160 = or i32 %add155, %mul159
  %add.ptr161 = getelementptr i8, ptr %71, i32 %add160
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr161) #9, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  %77 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %iomem, align 4
  %79 = ptrtoint ptr %bar105 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bar105, align 4
  %and170 = shl i32 %80, 6
  %mul171 = and i32 %and170, 192
  %add172 = add nuw nsw i32 %mul171, 132
  %81 = ptrtoint ptr %area111 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %area111, align 4
  %and175 = shl i32 %82, 4
  %mul176 = and i32 %and175, 48
  %add177 = or i32 %add172, %mul176
  %add.ptr178 = getelementptr i8, ptr %78, i32 %add177
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr178) #9, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  %84 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %iomem, align 4
  %86 = ptrtoint ptr %bar105 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bar105, align 4
  %and188 = shl i32 %87, 6
  %mul189 = and i32 %and188, 192
  %add190 = add nuw nsw i32 %mul189, 136
  %88 = ptrtoint ptr %area111 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %area111, align 4
  %and193 = shl i32 %89, 4
  %mul194 = and i32 %and193, 48
  %add195 = or i32 %add190, %mul194
  %add.ptr196 = getelementptr i8, ptr %85, i32 %add195
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr196) #9, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  br label %if.end241

if.else:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 8
  %bar200 = getelementptr inbounds %struct.nfp6000_explicit_priv, ptr %call, i32 0, i32 1
  %93 = ptrtoint ptr %bar200 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bar200, align 4
  %and202 = shl i32 %94, 6
  %mul203 = and i32 %and202, 192
  %add204 = add nuw nsw i32 %mul203, 128
  %area206 = getelementptr inbounds %struct.nfp6000_explicit_priv, ptr %call, i32 0, i32 1, i32 1
  %95 = ptrtoint ptr %area206 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %area206, align 4
  %and207 = shl i32 %96, 4
  %mul208 = and i32 %and207, 48
  %add209 = or i32 %add204, %mul208
  %add210 = or i32 %add209, 1024
  %call212 = tail call i32 @pci_write_config_dword(ptr noundef %92, i32 noundef %add210, i32 noundef %conv62) #9
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 8
  %99 = ptrtoint ptr %bar200 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bar200, align 4
  %and216 = shl i32 %100, 6
  %mul217 = and i32 %and216, 192
  %add218 = add nuw nsw i32 %mul217, 132
  %101 = ptrtoint ptr %area206 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %area206, align 4
  %and221 = shl i32 %102, 4
  %mul222 = and i32 %and221, 48
  %add223 = or i32 %add218, %mul222
  %add224 = or i32 %add223, 1024
  %call226 = tail call i32 @pci_write_config_dword(ptr noundef %98, i32 noundef %add224, i32 noundef %or73) #9
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 8
  %105 = ptrtoint ptr %bar200 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bar200, align 4
  %and230 = shl i32 %106, 6
  %mul231 = and i32 %and230, 192
  %add232 = add nuw nsw i32 %mul231, 136
  %107 = ptrtoint ptr %area206 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %area206, align 4
  %and235 = shl i32 %108, 4
  %mul236 = and i32 %and235, 48
  %add237 = or i32 %add232, %mul236
  %add238 = or i32 %add237, 1024
  %call240 = tail call i32 @pci_write_config_dword(ptr noundef %104, i32 noundef %add238, i32 noundef %or97) #9
  br label %if.end241

if.end241:                                        ; preds = %if.else, %do.body
  %addr = getelementptr inbounds %struct.nfp6000_explicit_priv, ptr %call, i32 0, i32 4
  %109 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %addr, align 4
  %bitsize = getelementptr inbounds %struct.nfp6000_explicit_priv, ptr %call, i32 0, i32 2
  %111 = ptrtoint ptr %bitsize to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bitsize, align 4
  %notmask = shl nsw i32 -1, %112
  %sub = xor i32 %notmask, -1
  %113 = trunc i64 %address to i32
  %idx.ext = and i32 %sub, %113
  %add.ptr247 = getelementptr i8, ptr %110, i32 %idx.ext
  %114 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr247) #9, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  ret i32 %sigmask.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_area_cache_add(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_priv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_area_priv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_target_pushpull(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_area_cpp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_area_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_bar_put(ptr noundef %nfp, ptr noundef %bar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.nfp_bar, ptr %bar, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #9, !srcloc !89
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bar_waiters = getelementptr inbounds %struct.nfp6000_pcie, ptr %nfp, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %bar_waiters, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_explicit_read(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_explicit_write(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_explicit_cpp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_explicit_priv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !36, !37, !38, !39, !41, !42, !44, !46, !47, !48, !50, !51, !53, !55, !57, !58, !59, !61, !63, !64, !65, !67, !68, !69, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c", i32 1319, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nfp_cpp_from_nfp6000_pcie._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nfp_cpp_from_nfp6000_pcie._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @nfp_cpp_from_nfp6000_pcie.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c", i32 1331, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nfp_cpp_from_nfp6000_pcie.__key.6, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c", i32 1332, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c", i32 1338, i32 3}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nfp_cpp_from_nfp6000_pcie._entry.8, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @nfp_cpp_from_nfp6000_pcie._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c", i32 1348, i32 3}
!21 = !{ptr @nfp_cpp_from_nfp6000_pcie._entry.12, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @nfp_cpp_from_nfp6000_pcie._entry_ptr.14, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c", i32 1365, i32 2}
!25 = !{ptr @nfp_cpp_from_nfp6000_pcie._entry.15, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @nfp_cpp_from_nfp6000_pcie._entry_ptr.17, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c", i32 1271, i32 3}
!29 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @nfp6000_get_interface._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @nfp6000_get_interface._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c", i32 569, i32 48}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c", i32 597, i32 3}
!36 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @enable_bars._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @enable_bars._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @enable_bars.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c", i32 605, i32 2}
!41 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c", i32 619, i32 36}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c", i32 638, i32 4}
!46 = !{ptr @enable_bars._entry.25, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @enable_bars._entry_ptr.27, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @enable_bars._entry.28, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c", i32 656, i32 3}
!50 = !{ptr @enable_bars._entry_ptr.29, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c", i32 664, i32 35}
!53 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c", i32 684, i32 7}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c", i32 702, i32 2}
!57 = !{ptr @enable_bars._entry.32, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @enable_bars._entry_ptr.34, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @nfp6000_pcie_ops, !60, !"nfp6000_pcie_ops", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c", i32 1278, i32 40}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c", i32 1254, i32 3}
!63 = !{ptr @nfp6000_read_serial._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @nfp6000_read_serial._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c", i32 864, i32 3}
!67 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @nfp6000_area_acquire._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @nfp6000_area_acquire._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c", i32 414, i32 6}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i32 0, i32 33}
!82 = !{i64 2148288590, i64 2148288616, i64 2148288645, i64 2148288679, i64 2148288710, i64 2148288733}
!83 = !{i64 2154480377}
!84 = !{i64 4083119}
!85 = !{i64 4083537}
!86 = !{i64 2154481067}
!87 = !{!"branch_weights", i32 1, i32 2000}
!88 = !{i64 2148377042}
!89 = !{i64 2148291775, i64 2148291807, i64 2148291836, i64 2148291870, i64 2148291901, i64 2148291924}
!90 = !{i64 2148377271}
!91 = !{i64 2154496798}
!92 = !{i64 2154498006}
!93 = !{i64 2154504495}
!94 = !{i64 2154499028}
!95 = !{i64 2154499699}
!96 = !{i64 2154500370}
!97 = !{i64 2154501577}
!98 = !{i64 2154502511}
!99 = !{i64 2154503445}
!100 = !{i64 4083317}
!101 = !{i64 2154504021}
